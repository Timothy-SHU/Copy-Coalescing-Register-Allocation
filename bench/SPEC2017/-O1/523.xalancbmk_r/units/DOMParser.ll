; ModuleID = 'DOMParser.cpp'
source_filename = "DOMParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", i8, i8, i8, i8, i8, %"class.xercesc_2_7::DOM_Node", %"class.xercesc_2_7::DOM_Node", %"class.xercesc_2_7::DOM_Document", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
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
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOM_CDATASection" = type { %"class.xercesc_2_7::DOM_Text" }
%"class.xercesc_2_7::DOM_Text" = type { %"class.xercesc_2_7::DOM_CharacterData" }
%"class.xercesc_2_7::DOM_CharacterData" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_Comment" = type { %"class.xercesc_2_7::DOM_CharacterData" }
%"class.xercesc_2_7::DOM_ProcessingInstruction" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DocumentTypeImpl" = type <{ %"class.xercesc_2_7::ParentNode.base", [4 x i8], %"class.xercesc_2_7::DOMString", ptr, ptr, ptr, %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString", %"class.xercesc_2_7::DOMString", i8, [7 x i8] }>
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOM_Element" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOM_EntityReference" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_XMLDecl" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::DOM_DocumentType" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_ = comdat any

$_ZN11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_79DOMParser13resetEntitiesEv = comdat any

$_ZN11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZThn16_N11xercesc_2_79DOMParser13resetEntitiesEv = comdat any

$_ZThn16_N11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE = comdat any

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

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEED2Ev = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

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

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_79DOMParserE = dso_local unnamed_addr constant { [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] } { [41 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79DOMParserE, ptr @_ZN11xercesc_2_79DOMParserD2Ev, ptr @_ZN11xercesc_2_79DOMParserD0Ev, ptr @_ZN11xercesc_2_79DOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_79DOMParser10docCommentEPKt, ptr @_ZN11xercesc_2_79DOMParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_79DOMParser11endDocumentEv, ptr @_ZN11xercesc_2_79DOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_79DOMParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79DOMParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_79DOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_79DOMParser13startDocumentEv, ptr @_ZN11xercesc_2_79DOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_79DOMParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79DOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_, ptr @_ZN11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_79DOMParser11resetErrorsEv, ptr @_ZN11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79DOMParser13resetEntitiesEv, ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_79DOMParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_79DOMParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_79DOMParser12endIntSubsetEv, ptr @_ZN11xercesc_2_79DOMParser12endExtSubsetEv, ptr @_ZN11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_79DOMParser12resetDocTypeEv, ptr @_ZN11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_79DOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_79DOMParser14startIntSubsetEv, ptr @_ZN11xercesc_2_79DOMParser14startExtSubsetEv, ptr @_ZN11xercesc_2_79DOMParser8TextDeclEPKtS2_], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_79DOMParserE, ptr @_ZThn8_N11xercesc_2_79DOMParserD1Ev, ptr @_ZThn8_N11xercesc_2_79DOMParserD0Ev, ptr @_ZThn8_N11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn8_N11xercesc_2_79DOMParser11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_79DOMParserE, ptr @_ZThn16_N11xercesc_2_79DOMParserD1Ev, ptr @_ZThn16_N11xercesc_2_79DOMParserD0Ev, ptr @_ZThn16_N11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE, ptr @_ZThn16_N11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn16_N11xercesc_2_79DOMParser13resetEntitiesEv, ptr @_ZThn16_N11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn16_N11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_79DOMParserE, ptr @_ZThn24_N11xercesc_2_79DOMParserD1Ev, ptr @_ZThn24_N11xercesc_2_79DOMParserD0Ev, ptr @_ZThn24_N11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn24_N11xercesc_2_79DOMParser14doctypeCommentEPKt, ptr @_ZThn24_N11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn24_N11xercesc_2_79DOMParser9doctypePIEPKtS2_, ptr @_ZThn24_N11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj, ptr @_ZThn24_N11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn24_N11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_79DOMParser12endIntSubsetEv, ptr @_ZThn24_N11xercesc_2_79DOMParser12endExtSubsetEv, ptr @_ZThn24_N11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn24_N11xercesc_2_79DOMParser12resetDocTypeEv, ptr @_ZThn24_N11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn24_N11xercesc_2_79DOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_79DOMParser14startIntSubsetEv, ptr @_ZThn24_N11xercesc_2_79DOMParser14startExtSubsetEv, ptr @_ZThn24_N11xercesc_2_79DOMParser8TextDeclEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [14 x i8] c"DOMParser.cpp\00", align 1
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@_ZZN11xercesc_2_79DOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbbE5XMLNS = internal constant [6 x i16] [i16 120, i16 109, i16 108, i16 110, i16 115, i16 0], align 2
@_ZN11xercesc_2_76XMLUni15fgAttListStringE = external constant [0 x i16], align 2
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
@_ZZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS = internal constant [6 x i16] [i16 120, i16 109, i16 108, i16 110, i16 115, i16 0], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgPubIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgSysIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgNDATAStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79DOMParserE = dso_local constant [26 x i8] c"N11xercesc_2_79DOMParserE\00", align 1
@_ZTSN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant [36 x i8] c"N11xercesc_2_718XMLDocumentHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_718XMLDocumentHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLErrorReporterE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLErrorReporterE }, comdat, align 8
@_ZTSN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716XMLEntityHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLEntityHandlerE }, comdat, align 8
@_ZTSN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant [32 x i8] c"N11xercesc_2_714DocTypeHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_714DocTypeHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_79DOMParserE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79DOMParserE, i32 0, i32 5, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, i64 2, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, i64 2050, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, i64 4098, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, i64 6146, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZTVN11xercesc_2_718XMLDocumentHandlerE = linkonce_odr dso_local unnamed_addr constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_718XMLDocumentHandlerE, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev, ptr @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLErrorReporterE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLErrorReporterE, ptr @_ZN11xercesc_2_716XMLErrorReporterD2Ev, ptr @_ZN11xercesc_2_716XMLErrorReporterD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716XMLEntityHandlerE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLEntityHandlerE, ptr @_ZN11xercesc_2_716XMLEntityHandlerD2Ev, ptr @_ZN11xercesc_2_716XMLEntityHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_714DocTypeHandlerE = linkonce_odr dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_714DocTypeHandlerE, ptr @_ZN11xercesc_2_714DocTypeHandlerD2Ev, ptr @_ZN11xercesc_2_714DocTypeHandlerD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_78NodeImpl7ID_ATTRE = external local_unnamed_addr constant i16, align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1

@_ZN11xercesc_2_79DOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_79DOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_79DOMParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79DOMParserD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #21
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !38
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %7, align 8, !tbaa !38
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !38
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !38
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !38
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 4
  store i8 0, ptr %8, align 8, !tbaa !41
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 5
  store i8 1, ptr %9, align 1, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 6
  store i8 1, ptr %10, align 2, !tbaa !53
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %11, align 1, !tbaa !54
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %12, align 4, !tbaa !55
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %22

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %24

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %18, i8 0, i64 72, i1 false)
  store ptr %1, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  store ptr %2, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 23
  store ptr %3, ptr %21, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_79DOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %41 unwind label %26

22:                                               ; preds = %4
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %46

24:                                               ; preds = %15
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %44

26:                                               ; preds = %17
  %27 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %31 = icmp eq i32 %29, %30
  %32 = tail call ptr @__cxa_begin_catch(ptr %28) #21
  br i1 %31, label %33, label %35

33:                                               ; preds = %26
  invoke void @__cxa_rethrow() #23
          to label %34 unwind label %39

34:                                               ; preds = %33
  unreachable

35:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_79DOMParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  invoke void @__cxa_rethrow() #23
          to label %36 unwind label %37

36:                                               ; preds = %35
  unreachable

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %42 unwind label %48

39:                                               ; preds = %33
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %42 unwind label %48

41:                                               ; preds = %17
  ret void

42:                                               ; preds = %39, %37
  %43 = phi { ptr, i32 } [ %38, %37 ], [ %40, %39 ]
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #21
  br label %44

44:                                               ; preds = %42, %24
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #21
  br label %46

46:                                               ; preds = %44, %22
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %23, %22 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  resume { ptr, i32 } %47

48:                                               ; preds = %39, %37
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #22
  unreachable
}

declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = load ptr, ptr %2, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7)
          to label %8 unwind label %39

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  store ptr %4, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 20
  store ptr %11, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = load ptr, ptr %2, align 8, !tbaa !57
  %16 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %14, ptr noundef nonnull %4, ptr noundef %15)
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  store ptr %16, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %16, i64 0, i32 41
  store ptr %0, ptr %18, align 8, !tbaa !64
  %19 = getelementptr inbounds i8, ptr %0, i64 24
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %16, i64 0, i32 42
  store ptr %19, ptr %20, align 8, !tbaa !78
  %21 = load ptr, ptr %12, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %21)
  %22 = load ptr, ptr %2, align 8, !tbaa !57
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22)
  %24 = load ptr, ptr %2, align 8, !tbaa !57
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1
  store i8 1, ptr %25, align 8, !tbaa !79
  %26 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 1
  store i32 0, ptr %26, align 4, !tbaa !81
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 2
  store i32 64, ptr %27, align 8, !tbaa !82
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 3
  store ptr null, ptr %28, align 8, !tbaa !83
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %23, i64 0, i32 1, i32 4
  store ptr %24, ptr %29, align 8, !tbaa !84
  %30 = load ptr, ptr %24, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef 512)
          to label %34 unwind label %41

34:                                               ; preds = %8
  store ptr %33, ptr %28, align 8, !tbaa !83
  %35 = load i32, ptr %27, align 8, !tbaa !82
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %33, i8 0, i64 %37, i1 false)
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  store ptr %23, ptr %38, align 8, !tbaa !85
  tail call void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void

39:                                               ; preds = %1
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #21
  br label %43

41:                                               ; preds = %8
  %42 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #21
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  resume { ptr, i32 } %44
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %3, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #21
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 1
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(776) %9) #21
  br label %15

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %17) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #21
  br label %20

20:                                               ; preds = %19, %15
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %22) #21
  br label %28

28:                                               ; preds = %24, %20
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !38
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_79DOMParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_79DOMParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79DOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_79DOMParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #21
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  call void @_ZN11xercesc_2_712DOM_Document14createDocumentEPNS_13MemoryManagerE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %2, ptr noundef %4)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %20

7:                                                ; preds = %1
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 33
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull align 8 dereferenceable(160) %0)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null)
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %15, align 1, !tbaa !54
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !85
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %18, i64 0, i32 1, i32 1
  store i32 0, ptr %19, align 4, !tbaa !81
  ret void

20:                                               ; preds = %1
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  resume { ptr, i32 } %21
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

declare void @_ZN11xercesc_2_712DOM_Document14createDocumentEPNS_13MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xercesc_2_79DOMParser12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 50
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 4
  %5 = load i8, ptr %4, align 2, !tbaa !87, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 5
  %5 = load i8, ptr %4, align 1, !tbaa !90, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser28getValidationConstraintFatalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 4, !tbaa !91, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMParser19getValidationSchemeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 0, i32 2
  %8 = icmp eq i32 %5, 1
  %9 = select i1 %8, i32 1, i32 %7
  ret i32 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 12
  %5 = load i8, ptr %4, align 2, !tbaa !93, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser31getValidationSchemaFullCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 13
  %5 = load i8, ptr %4, align 1, !tbaa !94, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser29getIdentityConstraintCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 14
  %5 = load i8, ptr %4, align 4, !tbaa !95, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMParser13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !96
  ret i32 %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMParser25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 58
  %5 = load ptr, ptr %4, align 8, !tbaa !97
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMParser36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  ret ptr %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser25isCachingGrammarFromParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 15
  %5 = load i8, ptr %4, align 1, !tbaa !99, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser27isUsingCachedGrammarInParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 16
  %5 = load i8, ptr %4, align 2, !tbaa !100, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser14getRootGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMParser10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser18getCalculateSrcOfsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !102, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser24getStandardUriConformantEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 2
  %5 = load i8, ptr %4, align 8, !tbaa !103, !range !88, !noundef !89
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMParser12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 49, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %5)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 4
  store i8 %5, ptr %6, align 2, !tbaa !87
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !105
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  br i1 %4, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  store ptr %8, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !107
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 15
  store ptr %1, ptr %3, align 8, !tbaa !108
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 46
  store ptr %1, ptr %6, align 8, !tbaa !109
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  store ptr %1, ptr %3, align 8, !tbaa !110
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !112
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 13
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !111
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !113
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 13
  store ptr %1, ptr %3, align 8, !tbaa !114
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  store ptr null, ptr %6, align 8, !tbaa !110
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 43
  store ptr %9, ptr %12, align 8, !tbaa !111
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 49, i32 3
  store ptr %9, ptr %13, align 8, !tbaa !112
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 5
  store i8 %5, ptr %6, align 1, !tbaa !90
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 6
  store i8 %5, ptr %6, align 4, !tbaa !91
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser19setValidationSchemeENS0_10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
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
  store i32 %8, ptr %11, align 8, !tbaa !92
  store i8 %9, ptr %10, align 8, !tbaa !115
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 12
  store i8 %5, ptr %6, align 2, !tbaa !93
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser31setValidationSchemaFullCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 13
  store i8 %5, ptr %6, align 1, !tbaa !94
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser29setIdentityConstraintCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 14
  store i8 %5, ptr %6, align 4, !tbaa !95
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser25setExternalSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 58
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !116
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 2, !tbaa !117
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !117
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !119

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  store ptr %35, ptr %7, align 8, !tbaa !97
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !116
  %13 = icmp eq ptr %1, null
  br i1 %13, label %34, label %14

14:                                               ; preds = %2
  %15 = load i16, ptr %1, align 2, !tbaa !117
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !117
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !llvm.loop !119

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %22, %14
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = load ptr, ptr %12, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %29)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %33, ptr nonnull align 2 %1, i64 %29, i1 false)
  br label %34

34:                                               ; preds = %2, %28
  %35 = phi ptr [ %33, %28 ], [ null, %2 ]
  store ptr %35, ptr %7, align 8, !tbaa !98
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser25setExternalSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 58
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !116
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !97
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser36setExternalNoNamespaceSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !98
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %8)
  %12 = load ptr, ptr %5, align 8, !tbaa !116
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %12)
  store ptr %13, ptr %7, align 8, !tbaa !98
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser21cacheGrammarFromParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 15
  store i8 %5, ptr %6, align 1, !tbaa !99
  br i1 %1, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 16
  store i8 1, ptr %8, align 2, !tbaa !100
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser23useCachedGrammarInParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 !prof !37 {
  br i1 %1, label %9, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 15
  %7 = load i8, ptr %6, align 1, !tbaa !99, !range !88, !noundef !89
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3, %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = zext i1 %1 to i8
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 16
  store i8 %12, ptr %13, align 2, !tbaa !100
  br label %14

14:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser18setCalculateSrcOfsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 3
  store i8 %5, ptr %6, align 1, !tbaa !102
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser24setStandardUriConformantEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 2
  store i8 %5, ptr %6, align 8, !tbaa !103
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 49, i32 9
  store i8 %5, ptr %7, align 8, !tbaa !122
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10useScannerEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4, ptr noundef %6, ptr noundef %8)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %13)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %15)
  %16 = load ptr, ptr %12, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(776) %16) #21
  br label %22

22:                                               ; preds = %18, %11
  store ptr %9, ptr %12, align 8, !tbaa !63
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5parseERKNS_11InputSourceE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !54, !range !88, !noundef !89
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  br label %35

13:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef nonnull align 1 %1)
          to label %19 unwind label %20

19:                                               ; preds = %13
  store i8 0, ptr %3, align 1, !tbaa !54
  ret void

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %25 = icmp eq i32 %23, %24
  %26 = tail call ptr @__cxa_begin_catch(ptr %22) #21
  br i1 %25, label %27, label %29

27:                                               ; preds = %20
  invoke void @__cxa_rethrow() #23
          to label %28 unwind label %33

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %20
  store i8 0, ptr %3, align 1, !tbaa !54
  invoke void @__cxa_rethrow() #23
          to label %30 unwind label %31

30:                                               ; preds = %29
  unreachable

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %37

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %37

35:                                               ; preds = %33, %31, %11
  %36 = phi { ptr, i32 } [ %12, %11 ], [ %32, %31 ], [ %34, %33 ]
  resume { ptr, i32 } %36

37:                                               ; preds = %33, %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #22
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5parseEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !54, !range !88, !noundef !89
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 449, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  br label %32

13:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef %1)
          to label %16 unwind label %17

16:                                               ; preds = %13
  store i8 0, ptr %3, align 1, !tbaa !54
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %22 = icmp eq i32 %20, %21
  %23 = tail call ptr @__cxa_begin_catch(ptr %19) #21
  br i1 %22, label %24, label %26

24:                                               ; preds = %17
  invoke void @__cxa_rethrow() #23
          to label %25 unwind label %30

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %17
  store i8 0, ptr %3, align 1, !tbaa !54
  invoke void @__cxa_rethrow() #23
          to label %27 unwind label %28

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %34

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %34

32:                                               ; preds = %30, %28, %11
  %33 = phi { ptr, i32 } [ %12, %11 ], [ %29, %28 ], [ %31, %30 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %30, %28
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #22
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5parseEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !54, !range !88, !noundef !89
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 43, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  br label %32

13:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef %1)
          to label %16 unwind label %17

16:                                               ; preds = %13
  store i8 0, ptr %3, align 1, !tbaa !54
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %22 = icmp eq i32 %20, %21
  %23 = tail call ptr @__cxa_begin_catch(ptr %19) #21
  br i1 %22, label %24, label %26

24:                                               ; preds = %17
  invoke void @__cxa_rethrow() #23
          to label %25 unwind label %30

25:                                               ; preds = %24
  unreachable

26:                                               ; preds = %17
  store i8 0, ptr %3, align 1, !tbaa !54
  invoke void @__cxa_rethrow() #23
          to label %27 unwind label %28

27:                                               ; preds = %26
  unreachable

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %34

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %32 unwind label %34

32:                                               ; preds = %30, %28, %11
  %33 = phi { ptr, i32 } [ %12, %11 ], [ %29, %28 ], [ %31, %30 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %30, %28
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #22
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !54, !range !88, !noundef !89
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #21
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !54, !range !88, !noundef !89
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 517, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #21
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !54, !range !88, !noundef !89
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 530, i32 noundef 43, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #21
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2)
  ret i1 %17
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1)
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10parseResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1)
  tail call void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #21
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %40

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #21
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #23
          to label %43 unwind label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #21
  br label %41

23:                                               ; preds = %37, %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %41

25:                                               ; preds = %9
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load ptr, ptr %14, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  br label %37

30:                                               ; preds = %25
  %31 = icmp sgt i32 %3, 1
  %32 = load ptr, ptr %14, align 8, !tbaa !38
  br i1 %31, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds ptr, ptr %32, i64 4
  br label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds ptr, ptr %32, i64 3
  br label %37

37:                                               ; preds = %27, %33, %35
  %38 = phi ptr [ %29, %27 ], [ %34, %33 ], [ %36, %35 ]
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %40 unwind label %23

40:                                               ; preds = %37, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #21
  ret void

41:                                               ; preds = %23, %21
  %42 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #21
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #21
  resume { ptr, i32 } %42

43:                                               ; preds = %20
  unreachable
}

declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #12 align 2 !prof !37 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(160) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParser11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #3 align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #12 align 2 !prof !37 {
  %5 = getelementptr inbounds i8, ptr %0, i64 48
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = load ptr, ptr %4, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %15, %19, %6
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !37 {
  %3 = getelementptr inbounds i8, ptr %0, i64 48
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = load ptr, ptr %4, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 56
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %6, %15, %19
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOM_CDATASection", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !55, !range !88, !noundef !89
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %4
  br i1 %3, label %17, label %31

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %2)
  invoke void @_ZN11xercesc_2_712DOM_Document18createCDATASectionERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_CDATASection") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %19 unwind label %25

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %21 unwind label %27

21:                                               ; preds = %19
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %24 unwind label %27

24:                                               ; preds = %21
  call void @_ZN11xercesc_2_716DOM_CDATASectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %57

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %29

27:                                               ; preds = %21, %19
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_716DOM_CDATASectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %58

31:                                               ; preds = %16
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %33 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
  %34 = icmp eq i16 %33, 3
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @_ZN11xercesc_2_78DOM_TextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1, i32 noundef %2)
          to label %36 unwind label %38

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_717DOM_CharacterData10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %37 unwind label %40

37:                                               ; preds = %36
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %57

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %58

44:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  call void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, i32 noundef %2)
  invoke void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %46 unwind label %51

46:                                               ; preds = %44
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  %47 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %48 unwind label %53

48:                                               ; preds = %46
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %50 unwind label %53

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %57

51:                                               ; preds = %44
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  br label %55

53:                                               ; preds = %48, %46
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %58

57:                                               ; preds = %37, %50, %4, %24
  ret void

58:                                               ; preds = %55, %42, %29
  %59 = phi { ptr, i32 } [ %30, %29 ], [ %43, %42 ], [ %56, %55 ]
  resume { ptr, i32 } %59
}

declare void @_ZN11xercesc_2_712DOM_Document18createCDATASectionERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_CDATASection") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_CDATASectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_78DOM_TextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_717DOM_CharacterData10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Text") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOM_Comment", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
  invoke void @_ZN11xercesc_2_712DOM_Document13createCommentERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Comment") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %7 unwind label %13

7:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %15

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %15

12:                                               ; preds = %9
  call void @_ZN11xercesc_2_711DOM_CommentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret void

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %17

15:                                               ; preds = %9, %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_CommentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  resume { ptr, i32 } %18
}

declare void @_ZN11xercesc_2_712DOM_Document13createCommentERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Comment") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOM_CommentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOM_ProcessingInstruction", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2)
          to label %8 unwind label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_Document27createProcessingInstructionERKNS_9DOMStringES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_ProcessingInstruction") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %10 unwind label %18

10:                                               ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %12 unwind label %22

12:                                               ; preds = %10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %15 unwind label %22

15:                                               ; preds = %12
  call void @_ZN11xercesc_2_725DOM_ProcessingInstructionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %24

22:                                               ; preds = %12, %10
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_725DOM_ProcessingInstructionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  resume { ptr, i32 } %25
}

declare void @_ZN11xercesc_2_712DOM_Document27createProcessingInstructionERKNS_9DOMStringES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_ProcessingInstruction") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_725DOM_ProcessingInstructionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !52, !range !88, !noundef !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %40, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %10 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !127
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !136
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %18)
  %19 = load ptr, ptr %16, align 8, !tbaa !38
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %23 unwind label %29

23:                                               ; preds = %12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  %24 = load ptr, ptr %9, align 8, !tbaa !138
  call void @_ZN11xercesc_2_710EntityImpl12setEntityRefEPNS_19EntityReferenceImplE(ptr noundef nonnull align 8 dereferenceable(120) %22, ptr noundef %24)
  %25 = load ptr, ptr %9, align 8, !tbaa !139
  %26 = load ptr, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 35
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull align 8 dereferenceable(26) %25, i1 noundef zeroext true, i1 noundef zeroext true)
  br label %31

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %41

31:                                               ; preds = %23, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !85
  call void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %33)
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %35 unwind label %38

35:                                               ; preds = %31
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %9)
  br label %40

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %41

40:                                               ; preds = %35, %2
  ret void

41:                                               ; preds = %38, %29
  %42 = phi { ptr, i32 } [ %39, %38 ], [ %30, %29 ]
  resume { ptr, i32 } %42
}

declare void @_ZN11xercesc_2_710EntityImpl12setEntityRefEPNS_19EntityReferenceImplE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1, i64 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1, i64 0, i32 1, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  br label %20

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1, i64 0, i32 1
  %15 = add nsw i32 %4, -1
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %15)
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
  invoke void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %15)
          to label %19 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #21
  br label %20

19:                                               ; preds = %13
  ret void

20:                                               ; preds = %17, %11
  %21 = phi { ptr, i32 } [ %12, %11 ], [ %18, %17 ]
  resume { ptr, i32 } %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture nonnull readnone align 8 %1, i32 %2, i1 zeroext %3, ptr nocapture readnone %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  call void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %11)
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %13 unwind label %20

13:                                               ; preds = %5
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  %14 = load ptr, ptr %10, align 8, !tbaa !85
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %14, i64 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %19, align 4, !tbaa !55
  br label %22

20:                                               ; preds = %5
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  resume { ptr, i32 } %21

22:                                               ; preds = %18, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 4, !tbaa !55, !range !88, !noundef !89
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 2, !range !88
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %48, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %19 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %20 = icmp eq i16 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @_ZN11xercesc_2_78DOM_TextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %2)
          to label %22 unwind label %24

22:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_717DOM_CharacterData10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %23 unwind label %26

23:                                               ; preds = %22
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %48

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %49

30:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  call void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, i32 noundef %2)
  invoke void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %32 unwind label %42

32:                                               ; preds = %30
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  %33 = load ptr, ptr %7, align 8, !tbaa !139
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 57
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(56) %33, i1 noundef zeroext true)
          to label %37 unwind label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %39 unwind label %44

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %41 unwind label %44

41:                                               ; preds = %39
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %48

42:                                               ; preds = %30
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %46

44:                                               ; preds = %39, %37, %32
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %49

48:                                               ; preds = %4, %41, %23
  ret void

49:                                               ; preds = %46, %28
  %50 = phi { ptr, i32 } [ %29, %28 ], [ %47, %46 ]
  resume { ptr, i32 } %50
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
  tail call void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false)
  ret void
}

declare void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %9 = alloca %"class.xercesc_2_7::DOM_Element", align 8
  %10 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  %14 = alloca %"class.xercesc_2_7::DOM_Element", align 8
  %15 = alloca %"class.xercesc_2_7::DOMString", align 8
  %16 = alloca %"class.xercesc_2_7::DOMString", align 8
  %17 = alloca %"class.xercesc_2_7::DOMString", align 8
  %18 = alloca %"class.xercesc_2_7::DOM_Element", align 8
  %19 = alloca %"class.xercesc_2_7::DOMString", align 8
  %20 = alloca %"class.xercesc_2_7::DOMString", align 8
  %21 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @_ZN11xercesc_2_711DOM_ElementC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !63
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %25, i64 0, i32 4
  %27 = load i8, ptr %26, align 2, !tbaa !87, !range !88, !noundef !89
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %226, label %29

29:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #21
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %31 = load ptr, ptr %30, align 8, !tbaa !57
  store i32 0, ptr %10, align 8, !tbaa !140
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 1
  store i32 1023, ptr %32, align 4, !tbaa !141
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 2
  store i32 0, ptr %33, align 8, !tbaa !142
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 3
  store i8 0, ptr %34, align 4, !tbaa !143
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 4
  store ptr %31, ptr %35, align 8, !tbaa !144
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 5
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %38 = load ptr, ptr %31, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 2048)
          to label %42 unwind label %67

42:                                               ; preds = %29
  store ptr %41, ptr %37, align 8, !tbaa !145
  store i16 0, ptr %41, align 2, !tbaa !117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0)
          to label %43 unwind label %69

43:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0)
          to label %44 unwind label %71

44:                                               ; preds = %43
  %45 = load ptr, ptr %24, align 8, !tbaa !63
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %45, i64 0, i32 28
  %47 = load i32, ptr %46, align 4, !tbaa !146
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %81, label %49

49:                                               ; preds = %44
  %50 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %45, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %51 unwind label %73

51:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  %52 = load ptr, ptr %37, align 8, !tbaa !145
  %53 = load i32, ptr %10, align 8, !tbaa !140
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i16, ptr %52, i64 %54
  store i16 0, ptr %55, align 2, !tbaa !117
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %52)
          to label %56 unwind label %75

56:                                               ; preds = %51
  %57 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %58 unwind label %77

58:                                               ; preds = %56
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  %59 = icmp eq ptr %3, null
  br i1 %59, label %81, label %60

60:                                               ; preds = %58
  %61 = load i16, ptr %3, align 2, !tbaa !117
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %3)
          to label %64 unwind label %73

64:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %12, i16 noundef zeroext 58)
          to label %81 unwind label %73

65:                                               ; preds = %312, %308, %329, %324, %320, %306
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %334

67:                                               ; preds = %29
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %224

69:                                               ; preds = %42
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %214

71:                                               ; preds = %43
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %212

73:                                               ; preds = %81, %64, %63, %49
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %210

75:                                               ; preds = %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %79

77:                                               ; preds = %56
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  br label %210

81:                                               ; preds = %64, %58, %60, %44
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !147
  %84 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %83, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %85)
          to label %86 unwind label %73

86:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #21
  invoke void @_ZN11xercesc_2_712DOM_Document15createElementNSERKNS_9DOMStringES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %87 unwind label %105

87:                                               ; preds = %86
  %88 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DOM_ElementaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %89 unwind label %107

89:                                               ; preds = %87
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  %90 = load ptr, ptr %9, align 8, !tbaa !139
  %91 = icmp eq i32 %5, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %23, i64 0, i32 4
  %94 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2
  br label %111

95:                                               ; preds = %207, %89
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  %96 = load ptr, ptr %35, align 8, !tbaa !144
  %97 = load ptr, ptr %37, align 8, !tbaa !145
  %98 = load ptr, ptr %96, align 8, !tbaa !38
  %99 = getelementptr inbounds ptr, ptr %98, i64 3
  %100 = load ptr, ptr %99, align 8
  invoke void %100(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %97)
          to label %104 unwind label %101

101:                                              ; preds = %95
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #22
  unreachable

104:                                              ; preds = %95
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #21
  br label %306

105:                                              ; preds = %86
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %109

107:                                              ; preds = %87
  %108 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #21
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi { ptr, i32 } [ %108, %107 ], [ %106, %105 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #21
  br label %210

111:                                              ; preds = %92, %207
  %112 = phi i32 [ 0, %92 ], [ %208, %207 ]
  %113 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %112)
          to label %114 unwind label %131

114:                                              ; preds = %111
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %113, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !152
  %117 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %116, i64 0, i32 4
  %118 = load i32, ptr %117, align 4, !tbaa !155
  %119 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null)
          to label %120 unwind label %133

120:                                              ; preds = %114
  %121 = load ptr, ptr %115, align 8, !tbaa !152
  %122 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %121, i64 0, i32 6
  %123 = load ptr, ptr %122, align 8, !tbaa !150
  %124 = invoke noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %123, ptr noundef nonnull @_ZZN11xercesc_2_79DOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbbE5XMLNS)
          to label %125 unwind label %133

125:                                              ; preds = %120
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %125
  %128 = load ptr, ptr %24, align 8, !tbaa !63
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %128, i64 0, i32 31
  %130 = load i32, ptr %129, align 8, !tbaa !156
  br label %135

131:                                              ; preds = %111
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %210

133:                                              ; preds = %141, %120, %114
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %210

135:                                              ; preds = %127, %125
  %136 = phi i32 [ %118, %125 ], [ %130, %127 ]
  %137 = load ptr, ptr %24, align 8, !tbaa !63
  %138 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %137, i64 0, i32 28
  %139 = load i32, ptr %138, align 4, !tbaa !146
  %140 = icmp eq i32 %136, %139
  br i1 %140, label %157, label %141

141:                                              ; preds = %135
  %142 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %137, i32 noundef %136, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %143 unwind label %133

143:                                              ; preds = %141
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #21
  %144 = load ptr, ptr %37, align 8, !tbaa !145
  %145 = load i32, ptr %10, align 8, !tbaa !140
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i16, ptr %144, i64 %146
  store i16 0, ptr %147, align 2, !tbaa !117
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %144)
          to label %148 unwind label %151

148:                                              ; preds = %143
  %149 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %150 unwind label %153

150:                                              ; preds = %148
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %157

151:                                              ; preds = %143
  %152 = landingpad { ptr, i32 }
          cleanup
  br label %155

153:                                              ; preds = %148
  %154 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi { ptr, i32 } [ %154, %153 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #21
  br label %210

157:                                              ; preds = %150, %135
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #21
  %158 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %113)
          to label %159 unwind label %181

159:                                              ; preds = %157
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %158)
          to label %160 unwind label %181

160:                                              ; preds = %159
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #21
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %113, i64 0, i32 5
  %162 = load ptr, ptr %161, align 8, !tbaa !157
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %162)
          to label %163 unwind label %183

163:                                              ; preds = %160
  %164 = load ptr, ptr %90, align 8, !tbaa !38
  %165 = getelementptr inbounds ptr, ptr %164, i64 56
  %166 = load ptr, ptr %165, align 8
  %167 = invoke noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(104) %90, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %168 unwind label %185

168:                                              ; preds = %163
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %113, i64 0, i32 2
  %170 = load i32, ptr %169, align 4, !tbaa !158
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %201

172:                                              ; preds = %168
  %173 = load ptr, ptr %93, align 8, !tbaa !159
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load ptr, ptr %30, align 8, !tbaa !57
  %177 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %176)
          to label %178 unwind label %191

178:                                              ; preds = %175
  %179 = load ptr, ptr %30, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %177, i32 noundef 500, ptr noundef %179)
          to label %180 unwind label %193

180:                                              ; preds = %178
  store ptr %177, ptr %93, align 8, !tbaa !159
  br label %195

181:                                              ; preds = %159, %157
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %189

183:                                              ; preds = %160
  %184 = landingpad { ptr, i32 }
          cleanup
  br label %187

185:                                              ; preds = %163
  %186 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #21
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi { ptr, i32 } [ %186, %185 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #21
  br label %189

189:                                              ; preds = %187, %181
  %190 = phi { ptr, i32 } [ %188, %187 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #21
  br label %210

191:                                              ; preds = %201, %195, %175
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %210

193:                                              ; preds = %178
  %194 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %177, ptr noundef %176) #21
  br label %210

195:                                              ; preds = %180, %172
  %196 = load ptr, ptr %93, align 8, !tbaa !159
  invoke void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %196, ptr noundef %167)
          to label %197 unwind label %191

197:                                              ; preds = %195
  %198 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %167, i64 0, i32 3
  %199 = load i16, ptr %198, align 8, !tbaa !161
  %200 = or i16 %94, %199
  store i16 %200, ptr %198, align 8, !tbaa !161
  br label %201

201:                                              ; preds = %197, %168
  %202 = load i8, ptr %113, align 8, !tbaa !162, !range !88, !noundef !89
  %203 = icmp ne i8 %202, 0
  %204 = load ptr, ptr %167, align 8, !tbaa !38
  %205 = getelementptr inbounds ptr, ptr %204, i64 50
  %206 = load ptr, ptr %205, align 8
  invoke void %206(ptr noundef nonnull align 8 dereferenceable(48) %167, i1 noundef zeroext %203)
          to label %207 unwind label %191

207:                                              ; preds = %201
  %208 = add nuw i32 %112, 1
  %209 = icmp eq i32 %208, %5
  br i1 %209, label %95, label %111, !llvm.loop !163

210:                                              ; preds = %131, %189, %191, %193, %155, %133, %109, %79, %73
  %211 = phi { ptr, i32 } [ %110, %109 ], [ %74, %73 ], [ %80, %79 ], [ %132, %131 ], [ %156, %155 ], [ %134, %133 ], [ %192, %191 ], [ %194, %193 ], [ %190, %189 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %212

212:                                              ; preds = %210, %71
  %213 = phi { ptr, i32 } [ %211, %210 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %214

214:                                              ; preds = %212, %69
  %215 = phi { ptr, i32 } [ %213, %212 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  %216 = load ptr, ptr %35, align 8, !tbaa !144
  %217 = load ptr, ptr %37, align 8, !tbaa !145
  %218 = load ptr, ptr %216, align 8, !tbaa !38
  %219 = getelementptr inbounds ptr, ptr %218, i64 3
  %220 = load ptr, ptr %219, align 8
  invoke void %220(ptr noundef nonnull align 8 dereferenceable(8) %216, ptr noundef %217)
          to label %224 unwind label %221

221:                                              ; preds = %214
  %222 = landingpad { ptr, i32 }
          catch ptr null
  %223 = extractvalue { ptr, i32 } %222, 0
  call void @__clang_call_terminate(ptr %223) #22
  unreachable

224:                                              ; preds = %214, %67
  %225 = phi { ptr, i32 } [ %68, %67 ], [ %215, %214 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #21
  br label %334

226:                                              ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #21
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !147
  %229 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %228)
          to label %230 unwind label %240

230:                                              ; preds = %226
  invoke void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %229)
          to label %231 unwind label %240

231:                                              ; preds = %230
  %232 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DOM_ElementaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %233 unwind label %242

233:                                              ; preds = %231
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  %234 = load ptr, ptr %9, align 8, !tbaa !139
  %235 = icmp eq i32 %5, 0
  br i1 %235, label %306, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %23, i64 0, i32 4
  %238 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %239 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2
  br label %246

240:                                              ; preds = %226, %230
  %241 = landingpad { ptr, i32 }
          cleanup
  br label %244

242:                                              ; preds = %231
  %243 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #21
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi { ptr, i32 } [ %243, %242 ], [ %241, %240 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #21
  br label %334

246:                                              ; preds = %236, %303
  %247 = phi i32 [ 0, %236 ], [ %304, %303 ]
  %248 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %247)
          to label %249 unwind label %281

249:                                              ; preds = %246
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #21
  %250 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %248, i64 0, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !152
  %252 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %251, i64 0, i32 6
  %253 = load ptr, ptr %252, align 8, !tbaa !150
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %253)
          to label %254 unwind label %283

254:                                              ; preds = %249
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #21
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %248, i64 0, i32 5
  %256 = load ptr, ptr %255, align 8, !tbaa !157
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %256)
          to label %257 unwind label %285

257:                                              ; preds = %254
  %258 = load ptr, ptr %234, align 8, !tbaa !38
  %259 = getelementptr inbounds ptr, ptr %258, i64 53
  %260 = load ptr, ptr %259, align 8
  %261 = invoke noundef ptr %260(ptr noundef nonnull align 8 dereferenceable(104) %234, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %262 unwind label %287

262:                                              ; preds = %257
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  %263 = load i8, ptr %248, align 8, !tbaa !162, !range !88, !noundef !89
  %264 = icmp ne i8 %263, 0
  %265 = load ptr, ptr %261, align 8, !tbaa !38
  %266 = getelementptr inbounds ptr, ptr %265, i64 50
  %267 = load ptr, ptr %266, align 8
  invoke void %267(ptr noundef nonnull align 8 dereferenceable(48) %261, i1 noundef zeroext %264)
          to label %268 unwind label %293

268:                                              ; preds = %262
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %248, i64 0, i32 2
  %270 = load i32, ptr %269, align 4, !tbaa !158
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %303

272:                                              ; preds = %268
  %273 = load ptr, ptr %237, align 8, !tbaa !159
  %274 = icmp eq ptr %273, null
  br i1 %274, label %275, label %297

275:                                              ; preds = %272
  %276 = load ptr, ptr %238, align 8, !tbaa !57
  %277 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %276)
          to label %278 unwind label %293

278:                                              ; preds = %275
  %279 = load ptr, ptr %238, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %277, i32 noundef 500, ptr noundef %279)
          to label %280 unwind label %295

280:                                              ; preds = %278
  store ptr %277, ptr %237, align 8, !tbaa !159
  br label %297

281:                                              ; preds = %246
  %282 = landingpad { ptr, i32 }
          cleanup
  br label %334

283:                                              ; preds = %249
  %284 = landingpad { ptr, i32 }
          cleanup
  br label %291

285:                                              ; preds = %254
  %286 = landingpad { ptr, i32 }
          cleanup
  br label %289

287:                                              ; preds = %257
  %288 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #21
  br label %289

289:                                              ; preds = %287, %285
  %290 = phi { ptr, i32 } [ %288, %287 ], [ %286, %285 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #21
  br label %291

291:                                              ; preds = %289, %283
  %292 = phi { ptr, i32 } [ %290, %289 ], [ %284, %283 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #21
  br label %334

293:                                              ; preds = %297, %275, %262
  %294 = landingpad { ptr, i32 }
          cleanup
  br label %334

295:                                              ; preds = %278
  %296 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %277, ptr noundef %276) #21
  br label %334

297:                                              ; preds = %280, %272
  %298 = load ptr, ptr %237, align 8, !tbaa !159
  invoke void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %298, ptr noundef nonnull %261)
          to label %299 unwind label %293

299:                                              ; preds = %297
  %300 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %261, i64 0, i32 3
  %301 = load i16, ptr %300, align 8, !tbaa !161
  %302 = or i16 %239, %301
  store i16 %302, ptr %300, align 8, !tbaa !161
  br label %303

303:                                              ; preds = %299, %268
  %304 = add nuw i32 %247, 1
  %305 = icmp eq i32 %304, %5
  br i1 %305, label %306, label %246, !llvm.loop !164

306:                                              ; preds = %303, %233, %104
  %307 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %307, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %308 unwind label %65

308:                                              ; preds = %306
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #21
  %309 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %310 = load ptr, ptr %309, align 8, !tbaa !85
  %311 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %310, i64 0, i32 1
  invoke void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %311, i32 noundef 1)
          to label %312 unwind label %65

312:                                              ; preds = %308
  %313 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %310, i64 0, i32 1, i32 3
  %314 = load ptr, ptr %313, align 8, !tbaa !83
  %315 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %310, i64 0, i32 1, i32 1
  %316 = load i32, ptr %315, align 4, !tbaa !81
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %314, i64 %317
  %319 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %318, ptr noundef nonnull align 8 dereferenceable(8) %307)
          to label %320 unwind label %65

320:                                              ; preds = %312
  %321 = load i32, ptr %315, align 4, !tbaa !81
  %322 = add i32 %321, 1
  store i32 %322, ptr %315, align 4, !tbaa !81
  %323 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %307, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %324 unwind label %65

324:                                              ; preds = %320
  %325 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %326 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %325, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %327 unwind label %65

327:                                              ; preds = %324
  %328 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 1, ptr %328, align 4, !tbaa !55
  br i1 %6, label %329, label %333

329:                                              ; preds = %327
  %330 = load ptr, ptr %0, align 8, !tbaa !38
  %331 = getelementptr inbounds ptr, ptr %330, i64 6
  %332 = load ptr, ptr %331, align 8
  invoke void %332(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3)
          to label %333 unwind label %65

333:                                              ; preds = %329, %327
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  ret void

334:                                              ; preds = %281, %295, %293, %291, %244, %224, %65
  %335 = phi { ptr, i32 } [ %225, %224 ], [ %66, %65 ], [ %245, %244 ], [ %282, %281 ], [ %294, %293 ], [ %296, %295 ], [ %292, %291 ]
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  resume { ptr, i32 } %335
}

declare void @_ZN11xercesc_2_711DOM_ElementC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712DOM_Document15createElementNSERKNS_9DOMStringES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Element") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DOM_ElementaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !166
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !168

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !170
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !113
  ret ptr %18
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Element") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_EntityReference", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !52, !range !88, !noundef !89
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %11)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_Document21createEntityReferenceERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_EntityReference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %40

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8, !tbaa !139
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 35
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(26) %14, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %18 unwind label %42

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %20 unwind label %42

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  %21 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  %23 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %22, i64 0, i32 1
  invoke void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %23, i32 noundef 1)
          to label %24 unwind label %42

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %22, i64 0, i32 1, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %22, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !81
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %26, i64 %29
  %31 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %32 unwind label %42

32:                                               ; preds = %24
  %33 = load i32, ptr %27, align 4, !tbaa !81
  %34 = add i32 %33, 1
  store i32 %34, ptr %27, align 4, !tbaa !81
  %35 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %36 unwind label %42

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %39 unwind label %42

39:                                               ; preds = %36
  call void @_ZN11xercesc_2_719DOM_EntityReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %46

40:                                               ; preds = %9
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %24, %20, %36, %32, %18, %13
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_719DOM_EntityReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  resume { ptr, i32 } %45

46:                                               ; preds = %39, %2
  ret void
}

declare void @_ZN11xercesc_2_712DOM_Document21createEntityReferenceERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_EntityReference") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_719DOM_EntityReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_XMLDecl", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 8, !tbaa !41, !range !88, !noundef !89
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %2)
          to label %15 unwind label %21

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3)
          to label %16 unwind label %23

16:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_Document13createXMLDeclERKNS_9DOMStringES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_XMLDecl") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %18 unwind label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %20 unwind label %27

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  call void @_ZN11xercesc_2_711DOM_XMLDeclD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %35

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %33

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %31

25:                                               ; preds = %16
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_XMLDeclD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  resume { ptr, i32 } %34

35:                                               ; preds = %20, %5
  ret void
}

declare void @_ZN11xercesc_2_712DOM_Document13createXMLDeclERKNS_9DOMStringES3_S3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_XMLDecl") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DOM_XMLDeclD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser15getDoValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 51
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = icmp eq i32 %5, 1
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser15setDoValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #10 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 10
  store i8 %5, ptr %6, align 8, !tbaa !115
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 51
  %8 = zext i1 %1 to i32
  store i32 %8, ptr %7, align 8, !tbaa !92
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %8)
  br i1 %9, label %10, label %125

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %11 = load ptr, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %15 unwind label %35

15:                                               ; preds = %10
  br i1 %14, label %16, label %122

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 60)
          to label %17 unwind label %35

17:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 33)
          to label %18 unwind label %35

18:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgAttListStringE)
          to label %19 unwind label %35

19:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %20 unwind label %35

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %22)
          to label %24 unwind label %35

24:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %23)
          to label %25 unwind label %35

25:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %26 unwind label %35

26:                                               ; preds = %25
  %27 = load ptr, ptr %2, align 8, !tbaa !38
  %28 = getelementptr inbounds ptr, ptr %27, i64 5
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(72) %2)
          to label %31 unwind label %35

31:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %30)
          to label %32 unwind label %35

32:                                               ; preds = %31
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !171
  switch i32 %34, label %98 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %41
    i32 3, label %42
    i32 4, label %43
    i32 5, label %44
    i32 6, label %45
    i32 7, label %46
    i32 8, label %47
    i32 9, label %50
  ]

35:                                               ; preds = %20, %31, %26, %25, %24, %19, %18, %17, %16, %10
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %123

37:                                               ; preds = %48, %50, %47, %46, %45, %44, %43, %42, %41, %40, %39
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %123

39:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

40:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

41:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

42:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

43:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

44:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

45:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

46:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

47:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %48 unwind label %37

48:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %39
  %49 = phi ptr [ @_ZN11xercesc_2_76XMLUni13fgCDATAStringE, %39 ], [ @_ZN11xercesc_2_76XMLUni10fgIDStringE, %40 ], [ @_ZN11xercesc_2_76XMLUni13fgIDRefStringE, %41 ], [ @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE, %42 ], [ @_ZN11xercesc_2_76XMLUni14fgEntityStringE, %43 ], [ @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE, %44 ], [ @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE, %45 ], [ @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE, %46 ], [ @_ZN11xercesc_2_76XMLUni16fgNotationStringE, %47 ]
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %49)
          to label %98 unwind label %37

50:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %51 unwind label %37

51:                                               ; preds = %50
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !175
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51
  %56 = load i16, ptr %53, align 2, !tbaa !117
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %60, %58 ], [ %53, %55 ]
  %60 = getelementptr inbounds i16, ptr %59, i64 1
  %61 = load i16, ptr %60, align 2, !tbaa !117
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %58, !llvm.loop !119

63:                                               ; preds = %58
  %64 = ptrtoint ptr %60 to i64
  %65 = ptrtoint ptr %53 to i64
  %66 = sub i64 %64, %65
  %67 = lshr exact i64 %66, 1
  %68 = trunc i64 %67 to i32
  br label %69

69:                                               ; preds = %51, %55, %63
  %70 = phi i32 [ %68, %63 ], [ 0, %55 ], [ 0, %51 ]
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %73 unwind label %77

73:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %6, i16 noundef zeroext 40)
          to label %74 unwind label %79

74:                                               ; preds = %73
  %75 = zext nneg i32 %70 to i64
  br label %81

76:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %6, i16 noundef zeroext 41)
          to label %92 unwind label %79

77:                                               ; preds = %72
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %96

79:                                               ; preds = %92, %76, %73
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %94

81:                                               ; preds = %74, %89
  %82 = phi i64 [ 0, %74 ], [ %90, %89 ]
  %83 = getelementptr inbounds i16, ptr %53, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !117
  %85 = icmp eq i16 %84, 32
  %86 = select i1 %85, i16 124, i16 %84
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %6, i16 noundef zeroext %86)
          to label %89 unwind label %87

87:                                               ; preds = %81
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %94

89:                                               ; preds = %81
  %90 = add nuw nsw i64 %82, 1
  %91 = icmp eq i64 %90, %75
  br i1 %91, label %76, label %81, !llvm.loop !176

92:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %93 unwind label %79

93:                                               ; preds = %92
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %98

94:                                               ; preds = %87, %79
  %95 = phi { ptr, i32 } [ %88, %87 ], [ %80, %79 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %96

96:                                               ; preds = %94, %77
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %123

98:                                               ; preds = %48, %69, %93, %32
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 1
  %100 = load i32, ptr %99, align 8, !tbaa !177
  switch i32 %100, label %108 [
    i32 2, label %103
    i32 4, label %104
    i32 1, label %105
  ]

101:                                              ; preds = %106, %105, %104, %103
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %123

103:                                              ; preds = %98
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %106 unwind label %101

104:                                              ; preds = %98
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %106 unwind label %101

105:                                              ; preds = %98
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %106 unwind label %101

106:                                              ; preds = %105, %104, %103
  %107 = phi ptr [ @_ZN11xercesc_2_76XMLUni16fgRequiredStringE, %103 ], [ @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, %104 ], [ @_ZN11xercesc_2_76XMLUni13fgFixedStringE, %105 ]
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %107)
          to label %108 unwind label %101

108:                                              ; preds = %106, %98
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %2, i64 0, i32 7
  %110 = load ptr, ptr %109, align 8, !tbaa !178
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32)
          to label %113 unwind label %116

113:                                              ; preds = %112
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 34)
          to label %114 unwind label %116

114:                                              ; preds = %113
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %110)
          to label %115 unwind label %116

115:                                              ; preds = %114
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 34)
          to label %118 unwind label %116

116:                                              ; preds = %119, %118, %115, %114, %113, %112
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %123

118:                                              ; preds = %115, %108
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 62)
          to label %119 unwind label %116

119:                                              ; preds = %118
  %120 = load ptr, ptr %7, align 8, !tbaa !127
  %121 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %120, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %122 unwind label %116

122:                                              ; preds = %119, %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %125

123:                                              ; preds = %37, %96, %116, %101, %35
  %124 = phi { ptr, i32 } [ %36, %35 ], [ %97, %96 ], [ %38, %37 ], [ %117, %116 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  resume { ptr, i32 } %124

125:                                              ; preds = %122, %4
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #12 align 2 !prof !37 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %5)
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE)
          to label %10 unwind label %20

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 32)
          to label %11 unwind label %20

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1)
          to label %12 unwind label %20

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 32)
          to label %13 unwind label %20

13:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 45)
          to label %14 unwind label %20

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 45)
          to label %15 unwind label %20

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 62)
          to label %16 unwind label %20

16:                                               ; preds = %15
  %17 = load ptr, ptr %4, align 8, !tbaa !127
  %18 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %17, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %19 unwind label %20

19:                                               ; preds = %16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %22

20:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  resume { ptr, i32 } %21

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #12 align 2 !prof !37 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %7 = alloca %"class.xercesc_2_7::DOM_DocumentType", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_DocumentType", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  call void @_ZN11xercesc_2_716DOM_DocumentTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %13 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xercesc_2_712DOM_Document17getImplementationEv(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %14 unwind label %29

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !147
  %17 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %16)
          to label %18 unwind label %31

18:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %17)
          to label %19 unwind label %31

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2)
          to label %20 unwind label %33

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %3)
          to label %21 unwind label %35

21:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_721DOM_DOMImplementation18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %22 unwind label %37

22:                                               ; preds = %21
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_716DOM_DocumentTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %24 unwind label %39

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  %25 = load ptr, ptr %7, align 8, !tbaa !139
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  store ptr %25, ptr %26, align 8, !tbaa !127
  %27 = load ptr, ptr %12, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168) %27, ptr noundef %25)
          to label %28 unwind label %51

28:                                               ; preds = %24
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  ret void

29:                                               ; preds = %6
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %49

31:                                               ; preds = %14, %18
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %47

33:                                               ; preds = %19
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %45

35:                                               ; preds = %20
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %21
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %22
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %45

45:                                               ; preds = %43, %33
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  br label %47

47:                                               ; preds = %45, %31
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %49

49:                                               ; preds = %47, %29
  %50 = phi { ptr, i32 } [ %48, %47 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %53

51:                                               ; preds = %24
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  resume { ptr, i32 } %54
}

declare void @_ZN11xercesc_2_716DOM_DocumentTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xercesc_2_712DOM_Document17getImplementationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_721DOM_DOMImplementation18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_716DOM_DocumentTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #12 align 2 !prof !37 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext poison, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser9doctypePIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %6)
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 60)
          to label %9 unwind label %19

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 63)
          to label %10 unwind label %19

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1)
          to label %11 unwind label %19

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 32)
          to label %12 unwind label %19

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2)
          to label %13 unwind label %19

13:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 63)
          to label %14 unwind label %19

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 62)
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = load ptr, ptr %5, align 8, !tbaa !127
  %17 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %16, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %18 unwind label %19

18:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %21

19:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser9doctypePIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 align 2 !prof !37 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, i32 %2) unnamed_addr #3 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %5)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !127
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %8, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1)
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) unnamed_addr #12 align 2 !prof !37 {
  %4 = getelementptr inbounds i8, ptr %0, i64 88
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %5)
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !127
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %8, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1)
  br label %10

10:                                               ; preds = %3, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %6)
  br i1 %7, label %8, label %37

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 60)
          to label %9 unwind label %26

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 33)
          to label %10 unwind label %26

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgElemStringE)
          to label %11 unwind label %26

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 32)
          to label %12 unwind label %26

12:                                               ; preds = %11
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %14)
          to label %16 unwind label %26

16:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %15)
          to label %17 unwind label %26

17:                                               ; preds = %16
  %18 = load ptr, ptr %1, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 15
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(80) %1)
          to label %22 unwind label %28

22:                                               ; preds = %17
  %23 = icmp eq ptr %21, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 32)
          to label %25 unwind label %28

25:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21)
          to label %30 unwind label %28

26:                                               ; preds = %12, %16, %11, %10, %9, %8
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %35

28:                                               ; preds = %31, %30, %25, %24, %17
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %35

30:                                               ; preds = %25, %22
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 62)
          to label %31 unwind label %28

31:                                               ; preds = %30
  %32 = load ptr, ptr %5, align 8, !tbaa !127
  %33 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %32, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %34 unwind label %28

34:                                               ; preds = %31
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %37

35:                                               ; preds = %28, %26
  %36 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  resume { ptr, i32 } %36

37:                                               ; preds = %34, %3
  ret void
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #12 align 2 !prof !37 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOM_Element", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = load ptr, ptr %1, align 8, !tbaa !38
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(80) %1)
  br i1 %13, label %14, label %214

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr %17(ptr noundef nonnull align 8 dereferenceable(80) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %21)
  call void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %22)
  %23 = load ptr, ptr %3, align 8, !tbaa !139
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 2
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 3
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 4
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 5
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  br label %33

33:                                               ; preds = %195, %14
  %34 = phi i32 [ 0, %14 ], [ %196, %195 ]
  %35 = load ptr, ptr %18, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 13
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef i32 %37(ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %39 unwind label %48

39:                                               ; preds = %33
  %40 = icmp ult i32 %34, %38
  br i1 %40, label %50, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !127
  %44 = load ptr, ptr %43, align 8, !tbaa !38
  %45 = getelementptr inbounds ptr, ptr %44, i64 53
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(145) %43)
          to label %197 unwind label %209

48:                                               ; preds = %146, %50, %33
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %212

50:                                               ; preds = %39
  %51 = load ptr, ptr %18, align 8, !tbaa !38
  %52 = getelementptr inbounds ptr, ptr %51, i64 14
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef nonnull align 8 dereferenceable(56) ptr %53(ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %34)
          to label %55 unwind label %48

55:                                               ; preds = %50
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %54, i64 0, i32 7
  %57 = load ptr, ptr %56, align 8, !tbaa !178
  %58 = icmp eq ptr %57, null
  br i1 %58, label %195, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %24, align 8, !tbaa !63
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %60, i64 0, i32 4
  %62 = load i8, ptr %61, align 2, !tbaa !87, !range !88, !noundef !89
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %146, label %64

64:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %65 = load ptr, ptr %54, align 8, !tbaa !38
  %66 = getelementptr inbounds ptr, ptr %65, i64 5
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(56) %54)
          to label %69 unwind label %85

69:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %68)
          to label %70 unwind label %85

70:                                               ; preds = %69
  %71 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %72 unwind label %87

72:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #21
  %73 = load ptr, ptr %25, align 8, !tbaa !57
  store i32 0, ptr %5, align 8, !tbaa !140
  store i32 1023, ptr %26, align 4, !tbaa !141
  store i32 0, ptr %27, align 8, !tbaa !142
  store i8 0, ptr %28, align 4, !tbaa !143
  store ptr %73, ptr %29, align 8, !tbaa !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %30, i8 0, i64 16, i1 false)
  %74 = load ptr, ptr %73, align 8, !tbaa !38
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %73, i64 noundef 2048)
          to label %78 unwind label %89

78:                                               ; preds = %72
  store ptr %77, ptr %31, align 8, !tbaa !145
  store i16 0, ptr %77, align 2, !tbaa !117
  %79 = icmp sgt i32 %71, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0, i32 noundef %71)
          to label %81 unwind label %91

81:                                               ; preds = %80
  %82 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @_ZZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS)
          to label %83 unwind label %93

83:                                               ; preds = %81
  %84 = select i1 %82, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %84)
          to label %95 unwind label %93

85:                                               ; preds = %69, %64
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %144

87:                                               ; preds = %70
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %142

89:                                               ; preds = %72
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %140

91:                                               ; preds = %80
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %96

93:                                               ; preds = %83, %81
  %94 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  br label %96

95:                                               ; preds = %83
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %104

96:                                               ; preds = %93, %91
  %97 = phi { ptr, i32 } [ %94, %93 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %130

98:                                               ; preds = %78
  %99 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS)
          to label %100 unwind label %102

100:                                              ; preds = %98
  br i1 %99, label %101, label %104

101:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE)
          to label %104 unwind label %102

102:                                              ; preds = %104, %101, %98
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %130

104:                                              ; preds = %101, %100, %95
  %105 = load ptr, ptr %25, align 8, !tbaa !57
  %106 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %105)
          to label %107 unwind label %102

107:                                              ; preds = %104
  %108 = load ptr, ptr %19, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %109 = load ptr, ptr %31, align 8, !tbaa !145
  %110 = load i32, ptr %5, align 8, !tbaa !140
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !117
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %109)
          to label %113 unwind label %124

113:                                              ; preds = %107
  invoke void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %106, ptr noundef %108, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %114 unwind label %126

114:                                              ; preds = %113
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  %115 = load ptr, ptr %29, align 8, !tbaa !144
  %116 = load ptr, ptr %31, align 8, !tbaa !145
  %117 = load ptr, ptr %115, align 8, !tbaa !38
  %118 = getelementptr inbounds ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(8) %115, ptr noundef %116)
          to label %123 unwind label %120

120:                                              ; preds = %114
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @__clang_call_terminate(ptr %122) #22
  unreachable

123:                                              ; preds = %114
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %164

124:                                              ; preds = %107
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %128

126:                                              ; preds = %113
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %106, ptr noundef %105) #21
  br label %130

130:                                              ; preds = %128, %102, %96
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %103, %102 ], [ %97, %96 ]
  %132 = load ptr, ptr %29, align 8, !tbaa !144
  %133 = load ptr, ptr %31, align 8, !tbaa !145
  %134 = load ptr, ptr %132, align 8, !tbaa !38
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  invoke void %136(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %133)
          to label %140 unwind label %137

137:                                              ; preds = %130
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #22
  unreachable

140:                                              ; preds = %130, %89
  %141 = phi { ptr, i32 } [ %90, %89 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #21
  br label %142

142:                                              ; preds = %140, %87
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %88, %87 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  br label %144

144:                                              ; preds = %142, %85
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %212

146:                                              ; preds = %59
  %147 = load ptr, ptr %32, align 8, !tbaa !57
  %148 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %147)
          to label %149 unwind label %48

149:                                              ; preds = %146
  %150 = load ptr, ptr %19, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %151 = load ptr, ptr %54, align 8, !tbaa !38
  %152 = getelementptr inbounds ptr, ptr %151, i64 5
  %153 = load ptr, ptr %152, align 8
  %154 = invoke noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(56) %54)
          to label %155 unwind label %158

155:                                              ; preds = %149
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %154)
          to label %156 unwind label %158

156:                                              ; preds = %155
  invoke void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %148, ptr noundef %150, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %157 unwind label %160

157:                                              ; preds = %156
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %164

158:                                              ; preds = %155, %149
  %159 = landingpad { ptr, i32 }
          cleanup
  br label %162

160:                                              ; preds = %156
  %161 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %148, ptr noundef %147) #21
  br label %212

164:                                              ; preds = %157, %123
  %165 = phi ptr [ %106, %123 ], [ %148, %157 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  %166 = load ptr, ptr %56, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %166)
          to label %167 unwind label %183

167:                                              ; preds = %164
  %168 = load ptr, ptr %165, align 8, !tbaa !38
  %169 = getelementptr inbounds ptr, ptr %168, i64 51
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(48) %165, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %171 unwind label %185

171:                                              ; preds = %167
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  %172 = load ptr, ptr %23, align 8, !tbaa !38
  %173 = getelementptr inbounds ptr, ptr %172, i64 54
  %174 = load ptr, ptr %173, align 8
  %175 = invoke noundef ptr %174(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef nonnull %165)
          to label %176 unwind label %189

176:                                              ; preds = %171
  %177 = icmp eq ptr %175, null
  br i1 %177, label %191, label %178

178:                                              ; preds = %176
  %179 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %175, i64 0, i32 1
  %180 = load i32, ptr %179, align 8, !tbaa !179
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %178
  invoke void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %175)
          to label %191 unwind label %189

183:                                              ; preds = %164
  %184 = landingpad { ptr, i32 }
          cleanup
  br label %187

185:                                              ; preds = %167
  %186 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi { ptr, i32 } [ %186, %185 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %212

189:                                              ; preds = %191, %182, %171
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %212

191:                                              ; preds = %182, %178, %176
  %192 = load ptr, ptr %165, align 8, !tbaa !38
  %193 = getelementptr inbounds ptr, ptr %192, i64 50
  %194 = load ptr, ptr %193, align 8
  invoke void %194(ptr noundef nonnull align 8 dereferenceable(48) %165, i1 noundef zeroext false)
          to label %195 unwind label %189

195:                                              ; preds = %191, %55
  %196 = add i32 %34, 1
  br label %33, !llvm.loop !180

197:                                              ; preds = %41
  %198 = load ptr, ptr %47, align 8, !tbaa !38
  %199 = getelementptr inbounds ptr, ptr %198, i64 10
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef %23)
          to label %202 unwind label %209

202:                                              ; preds = %197
  %203 = icmp eq ptr %201, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %201, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !179
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %204
  invoke void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %201)
          to label %211 unwind label %209

209:                                              ; preds = %208, %197, %41
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %212

211:                                              ; preds = %208, %204, %202
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  br label %214

212:                                              ; preds = %48, %144, %187, %189, %162, %209
  %213 = phi { ptr, i32 } [ %210, %209 ], [ %190, %189 ], [ %188, %187 ], [ %145, %144 ], [ %163, %162 ], [ %49, %48 ]
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  resume { ptr, i32 } %213

214:                                              ; preds = %211, %2
  ret void
}

declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 !prof !181 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !182

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !117
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !183

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !117
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !184, !llvm.loop !185

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !140
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !141
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !186

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !145
  %24 = load i32, ptr %0, align 8, !tbaa !140
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !187
  %28 = load i32, ptr %0, align 8, !tbaa !140
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !140
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #12 align 2 !prof !37 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(80) %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) unnamed_addr #10 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %3, i64 0, i32 9
  store i8 0, ptr %4, align 8, !tbaa !188
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #10 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %3, i64 0, i32 9
  store i8 0, ptr %4, align 8, !tbaa !188
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12endExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12endExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %17)
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 55
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(168) %15, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %22 unwind label %55

22:                                               ; preds = %4
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !189
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %24)
  %25 = load ptr, ptr %21, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 51
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(120) %21, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %28 unwind label %57

28:                                               ; preds = %22
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !190
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %30)
  %31 = load ptr, ptr %21, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 52
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(120) %21, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %34 unwind label %59

34:                                               ; preds = %28
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #21
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !191
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %36)
  %37 = load ptr, ptr %21, align 8, !tbaa !38
  %38 = getelementptr inbounds ptr, ptr %37, i64 50
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(120) %21, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %40 unwind label %61

40:                                               ; preds = %34
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  %41 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %42 = load ptr, ptr %41, align 8, !tbaa !127
  %43 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !128
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 10
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(32) %44, ptr noundef nonnull %21)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %63, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %48, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !179
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %48)
  br label %63

55:                                               ; preds = %4
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %163

57:                                               ; preds = %22
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %163

59:                                               ; preds = %28
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  br label %163

61:                                               ; preds = %34
  %62 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #21
  br label %163

63:                                               ; preds = %54, %50, %40
  %64 = load ptr, ptr %41, align 8, !tbaa !127
  %65 = call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %64)
  br i1 %65, label %66, label %162

66:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #21
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 60)
          to label %67 unwind label %85

67:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 33)
          to label %68 unwind label %85

68:                                               ; preds = %67
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE)
          to label %69 unwind label %85

69:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %70 unwind label %85

70:                                               ; preds = %69
  %71 = load ptr, ptr %16, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %71)
          to label %72 unwind label %85

72:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #21
  %73 = load ptr, ptr %21, align 8, !tbaa !38
  %74 = getelementptr inbounds ptr, ptr %73, i64 47
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(120) %21)
          to label %76 unwind label %87

76:                                               ; preds = %72
  %77 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null)
          to label %78 unwind label %89

78:                                               ; preds = %76
  br i1 %77, label %79, label %91

79:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %80 unwind label %89

80:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE)
          to label %81 unwind label %89

81:                                               ; preds = %80
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %82 unwind label %89

82:                                               ; preds = %81
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %83 unwind label %89

83:                                               ; preds = %82
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %84 unwind label %89

84:                                               ; preds = %83
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %91 unwind label %89

85:                                               ; preds = %70, %69, %68, %67, %66
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %160

87:                                               ; preds = %72
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %158

89:                                               ; preds = %152, %151, %144, %143, %142, %141, %138, %126, %125, %124, %123, %122, %121, %118, %105, %104, %103, %102, %101, %100, %97, %84, %83, %82, %81, %80, %79, %76
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %156

91:                                               ; preds = %84, %78
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #21
  %92 = load ptr, ptr %21, align 8, !tbaa !38
  %93 = getelementptr inbounds ptr, ptr %92, i64 48
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %21)
          to label %95 unwind label %106

95:                                               ; preds = %91
  %96 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %97 unwind label %108

97:                                               ; preds = %95
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  %98 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null)
          to label %99 unwind label %89

99:                                               ; preds = %97
  br i1 %98, label %100, label %112

100:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %101 unwind label %89

101:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE)
          to label %102 unwind label %89

102:                                              ; preds = %101
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %103 unwind label %89

103:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %104 unwind label %89

104:                                              ; preds = %103
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %105 unwind label %89

105:                                              ; preds = %104
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %112 unwind label %89

106:                                              ; preds = %91
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %110

108:                                              ; preds = %95
  %109 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #21
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi { ptr, i32 } [ %109, %108 ], [ %107, %106 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #21
  br label %156

112:                                              ; preds = %105, %99
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #21
  %113 = load ptr, ptr %21, align 8, !tbaa !38
  %114 = getelementptr inbounds ptr, ptr %113, i64 49
  %115 = load ptr, ptr %114, align 8
  invoke void %115(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(120) %21)
          to label %116 unwind label %127

116:                                              ; preds = %112
  %117 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %118 unwind label %129

118:                                              ; preds = %116
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  %119 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null)
          to label %120 unwind label %89

120:                                              ; preds = %118
  br i1 %119, label %121, label %133

121:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %122 unwind label %89

122:                                              ; preds = %121
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE)
          to label %123 unwind label %89

123:                                              ; preds = %122
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %124 unwind label %89

124:                                              ; preds = %123
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %125 unwind label %89

125:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %126 unwind label %89

126:                                              ; preds = %125
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %133 unwind label %89

127:                                              ; preds = %112
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %131

129:                                              ; preds = %116
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #21
  br label %131

131:                                              ; preds = %129, %127
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #21
  br label %156

133:                                              ; preds = %126, %120
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #21
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !192
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %135)
          to label %136 unwind label %145

136:                                              ; preds = %133
  %137 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %138 unwind label %147

138:                                              ; preds = %136
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  %139 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null)
          to label %140 unwind label %89

140:                                              ; preds = %138
  br i1 %139, label %141, label %151

141:                                              ; preds = %140
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32)
          to label %142 unwind label %89

142:                                              ; preds = %141
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %143 unwind label %89

143:                                              ; preds = %142
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %144 unwind label %89

144:                                              ; preds = %143
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34)
          to label %151 unwind label %89

145:                                              ; preds = %133
  %146 = landingpad { ptr, i32 }
          cleanup
  br label %149

147:                                              ; preds = %136
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #21
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %146, %145 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #21
  br label %156

151:                                              ; preds = %144, %140
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 62)
          to label %152 unwind label %89

152:                                              ; preds = %151
  %153 = load ptr, ptr %41, align 8, !tbaa !127
  %154 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %153, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %155 unwind label %89

155:                                              ; preds = %152
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %162

156:                                              ; preds = %149, %131, %110, %89
  %157 = phi { ptr, i32 } [ %90, %89 ], [ %150, %149 ], [ %132, %131 ], [ %111, %110 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #21
  br label %158

158:                                              ; preds = %156, %87
  %159 = phi { ptr, i32 } [ %157, %156 ], [ %88, %87 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #21
  br label %160

160:                                              ; preds = %158, %85
  %161 = phi { ptr, i32 } [ %159, %158 ], [ %86, %85 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #21
  br label %163

162:                                              ; preds = %155, %63
  ret void

163:                                              ; preds = %160, %61, %59, %57, %55
  %164 = phi { ptr, i32 } [ %161, %160 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], [ %56, %55 ]
  resume { ptr, i32 } %164
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #12 align 2 !prof !37 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext poison, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12resetDocTypeEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0) unnamed_addr #15 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  store ptr null, ptr %2, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12resetDocTypeEv(ptr nocapture noundef writeonly %0) unnamed_addr #15 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 88
  store ptr null, ptr %2, align 8, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !193
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %10)
  %11 = load ptr, ptr %8, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 57
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %15 unwind label %42

15:                                               ; preds = %3
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !195
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %17)
  %18 = load ptr, ptr %14, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 49
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %21 unwind label %44

21:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !196
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %23)
  %24 = load ptr, ptr %14, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 50
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(56) %14, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %27 unwind label %46

27:                                               ; preds = %21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull %14)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %35, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !179
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %35)
  br label %48

42:                                               ; preds = %3
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %49

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  br label %49

46:                                               ; preds = %21
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  br label %49

48:                                               ; preds = %41, %37, %27
  ret void

49:                                               ; preds = %46, %44, %42
  %50 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ], [ %43, %42 ]
  resume { ptr, i32 } %50
}

; Function Attrs: cold uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #12 align 2 !prof !37 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext poison)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14startIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) unnamed_addr #10 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %3, i64 0, i32 9
  store i8 1, ptr %4, align 8, !tbaa !188
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser14startIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #10 align 2 !prof !37 {
  %2 = getelementptr inbounds i8, ptr %0, i64 88
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %3, i64 0, i32 9
  store i8 1, ptr %4, align 8, !tbaa !188
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14startExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser14startExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #13 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser11loadGrammarEPKcsb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !54, !range !88, !noundef !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #21
  br label %35

15:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !54
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %19 unwind label %20

19:                                               ; preds = %15
  store i8 0, ptr %5, align 1, !tbaa !54
  ret ptr %18

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %25 = icmp eq i32 %23, %24
  %26 = tail call ptr @__cxa_begin_catch(ptr %22) #21
  br i1 %25, label %27, label %29

27:                                               ; preds = %20
  invoke void @__cxa_rethrow() #23
          to label %28 unwind label %33

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %20
  store i8 0, ptr %5, align 1, !tbaa !54
  invoke void @__cxa_rethrow() #23
          to label %30 unwind label %31

30:                                               ; preds = %29
  unreachable

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %37

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %37

35:                                               ; preds = %33, %31, %13
  %36 = phi { ptr, i32 } [ %14, %13 ], [ %32, %31 ], [ %34, %33 ]
  resume { ptr, i32 } %36

37:                                               ; preds = %33, %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #22
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser11loadGrammarEPKtsb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !54, !range !88, !noundef !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1412, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #21
  br label %35

15:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !54
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %19 unwind label %20

19:                                               ; preds = %15
  store i8 0, ptr %5, align 1, !tbaa !54
  ret ptr %18

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %25 = icmp eq i32 %23, %24
  %26 = tail call ptr @__cxa_begin_catch(ptr %22) #21
  br i1 %25, label %27, label %29

27:                                               ; preds = %20
  invoke void @__cxa_rethrow() #23
          to label %28 unwind label %33

28:                                               ; preds = %27
  unreachable

29:                                               ; preds = %20
  store i8 0, ptr %5, align 1, !tbaa !54
  invoke void @__cxa_rethrow() #23
          to label %30 unwind label %31

30:                                               ; preds = %29
  unreachable

31:                                               ; preds = %29
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %37

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %35 unwind label %37

35:                                               ; preds = %33, %31, %13
  %36 = phi { ptr, i32 } [ %14, %13 ], [ %32, %31 ], [ %34, %33 ]
  resume { ptr, i32 } %36

37:                                               ; preds = %33, %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #22
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser11loadGrammarERKNS_11InputSourceEsb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !54, !range !88, !noundef !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #21
  br label %38

15:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !54
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  %18 = load ptr, ptr %17, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 10
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %22 unwind label %23

22:                                               ; preds = %15
  store i8 0, ptr %5, align 1, !tbaa !54
  ret ptr %21

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #21
  %28 = icmp eq i32 %26, %27
  %29 = tail call ptr @__cxa_begin_catch(ptr %25) #21
  br i1 %28, label %30, label %32

30:                                               ; preds = %23
  invoke void @__cxa_rethrow() #23
          to label %31 unwind label %36

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %23
  store i8 0, ptr %5, align 1, !tbaa !54
  invoke void @__cxa_rethrow() #23
          to label %33 unwind label %34

33:                                               ; preds = %32
  unreachable

34:                                               ; preds = %32
  %35 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %38 unwind label %40

36:                                               ; preds = %30
  %37 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %38 unwind label %40

38:                                               ; preds = %36, %34, %13
  %39 = phi { ptr, i32 } [ %14, %13 ], [ %35, %34 ], [ %37, %36 ]
  resume { ptr, i32 } %39

40:                                               ; preds = %36, %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) unnamed_addr #16 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #16 comdat align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #16 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) unnamed_addr #16 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #17 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #17 comdat align 2 !prof !37 {
  ret i1 false
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_79DOMParser13resetEntitiesEv(ptr noundef %0) unnamed_addr #17 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #17 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @llvm.trap() #22
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @llvm.trap() #22
  unreachable
}

declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #21
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = load i8, ptr %0, align 8, !tbaa !79, !range !88, !noundef !89
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !82
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !83
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %14, i64 %13
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #21
  %16 = add nsw i64 %13, -1
  %17 = icmp sgt i64 %13, 0
  br i1 %17, label %12, label %18, !llvm.loop !201

18:                                               ; preds = %12, %4, %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = load ptr, ptr %20, align 8, !tbaa !38
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %22)
          to label %26 unwind label %27

26:                                               ; preds = %18
  ret void

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #22
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %15, i64 %16
  ret ptr %17
}

declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #21
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #23
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #21
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %34, label %16

16:                                               ; preds = %13
  %17 = load i32, ptr %3, align 4, !tbaa !81
  %18 = add i32 %17, -1
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %22 = zext i32 %1 to i64
  br label %23

23:                                               ; preds = %20, %23
  %24 = phi i64 [ %22, %20 ], [ %26, %23 ]
  %25 = load ptr, ptr %21, align 8, !tbaa !83
  %26 = add nuw nsw i64 %24, 1
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %25, i64 %26
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %25, i64 %24
  %29 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull align 8 dereferenceable(8) %27)
  %30 = load i32, ptr %3, align 4, !tbaa !81
  %31 = add i32 %30, -1
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %26, %32
  br i1 %33, label %23, label %34, !llvm.loop !202

34:                                               ; preds = %23, %16, %13
  %35 = phi i32 [ %4, %13 ], [ %17, %16 ], [ %30, %23 ]
  %36 = add i32 %35, -1
  store i32 %36, ptr %3, align 4, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #21
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #21
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !81
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !84
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !81
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  br label %33

26:                                               ; preds = %33, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !84
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = load ptr, ptr %27, align 8, !tbaa !38
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
  store ptr %21, ptr %28, align 8, !tbaa !83
  store i32 %13, ptr %6, align 8, !tbaa !82
  br label %43

33:                                               ; preds = %24, %33
  %34 = phi i64 [ 0, %24 ], [ %39, %33 ]
  %35 = load ptr, ptr %25, align 8, !tbaa !83
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %35, i64 %34
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %21, i64 %34
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
  %39 = add nuw nsw i64 %34, 1
  %40 = load i32, ptr %3, align 4, !tbaa !81
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %33, label %26, !llvm.loop !203

43:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !47, i64 32}
!42 = !{!"_ZTSN11xercesc_2_79DOMParserE", !43, i64 0, !44, i64 8, !45, i64 16, !46, i64 24, !47, i64 32, !47, i64 33, !47, i64 34, !47, i64 35, !47, i64 36, !49, i64 40, !49, i64 48, !51, i64 56, !50, i64 64, !50, i64 72, !50, i64 80, !50, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !50, i64 144, !50, i64 152}
!43 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!44 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!45 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!46 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!47 = !{!"bool", !48, i64 0}
!48 = !{!"omnipotent char", !40, i64 0}
!49 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !50, i64 0}
!50 = !{!"any pointer", !48, i64 0}
!51 = !{!"_ZTSN11xercesc_2_712DOM_DocumentE", !49, i64 0}
!52 = !{!42, !47, i64 33}
!53 = !{!42, !47, i64 34}
!54 = !{!42, !47, i64 35}
!55 = !{!42, !47, i64 36}
!56 = !{!42, !50, i64 136}
!57 = !{!42, !50, i64 144}
!58 = !{!42, !50, i64 152}
!59 = !{!42, !50, i64 120}
!60 = !{!61, !50, i64 8}
!61 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !47, i64 0, !47, i64 1, !47, i64 2, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64, !50, i64 72}
!62 = !{!42, !50, i64 128}
!63 = !{!42, !50, i64 104}
!64 = !{!65, !50, i64 120}
!65 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !66, i64 0, !67, i64 8, !47, i64 16, !47, i64 17, !47, i64 18, !47, i64 19, !47, i64 20, !47, i64 21, !47, i64 22, !47, i64 23, !47, i64 24, !47, i64 25, !47, i64 26, !47, i64 27, !47, i64 28, !47, i64 29, !47, i64 30, !47, i64 31, !47, i64 32, !47, i64 33, !47, i64 34, !47, i64 35, !47, i64 36, !47, i64 37, !47, i64 38, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !68, i64 56, !68, i64 60, !68, i64 64, !68, i64 68, !50, i64 72, !68, i64 80, !68, i64 84, !68, i64 88, !68, i64 92, !68, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !50, i64 144, !50, i64 152, !50, i64 160, !50, i64 168, !47, i64 176, !69, i64 184, !50, i64 264, !72, i64 272, !50, i64 280, !50, i64 288, !50, i64 296, !50, i64 304, !50, i64 312, !50, i64 320, !50, i64 328, !50, i64 336, !50, i64 344, !71, i64 352, !50, i64 360, !73, i64 368, !74, i64 392, !74, i64 432, !74, i64 472, !74, i64 512, !74, i64 552, !74, i64 592, !74, i64 632, !75, i64 672}
!66 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!67 = !{!"long", !48, i64 0}
!68 = !{!"int", !48, i64 0}
!69 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !70, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !68, i64 40, !50, i64 48, !47, i64 56, !71, i64 60, !47, i64 64, !50, i64 72}
!70 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!71 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !48, i64 0}
!72 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !48, i64 0}
!73 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !68, i64 0, !50, i64 8, !50, i64 16}
!74 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !68, i64 0, !68, i64 4, !68, i64 8, !47, i64 12, !50, i64 16, !50, i64 24, !50, i64 32}
!75 = !{!"_ZTSN11xercesc_2_79ElemStackE", !68, i64 0, !68, i64 4, !76, i64 8, !50, i64 48, !68, i64 56, !68, i64 60, !68, i64 64, !68, i64 68, !68, i64 72, !68, i64 76, !68, i64 80, !50, i64 88, !50, i64 96}
!76 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !77, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !68, i64 32, !68, i64 36}
!77 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!78 = !{!65, !50, i64 128}
!79 = !{!80, !47, i64 0}
!80 = !{!"_ZTSN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEEE", !47, i64 0, !68, i64 4, !68, i64 8, !50, i64 16, !50, i64 24}
!81 = !{!80, !68, i64 4}
!82 = !{!80, !68, i64 8}
!83 = !{!80, !50, i64 16}
!84 = !{!80, !50, i64 24}
!85 = !{!42, !50, i64 96}
!86 = !{!65, !50, i64 264}
!87 = !{!65, !47, i64 18}
!88 = !{i8 0, i8 2}
!89 = !{}
!90 = !{!65, !47, i64 19}
!91 = !{!65, !47, i64 20}
!92 = !{!65, !72, i64 272}
!93 = !{!65, !47, i64 26}
!94 = !{!65, !47, i64 27}
!95 = !{!65, !47, i64 28}
!96 = !{!65, !68, i64 40}
!97 = !{!65, !50, i64 328}
!98 = !{!65, !50, i64 336}
!99 = !{!65, !47, i64 29}
!100 = !{!65, !47, i64 30}
!101 = !{!65, !50, i64 304}
!102 = !{!65, !47, i64 17}
!103 = !{!65, !47, i64 16}
!104 = !{!69, !50, i64 16}
!105 = !{!42, !50, i64 80}
!106 = !{!65, !50, i64 144}
!107 = !{!65, !50, i64 152}
!108 = !{!42, !50, i64 88}
!109 = !{!65, !50, i64 160}
!110 = !{!42, !50, i64 64}
!111 = !{!65, !50, i64 136}
!112 = !{!69, !50, i64 24}
!113 = !{!50, !50, i64 0}
!114 = !{!42, !50, i64 72}
!115 = !{!65, !47, i64 24}
!116 = !{!65, !50, i64 360}
!117 = !{!118, !118, i64 0}
!118 = !{!"short", !48, i64 0}
!119 = distinct !{!119, !120, !121}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!"llvm.loop.unroll.disable"}
!122 = !{!69, !47, i64 64}
!123 = !{!124, !50, i64 8}
!124 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !125, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40}
!125 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !48, i64 0}
!126 = !{!124, !50, i64 16}
!127 = !{!42, !50, i64 112}
!128 = !{!129, !50, i64 96}
!129 = !{!"_ZTSN11xercesc_2_716DocumentTypeImplE", !130, i64 0, !135, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !135, i64 120, !135, i64 128, !135, i64 136, !47, i64 144}
!130 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !131, i64 0, !50, i64 48, !50, i64 56, !68, i64 64, !50, i64 72, !68, i64 80}
!131 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !132, i64 0, !50, i64 32, !50, i64 40}
!132 = !{!"_ZTSN11xercesc_2_78NodeImplE", !133, i64 0, !50, i64 16, !118, i64 24}
!133 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !134, i64 0}
!134 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !68, i64 8}
!135 = !{!"_ZTSN11xercesc_2_79DOMStringE", !50, i64 0}
!136 = !{!137, !50, i64 24}
!137 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !77, i64 0, !68, i64 8, !68, i64 12, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48, !50, i64 56, !50, i64 64}
!138 = !{!42, !50, i64 40}
!139 = !{!49, !50, i64 0}
!140 = !{!74, !68, i64 0}
!141 = !{!74, !68, i64 4}
!142 = !{!74, !68, i64 8}
!143 = !{!74, !47, i64 12}
!144 = !{!74, !50, i64 16}
!145 = !{!74, !50, i64 32}
!146 = !{!65, !68, i64 52}
!147 = !{!148, !50, i64 16}
!148 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !77, i64 0, !50, i64 8, !50, i64 16, !149, i64 24, !68, i64 28, !47, i64 32}
!149 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !48, i64 0}
!150 = !{!151, !50, i64 32}
!151 = !{!"_ZTSN11xercesc_2_75QNameE", !77, i64 0, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48}
!152 = !{!153, !50, i64 24}
!153 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !47, i64 0, !154, i64 4, !68, i64 8, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !47, i64 48}
!154 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !48, i64 0}
!155 = !{!151, !68, i64 20}
!156 = !{!65, !68, i64 64}
!157 = !{!153, !50, i64 16}
!158 = !{!153, !154, i64 4}
!159 = !{!160, !50, i64 112}
!160 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !130, i64 0, !50, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !50, i64 144, !68, i64 152, !47, i64 156, !50, i64 160}
!161 = !{!132, !118, i64 24}
!162 = !{!153, !47, i64 0}
!163 = distinct !{!163, !120, !121}
!164 = distinct !{!164, !120, !121}
!165 = !{!"function_entry_count", i64 1366334}
!166 = !{!167, !68, i64 12}
!167 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !47, i64 8, !68, i64 12, !68, i64 16, !50, i64 24, !50, i64 32}
!168 = !{!"branch_weights", i32 1366334, i32 0}
!169 = !{!167, !50, i64 32}
!170 = !{!167, !50, i64 24}
!171 = !{!172, !154, i64 12}
!172 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !77, i64 0, !173, i64 8, !154, i64 12, !174, i64 16, !47, i64 20, !47, i64 21, !68, i64 24, !50, i64 32, !50, i64 40, !50, i64 48}
!173 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !48, i64 0}
!174 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !48, i64 0}
!175 = !{!172, !50, i64 40}
!176 = distinct !{!176, !120, !121}
!177 = !{!172, !173, i64 8}
!178 = !{!172, !50, i64 32}
!179 = !{!134, !68, i64 8}
!180 = distinct !{!180, !120, !121}
!181 = !{!"function_entry_count", i64 789922}
!182 = !{!"branch_weights", i32 0, i32 789922}
!183 = !{!"branch_weights", i32 284, i32 789638}
!184 = !{!"branch_weights", i32 789638, i32 41628303}
!185 = distinct !{!185, !120, !121}
!186 = !{!"branch_weights", i32 789636, i32 2}
!187 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!188 = !{!129, !47, i64 144}
!189 = !{!137, !50, i64 40}
!190 = !{!137, !50, i64 48}
!191 = !{!137, !50, i64 32}
!192 = !{!137, !50, i64 16}
!193 = !{!194, !50, i64 16}
!194 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !77, i64 0, !68, i64 8, !68, i64 12, !50, i64 16, !50, i64 24, !50, i64 32, !50, i64 40, !50, i64 48}
!195 = !{!194, !50, i64 24}
!196 = !{!194, !50, i64 32}
!197 = !{!129, !50, i64 104}
!198 = !{!199, !50, i64 40}
!199 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !200, i64 8, !50, i64 16, !68, i64 24, !50, i64 32, !50, i64 40}
!200 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !48, i64 0}
!201 = distinct !{!201, !120, !121}
!202 = distinct !{!202, !120, !121}
!203 = distinct !{!203, !120, !121}
