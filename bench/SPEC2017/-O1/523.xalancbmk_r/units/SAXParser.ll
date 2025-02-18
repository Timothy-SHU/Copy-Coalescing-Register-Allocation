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
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_ = comdat any

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

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

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

$_ZTVN11xercesc_2_76ParserE = comdat any

$_ZTVN11xercesc_2_718XMLDocumentHandlerE = comdat any

$_ZTVN11xercesc_2_716XMLErrorReporterE = comdat any

$_ZTVN11xercesc_2_716XMLEntityHandlerE = comdat any

$_ZTVN11xercesc_2_714DocTypeHandlerE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

@_ZTVN11xercesc_2_79SAXParserE = dso_local unnamed_addr constant { [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] } { [49 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_79SAXParserD0Ev, ptr @_ZN11xercesc_2_79SAXParser17setEntityResolverEPNS_14EntityResolverE, ptr @_ZN11xercesc_2_79SAXParser13setDTDHandlerEPNS_10DTDHandlerE, ptr @_ZN11xercesc_2_79SAXParser18setDocumentHandlerEPNS_15DocumentHandlerE, ptr @_ZN11xercesc_2_79SAXParser15setErrorHandlerEPNS_12ErrorHandlerE, ptr @_ZN11xercesc_2_79SAXParser5parseERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79SAXParser5parseEPKt, ptr @_ZN11xercesc_2_79SAXParser5parseEPKc, ptr @_ZN11xercesc_2_79SAXParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_79SAXParser20setXMLEntityResolverEPNS_17XMLEntityResolverE, ptr @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79SAXParser10docCommentEPKt, ptr @_ZN11xercesc_2_79SAXParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_79SAXParser11endDocumentEv, ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_79SAXParser13resetDocumentEv, ptr @_ZN11xercesc_2_79SAXParser13startDocumentEv, ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_79SAXParser11resetErrorsEv, ptr @_ZN11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79SAXParser13resetEntitiesEv, ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_79SAXParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_79SAXParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_79SAXParser12endIntSubsetEv, ptr @_ZN11xercesc_2_79SAXParser12endExtSubsetEv, ptr @_ZN11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_79SAXParser12resetDocTypeEv, ptr @_ZN11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_79SAXParser14startIntSubsetEv, ptr @_ZN11xercesc_2_79SAXParser14startExtSubsetEv, ptr @_ZN11xercesc_2_79SAXParser8TextDeclEPKtS2_], [17 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn8_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn8_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn8_N11xercesc_2_79SAXParser13docCharactersEPKtjb, ptr @_ZThn8_N11xercesc_2_79SAXParser10docCommentEPKt, ptr @_ZThn8_N11xercesc_2_79SAXParser5docPIEPKtS2_, ptr @_ZThn8_N11xercesc_2_79SAXParser11endDocumentEv, ptr @_ZThn8_N11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZThn8_N11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb, ptr @_ZThn8_N11xercesc_2_79SAXParser13resetDocumentEv, ptr @_ZThn8_N11xercesc_2_79SAXParser13startDocumentEv, ptr @_ZThn8_N11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZThn8_N11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZThn8_N11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn16_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn16_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn16_N11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn16_N11xercesc_2_79SAXParser11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn24_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn24_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn24_N11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE, ptr @_ZThn24_N11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn24_N11xercesc_2_79SAXParser13resetEntitiesEv, ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_, ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn24_N11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_79SAXParserE, ptr @_ZThn32_N11xercesc_2_79SAXParserD1Ev, ptr @_ZThn32_N11xercesc_2_79SAXParserD0Ev, ptr @_ZThn32_N11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn32_N11xercesc_2_79SAXParser14doctypeCommentEPKt, ptr @_ZThn32_N11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn32_N11xercesc_2_79SAXParser9doctypePIEPKtS2_, ptr @_ZThn32_N11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj, ptr @_ZThn32_N11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn32_N11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_79SAXParser12endIntSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser12endExtSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn32_N11xercesc_2_79SAXParser12resetDocTypeEv, ptr @_ZThn32_N11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn32_N11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn32_N11xercesc_2_79SAXParser14startIntSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser14startExtSubsetEv, ptr @_ZThn32_N11xercesc_2_79SAXParser8TextDeclEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [14 x i8] c"SAXParser.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
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
@_ZTVN11xercesc_2_76ParserE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76ParserE, ptr @_ZN11xercesc_2_76ParserD2Ev, ptr @_ZN11xercesc_2_76ParserD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_79SAXParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_79SAXParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79SAXParserD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !56 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xercesc_2_76ParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !58
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %8, align 8, !tbaa !58
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !58
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !58
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !58
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  store i8 0, ptr %9, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  store i32 0, ptr %10, align 4, !tbaa !75
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  store i32 0, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 8
  store i32 32, ptr %12, align 4, !tbaa !77
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_715VecAttrListImplC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %14 unwind label %31, !prof !78

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %15, i8 0, i64 80, i1 false)
  store ptr %1, ptr %16, align 8, !tbaa !79
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  store ptr %2, ptr %17, align 8, !tbaa !80
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 22
  store ptr %3, ptr %18, align 8, !tbaa !81
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  store i32 0, ptr %19, align 8, !tbaa !82
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 1
  store i32 1023, ptr %20, align 4, !tbaa !83
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 2
  store i32 0, ptr %21, align 8, !tbaa !84
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 3
  store i8 0, ptr %22, align 4, !tbaa !85
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 4
  store ptr %2, ptr %23, align 8, !tbaa !86
  %24 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 5
  %25 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %26 = load ptr, ptr %2, align 8, !tbaa !58
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 2048)
          to label %30 unwind label %35, !prof !87

30:                                               ; preds = %14
  store ptr %29, ptr %25, align 8, !tbaa !88
  store i16 0, ptr %29, align 2, !tbaa !89
  invoke void @_ZN11xercesc_2_79SAXParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %52 unwind label %39, !prof !78

31:                                               ; preds = %4
  %32 = landingpad { ptr, i32 }
          cleanup
  %33 = extractvalue { ptr, i32 } %32, 0
  %34 = extractvalue { ptr, i32 } %32, 1
  br label %76

35:                                               ; preds = %14
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = extractvalue { ptr, i32 } %36, 0
  %38 = extractvalue { ptr, i32 } %36, 1
  br label %73

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = extractvalue { ptr, i32 } %40, 1
  %43 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = tail call ptr @__cxa_begin_catch(ptr %41) #19
  invoke void @__cxa_rethrow() #21
          to label %84 unwind label %47

47:                                               ; preds = %45
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %49 unwind label %81

49:                                               ; preds = %47
  %50 = extractvalue { ptr, i32 } %48, 1
  %51 = extractvalue { ptr, i32 } %48, 0
  br label %53

52:                                               ; preds = %30
  ret void

53:                                               ; preds = %49, %39
  %54 = phi ptr [ null, %49 ], [ @_ZN11xercesc_2_79SAXParser7cleanUpEv, %39 ]
  %55 = phi ptr [ null, %49 ], [ %0, %39 ]
  %56 = phi i32 [ %50, %49 ], [ %42, %39 ]
  %57 = phi ptr [ %51, %49 ], [ %41, %39 ]
  %58 = icmp eq ptr %55, null
  %59 = or i1 %44, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %53
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(224) %55)
          to label %64 unwind label %61

61:                                               ; preds = %60
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #20
  unreachable

64:                                               ; preds = %53, %60
  %65 = load ptr, ptr %23, align 8, !tbaa !86
  %66 = load ptr, ptr %25, align 8, !tbaa !88
  %67 = load ptr, ptr %65, align 8, !tbaa !58
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %66)
          to label %73 unwind label %70

70:                                               ; preds = %64
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  tail call void @__clang_call_terminate(ptr %72) #20
  unreachable

73:                                               ; preds = %64, %35
  %74 = phi i32 [ %38, %35 ], [ %56, %64 ]
  %75 = phi ptr [ %37, %35 ], [ %57, %64 ]
  tail call void @_ZN11xercesc_2_715VecAttrListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #19
  br label %76

76:                                               ; preds = %73, %31
  %77 = phi i32 [ %74, %73 ], [ %34, %31 ]
  %78 = phi ptr [ %75, %73 ], [ %33, %31 ]
  %79 = insertvalue { ptr, i32 } poison, ptr %78, 0
  %80 = insertvalue { ptr, i32 } %79, i32 %77, 1
  resume { ptr, i32 } %80

81:                                               ; preds = %47
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  tail call void @__clang_call_terminate(ptr %83) #20
  unreachable

84:                                               ; preds = %45
  unreachable
}

declare void @_ZN11xercesc_2_715VecAttrListImplC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5), !prof !92
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !94

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(776) %10) #19, !prof !95
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !94

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %18) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #19
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  %23 = load ptr, ptr %22, align 8, !tbaa !79
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !78

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !58
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %23) #19
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10initializeEv(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 22
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = load ptr, ptr %2, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7)
          to label %8 unwind label %32, !prof !78

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  store ptr %4, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 19
  store ptr %11, ptr %12, align 8, !tbaa !99
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  %14 = load ptr, ptr %13, align 8, !tbaa !79
  %15 = load ptr, ptr %2, align 8, !tbaa !80
  %16 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %14, ptr noundef nonnull %4, ptr noundef %15)
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  store ptr %16, ptr %17, align 8, !tbaa !93
  %18 = load ptr, ptr %12, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %18)
  %19 = load ptr, ptr %2, align 8, !tbaa !80
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !77
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 3
  %24 = load ptr, ptr %19, align 8, !tbaa !58
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef %23), !prof !87
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  store ptr %27, ptr %28, align 8, !tbaa !91
  %29 = load i32, ptr %20, align 4, !tbaa !77
  %30 = zext i32 %29 to i64
  %31 = shl nuw nsw i64 %30, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %31, i1 false), !prof !100
  ret void

32:                                               ; preds = %1
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %33
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715VecAttrListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !58
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !58
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [49 x ptr], [17 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79SAXParserE, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_79SAXParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(224) %0)
          to label %6 unwind label %19, !prof !78

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = load ptr, ptr %8, align 8, !tbaa !58
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %10)
          to label %17 unwind label %14, !prof !92

14:                                               ; preds = %6
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #20
  unreachable

17:                                               ; preds = %6
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_715VecAttrListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #19
  ret void

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #20
  unreachable
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79SAXParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #7 align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #19
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_79SAXParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #19
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20installAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 8
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %2
  %9 = uitofp i32 %6 to double
  %10 = fmul double %9, 1.500000e+00
  %11 = fptoui double %10 to i32
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !80
  %14 = zext i32 %11 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %13, align 8, !tbaa !58
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = load i32, ptr %5, align 4, !tbaa !77
  %23 = zext i32 %22 to i64
  %24 = shl nuw nsw i64 %23, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %21, i64 %24, i1 false)
  %25 = load i32, ptr %5, align 4, !tbaa !77
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %19, i64 %26
  %28 = sub i32 %11, %25
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 %30, i1 false)
  %31 = load ptr, ptr %12, align 8, !tbaa !80
  %32 = load ptr, ptr %20, align 8, !tbaa !91
  %33 = load ptr, ptr %31, align 8, !tbaa !58
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %32)
  store ptr %19, ptr %20, align 8, !tbaa !91
  store i32 %11, ptr %5, align 4, !tbaa !77
  br label %36

36:                                               ; preds = %8, %2
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = load i32, ptr %3, align 8, !tbaa !76
  %40 = add i32 %39, 1
  store i32 %40, ptr %3, align 8, !tbaa !76
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds ptr, ptr %38, i64 %41
  store ptr %1, ptr %42, align 8, !tbaa !101
  %43 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !93
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %44, i64 0, i32 41
  store ptr %45, ptr %46, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser19removeAdvDocHandlerEPNS_18XMLDocumentHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef readnone %1) local_unnamed_addr #11 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %45, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !91
  br label %9

9:                                                ; preds = %6, %42
  %10 = phi i32 [ 0, %6 ], [ %43, %42 ]
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds ptr, ptr %8, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
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
  %24 = load ptr, ptr %16, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr %26, ptr %27, align 8, !tbaa !101
  br i1 %20, label %23, label %28, !llvm.loop !114

28:                                               ; preds = %23, %18, %15
  %29 = add i32 %4, -1
  store i32 %29, ptr %3, align 8, !tbaa !76
  %30 = load ptr, ptr %16, align 8, !tbaa !91
  %31 = zext i32 %29 to i64
  %32 = getelementptr inbounds ptr, ptr %30, i64 %31
  store ptr null, ptr %32, align 8, !tbaa !101
  %33 = icmp eq i32 %29, 0
  %34 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  %37 = select i1 %33, i1 %36, i1 false
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %40, i64 0, i32 41
  store ptr null, ptr %41, align 8, !tbaa !102
  br label %45

42:                                               ; preds = %9
  %43 = add nuw i32 %10, 1
  %44 = icmp eq i32 %43, %4
  br i1 %44, label %45, label %9, !llvm.loop !117

45:                                               ; preds = %42, %38, %28, %2
  %46 = phi i1 [ false, %2 ], [ true, %28 ], [ true, %38 ], [ false, %42 ]
  ret i1 %46
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xercesc_2_79SAXParser12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !118
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !119, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser31getGenerateSyntheticAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 19
  %5 = load i8, ptr %4, align 1, !tbaa !122, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser22getValidateAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 20
  %5 = load i8, ptr %4, align 2, !tbaa !123, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !124, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser28getValidationConstraintFatalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 4, !tbaa !125, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79SAXParser19getValidationSchemeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 8, !tbaa !126
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 2
  %8 = icmp eq i32 %5, 1
  %9 = select i1 %8, i32 1, i32 %7
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !127, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser31getValidationSchemaFullCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !128, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser29getIdentityConstraintCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 14
  %5 = load i8, ptr %4, align 4, !tbaa !129, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79SAXParser13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !130
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 58
  %5 = load ptr, ptr %4, align 8, !tbaa !131
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !132
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser18getSecurityManagerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 60
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser18getLoadExternalDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 17
  %5 = load i8, ptr %4, align 1, !tbaa !134, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser25isCachingGrammarFromParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 15
  %5 = load i8, ptr %4, align 1, !tbaa !135, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser27isUsingCachedGrammarInParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 16
  %5 = load i8, ptr %4, align 2, !tbaa !136, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser18getCalculateSrcOfsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !137, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser24getStandardUriConformantEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !138, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser14getRootGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79SAXParser10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79SAXParser12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 49, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %5)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser18getIgnoreCachedDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 21
  %5 = load i8, ptr %4, align 1, !tbaa !141, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser20getIgnoreAnnotationsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 22
  %5 = load i8, ptr %4, align 4, !tbaa !142, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser33getDisableDefaultEntityResolutionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 23
  %5 = load i8, ptr %4, align 1, !tbaa !143, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser20getSkipDTDValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 24
  %5 = load i8, ptr %4, align 2, !tbaa !144, !range !120, !noundef !121
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 2, !tbaa !119
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser31setGenerateSyntheticAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 19
  store i8 %5, ptr %6, align 1, !tbaa !122
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser22setValidateAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 20
  store i8 %5, ptr %6, align 2, !tbaa !123
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !124
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 4, !tbaa !125
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser19setValidationSchemeENS0_10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
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
  store i32 %8, ptr %11, align 8, !tbaa !126
  store i8 %9, ptr %10, align 8, !tbaa !145
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 12
  store i8 %5, ptr %6, align 2, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser31setValidationSchemaFullCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 13
  store i8 %5, ptr %6, align 1, !tbaa !128
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser29setIdentityConstraintCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 14
  store i8 %5, ptr %6, align 4, !tbaa !129
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser25setExternalSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 58
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !146
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 2, !tbaa !89
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !89
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !147

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !58
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  store ptr %35, ptr %7, align 8, !tbaa !131
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser36setExternalNoNamespaceSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !146
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 2, !tbaa !89
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !89
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !147

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !58
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  store ptr %35, ptr %7, align 8, !tbaa !132
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser25setExternalSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 58
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !146
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !131
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser36setExternalNoNamespaceSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !146
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !132
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setSecurityManagerEPNS_15SecurityManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !61, !range !120, !noundef !121
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 456, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 60
  store ptr %1, ptr %16, align 8, !tbaa !133
  %17 = icmp eq ptr %1, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %1, align 8, !tbaa !58
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(12) %1)
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 26
  store i32 %22, ptr %23, align 4, !tbaa !148
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %15, i64 0, i32 27
  store i32 0, ptr %24, align 8, !tbaa !149
  br label %25

25:                                               ; preds = %13, %18
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setLoadExternalDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 17
  store i8 %5, ptr %6, align 1, !tbaa !134
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser21cacheGrammarFromParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 15
  store i8 %5, ptr %6, align 1, !tbaa !135
  br i1 %1, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 16
  store i8 1, ptr %8, align 2, !tbaa !136
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser23useCachedGrammarInParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 !prof !56 {
  br i1 %1, label %9, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 15
  %7 = load i8, ptr %6, align 1, !tbaa !135, !range !120, !noundef !121
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3, %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = zext i1 %1 to i8
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 16
  store i8 %12, ptr %13, align 2, !tbaa !136
  br label %14

14:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setCalculateSrcOfsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 1, !tbaa !137
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser24setStandardUriConformantEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 8, !tbaa !138
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 49, i32 9
  store i8 %5, ptr %7, align 8, !tbaa !150
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10useScannerEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %8 = load ptr, ptr %7, align 8, !tbaa !80
  %9 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4, ptr noundef %6, ptr noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %15)
  %16 = load ptr, ptr %12, align 8, !tbaa !93
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !58
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(776) %16) #19
  br label %22

22:                                               ; preds = %18, %11
  store ptr %9, ptr %12, align 8, !tbaa !93
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setInputBufferSizeEm(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i64 noundef %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66
  %7 = trunc i64 %1 to i32
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66, i32 5
  br i1 %8, label %19, label %10

10:                                               ; preds = %2
  store ptr %4, ptr %9, align 8, !tbaa !152
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66, i32 2
  store i32 %7, ptr %11, align 8, !tbaa !84
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 66, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !83
  %14 = icmp ugt i32 %13, %7
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  store i32 %7, ptr %12, align 4, !tbaa !83
  %16 = load i32, ptr %6, align 8, !tbaa !82
  %17 = icmp ult i32 %16, %7
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 0)
  br label %20

19:                                               ; preds = %2
  store ptr null, ptr %9, align 8, !tbaa !152
  br label %20

20:                                               ; preds = %10, %15, %18, %19
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setIgnoreCachedDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 21
  store i8 %5, ptr %6, align 1, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20setIgnoreAnnotationsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 22
  store i8 %5, ptr %6, align 4, !tbaa !142
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser33setDisableDefaultEntityResolutionEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 23
  store i8 %5, ptr %6, align 1, !tbaa !143
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20setSkipDTDValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 24
  store i8 %5, ptr %6, align 2, !tbaa !144
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5parseERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !61, !range !120, !noundef !121
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !78

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 541, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #19
  br label %46

15:                                               ; preds = %2
  store i8 1, ptr %3, align 8, !tbaa !61
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds ptr, ptr %18, i64 8
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef nonnull align 1 %1)
          to label %34 unwind label %21, !prof !153

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  %25 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = tail call ptr @__cxa_begin_catch(ptr %23) #19
  invoke void @__cxa_rethrow() #21
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
  store i8 0, ptr %3, align 8, !tbaa !61
  ret void

35:                                               ; preds = %31, %21
  %36 = phi ptr [ null, %31 ], [ @_ZN11xercesc_2_79SAXParser15resetInProgressEv, %21 ]
  %37 = phi ptr [ null, %31 ], [ %0, %21 ]
  %38 = phi i32 [ %32, %31 ], [ %24, %21 ]
  %39 = phi ptr [ %33, %31 ], [ %23, %21 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %26, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(224) %37)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
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
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %27
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15resetInProgressEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(224) %0) local_unnamed_addr #15 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  store i8 0, ptr %2, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5parseEPKt(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !61, !range !120, !noundef !121
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 562, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #19
  br label %43

15:                                               ; preds = %2
  store i8 1, ptr %3, align 8, !tbaa !61
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1)
          to label %31 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #19
  invoke void @__cxa_rethrow() #21
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
  store i8 0, ptr %3, align 8, !tbaa !61
  ret void

32:                                               ; preds = %28, %18
  %33 = phi ptr [ null, %28 ], [ @_ZN11xercesc_2_79SAXParser15resetInProgressEv, %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  %37 = icmp eq ptr %34, null
  %38 = or i1 %23, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(224) %34)
          to label %43 unwind label %40

40:                                               ; preds = %39
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #20
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
  tail call void @__clang_call_terminate(ptr %50) #20
  unreachable

51:                                               ; preds = %24
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5parseEPKc(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 8, !tbaa !61, !range !120, !noundef !121
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 583, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #19
  br label %43

15:                                               ; preds = %2
  store i8 1, ptr %3, align 8, !tbaa !61
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1)
          to label %31 unwind label %18

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #19
  invoke void @__cxa_rethrow() #21
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
  store i8 0, ptr %3, align 8, !tbaa !61
  ret void

32:                                               ; preds = %28, %18
  %33 = phi ptr [ null, %28 ], [ @_ZN11xercesc_2_79SAXParser15resetInProgressEv, %18 ]
  %34 = phi ptr [ null, %28 ], [ %0, %18 ]
  %35 = phi i32 [ %29, %28 ], [ %21, %18 ]
  %36 = phi ptr [ %30, %28 ], [ %20, %18 ]
  %37 = icmp eq ptr %34, null
  %38 = or i1 %23, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %32
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(224) %34)
          to label %43 unwind label %40

40:                                               ; preds = %39
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #20
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
  tail call void @__clang_call_terminate(ptr %50) #20
  unreachable

51:                                               ; preds = %24
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18setDocumentHandlerEPNS_15DocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #13 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !154
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5, !prof !94

5:                                                ; preds = %2
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !76
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7, %5
  %12 = phi ptr [ %6, %5 ], [ null, %7 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %14, i64 0, i32 41
  store ptr %12, ptr %15, align 8, !tbaa !102
  br label %16

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13setDTDHandlerEPNS_10DTDHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  store ptr %1, ptr %3, align 8, !tbaa !155
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  %7 = getelementptr inbounds i8, ptr %0, i64 32
  %8 = select i1 %4, ptr null, ptr %7
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 42
  store ptr %8, ptr %9, align 8, !tbaa !156
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #13 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !157
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br i1 %4, label %11, label %7, !prof !94

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  store ptr %8, ptr %9, align 8, !tbaa !158
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !159
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 15
  store ptr %1, ptr %3, align 8, !tbaa !160
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 46
  store ptr %1, ptr %6, align 8, !tbaa !161
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  store ptr %1, ptr %3, align 8, !tbaa !162
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !163
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !164
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 13
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !163
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !101
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #13 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 13
  store ptr %1, ptr %3, align 8, !tbaa !165
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !93
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !163
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !164
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !163
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !101
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !61, !range !120, !noundef !121
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 698, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !61, !range !120, !noundef !121
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 711, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %5 = load i8, ptr %4, align 8, !tbaa !61, !range !120, !noundef !121
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 724, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1)
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10parseResetERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1)
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 !prof !166 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8, !prof !167

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !167

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2), !prof !168
  br label %16

16:                                               ; preds = %8, %12, %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !78

20:                                               ; preds = %21, %16
  ret void

21:                                               ; preds = %16, %21
  %22 = phi i64 [ %30, %21 ], [ 0, %16 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  %30 = add nuw nsw i64 %22, 1
  %31 = load i32, ptr %17, align 8, !tbaa !76
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %21, label %20, !prof !94, !llvm.loop !169
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser13docCharactersEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #16 align 2 !prof !166 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10docCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !91
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %1)
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %3, align 8, !tbaa !76
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %8, !llvm.loop !170
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser10docCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #16 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 40
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 120
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %1)
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %3, align 8, !tbaa !76
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !170

20:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 !prof !56 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !76
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %12

11:                                               ; preds = %12, %5
  ret void

12:                                               ; preds = %9, %12
  %13 = phi i64 [ 0, %9 ], [ %20, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !91
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %20 = add nuw nsw i64 %13, 1
  %21 = load i32, ptr %6, align 8, !tbaa !76
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %20, %22
  br i1 %23, label %12, label %11, !llvm.loop !171
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser7XMLDeclEPKtS2_S2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #16 align 2 !prof !56 {
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  %7 = load i32, ptr %6, align 8, !tbaa !76
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds i8, ptr %0, i64 120
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %19, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !91
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = getelementptr inbounds ptr, ptr %16, i64 13
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 8, !tbaa !76
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !171

23:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5docPIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !58
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !76
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %18

17:                                               ; preds = %18, %11
  ret void

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %26, %18 ]
  %20 = load ptr, ptr %16, align 8, !tbaa !91
  %21 = getelementptr inbounds ptr, ptr %20, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %1, ptr noundef %2)
  %26 = add nuw nsw i64 %19, 1
  %27 = load i32, ptr %12, align 8, !tbaa !76
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %18, label %17, !llvm.loop !172
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser5docPIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #16 align 2 !prof !56 {
  %4 = getelementptr inbounds i8, ptr %0, i64 72
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !58
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, ptr noundef %2)
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds i8, ptr %0, i64 40
  %13 = load i32, ptr %12, align 8, !tbaa !76
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds i8, ptr %0, i64 120
  br label %17

17:                                               ; preds = %15, %17
  %18 = phi i64 [ 0, %15 ], [ %25, %17 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !91
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %2)
  %25 = add nuw nsw i64 %18, 1
  %26 = load i32, ptr %12, align 8, !tbaa !76
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %17, label %29, !llvm.loop !172

29:                                               ; preds = %17, %11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11endDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %16

15:                                               ; preds = %16, %9
  ret void

16:                                               ; preds = %13, %16
  %17 = phi i64 [ 0, %13 ], [ %24, %16 ]
  %18 = load ptr, ptr %14, align 8, !tbaa !91
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %24 = add nuw nsw i64 %17, 1
  %25 = load i32, ptr %10, align 8, !tbaa !76
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %16, label %15, !llvm.loop !173
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser11endDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #16 align 2 !prof !57 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !94

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !174
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13, !prof !78

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %22, %13 ], [ 0, %9 ]
  %15 = getelementptr inbounds i8, ptr %0, i64 120
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds ptr, ptr %19, i64 5
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %22 = add nuw nsw i64 %14, 1
  %23 = load i32, ptr %10, align 8, !tbaa !76
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %13, label %26, !prof !94, !llvm.loop !173

26:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #3 align 2 !prof !175 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = icmp eq ptr %7, null
  br i1 %8, label %61, label %9, !prof !176

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 4
  %13 = load i8, ptr %12, align 2, !tbaa !119, !range !120, !noundef !121
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %54, label %15, !prof !177

15:                                               ; preds = %9
  %16 = icmp eq ptr %4, null
  br i1 %16, label %46, label %17

17:                                               ; preds = %15
  %18 = load i16, ptr %4, align 2, !tbaa !89
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  store i32 0, ptr %21, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull %4)
  %22 = load i32, ptr %21, align 8, !tbaa !82
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !83
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 1)
  br label %27

27:                                               ; preds = %20, %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = load i32, ptr %21, align 8, !tbaa !82
  %31 = add i32 %30, 1
  store i32 %31, ptr %21, align 8, !tbaa !82
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i16, ptr %29, i64 %32
  store i16 58, ptr %33, align 2, !tbaa !89
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !178
  %36 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !181
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %37)
  %38 = load ptr, ptr %6, align 8, !tbaa !154
  %39 = load ptr, ptr %28, align 8, !tbaa !88
  %40 = load i32, ptr %21, align 8, !tbaa !82
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  store i16 0, ptr %42, align 2, !tbaa !89
  %43 = load ptr, ptr %38, align 8, !tbaa !58
  %44 = getelementptr inbounds ptr, ptr %43, i64 4
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %39)
  br label %61

46:                                               ; preds = %17, %15
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !181
  %51 = load ptr, ptr %7, align 8, !tbaa !58
  %52 = getelementptr inbounds ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %50)
  br label %61

54:                                               ; preds = %9
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !178
  %57 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %56)
  %58 = load ptr, ptr %7, align 8, !tbaa !58
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %57), !prof !183
  br label %61

61:                                               ; preds = %54, %46, %27, %5
  %62 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !76
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69, !prof !78

65:                                               ; preds = %69, %61
  %66 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %67 = load i32, ptr %66, align 4, !tbaa !75
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %82, !prof !176

69:                                               ; preds = %61, %69
  %70 = phi i64 [ %78, %69 ], [ 0, %61 ]
  %71 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !91
  %73 = getelementptr inbounds ptr, ptr %72, i64 %70
  %74 = load ptr, ptr %73, align 8, !tbaa !101
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = getelementptr inbounds ptr, ptr %75, i64 6
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  %78 = add nuw nsw i64 %70, 1
  %79 = load i32, ptr %62, align 8, !tbaa !76
  %80 = zext i32 %79 to i64
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %69, label %65, !prof !94, !llvm.loop !184

82:                                               ; preds = %65
  %83 = add i32 %67, -1
  store i32 %83, ptr %66, align 4, !tbaa !75
  br label %84

84:                                               ; preds = %82, %65
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #17 comdat align 2 !prof !185 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !186

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !89
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !187

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !89
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !188, !llvm.loop !189

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !82
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !83
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !190

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = load i32, ptr %0, align 8, !tbaa !82
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !191
  %28 = load i32, ptr %0, align 8, !tbaa !82
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !82
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #16 align 2 !prof !175 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(224) %6, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !91
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %3, align 8, !tbaa !76
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %8, !llvm.loop !192
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #16 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 40
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 120
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %3, align 8, !tbaa !76
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !192

20:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !75
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !154
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1, i32 noundef %2)
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %30, %22 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds ptr, ptr %27, i64 8
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %17, align 8, !tbaa !76
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %22, label %34, !llvm.loop !193

34:                                               ; preds = %22, %16, %4
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #16 align 2 !prof !56 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13resetDocumentEv(ptr nocapture noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %17

15:                                               ; preds = %17, %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  store i32 0, ptr %16, align 4, !tbaa !75
  ret void

17:                                               ; preds = %13, %17
  %18 = phi i64 [ 0, %13 ], [ %25, %17 ]
  %19 = load ptr, ptr %14, align 8, !tbaa !91
  %20 = getelementptr inbounds ptr, ptr %19, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = getelementptr inbounds ptr, ptr %22, i64 9
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %21)
  %25 = add nuw nsw i64 %18, 1
  %26 = load i32, ptr %10, align 8, !tbaa !76
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %17, label %15, !llvm.loop !194
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser13resetDocumentEv(ptr nocapture noundef %0) unnamed_addr #16 align 2 !prof !57 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !94

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !195
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds i8, ptr %0, i64 40
  %11 = load i32, ptr %10, align 8, !tbaa !76
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13, !prof !78

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %22, %13 ], [ 0, %9 ]
  %15 = getelementptr inbounds i8, ptr %0, i64 120
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = load ptr, ptr %18, align 8, !tbaa !58
  %20 = getelementptr inbounds ptr, ptr %19, i64 9
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %22 = add nuw nsw i64 %14, 1
  %23 = load i32, ptr %10, align 8, !tbaa !76
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %13, label %26, !prof !94, !llvm.loop !194

26:                                               ; preds = %13, %9
  %27 = getelementptr inbounds i8, ptr %0, i64 36
  store i32 0, ptr %27, align 4, !tbaa !75
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !94

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %7, i64 0, i32 49
  %9 = load ptr, ptr %3, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %8), !prof !196
  %12 = load ptr, ptr %2, align 8, !tbaa !154
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 9
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12), !prof !197
  br label %16

16:                                               ; preds = %5, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !76
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21, !prof !78

20:                                               ; preds = %21, %16
  ret void

21:                                               ; preds = %16, %21
  %22 = phi i64 [ %30, %21 ], [ 0, %16 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = load ptr, ptr %26, align 8, !tbaa !58
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %30 = add nuw nsw i64 %22, 1
  %31 = load i32, ptr %17, align 8, !tbaa !76
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %21, label %20, !prof !94, !llvm.loop !198
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser13startDocumentEv(ptr nocapture noundef readonly %0) unnamed_addr #16 align 2 !prof !57 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(224) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #3 align 2 !prof !199 {
  br i1 %6, label %13, label %9, !prof !200

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !75
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4, !tbaa !75
  br label %13

13:                                               ; preds = %9, %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !154
  %16 = icmp eq ptr %15, null
  br i1 %16, label %96, label %17, !prof !201

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull %4, i32 noundef %5, i1 noundef zeroext false)
  %19 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %20, i64 0, i32 4
  %22 = load i8, ptr %21, align 2, !tbaa !119, !range !120, !noundef !121
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %81, label %24, !prof !202

24:                                               ; preds = %17
  %25 = icmp eq ptr %3, null
  br i1 %25, label %64, label %26

26:                                               ; preds = %24
  %27 = load i16, ptr %3, align 2, !tbaa !89
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %64, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23
  store i32 0, ptr %30, align 8, !tbaa !82
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull %3)
  %31 = load i32, ptr %30, align 8, !tbaa !82
  %32 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !83
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %30, i32 noundef 1)
  br label %36

36:                                               ; preds = %29, %35
  %37 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 23, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = load i32, ptr %30, align 8, !tbaa !82
  %40 = add i32 %39, 1
  store i32 %40, ptr %30, align 8, !tbaa !82
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds i16, ptr %38, i64 %41
  store i16 58, ptr %42, align 2, !tbaa !89
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !178
  %45 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %44, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !181
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef %46)
  %47 = load ptr, ptr %14, align 8, !tbaa !154
  %48 = load ptr, ptr %37, align 8, !tbaa !88
  %49 = load i32, ptr %30, align 8, !tbaa !82
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i16, ptr %48, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !89
  %52 = load ptr, ptr %47, align 8, !tbaa !58
  %53 = getelementptr inbounds ptr, ptr %52, i64 10
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef %48, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %6, label %55, label %96

55:                                               ; preds = %36
  %56 = load ptr, ptr %14, align 8, !tbaa !154
  %57 = load ptr, ptr %37, align 8, !tbaa !88
  %58 = load i32, ptr %30, align 8, !tbaa !82
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !89
  %61 = load ptr, ptr %56, align 8, !tbaa !58
  %62 = getelementptr inbounds ptr, ptr %61, i64 4
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57)
  br label %96

64:                                               ; preds = %26, %24
  %65 = load ptr, ptr %14, align 8, !tbaa !154
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !178
  %68 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %67, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !181
  %70 = load ptr, ptr %65, align 8, !tbaa !58
  %71 = getelementptr inbounds ptr, ptr %70, i64 10
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %69, ptr noundef nonnull align 8 dereferenceable(8) %18)
  br i1 %6, label %73, label %96

73:                                               ; preds = %64
  %74 = load ptr, ptr %14, align 8, !tbaa !154
  %75 = load ptr, ptr %66, align 8, !tbaa !178
  %76 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %75, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !181
  %78 = load ptr, ptr %74, align 8, !tbaa !58
  %79 = getelementptr inbounds ptr, ptr %78, i64 4
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %77)
  br label %96

81:                                               ; preds = %17
  %82 = load ptr, ptr %14, align 8, !tbaa !154
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !178
  %85 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %84)
  %86 = load ptr, ptr %82, align 8, !tbaa !58
  %87 = getelementptr inbounds ptr, ptr %86, i64 10
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %85, ptr noundef nonnull align 8 dereferenceable(8) %18), !prof !203
  br i1 %6, label %89, label %96, !prof !200

89:                                               ; preds = %81
  %90 = load ptr, ptr %14, align 8, !tbaa !154
  %91 = load ptr, ptr %83, align 8, !tbaa !178
  %92 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %91)
  %93 = load ptr, ptr %90, align 8, !tbaa !58
  %94 = getelementptr inbounds ptr, ptr %93, i64 4
  %95 = load ptr, ptr %94, align 8
  tail call void %95(ptr noundef nonnull align 8 dereferenceable(8) %90, ptr noundef %92), !prof !204
  br label %96

96:                                               ; preds = %64, %73, %36, %55, %89, %81, %13
  %97 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !76
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101, !prof !78

100:                                              ; preds = %101, %96
  ret void

101:                                              ; preds = %96, %101
  %102 = phi i64 [ %110, %101 ], [ 0, %96 ]
  %103 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  %104 = load ptr, ptr %103, align 8, !tbaa !91
  %105 = getelementptr inbounds ptr, ptr %104, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !101
  %107 = load ptr, ptr %106, align 8, !tbaa !58
  %108 = getelementptr inbounds ptr, ptr %107, i64 11
  %109 = load ptr, ptr %108, align 8
  tail call void %109(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  %110 = add nuw nsw i64 %102, 1
  %111 = load i32, ptr %97, align 8, !tbaa !76
  %112 = zext i32 %111 to i64
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %101, label %100, !prof !94, !llvm.loop !205
}

declare void @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #16 align 2 !prof !199 {
  %9 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(224) %9, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 16
  br label %9

8:                                                ; preds = %9, %2
  ret void

9:                                                ; preds = %6, %9
  %10 = phi i64 [ 0, %6 ], [ %17, %9 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !91
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !101
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %17 = add nuw nsw i64 %10, 1
  %18 = load i32, ptr %3, align 8, !tbaa !76
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %9, label %8, !llvm.loop !206
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79SAXParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #16 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 40
  %4 = load i32, ptr %3, align 8, !tbaa !76
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 120
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %16, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(72) %1)
  %16 = add nuw nsw i64 %9, 1
  %17 = load i32, ptr %3, align 8, !tbaa !76
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !206

20:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, i1 zeroext %3) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, i1 zeroext %3) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14doctypeCommentEPKt(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser14doctypeCommentEPKt(ptr nocapture readnone %0, ptr nocapture readnone %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser9doctypePIEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser9doctypePIEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser17doctypeWhitespaceEPKtj(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i1 zeroext %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1, i1 zeroext %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser10endAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12endIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12endIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12endExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12endExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 zeroext %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  %7 = icmp eq ptr %6, null
  %8 = or i1 %7, %3
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !210
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = load ptr, ptr %6, align 8, !tbaa !58
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef nonnull %11)
  br label %23

23:                                               ; preds = %4, %9, %13
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 zeroext %2, i1 noundef zeroext %3) unnamed_addr #16 align 2 !prof !56 {
  %5 = getelementptr inbounds i8, ptr %0, i64 56
  %6 = load ptr, ptr %5, align 8, !tbaa !155
  %7 = icmp eq ptr %6, null
  %8 = or i1 %7, %3
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !207
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !209
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !210
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !211
  %20 = load ptr, ptr %6, align 8, !tbaa !58
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef nonnull %11)
  br label %23

23:                                               ; preds = %4, %9, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12resetDocTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12resetDocTypeEv(ptr nocapture noundef readonly %0) unnamed_addr #16 align 2 !prof !56 {
  %2 = getelementptr inbounds i8, ptr %0, i64 56
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !56 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !212
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !214
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !215
  %15 = load ptr, ptr %5, align 8, !tbaa !58
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10, ptr noundef %12, ptr noundef %14)
  br label %18

18:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 noundef zeroext %2) unnamed_addr #16 align 2 !prof !56 {
  %4 = getelementptr inbounds i8, ptr %0, i64 56
  %5 = load ptr, ptr %4, align 8, !tbaa !155
  %6 = icmp eq ptr %5, null
  %7 = or i1 %6, %2
  br i1 %7, label %18, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !212
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !214
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !215
  %15 = load ptr, ptr %5, align 8, !tbaa !58
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %10, ptr noundef %12, ptr noundef %14)
  br label %18

18:                                               ; preds = %3, %8
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14startIntSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser14startIntSubsetEv(ptr nocapture readnone %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14startExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser14startExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn32_N11xercesc_2_79SAXParser8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser11resetErrorsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %9

9:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParser11resetErrorsEv(ptr nocapture noundef readonly %0) unnamed_addr #16 align 2 !prof !57 {
  %2 = getelementptr inbounds i8, ptr %0, i64 96
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !94

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !58
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3), !prof !216
  br label %9

9:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #19
  %11 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %12 = load ptr, ptr %11, align 8, !tbaa !80
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !157
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #19
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #21
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
  %26 = load ptr, ptr %14, align 8, !tbaa !58
  %27 = icmp eq i32 %3, 2
  %28 = select i1 %27, i64 4, i64 3
  %29 = icmp eq i32 %3, 0
  %30 = select i1 %29, i64 2, i64 %28
  %31 = getelementptr inbounds ptr, ptr %26, i64 %30
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %33 unwind label %23

33:                                               ; preds = %25, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #19
  ret void

34:                                               ; preds = %23, %21
  %35 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #19
  resume { ptr, i32 } %35

36:                                               ; preds = %20
  unreachable
}

declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #16 align 2 !prof !56 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79SAXParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(224) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParser14endInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #18 align 2 !prof !56 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZThn24_N11xercesc_2_79SAXParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #18 align 2 !prof !56 {
  ret i1 false
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser13resetEntitiesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParser13resetEntitiesEv(ptr nocapture readnone %0) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #3 align 2 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #16 align 2 !prof !56 {
  %5 = getelementptr inbounds i8, ptr %0, i64 72
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !56 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !220
  %11 = load ptr, ptr %4, align 8, !tbaa !58
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !165
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !58
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %15, %19, %6
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn24_N11xercesc_2_79SAXParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #16 align 2 !prof !56 {
  %3 = getelementptr inbounds i8, ptr %0, i64 72
  %4 = load ptr, ptr %3, align 8, !tbaa !162
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !217
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !220
  %11 = load ptr, ptr %4, align 8, !tbaa !58
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 80
  %17 = load ptr, ptr %16, align 8, !tbaa !165
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !58
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %6, %15, %19
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79SAXParser16startInputSourceERKNS_11InputSourceE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 1 %1) unnamed_addr #18 align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79SAXParser15getDoValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #12 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 8, !tbaa !126
  %6 = icmp eq i32 %5, 1
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser15setDoValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #13 align 2 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 8, !tbaa !145
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 51
  %8 = zext i1 %1 to i32
  store i32 %8, ptr %7, align 8, !tbaa !126
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !61, !range !120, !noundef !121
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1282, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #19
  br label %46

17:                                               ; preds = %4
  store i8 1, ptr %5, align 8, !tbaa !61
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %21 unwind label %22

21:                                               ; preds = %17
  store i8 0, ptr %5, align 8, !tbaa !61
  ret ptr %20

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_begin_catch(ptr %24) #19
  invoke void @__cxa_rethrow() #21
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
  %36 = phi ptr [ null, %32 ], [ @_ZN11xercesc_2_79SAXParser15resetInProgressEv, %22 ]
  %37 = phi ptr [ null, %32 ], [ %0, %22 ]
  %38 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %39 = phi ptr [ %34, %32 ], [ %24, %22 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %27, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(224) %37)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
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
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %28
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !61, !range !120, !noundef !121
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1308, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #19
  br label %46

17:                                               ; preds = %4
  store i8 1, ptr %5, align 8, !tbaa !61
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %21 unwind label %22

21:                                               ; preds = %17
  store i8 0, ptr %5, align 8, !tbaa !61
  ret ptr %20

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = tail call ptr @__cxa_begin_catch(ptr %24) #19
  invoke void @__cxa_rethrow() #21
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
  %36 = phi ptr [ null, %32 ], [ @_ZN11xercesc_2_79SAXParser15resetInProgressEv, %22 ]
  %37 = phi ptr [ null, %32 ], [ %0, %22 ]
  %38 = phi i32 [ %33, %32 ], [ %25, %22 ]
  %39 = phi ptr [ %34, %32 ], [ %24, %22 ]
  %40 = icmp eq ptr %37, null
  %41 = or i1 %27, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %35
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(224) %37)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
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
  tail call void @__clang_call_terminate(ptr %53) #20
  unreachable

54:                                               ; preds = %28
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79SAXParser11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 8, !tbaa !61, !range !120, !noundef !121
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %10 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 21
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1334, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #19
  br label %49

17:                                               ; preds = %4
  store i8 1, ptr %5, align 8, !tbaa !61
  %18 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !93
  %20 = load ptr, ptr %19, align 8, !tbaa !58
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %24 unwind label %25

24:                                               ; preds = %17
  store i8 0, ptr %5, align 8, !tbaa !61
  ret ptr %23

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  %29 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = tail call ptr @__cxa_begin_catch(ptr %27) #19
  invoke void @__cxa_rethrow() #21
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
  %39 = phi ptr [ null, %35 ], [ @_ZN11xercesc_2_79SAXParser15resetInProgressEv, %25 ]
  %40 = phi ptr [ null, %35 ], [ %0, %25 ]
  %41 = phi i32 [ %36, %35 ], [ %28, %25 ]
  %42 = phi ptr [ %37, %35 ], [ %27, %25 ]
  %43 = icmp eq ptr %40, null
  %44 = or i1 %30, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(224) %40)
          to label %49 unwind label %46

46:                                               ; preds = %45
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #20
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
  tail call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %31
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79SAXParser22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #3 align 2 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SAXParser", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76ParserD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_76ParserD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @llvm.trap() #20
  unreachable
}

declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !56 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !58
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }

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
!35 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_715VecAttrListImplC1Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_79SAXParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_79SAXParser10initializeEv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv, ptr @_ZN11xercesc_2_715GrammarResolverD1Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!39 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_79SAXParser10initializeEv, ptr @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_79SAXParser7cleanUpEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_79SAXParserD2Ev, ptr @_ZN11xercesc_2_715VecAttrListImplD1Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_79SAXParserD0Ev, ptr @_ZN11xercesc_2_79SAXParserD2Ev, i64 1}
!46 = !{ptr @_ZN11xercesc_2_79SAXParserD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!47 = !{ptr @_ZThn8_N11xercesc_2_79SAXParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79SAXParser13docCharactersEPKtjb, i64 468}
!48 = !{ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 241}
!49 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!50 = !{ptr @_ZThn8_N11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_79SAXParser10endElementERKNS_14XMLElementDeclEjbPKt, i64 241}
!51 = !{ptr @_ZThn8_N11xercesc_2_79SAXParser13startDocumentEv, ptr @_ZN11xercesc_2_79SAXParser13startDocumentEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_715VecAttrListImpl9setVectorEPKNS_11RefVectorOfINS_7XMLAttrEEEjb, i64 390}
!53 = !{ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 539}
!54 = !{ptr @_ZThn8_N11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79SAXParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, i64 390}
!55 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!56 = !{!"function_entry_count", i64 0}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !60, i64 0}
!60 = !{!"Simple C++ TBAA"}
!61 = !{!62, !68, i64 40}
!62 = !{!"_ZTSN11xercesc_2_79SAXParserE", !63, i64 0, !64, i64 8, !65, i64 16, !66, i64 24, !67, i64 32, !68, i64 40, !70, i64 44, !70, i64 48, !70, i64 52, !71, i64 56, !73, i64 80, !73, i64 88, !73, i64 96, !73, i64 104, !73, i64 112, !73, i64 120, !73, i64 128, !73, i64 136, !73, i64 144, !73, i64 152, !73, i64 160, !73, i64 168, !73, i64 176, !74, i64 184}
!63 = !{!"_ZTSN11xercesc_2_76ParserE"}
!64 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!65 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!66 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!67 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!68 = !{!"bool", !69, i64 0}
!69 = !{!"omnipotent char", !60, i64 0}
!70 = !{!"int", !69, i64 0}
!71 = !{!"_ZTSN11xercesc_2_715VecAttrListImplE", !72, i64 0, !68, i64 8, !70, i64 12, !73, i64 16}
!72 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!73 = !{!"any pointer", !69, i64 0}
!74 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !70, i64 0, !70, i64 4, !70, i64 8, !68, i64 12, !73, i64 16, !73, i64 24, !73, i64 32}
!75 = !{!62, !70, i64 44}
!76 = !{!62, !70, i64 48}
!77 = !{!62, !70, i64 52}
!78 = !{!"branch_weights", i32 1, i32 0}
!79 = !{!62, !73, i64 160}
!80 = !{!62, !73, i64 168}
!81 = !{!62, !73, i64 176}
!82 = !{!74, !70, i64 0}
!83 = !{!74, !70, i64 4}
!84 = !{!74, !70, i64 8}
!85 = !{!74, !68, i64 12}
!86 = !{!74, !73, i64 16}
!87 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!88 = !{!74, !73, i64 32}
!89 = !{!90, !90, i64 0}
!90 = !{!"short", !69, i64 0}
!91 = !{!62, !73, i64 128}
!92 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!93 = !{!62, !73, i64 136}
!94 = !{!"branch_weights", i32 0, i32 1}
!95 = !{!"VP", i32 0, i64 1, i64 7919472901623622104, i64 1}
!96 = !{!62, !73, i64 144}
!97 = !{!98, !73, i64 8}
!98 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !68, i64 0, !68, i64 1, !68, i64 2, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64, !73, i64 72}
!99 = !{!62, !73, i64 152}
!100 = !{!"VP", i32 1, i64 1, i64 256, i64 1}
!101 = !{!73, !73, i64 0}
!102 = !{!103, !73, i64 120}
!103 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !104, i64 0, !105, i64 8, !68, i64 16, !68, i64 17, !68, i64 18, !68, i64 19, !68, i64 20, !68, i64 21, !68, i64 22, !68, i64 23, !68, i64 24, !68, i64 25, !68, i64 26, !68, i64 27, !68, i64 28, !68, i64 29, !68, i64 30, !68, i64 31, !68, i64 32, !68, i64 33, !68, i64 34, !68, i64 35, !68, i64 36, !68, i64 37, !68, i64 38, !70, i64 40, !70, i64 44, !70, i64 48, !70, i64 52, !70, i64 56, !70, i64 60, !70, i64 64, !70, i64 68, !73, i64 72, !70, i64 80, !70, i64 84, !70, i64 88, !70, i64 92, !70, i64 96, !73, i64 104, !73, i64 112, !73, i64 120, !73, i64 128, !73, i64 136, !73, i64 144, !73, i64 152, !73, i64 160, !73, i64 168, !68, i64 176, !106, i64 184, !73, i64 264, !109, i64 272, !73, i64 280, !73, i64 288, !73, i64 296, !73, i64 304, !73, i64 312, !73, i64 320, !73, i64 328, !73, i64 336, !73, i64 344, !108, i64 352, !73, i64 360, !110, i64 368, !74, i64 392, !74, i64 432, !74, i64 472, !74, i64 512, !74, i64 552, !74, i64 592, !74, i64 632, !111, i64 672}
!104 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!105 = !{!"long", !69, i64 0}
!106 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !107, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !70, i64 40, !73, i64 48, !68, i64 56, !108, i64 60, !68, i64 64, !73, i64 72}
!107 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!108 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !69, i64 0}
!109 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !69, i64 0}
!110 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !70, i64 0, !73, i64 8, !73, i64 16}
!111 = !{!"_ZTSN11xercesc_2_79ElemStackE", !70, i64 0, !70, i64 4, !112, i64 8, !73, i64 48, !70, i64 56, !70, i64 60, !70, i64 64, !70, i64 68, !70, i64 72, !70, i64 76, !70, i64 80, !73, i64 88, !73, i64 96}
!112 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !113, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !70, i64 32, !70, i64 36}
!113 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!114 = distinct !{!114, !115, !116}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!"llvm.loop.unroll.disable"}
!117 = distinct !{!117, !115, !116}
!118 = !{!103, !73, i64 264}
!119 = !{!103, !68, i64 18}
!120 = !{i8 0, i8 2}
!121 = !{}
!122 = !{!103, !68, i64 33}
!123 = !{!103, !68, i64 34}
!124 = !{!103, !68, i64 19}
!125 = !{!103, !68, i64 20}
!126 = !{!103, !109, i64 272}
!127 = !{!103, !68, i64 26}
!128 = !{!103, !68, i64 27}
!129 = !{!103, !68, i64 28}
!130 = !{!103, !70, i64 40}
!131 = !{!103, !73, i64 328}
!132 = !{!103, !73, i64 336}
!133 = !{!103, !73, i64 344}
!134 = !{!103, !68, i64 31}
!135 = !{!103, !68, i64 29}
!136 = !{!103, !68, i64 30}
!137 = !{!103, !68, i64 17}
!138 = !{!103, !68, i64 16}
!139 = !{!103, !73, i64 304}
!140 = !{!106, !73, i64 16}
!141 = !{!103, !68, i64 35}
!142 = !{!103, !68, i64 36}
!143 = !{!103, !68, i64 37}
!144 = !{!103, !68, i64 38}
!145 = !{!103, !68, i64 24}
!146 = !{!103, !73, i64 360}
!147 = distinct !{!147, !115, !116}
!148 = !{!103, !70, i64 44}
!149 = !{!103, !70, i64 48}
!150 = !{!106, !68, i64 64}
!151 = !{!103, !105, i64 8}
!152 = !{!74, !73, i64 24}
!153 = !{!"VP", i32 0, i64 1, i64 -4721723792287405904, i64 1}
!154 = !{!62, !73, i64 80}
!155 = !{!62, !73, i64 88}
!156 = !{!103, !73, i64 128}
!157 = !{!62, !73, i64 112}
!158 = !{!103, !73, i64 144}
!159 = !{!103, !73, i64 152}
!160 = !{!62, !73, i64 120}
!161 = !{!103, !73, i64 160}
!162 = !{!62, !73, i64 96}
!163 = !{!103, !73, i64 136}
!164 = !{!106, !73, i64 24}
!165 = !{!62, !73, i64 104}
!166 = !{!"function_entry_count", i64 468}
!167 = !{!"branch_weights", i32 0, i32 468}
!168 = !{!"VP", i32 0, i64 468, i64 -1373037886660505251, i64 468}
!169 = distinct !{!169, !115, !116}
!170 = distinct !{!170, !115, !116}
!171 = distinct !{!171, !115, !116}
!172 = distinct !{!172, !115, !116}
!173 = distinct !{!173, !115, !116}
!174 = !{!"VP", i32 0, i64 1, i64 -1730034406448304825, i64 1}
!175 = !{!"function_entry_count", i64 241}
!176 = !{!"branch_weights", i32 0, i32 241}
!177 = !{!"branch_weights", i32 241, i32 0}
!178 = !{!179, !73, i64 16}
!179 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !113, i64 0, !73, i64 8, !73, i64 16, !180, i64 24, !70, i64 28, !68, i64 32}
!180 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !69, i64 0}
!181 = !{!182, !73, i64 32}
!182 = !{!"_ZTSN11xercesc_2_75QNameE", !113, i64 0, !70, i64 8, !70, i64 12, !70, i64 16, !70, i64 20, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48}
!183 = !{!"VP", i32 0, i64 241, i64 -8952031775295723064, i64 241}
!184 = distinct !{!184, !115, !116}
!185 = !{!"function_entry_count", i64 789922}
!186 = !{!"branch_weights", i32 0, i32 789922}
!187 = !{!"branch_weights", i32 284, i32 789638}
!188 = !{!"branch_weights", i32 789638, i32 41628303}
!189 = distinct !{!189, !115, !116}
!190 = !{!"branch_weights", i32 789636, i32 2}
!191 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!192 = distinct !{!192, !115, !116}
!193 = distinct !{!193, !115, !116}
!194 = distinct !{!194, !115, !116}
!195 = !{!"VP", i32 0, i64 1, i64 -4061934458681435823, i64 1}
!196 = !{!"VP", i32 0, i64 1, i64 -8797685144014391110, i64 1}
!197 = !{!"VP", i32 0, i64 1, i64 4595260545888196858, i64 1}
!198 = distinct !{!198, !115, !116}
!199 = !{!"function_entry_count", i64 390}
!200 = !{!"branch_weights", i32 149, i32 241}
!201 = !{!"branch_weights", i32 0, i32 390}
!202 = !{!"branch_weights", i32 390, i32 0}
!203 = !{!"VP", i32 0, i64 390, i64 6410648700052799677, i64 390}
!204 = !{!"VP", i32 0, i64 149, i64 -8952031775295723064, i64 149}
!205 = distinct !{!205, !115, !116}
!206 = distinct !{!206, !115, !116}
!207 = !{!208, !73, i64 32}
!208 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !113, i64 0, !70, i64 8, !70, i64 12, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48, !73, i64 56, !73, i64 64}
!209 = !{!208, !73, i64 24}
!210 = !{!208, !73, i64 40}
!211 = !{!208, !73, i64 48}
!212 = !{!213, !73, i64 16}
!213 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !113, i64 0, !70, i64 8, !70, i64 12, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40, !73, i64 48}
!214 = !{!213, !73, i64 24}
!215 = !{!213, !73, i64 32}
!216 = !{!"VP", i32 0, i64 1, i64 6156343452316473105, i64 1}
!217 = !{!218, !73, i64 8}
!218 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !219, i64 0, !73, i64 8, !73, i64 16, !73, i64 24, !73, i64 32, !73, i64 40}
!219 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !69, i64 0}
!220 = !{!218, !73, i64 16}
!221 = !{!222, !73, i64 40}
!222 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !223, i64 8, !73, i64 16, !70, i64 24, !73, i64 32, !73, i64 40}
!223 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !69, i64 0}
