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
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOM_EntityReference" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_XMLDecl" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::DOM_DocumentType" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_718XMLDocumentHandlerC2Ev = comdat any

$_ZN11xercesc_2_716XMLErrorReporterC2Ev = comdat any

$_ZN11xercesc_2_716XMLEntityHandlerC2Ev = comdat any

$_ZN11xercesc_2_714DocTypeHandlerC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715GrammarResolver13getStringPoolEv = comdat any

$_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEED2Ev = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_710XMLScanner12getValidatorEv = comdat any

$_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv = comdat any

$_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv = comdat any

$_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv = comdat any

$_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv = comdat any

$_ZN11xercesc_2_710XMLScanner13getErrorCountEv = comdat any

$_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv = comdat any

$_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv = comdat any

$_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb = comdat any

$_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE = comdat any

$_ZN11xercesc_2_710XMLScanner11setDoSchemaEb = comdat any

$_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb = comdat any

$_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt = comdat any

$_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc = comdat any

$_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc = comdat any

$_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb = comdat any

$_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE5emptyEv = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_77XMLAttr8getURIIdEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getNameEv = comdat any

$_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv = comdat any

$_ZNK11xercesc_2_77XMLAttr8getValueEv = comdat any

$_ZNK11xercesc_2_77XMLAttr7getTypeEv = comdat any

$_ZN11xercesc_2_78NodeImpl8isIdAttrEb = comdat any

$_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE4pushERKS1_ = comdat any

$_ZN11xercesc_2_710XMLScanner15setDoValidationEb = comdat any

$_ZNK11xercesc_2_79XMLAttDef7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv = comdat any

$_ZNK11xercesc_2_79XMLAttDef8getValueEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl8getValueEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl7getNameEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv = comdat any

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

$_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEEC2EjPNS_13MemoryManagerEb = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE17removeAllElementsEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE10addElementERKS1_ = comdat any

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

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !49
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !49
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !49
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 4
  store <4 x i8> <i8 0, i8 1, i8 1, i8 0>, ptr %8, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %9, align 4, !tbaa !55
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %11 unwind label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  invoke void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
          to label %13 unwind label %22

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #18
          to label %15 unwind label %24

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %16, i8 0, i64 72, i1 false)
  store ptr %1, ptr %17, align 8, !tbaa !64
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  store ptr %2, ptr %18, align 8, !tbaa !65
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 23
  store ptr %3, ptr %19, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_79DOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
          to label %39 unwind label %26

20:                                               ; preds = %4
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %46

22:                                               ; preds = %11
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %44

24:                                               ; preds = %13
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %42

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %31 = icmp eq i32 %29, %30
  %32 = tail call ptr @__cxa_begin_catch(ptr %28) #16
  br i1 %31, label %33, label %34

33:                                               ; preds = %26
  invoke void @__cxa_rethrow() #19
          to label %51 unwind label %37

34:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_79DOMParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  invoke void @__cxa_rethrow() #19
          to label %51 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %40 unwind label %48

37:                                               ; preds = %33
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %40 unwind label %48

39:                                               ; preds = %15
  ret void

40:                                               ; preds = %37, %35
  %41 = phi { ptr, i32 } [ %36, %35 ], [ %38, %37 ]
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  br label %42

42:                                               ; preds = %40, %24
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %25, %24 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  br label %44

44:                                               ; preds = %42, %22
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %23, %22 ]
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br label %46

46:                                               ; preds = %44, %20
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %21, %20 ]
  tail call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  tail call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  resume { ptr, i32 } %47

48:                                               ; preds = %37, %35
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  tail call void @__clang_call_terminate(ptr %50) #17
  unreachable

51:                                               ; preds = %33, %34
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [17 x ptr] }, ptr @_ZTVN11xercesc_2_718XMLDocumentHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLErrorReporterE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLEntityHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_714DocTypeHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_DocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10initializeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %3) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 23
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = load ptr, ptr %2, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %6, ptr noundef %7) #18
          to label %8 unwind label %27

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  store ptr %4, ptr %9, align 8, !tbaa !69
  %10 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 20
  store ptr %10, ptr %11, align 8, !tbaa !70
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = load ptr, ptr %9, align 8, !tbaa !69
  %15 = load ptr, ptr %2, align 8, !tbaa !65
  %16 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %14, ptr noundef %15) #18
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  store ptr %16, ptr %17, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull %0) #18
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %18, ptr noundef nonnull %19) #18
  %20 = load ptr, ptr %17, align 8, !tbaa !71
  %21 = load ptr, ptr %11, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %20, ptr noundef %21) #18
  %22 = load ptr, ptr %2, align 8, !tbaa !65
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %22) #18
  %24 = load ptr, ptr %2, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef 64, ptr noundef %24, i1 noundef zeroext true) #18
          to label %25 unwind label %29

25:                                               ; preds = %8
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  store ptr %23, ptr %26, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  ret void

27:                                               ; preds = %1
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  br label %31

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #20
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %32
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #20
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(776) %8) #20
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %16) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #20
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  %21 = load ptr, ptr %20, align 8, !tbaa !64
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %21, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(40) %21) #20
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !49
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [41 x ptr], [6 x ptr], [10 x ptr], [20 x ptr] }, ptr @_ZTVN11xercesc_2_79DOMParserE, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_79DOMParser7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  tail call void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  tail call void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  tail call void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  tail call void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_79DOMParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParserD1Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_79DOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79DOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_79DOMParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParserD0Ev(ptr noundef %0) unnamed_addr #8 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %2) #20
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolverC1EPNS_14XMLGrammarPoolEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715GrammarResolver13getStringPoolEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver17getDefaultScannerEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner13setDocHandlerEPNS_18XMLDocumentHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %1, ptr %3, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !90
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  call void @_ZN11xercesc_2_712DOM_Document14createDocumentEPNS_13MemoryManagerE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %2, ptr noundef %4) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %7 unwind label %19

7:                                                ; preds = %1
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds ptr, ptr %8, i64 33
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef null) #18
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  store i8 0, ptr %15, align 1, !tbaa !91
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %16, align 4, !tbaa !55
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  call void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #18
  ret void

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #20
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715GrammarResolverD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document14createDocumentEPNS_13MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_712DOM_DocumentaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNK11xercesc_2_79DOMParser12getValidatorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner12getValidatorEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser15getDoNamespacesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !94, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser24getExitOnFirstFatalErrorEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner19getExitOnFirstFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !98, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser28getValidationConstraintFatalEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner28getValidationConstraintFatalEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  %3 = load i8, ptr %2, align 4, !tbaa !99, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMParser19getValidationSchemeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 0, i32 2
  %7 = icmp eq i32 %4, 1
  %8 = select i1 %7, i32 1, i32 %6
  ret i32 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %3 = load i32, ptr %2, align 8, !tbaa !100
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser11getDoSchemaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner11getDoSchemaEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 2, !tbaa !101, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser31getValidationSchemaFullCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner31getValidationSchemaFullCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  %3 = load i8, ptr %2, align 1, !tbaa !103, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser29getIdentityConstraintCheckingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner29getIdentityConstraintCheckingEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 4, !tbaa !104, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMParser13getErrorCountEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner13getErrorCountEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %3 = load i32, ptr %2, align 8, !tbaa !105
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMParser25getExternalSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMParser36getExternalNoNamespaceSchemaLocationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser25isCachingGrammarFromParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !108, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser27isUsingCachedGrammarInParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !109, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #18
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser14getRootGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !110
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79DOMParser10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1) #18
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser18getCalculateSrcOfsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getCalculateSrcOfsEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !111, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser24getStandardUriConformantEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner24getStandardUriConformantEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !112, !range !95, !noundef !96
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79DOMParser12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser15setDoNamespacesEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoNamespacesEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !113 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 2, !tbaa !94
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !114
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  br i1 %4, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = load ptr, ptr %3, align 8, !tbaa !114
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi ptr [ null, %10 ], [ %9, %7 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %13, ptr noundef %12) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !115
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %1, ptr %3, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 15
  store ptr %1, ptr %3, align 8, !tbaa !117
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  br i1 %4, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %1) #18
  br label %9

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %1, ptr %3, align 8, !tbaa !118
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  store ptr %1, ptr %3, align 8, !tbaa !119
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  br i1 %4, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %8) #18
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 13
  store ptr null, ptr %9, align 8, !tbaa !120
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef null) #18
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !121
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 13
  store ptr %1, ptr %3, align 8, !tbaa !120
  %4 = icmp eq ptr %1, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  store ptr null, ptr %6, align 8, !tbaa !119
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %8, ptr noundef nonnull %9) #18
  br label %13

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %12, ptr noundef null) #18
  br label %13

13:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser24setExitOnFirstFatalErrorEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 1, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser28setValidationConstraintFatalEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner28setValidationConstraintFatalEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %3, ptr %4, align 4, !tbaa !99
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser19setValidationSchemeENS0_10ValSchemesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = icmp eq i32 %1, 1
  %6 = select i1 %5, i32 1, i32 2
  %7 = icmp eq i32 %1, 0
  %8 = select i1 %7, i32 0, i32 %6
  tail call void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %8) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setValidationSchemeENS0_10ValSchemesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %1, ptr %3, align 8, !tbaa !100
  %4 = icmp eq i32 %1, 1
  %5 = zext i1 %4 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11setDoSchemaEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner11setDoSchemaEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 2, !tbaa !101
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser31setValidationSchemaFullCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner31setValidationSchemaFullCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !103
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser29setIdentityConstraintCheckingEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner29setIdentityConstraintCheckingEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %3, ptr %4, align 4, !tbaa !104
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser25setExternalSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = load ptr, ptr %4, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !122
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser36setExternalNoNamespaceSchemaLocationEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = load ptr, ptr %4, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !122
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser25setExternalSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner25setExternalSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  %7 = load ptr, ptr %4, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !122
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !106
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser36setExternalNoNamespaceSchemaLocationEPKc(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner36setExternalNoNamespaceSchemaLocationEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = load ptr, ptr %4, align 8, !tbaa !49
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  %10 = load ptr, ptr %3, align 8, !tbaa !122
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #18
  store ptr %11, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser21cacheGrammarFromParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  br i1 %1, label %5, label %7

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %6, i1 noundef zeroext true) #18
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser23useCachedGrammarInParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  br i1 %1, label %7, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %5) #18
  br i1 %6, label %10, label %7

7:                                                ; preds = %3, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %9, i1 noundef zeroext %1) #18
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser18setCalculateSrcOfsEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner18setCalculateSrcOfsEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 1, !tbaa !111
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser24setStandardUriConformantEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 8, !tbaa !112
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %5, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10useScannerEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = tail call noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4, ptr noundef %6, ptr noundef %8) #18
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %13) #18
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 20
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %9, ptr noundef %15) #18
  %16 = load ptr, ptr %12, align 8, !tbaa !71
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !49
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(776) %16) #20
  br label %22

22:                                               ; preds = %18, %11
  store ptr %9, ptr %12, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLScannerResolver14resolveScannerEPKtPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5parseERKNS_11InputSourceE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !91, !range !95, !noundef !96
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 426, i32 noundef 43, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  br label %33

13:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !91
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef nonnull align 1 %1) #18
          to label %19 unwind label %20

19:                                               ; preds = %13
  store i8 0, ptr %3, align 1, !tbaa !91
  ret void

20:                                               ; preds = %13
  %21 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %25 = icmp eq i32 %23, %24
  %26 = tail call ptr @__cxa_begin_catch(ptr %22) #16
  br i1 %25, label %27, label %28

27:                                               ; preds = %20
  invoke void @__cxa_rethrow() #19
          to label %38 unwind label %31

28:                                               ; preds = %20
  store i8 0, ptr %3, align 1, !tbaa !91
  invoke void @__cxa_rethrow() #19
          to label %38 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

33:                                               ; preds = %31, %29, %11
  %34 = phi { ptr, i32 } [ %12, %11 ], [ %30, %29 ], [ %32, %31 ]
  resume { ptr, i32 } %34

35:                                               ; preds = %31, %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #17
  unreachable

38:                                               ; preds = %27, %28
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5parseEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !91, !range !95, !noundef !96
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 449, i32 noundef 43, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  br label %30

13:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !91
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef %1) #18
          to label %16 unwind label %17

16:                                               ; preds = %13
  store i8 0, ptr %3, align 1, !tbaa !91
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %22 = icmp eq i32 %20, %21
  %23 = tail call ptr @__cxa_begin_catch(ptr %19) #16
  br i1 %22, label %24, label %25

24:                                               ; preds = %17
  invoke void @__cxa_rethrow() #19
          to label %35 unwind label %28

25:                                               ; preds = %17
  store i8 0, ptr %3, align 1, !tbaa !91
  invoke void @__cxa_rethrow() #19
          to label %35 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %32

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %32

30:                                               ; preds = %28, %26, %11
  %31 = phi { ptr, i32 } [ %12, %11 ], [ %27, %26 ], [ %29, %28 ]
  resume { ptr, i32 } %31

32:                                               ; preds = %28, %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #17
  unreachable

35:                                               ; preds = %24, %25
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5parseEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 1, !tbaa !91, !range !95, !noundef !96
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 43, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  br label %30

13:                                               ; preds = %2
  store i8 1, ptr %3, align 1, !tbaa !91
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %15, ptr noundef %1) #18
          to label %16 unwind label %17

16:                                               ; preds = %13
  store i8 0, ptr %3, align 1, !tbaa !91
  ret void

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %22 = icmp eq i32 %20, %21
  %23 = tail call ptr @__cxa_begin_catch(ptr %19) #16
  br i1 %22, label %24, label %25

24:                                               ; preds = %17
  invoke void @__cxa_rethrow() #19
          to label %35 unwind label %28

25:                                               ; preds = %17
  store i8 0, ptr %3, align 1, !tbaa !91
  invoke void @__cxa_rethrow() #19
          to label %35 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %32

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %30 unwind label %32

30:                                               ; preds = %28, %26, %11
  %31 = phi { ptr, i32 } [ %12, %11 ], [ %27, %26 ], [ %29, %28 ]
  resume { ptr, i32 } %31

32:                                               ; preds = %28, %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #17
  unreachable

35:                                               ; preds = %24, %25
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser10parseFirstEPKtRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !91, !range !95, !noundef !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2) #18
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser10parseFirstEPKcRNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !91, !range !95, !noundef !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 517, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef %1, ptr noundef nonnull align 1 %2) #18
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser10parseFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !91, !range !95, !noundef !96
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 530, i32 noundef 43, ptr noundef %10) #18
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %16, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %2) #18
  ret i1 %17
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1, ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser9parseNextERNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1) #18
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10parseResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) local_unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull align 1 %1) #18
  tail call void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 1) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12) #18
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !114
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %40

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #16
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10) #18
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #19
          to label %43 unwind label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #16
  br label %41

23:                                               ; preds = %37, %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %41

25:                                               ; preds = %9
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load ptr, ptr %14, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  br label %37

30:                                               ; preds = %25
  %31 = icmp sgt i32 %3, 1
  %32 = load ptr, ptr %14, align 8, !tbaa !49
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
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10) #18
          to label %40 unwind label %23

40:                                               ; preds = %37, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  ret void

41:                                               ; preds = %23, %21
  %42 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #20
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  resume { ptr, i32 } %42

43:                                               ; preds = %20
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #9 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_79DOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(160) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xercesc_2_79DOMParser11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #10 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #3 align 2 !prof !48 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2) #18
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #9 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = tail call noundef ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef %1, ptr noundef %2, ptr poison) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %8 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  %9 = load ptr, ptr %4, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8) #18
  br label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1) #18
  br label %22

22:                                               ; preds = %13, %17, %6
  %23 = phi ptr [ %12, %6 ], [ %21, %17 ], [ null, %13 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  %4 = tail call noundef ptr @_ZN11xercesc_2_79DOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef %1) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = alloca %"class.xercesc_2_7::DOM_CDATASection", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  %14 = load i8, ptr %13, align 4, !tbaa !55, !range !95, !noundef !96
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %57, label %16

16:                                               ; preds = %4
  br i1 %3, label %17, label %31

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %2) #18
  invoke void @_ZN11xercesc_2_712DOM_Document18createCDATASectionERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_CDATASection") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %19 unwind label %25

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %21 unwind label %27

21:                                               ; preds = %19
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %24 unwind label %27

24:                                               ; preds = %21
  call void @_ZN11xercesc_2_716DOM_CDATASectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %57

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %29

27:                                               ; preds = %21, %19
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_716DOM_CDATASectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %58

31:                                               ; preds = %16
  %32 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %33 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  %34 = icmp eq i16 %33, 3
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_78DOM_TextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %32) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1, i32 noundef %2) #18
          to label %36 unwind label %38

36:                                               ; preds = %35
  invoke void @_ZN11xercesc_2_717DOM_CharacterData10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %37 unwind label %40

37:                                               ; preds = %36
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %57

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %58

44:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %45 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %1, i32 noundef %2) #18
  invoke void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
          to label %46 unwind label %51

46:                                               ; preds = %44
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  %47 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %48 unwind label %53

48:                                               ; preds = %46
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  %49 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %50 unwind label %53

50:                                               ; preds = %48
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %57

51:                                               ; preds = %44
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %55

53:                                               ; preds = %48, %46
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %58

57:                                               ; preds = %37, %50, %4, %24
  ret void

58:                                               ; preds = %55, %42, %29
  %59 = phi { ptr, i32 } [ %30, %29 ], [ %43, %42 ], [ %56, %55 ]
  resume { ptr, i32 } %59
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document18createCDATASectionERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_CDATASection") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Node") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_CDATASectionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_TextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DOM_CharacterData10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Text") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = alloca %"class.xercesc_2_7::DOM_Comment", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #18
  invoke void @_ZN11xercesc_2_712DOM_Document13createCommentERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Comment") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %7 unwind label %13

7:                                                ; preds = %2
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %9 unwind label %15

9:                                                ; preds = %7
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %11 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %12 unwind label %15

12:                                               ; preds = %9
  call void @_ZN11xercesc_2_711DOM_CommentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void

13:                                               ; preds = %2
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %17

15:                                               ; preds = %9, %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_CommentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document13createCommentERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Comment") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOM_CommentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = alloca %"class.xercesc_2_7::DOM_ProcessingInstruction", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %2) #18
          to label %8 unwind label %16

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_Document27createProcessingInstructionERKNS_9DOMStringES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_ProcessingInstruction") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %10 unwind label %18

10:                                               ; preds = %8
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %12 unwind label %22

12:                                               ; preds = %10
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %14 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %15 unwind label %22

15:                                               ; preds = %12
  call void @_ZN11xercesc_2_725DOM_ProcessingInstructionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %8
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %24

22:                                               ; preds = %12, %10
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_725DOM_ProcessingInstructionD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %25
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document27createProcessingInstructionERKNS_9DOMStringES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_ProcessingInstruction") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_725DOM_ProcessingInstructionD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !tbaa !127, !range !95, !noundef !96
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %10 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %17) #18
  %18 = load ptr, ptr %16, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %22 unwind label %28

22:                                               ; preds = %12
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  %23 = load ptr, ptr %9, align 8, !tbaa !138
  call void @_ZN11xercesc_2_710EntityImpl12setEntityRefEPNS_19EntityReferenceImplE(ptr noundef nonnull align 8 dereferenceable(120) %21, ptr noundef %23) #18
  %24 = load ptr, ptr %9, align 8, !tbaa !139
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = getelementptr inbounds ptr, ptr %25, i64 35
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull align 8 dereferenceable(26) %24, i1 noundef zeroext true, i1 noundef zeroext true) #18
  br label %30

28:                                               ; preds = %12
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %40

30:                                               ; preds = %22, %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  call void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %32) #18
  %33 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %34 unwind label %37

34:                                               ; preds = %30
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  br label %39

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %40

39:                                               ; preds = %34, %2
  ret void

40:                                               ; preds = %37, %28
  %41 = phi { ptr, i32 } [ %38, %37 ], [ %29, %28 ]
  resume { ptr, i32 } %41
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710EntityImpl12setEntityRefEPNS_19EntityReferenceImplE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1, i64 0, i32 1
  %4 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %8) #18
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  br label %18

12:                                               ; preds = %2
  %13 = add nsw i32 %4, -1
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %13) #18
  tail call void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #18
  invoke void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef %13) #18
          to label %17 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  br label %18

17:                                               ; preds = %12
  ret void

18:                                               ; preds = %15, %10
  %19 = phi { ptr, i32 } [ %11, %10 ], [ %16, %15 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture nonnull readnone align 8 %1, i32 %2, i1 zeroext %3, ptr nocapture readnone %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  call void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE3popEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %6, ptr noundef nonnull align 8 dereferenceable(40) %11) #18
  %12 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %13 unwind label %18

13:                                               ; preds = %5
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %14 = load ptr, ptr %10, align 8, !tbaa !72
  %15 = call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #18
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %17, align 4, !tbaa !55
  br label %20

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  resume { ptr, i32 } %19

20:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i32 noundef %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Text", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  %11 = load i8, ptr %10, align 4, !tbaa !55, !range !95, !noundef !96
  %12 = icmp eq i8 %11, 0
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 2, !range !95
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %12, i1 true, i1 %15
  br i1 %16, label %48, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %19 = tail call noundef signext i16 @_ZNK11xercesc_2_78DOM_Node11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  %20 = icmp eq i16 %19, 3
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_78DOM_TextC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %2) #18
          to label %22 unwind label %24

22:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_717DOM_CharacterData10appendDataERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %23 unwind label %26

23:                                               ; preds = %22
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %48

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %49

30:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %31 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_79DOMStringC1EPKtj(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %1, i32 noundef %2) #18
  invoke void @_ZN11xercesc_2_712DOM_Document14createTextNodeERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Text") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %32 unwind label %42

32:                                               ; preds = %30
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  %33 = load ptr, ptr %7, align 8, !tbaa !139
  %34 = load ptr, ptr %33, align 8, !tbaa !49
  %35 = getelementptr inbounds ptr, ptr %34, i64 57
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(56) %33, i1 noundef zeroext true) #18
          to label %37 unwind label %44

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
          to label %39 unwind label %44

39:                                               ; preds = %37
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  %40 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
          to label %41 unwind label %44

41:                                               ; preds = %39
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %48

42:                                               ; preds = %30
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %46

44:                                               ; preds = %39, %37, %32
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_TextD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %49

48:                                               ; preds = %4, %41, %23
  ret void

49:                                               ; preds = %46, %28
  %50 = phi { ptr, i32 } [ %29, %28 ], [ %47, %46 ]
  resume { ptr, i32 } %50
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_79DOMParser5resetEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  tail call void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext false) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_712DOM_Document16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext true) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_711DOM_ElementC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !71
  %26 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %25) #18
  br i1 %26, label %27, label %177

27:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #16
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %29 = load ptr, ptr %28, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1023, ptr noundef %29) #18
          to label %30 unwind label %52

30:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 0) #18
          to label %31 unwind label %54

31:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef 0) #18
          to label %32 unwind label %56

32:                                               ; preds = %31
  %33 = load ptr, ptr %24, align 8, !tbaa !71
  %34 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %33) #18
  %35 = icmp eq i32 %34, %2
  br i1 %35, label %66, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %24, align 8, !tbaa !71
  %38 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %37, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %10) #18
          to label %39 unwind label %58

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  %40 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %40) #18
          to label %41 unwind label %60

41:                                               ; preds = %39
  %42 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
          to label %43 unwind label %62

43:                                               ; preds = %41
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  %44 = icmp eq ptr %3, null
  br i1 %44, label %66, label %45

45:                                               ; preds = %43
  %46 = load i16, ptr %3, align 2, !tbaa !142
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %3) #18
          to label %49 unwind label %58

49:                                               ; preds = %48
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %12, i16 noundef zeroext 58) #18
          to label %66 unwind label %58

50:                                               ; preds = %257, %252, %250, %247, %245
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %262

52:                                               ; preds = %27
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %175

54:                                               ; preds = %30
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %173

56:                                               ; preds = %31
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %171

58:                                               ; preds = %68, %66, %49, %48, %36
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %169

60:                                               ; preds = %39
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %64

62:                                               ; preds = %41
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #20
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %169

66:                                               ; preds = %43, %45, %49, %32
  %67 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %68 unwind label %58

68:                                               ; preds = %66
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %67) #18
          to label %69 unwind label %58

69:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  invoke void @_ZN11xercesc_2_712DOM_Document15createElementNSERKNS_9DOMStringES3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
          to label %70 unwind label %78

70:                                               ; preds = %69
  %71 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DOM_ElementaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %14) #18
          to label %72 unwind label %80

72:                                               ; preds = %70
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  %73 = load ptr, ptr %9, align 8, !tbaa !139
  %74 = icmp eq i32 %5, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %23, i64 0, i32 4
  br label %84

77:                                               ; preds = %166, %72
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #16
  br label %245

78:                                               ; preds = %69
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %70
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #20
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  br label %169

84:                                               ; preds = %75, %166
  %85 = phi i32 [ 0, %75 ], [ %167, %166 ]
  %86 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %85) #18
          to label %87 unwind label %99

87:                                               ; preds = %84
  %88 = invoke noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %86) #18
          to label %89 unwind label %101

89:                                               ; preds = %87
  %90 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null) #18
          to label %91 unwind label %101

91:                                               ; preds = %89
  %92 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %86) #18
  %93 = invoke noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %92, ptr noundef nonnull @_ZZN11xercesc_2_79DOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbbE5XMLNS) #18
          to label %94 unwind label %101

94:                                               ; preds = %91
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %94
  %97 = load ptr, ptr %24, align 8, !tbaa !71
  %98 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %97) #18
  br label %103

99:                                               ; preds = %84
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %169

101:                                              ; preds = %108, %91, %89, %87
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %169

103:                                              ; preds = %96, %94
  %104 = phi i32 [ %88, %94 ], [ %98, %96 ]
  %105 = load ptr, ptr %24, align 8, !tbaa !71
  %106 = call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %105) #18
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %122, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr %24, align 8, !tbaa !71
  %110 = invoke noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %109, i32 noundef %104, ptr noundef nonnull align 8 dereferenceable(40) %10) #18
          to label %111 unwind label %101

111:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #16
  %112 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %112) #18
          to label %113 unwind label %116

113:                                              ; preds = %111
  %114 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %15) #18
          to label %115 unwind label %118

115:                                              ; preds = %113
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  br label %122

116:                                              ; preds = %111
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %120

118:                                              ; preds = %113
  %119 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #16
  br label %169

122:                                              ; preds = %115, %103
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  %123 = invoke noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %86) #18
          to label %124 unwind label %144

124:                                              ; preds = %122
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %123) #18
          to label %125 unwind label %144

125:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #16
  %126 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %86) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %126) #18
          to label %127 unwind label %146

127:                                              ; preds = %125
  %128 = load ptr, ptr %73, align 8, !tbaa !49
  %129 = getelementptr inbounds ptr, ptr %128, i64 56
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(104) %73, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %17) #18
          to label %132 unwind label %148

132:                                              ; preds = %127
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  %133 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %86) #18
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %161

135:                                              ; preds = %132
  %136 = load ptr, ptr %76, align 8, !tbaa !143
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load ptr, ptr %28, align 8, !tbaa !65
  %140 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %139) #18
          to label %141 unwind label %154

141:                                              ; preds = %138
  %142 = load ptr, ptr %28, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %140, i32 noundef 500, ptr noundef %142) #18
          to label %143 unwind label %156

143:                                              ; preds = %141
  store ptr %140, ptr %76, align 8, !tbaa !143
  br label %158

144:                                              ; preds = %124, %122
  %145 = landingpad { ptr, i32 }
          cleanup
  br label %152

146:                                              ; preds = %125
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %150

148:                                              ; preds = %127
  %149 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #20
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %147, %146 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #20
  br label %152

152:                                              ; preds = %150, %144
  %153 = phi { ptr, i32 } [ %151, %150 ], [ %145, %144 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  br label %169

154:                                              ; preds = %161, %158, %138
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %169

156:                                              ; preds = %141
  %157 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %140, ptr noundef %139) #20
  br label %169

158:                                              ; preds = %143, %135
  %159 = phi ptr [ %140, %143 ], [ %136, %135 ]
  invoke void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %159, ptr noundef %131) #18
          to label %160 unwind label %154

160:                                              ; preds = %158
  call void @_ZN11xercesc_2_78NodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(26) %131, i1 noundef zeroext true) #18
  br label %161

161:                                              ; preds = %160, %132
  %162 = call noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %86) #18
  %163 = load ptr, ptr %131, align 8, !tbaa !49
  %164 = getelementptr inbounds ptr, ptr %163, i64 50
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(48) %131, i1 noundef zeroext %162) #18
          to label %166 unwind label %154

166:                                              ; preds = %161
  %167 = add nuw i32 %85, 1
  %168 = icmp eq i32 %167, %5
  br i1 %168, label %77, label %84, !llvm.loop !145

169:                                              ; preds = %99, %152, %154, %156, %120, %101, %82, %64, %58
  %170 = phi { ptr, i32 } [ %83, %82 ], [ %59, %58 ], [ %65, %64 ], [ %100, %99 ], [ %121, %120 ], [ %102, %101 ], [ %155, %154 ], [ %157, %156 ], [ %153, %152 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  br label %171

171:                                              ; preds = %169, %56
  %172 = phi { ptr, i32 } [ %170, %169 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %173

173:                                              ; preds = %171, %54
  %174 = phi { ptr, i32 } [ %172, %171 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #20
  br label %175

175:                                              ; preds = %173, %52
  %176 = phi { ptr, i32 } [ %174, %173 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #16
  br label %262

177:                                              ; preds = %8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  %178 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %179 unwind label %188

179:                                              ; preds = %177
  invoke void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %178) #18
          to label %180 unwind label %188

180:                                              ; preds = %179
  %181 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DOM_ElementaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
          to label %182 unwind label %190

182:                                              ; preds = %180
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  %183 = load ptr, ptr %9, align 8, !tbaa !139
  %184 = icmp eq i32 %5, 0
  br i1 %184, label %245, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %23, i64 0, i32 4
  %187 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  br label %194

188:                                              ; preds = %179, %177
  %189 = landingpad { ptr, i32 }
          cleanup
  br label %192

190:                                              ; preds = %180
  %191 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #20
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %189, %188 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  br label %262

194:                                              ; preds = %185, %242
  %195 = phi i32 [ 0, %185 ], [ %243, %242 ]
  %196 = invoke noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %195) #18
          to label %197 unwind label %223

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  %198 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %196) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %198) #18
          to label %199 unwind label %225

199:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #16
  %200 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %196) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %200) #18
          to label %201 unwind label %227

201:                                              ; preds = %199
  %202 = load ptr, ptr %183, align 8, !tbaa !49
  %203 = getelementptr inbounds ptr, ptr %202, i64 53
  %204 = load ptr, ptr %203, align 8
  %205 = invoke noundef ptr %204(ptr noundef nonnull align 8 dereferenceable(104) %183, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20) #18
          to label %206 unwind label %229

206:                                              ; preds = %201
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  %207 = call noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %196) #18
  %208 = load ptr, ptr %205, align 8, !tbaa !49
  %209 = getelementptr inbounds ptr, ptr %208, i64 50
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(48) %205, i1 noundef zeroext %207) #18
          to label %211 unwind label %235

211:                                              ; preds = %206
  %212 = call noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %196) #18
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %214, label %242

214:                                              ; preds = %211
  %215 = load ptr, ptr %186, align 8, !tbaa !143
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %239

217:                                              ; preds = %214
  %218 = load ptr, ptr %187, align 8, !tbaa !65
  %219 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %218) #18
          to label %220 unwind label %235

220:                                              ; preds = %217
  %221 = load ptr, ptr %187, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %219, i32 noundef 500, ptr noundef %221) #18
          to label %222 unwind label %237

222:                                              ; preds = %220
  store ptr %219, ptr %186, align 8, !tbaa !143
  br label %239

223:                                              ; preds = %194
  %224 = landingpad { ptr, i32 }
          cleanup
  br label %262

225:                                              ; preds = %197
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %233

227:                                              ; preds = %199
  %228 = landingpad { ptr, i32 }
          cleanup
  br label %231

229:                                              ; preds = %201
  %230 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #20
  br label %231

231:                                              ; preds = %229, %227
  %232 = phi { ptr, i32 } [ %230, %229 ], [ %228, %227 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #20
  br label %233

233:                                              ; preds = %231, %225
  %234 = phi { ptr, i32 } [ %232, %231 ], [ %226, %225 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  br label %262

235:                                              ; preds = %239, %217, %206
  %236 = landingpad { ptr, i32 }
          cleanup
  br label %262

237:                                              ; preds = %220
  %238 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %219, ptr noundef %218) #20
  br label %262

239:                                              ; preds = %222, %214
  %240 = phi ptr [ %219, %222 ], [ %215, %214 ]
  invoke void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40) %240, ptr noundef nonnull %205) #18
          to label %241 unwind label %235

241:                                              ; preds = %239
  call void @_ZN11xercesc_2_78NodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(26) %205, i1 noundef zeroext true) #18
  br label %242

242:                                              ; preds = %241, %211
  %243 = add nuw i32 %195, 1
  %244 = icmp eq i32 %243, %5
  br i1 %244, label %245, label %194, !llvm.loop !147

245:                                              ; preds = %242, %182, %77
  %246 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %246, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %247 unwind label %50

247:                                              ; preds = %245
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #20
  %248 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %249 = load ptr, ptr %248, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %249, ptr noundef nonnull align 8 dereferenceable(8) %246) #18
          to label %250 unwind label %50

250:                                              ; preds = %247
  %251 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %246, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %252 unwind label %50

252:                                              ; preds = %250
  %253 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %254 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %253, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %255 unwind label %50

255:                                              ; preds = %252
  %256 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 8
  store i8 1, ptr %256, align 4, !tbaa !55
  br i1 %6, label %257, label %261

257:                                              ; preds = %255
  %258 = load ptr, ptr %0, align 8, !tbaa !49
  %259 = getelementptr inbounds ptr, ptr %258, i64 6
  %260 = load ptr, ptr %259, align 8
  invoke void %260(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %2, i1 noundef zeroext %7, ptr noundef %3) #18
          to label %261 unwind label %50

261:                                              ; preds = %257, %255
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  ret void

262:                                              ; preds = %223, %237, %235, %233, %192, %175, %50
  %263 = phi { ptr, i32 } [ %176, %175 ], [ %51, %50 ], [ %193, %192 ], [ %224, %223 ], [ %236, %235 ], [ %238, %237 ], [ %234, %233 ]
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  resume { ptr, i32 } %263
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOM_ElementC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 !prof !148 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i32 0, ptr %0, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !150
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !151
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !152
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !153
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !49
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #18
  store ptr %16, ptr %9, align 8, !tbaa !154
  store i16 0, ptr %16, align 2, !tbaa !142
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getEmptyNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !155 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %3 = load i32, ptr %2, align 4, !tbaa !156
  ret i32 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = load i32, ptr %0, align 8, !tbaa !149
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !142
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !158 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document15createElementNSERKNS_9DOMStringES3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Element") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DOM_ElementaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !163
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !165

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !166
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 241, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !167
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr8getURIIdEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #3 comdat align 2 !prof !169 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret i32 %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSEPNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner19getXMLNSNamespaceIdEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 8, !tbaa !174
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_77XMLAttr8getValueEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !175 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !176
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_77XMLAttr7getTypeEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !178
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79NodeIDMapC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79NodeIDMap3addEPNS_8AttrImplE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl8isIdAttrEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !179
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl7ID_ATTRE, align 2, !tbaa !142
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_77XMLAttr12getSpecifiedEv(ptr noundef nonnull align 8 dereferenceable(49) %0) local_unnamed_addr #4 comdat align 2 !prof !180 {
  %2 = load i8, ptr %0, align 8, !tbaa !181, !range !95, !noundef !96
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #18
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Element") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #3 comdat align 2 !prof !182 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE10addElementERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOM_EntityReference", align 8
  %5 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 5
  %7 = load i8, ptr %6, align 1, !tbaa !127, !range !95, !noundef !96
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %34, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %10 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_Document21createEntityReferenceERKNS_9DOMStringE(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_EntityReference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %12 unwind label %28

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !tbaa !139
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = getelementptr inbounds ptr, ptr %14, i64 35
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(26) %13, i1 noundef zeroext false, i1 noundef zeroext true) #18
          to label %17 unwind label %30

17:                                               ; preds = %12
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %19 unwind label %30

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  %20 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_712ValueStackOfINS_8DOM_NodeEE4pushERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
          to label %22 unwind label %30

22:                                               ; preds = %19
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %24 unwind label %30

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 10
  %26 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %27 unwind label %30

27:                                               ; preds = %24
  call void @_ZN11xercesc_2_719DOM_EntityReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %34

28:                                               ; preds = %9
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %24, %22, %19, %17, %12
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_719DOM_EntityReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %33

34:                                               ; preds = %27, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document21createEntityReferenceERKNS_9DOMStringE(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_EntityReference") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_719DOM_EntityReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOM_XMLDecl", align 8
  %10 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 4
  %12 = load i8, ptr %11, align 8, !tbaa !183, !range !95, !noundef !96
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %2) #18
          to label %15 unwind label %21

15:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3) #18
          to label %16 unwind label %23

16:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  invoke void @_ZN11xercesc_2_712DOM_Document13createXMLDeclERKNS_9DOMStringES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_XMLDecl") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %18 unwind label %25

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 9
  invoke void @_ZN11xercesc_2_78DOM_Node11appendChildERKS0_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Node") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %20 unwind label %27

20:                                               ; preds = %18
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  call void @_ZN11xercesc_2_711DOM_XMLDeclD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
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
  call void @_ZN11xercesc_2_711DOM_XMLDeclD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %31

31:                                               ; preds = %29, %23
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  resume { ptr, i32 } %34

35:                                               ; preds = %20, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_Document13createXMLDeclERKNS_9DOMStringES3_S3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_XMLDecl") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOM_XMLDeclD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79DOMParser15getDoValidationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #4 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner19getValidationSchemeEv(ptr noundef nonnull align 8 dereferenceable(776) %3) #18
  %5 = icmp eq i32 %4, 1
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser15setDoValidationEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %4, i1 noundef zeroext %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setDoValidationEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 8, !tbaa !184
  %5 = zext i1 %1 to i32
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %5, ptr %6, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !128
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %8) #18
  br i1 %9, label %10, label %103

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %11 = load ptr, ptr %1, align 8, !tbaa !49
  %12 = getelementptr inbounds ptr, ptr %11, i64 8
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(80) %1) #18
          to label %15 unwind label %32

15:                                               ; preds = %10
  br i1 %14, label %16, label %100

16:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 60) #18
          to label %17 unwind label %32

17:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 33) #18
          to label %18 unwind label %32

18:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgAttListStringE) #18
          to label %19 unwind label %32

19:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %20 unwind label %32

20:                                               ; preds = %19
  %21 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %22 unwind label %32

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %21) #18
          to label %23 unwind label %32

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %24 unwind label %32

24:                                               ; preds = %23
  %25 = load ptr, ptr %2, align 8, !tbaa !49
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(72) %2) #18
          to label %29 unwind label %32

29:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %28) #18
          to label %30 unwind label %32

30:                                               ; preds = %29
  %31 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  switch i32 %31, label %78 [
    i32 0, label %36
    i32 1, label %37
    i32 2, label %38
    i32 3, label %39
    i32 4, label %40
    i32 5, label %41
    i32 6, label %42
    i32 7, label %43
    i32 8, label %44
    i32 9, label %47
  ]

32:                                               ; preds = %29, %24, %23, %22, %20, %19, %18, %17, %16, %10
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %101

34:                                               ; preds = %45, %47, %44, %43, %42, %41, %40, %39, %38, %37, %36
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %101

36:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

37:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

38:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

39:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

40:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

41:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

42:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

43:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

44:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %45 unwind label %34

45:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36
  %46 = phi ptr [ @_ZN11xercesc_2_76XMLUni13fgCDATAStringE, %36 ], [ @_ZN11xercesc_2_76XMLUni10fgIDStringE, %37 ], [ @_ZN11xercesc_2_76XMLUni13fgIDRefStringE, %38 ], [ @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE, %39 ], [ @_ZN11xercesc_2_76XMLUni14fgEntityStringE, %40 ], [ @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE, %41 ], [ @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE, %42 ], [ @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE, %43 ], [ @_ZN11xercesc_2_76XMLUni16fgNotationStringE, %44 ]
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %46) #18
          to label %78 unwind label %34

47:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %48 unwind label %34

48:                                               ; preds = %47
  %49 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %50 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %49) #18
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %53 unwind label %57

53:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %6, i16 noundef zeroext 40) #18
          to label %54 unwind label %59

54:                                               ; preds = %53
  %55 = zext nneg i32 %50 to i64
  br label %61

56:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %6, i16 noundef zeroext 41) #18
          to label %72 unwind label %59

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %76

59:                                               ; preds = %72, %56, %53
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %74

61:                                               ; preds = %54, %69
  %62 = phi i64 [ 0, %54 ], [ %70, %69 ]
  %63 = getelementptr inbounds i16, ptr %49, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !142
  %65 = icmp eq i16 %64, 32
  %66 = select i1 %65, i16 124, i16 %64
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %6, i16 noundef zeroext %66) #18
          to label %69 unwind label %67

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %74

69:                                               ; preds = %61
  %70 = add nuw nsw i64 %62, 1
  %71 = icmp eq i64 %70, %55
  br i1 %71, label %56, label %61, !llvm.loop !185

72:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %73 unwind label %59

73:                                               ; preds = %72
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %78

74:                                               ; preds = %67, %59
  %75 = phi { ptr, i32 } [ %68, %67 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %76

76:                                               ; preds = %74, %57
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %101

78:                                               ; preds = %45, %48, %73, %30
  %79 = call noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  switch i32 %79, label %87 [
    i32 2, label %82
    i32 4, label %83
    i32 1, label %84
  ]

80:                                               ; preds = %85, %84, %83, %82
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %101

82:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %85 unwind label %80

83:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %85 unwind label %80

84:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %85 unwind label %80

85:                                               ; preds = %84, %83, %82
  %86 = phi ptr [ @_ZN11xercesc_2_76XMLUni16fgRequiredStringE, %82 ], [ @_ZN11xercesc_2_76XMLUni15fgImpliedStringE, %83 ], [ @_ZN11xercesc_2_76XMLUni13fgFixedStringE, %84 ]
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %86) #18
          to label %87 unwind label %80

87:                                               ; preds = %85, %78
  %88 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #18
  %89 = icmp eq ptr %88, null
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 32) #18
          to label %91 unwind label %94

91:                                               ; preds = %90
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 34) #18
          to label %92 unwind label %94

92:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %88) #18
          to label %93 unwind label %94

93:                                               ; preds = %92
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 34) #18
          to label %96 unwind label %94

94:                                               ; preds = %97, %96, %93, %92, %91, %90
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %101

96:                                               ; preds = %93, %87
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %5, i16 noundef zeroext 62) #18
          to label %97 unwind label %94

97:                                               ; preds = %96
  %98 = load ptr, ptr %7, align 8, !tbaa !128
  %99 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %98, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %100 unwind label %94

100:                                              ; preds = %97, %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %103

101:                                              ; preds = %34, %76, %94, %80, %32
  %102 = phi { ptr, i32 } [ %33, %32 ], [ %77, %76 ], [ %35, %34 ], [ %95, %94 ], [ %81, %80 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  resume { ptr, i32 } %102

103:                                              ; preds = %100, %4
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !186 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !187
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !192 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !193

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !142
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !194

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !142
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !195, !llvm.loop !196

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLAttDef14getDefaultTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !197 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !198
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !199 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !200
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext %3) unnamed_addr #9 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 zeroext poison) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14doctypeCommentEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %5) #18
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE) #18
          to label %10 unwind label %20

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 32) #18
          to label %11 unwind label %20

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %1) #18
          to label %12 unwind label %20

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 32) #18
          to label %13 unwind label %20

13:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 45) #18
          to label %14 unwind label %20

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 45) #18
          to label %15 unwind label %20

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %3, i16 noundef zeroext 62) #18
          to label %16 unwind label %20

16:                                               ; preds = %15
  %17 = load ptr, ptr %4, align 8, !tbaa !128
  %18 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %17, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
          to label %19 unwind label %20

19:                                               ; preds = %16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %22

20:                                               ; preds = %16, %15, %14, %13, %12, %11, %10, %9
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %21

22:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser14doctypeCommentEPKt(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %7 = alloca %"class.xercesc_2_7::DOM_DocumentType", align 8
  %8 = alloca %"class.xercesc_2_7::DOM_DocumentType", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xercesc_2_716DOM_DocumentTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %13 = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xercesc_2_712DOM_Document17getImplementationEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
          to label %14 unwind label %27

14:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %15 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %16 unwind label %29

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %15) #18
          to label %17 unwind label %29

17:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2) #18
          to label %18 unwind label %31

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %3) #18
          to label %19 unwind label %33

19:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_721DOM_DOMImplementation18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
          to label %20 unwind label %35

20:                                               ; preds = %19
  %21 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_716DOM_DocumentTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %22 unwind label %37

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  %23 = load ptr, ptr %7, align 8, !tbaa !139
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  store ptr %23, ptr %24, align 8, !tbaa !128
  %25 = load ptr, ptr %12, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168) %25, ptr noundef %23) #18
          to label %26 unwind label %49

26:                                               ; preds = %22
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  ret void

27:                                               ; preds = %6
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %47

29:                                               ; preds = %16, %14
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %45

31:                                               ; preds = %17
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %43

33:                                               ; preds = %18
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %41

35:                                               ; preds = %19
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %39

37:                                               ; preds = %20
  %38 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br label %43

43:                                               ; preds = %41, %31
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %32, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  br label %45

45:                                               ; preds = %43, %29
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %47

47:                                               ; preds = %45, %27
  %48 = phi { ptr, i32 } [ %46, %45 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %51

49:                                               ; preds = %22
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi { ptr, i32 } [ %50, %49 ], [ %48, %47 ]
  call void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  resume { ptr, i32 } %52
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DocumentTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNK11xercesc_2_712DOM_Document17getImplementationEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721DOM_DOMImplementation18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_DocumentType") align 8, ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_716DOM_DocumentTypeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DocumentTypeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext %4, i1 zeroext %5) unnamed_addr #9 align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, ptr noundef %3, i1 zeroext poison, i1 zeroext poison) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser9doctypePIEPKtS2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %6) #18
  br i1 %7, label %8, label %21

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 60) #18
          to label %9 unwind label %19

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 63) #18
          to label %10 unwind label %19

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1) #18
          to label %11 unwind label %19

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 32) #18
          to label %12 unwind label %19

12:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2) #18
          to label %13 unwind label %19

13:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 63) #18
          to label %14 unwind label %19

14:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 62) #18
          to label %15 unwind label %19

15:                                               ; preds = %14
  %16 = load ptr, ptr %5, align 8, !tbaa !128
  %17 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %16, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %18 unwind label %19

18:                                               ; preds = %15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %21

19:                                               ; preds = %15, %14, %13, %12, %11, %10, %9, %8
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser9doctypePIEPKtS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, i32 %2) unnamed_addr #3 align 2 !prof !48 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %5) #18
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !tbaa !128
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %8, i64 0, i32 8
  tail call void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1) #18
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj(ptr nocapture noundef readonly %0, ptr noundef %1, i32 %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %1, i32 poison) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %6 = load ptr, ptr %5, align 8, !tbaa !128
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %6) #18
  br i1 %7, label %8, label %35

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 60) #18
          to label %9 unwind label %24

9:                                                ; preds = %8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 33) #18
          to label %10 unwind label %24

10:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgElemStringE) #18
          to label %11 unwind label %24

11:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 32) #18
          to label %12 unwind label %24

12:                                               ; preds = %11
  %13 = invoke noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
          to label %14 unwind label %24

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %13) #18
          to label %15 unwind label %24

15:                                               ; preds = %14
  %16 = load ptr, ptr %1, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %16, i64 15
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(80) %1) #18
          to label %20 unwind label %26

20:                                               ; preds = %15
  %21 = icmp eq ptr %19, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 32) #18
          to label %23 unwind label %26

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %19) #18
          to label %28 unwind label %26

24:                                               ; preds = %14, %12, %11, %10, %9, %8
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %33

26:                                               ; preds = %29, %28, %23, %22, %15
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %33

28:                                               ; preds = %23, %20
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %4, i16 noundef zeroext 62) #18
          to label %29 unwind label %26

29:                                               ; preds = %28
  %30 = load ptr, ptr %5, align 8, !tbaa !128
  %31 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %30, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %32 unwind label %26

32:                                               ; preds = %29
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %35

33:                                               ; preds = %26, %24
  %34 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %34

35:                                               ; preds = %32, %3
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull align 8 dereferenceable(80) %1, i1 zeroext poison) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = alloca %"class.xercesc_2_7::DOM_Element", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = load ptr, ptr %1, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef zeroext i1 %12(ptr noundef nonnull align 8 dereferenceable(80) %1) #18
  br i1 %13, label %14, label %178

14:                                               ; preds = %2
  %15 = load ptr, ptr %1, align 8, !tbaa !49
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr %17(ptr noundef nonnull align 8 dereferenceable(80) %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %20 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #18
  call void @_ZN11xercesc_2_712DOM_Document13createElementEPKt(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Element") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %20) #18
  %21 = load ptr, ptr %3, align 8, !tbaa !139
  %22 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  br label %24

24:                                               ; preds = %159, %14
  %25 = phi i32 [ 0, %14 ], [ %160, %159 ]
  %26 = load ptr, ptr %18, align 8, !tbaa !49
  %27 = getelementptr inbounds ptr, ptr %26, i64 13
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(16) %18) #18
          to label %30 unwind label %39

30:                                               ; preds = %24
  %31 = icmp ult i32 %25, %29
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  %35 = load ptr, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds ptr, ptr %35, i64 53
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(145) %34) #18
          to label %161 unwind label %173

39:                                               ; preds = %110, %41, %24
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %176

41:                                               ; preds = %30
  %42 = load ptr, ptr %18, align 8, !tbaa !49
  %43 = getelementptr inbounds ptr, ptr %42, i64 14
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef nonnull align 8 dereferenceable(56) ptr %44(ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %25) #18
          to label %46 unwind label %39

46:                                               ; preds = %41
  %47 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %45) #18
  %48 = icmp eq ptr %47, null
  br i1 %48, label %159, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %22, align 8, !tbaa !71
  %51 = call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner15getDoNamespacesEv(ptr noundef nonnull align 8 dereferenceable(776) %50) #18
  br i1 %51, label %52, label %110

52:                                               ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %53 = load ptr, ptr %45, align 8, !tbaa !49
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(56) %45) #18
          to label %57 unwind label %69

57:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %56) #18
          to label %58 unwind label %69

58:                                               ; preds = %57
  %59 = invoke noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %60 unwind label %71

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %61 = load ptr, ptr %23, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1023, ptr noundef %61) #18
          to label %62 unwind label %73

62:                                               ; preds = %60
  %63 = icmp sgt i32 %59, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  invoke void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0, i32 noundef %59) #18
          to label %65 unwind label %75

65:                                               ; preds = %64
  %66 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull @_ZZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS) #18
          to label %67 unwind label %77

67:                                               ; preds = %65
  %68 = select i1 %66, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %68) #18
          to label %79 unwind label %77

69:                                               ; preds = %57, %52
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %108

71:                                               ; preds = %58
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %106

73:                                               ; preds = %60
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %104

75:                                               ; preds = %64
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %80

77:                                               ; preds = %67, %65
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  br label %80

79:                                               ; preds = %67
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %88

80:                                               ; preds = %77, %75
  %81 = phi { ptr, i32 } [ %78, %77 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %102

82:                                               ; preds = %62
  %83 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @_ZZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclEE5XMLNS) #18
          to label %84 unwind label %86

84:                                               ; preds = %82
  br i1 %83, label %85, label %88

85:                                               ; preds = %84
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE) #18
          to label %88 unwind label %86

86:                                               ; preds = %88, %85, %82
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %102

88:                                               ; preds = %84, %85, %79
  %89 = load ptr, ptr %23, align 8, !tbaa !65
  %90 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %89) #18
          to label %91 unwind label %86

91:                                               ; preds = %88
  %92 = load ptr, ptr %19, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %93 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %93) #18
          to label %94 unwind label %96

94:                                               ; preds = %91
  invoke void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %90, ptr noundef %92, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %95 unwind label %98

95:                                               ; preds = %94
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %128

96:                                               ; preds = %91
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %94
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %99, %98 ], [ %97, %96 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %90, ptr noundef %89) #20
  br label %102

102:                                              ; preds = %100, %86, %80
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %87, %86 ], [ %81, %80 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #20
  br label %104

104:                                              ; preds = %102, %73
  %105 = phi { ptr, i32 } [ %103, %102 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  br label %106

106:                                              ; preds = %104, %71
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %108

108:                                              ; preds = %106, %69
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %176

110:                                              ; preds = %49
  %111 = load ptr, ptr %23, align 8, !tbaa !65
  %112 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %111) #18
          to label %113 unwind label %39

113:                                              ; preds = %110
  %114 = load ptr, ptr %19, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %115 = load ptr, ptr %45, align 8, !tbaa !49
  %116 = getelementptr inbounds ptr, ptr %115, i64 5
  %117 = load ptr, ptr %116, align 8
  %118 = invoke noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(56) %45) #18
          to label %119 unwind label %122

119:                                              ; preds = %113
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %118) #18
          to label %120 unwind label %122

120:                                              ; preds = %119
  invoke void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %112, ptr noundef %114, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %121 unwind label %124

121:                                              ; preds = %120
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %128

122:                                              ; preds = %119, %113
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %126

124:                                              ; preds = %120
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi { ptr, i32 } [ %125, %124 ], [ %123, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %112, ptr noundef %111) #20
  br label %176

128:                                              ; preds = %121, %95
  %129 = phi ptr [ %90, %95 ], [ %112, %121 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %130 = call noundef ptr @_ZNK11xercesc_2_79XMLAttDef8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %45) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %130) #18
          to label %131 unwind label %147

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !49
  %133 = getelementptr inbounds ptr, ptr %132, i64 51
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr noundef nonnull align 8 dereferenceable(48) %129, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %135 unwind label %149

135:                                              ; preds = %131
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  %136 = load ptr, ptr %21, align 8, !tbaa !49
  %137 = getelementptr inbounds ptr, ptr %136, i64 54
  %138 = load ptr, ptr %137, align 8
  %139 = invoke noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(104) %21, ptr noundef nonnull %129) #18
          to label %140 unwind label %153

140:                                              ; preds = %135
  %141 = icmp eq ptr %139, null
  br i1 %141, label %155, label %142

142:                                              ; preds = %140
  %143 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %139, i64 0, i32 1
  %144 = load i32, ptr %143, align 8, !tbaa !201
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  invoke void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %139) #18
          to label %155 unwind label %153

147:                                              ; preds = %128
  %148 = landingpad { ptr, i32 }
          cleanup
  br label %151

149:                                              ; preds = %131
  %150 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %176

153:                                              ; preds = %155, %146, %135
  %154 = landingpad { ptr, i32 }
          cleanup
  br label %176

155:                                              ; preds = %146, %142, %140
  %156 = load ptr, ptr %129, align 8, !tbaa !49
  %157 = getelementptr inbounds ptr, ptr %156, i64 50
  %158 = load ptr, ptr %157, align 8
  invoke void %158(ptr noundef nonnull align 8 dereferenceable(48) %129, i1 noundef zeroext false) #18
          to label %159 unwind label %153

159:                                              ; preds = %155, %46
  %160 = add nuw i32 %25, 1
  br label %24, !llvm.loop !202

161:                                              ; preds = %32
  %162 = load ptr, ptr %38, align 8, !tbaa !49
  %163 = getelementptr inbounds ptr, ptr %162, i64 10
  %164 = load ptr, ptr %163, align 8
  %165 = invoke noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef %21) #18
          to label %166 unwind label %173

166:                                              ; preds = %161
  %167 = icmp eq ptr %165, null
  br i1 %167, label %175, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %165, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !201
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  invoke void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %165) #18
          to label %175 unwind label %173

173:                                              ; preds = %172, %161, %32
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %176

175:                                              ; preds = %172, %168, %166
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %178

176:                                              ; preds = %39, %108, %151, %153, %126, %173
  %177 = phi { ptr, i32 } [ %174, %173 ], [ %154, %153 ], [ %152, %151 ], [ %109, %108 ], [ %127, %126 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_711DOM_ElementD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  resume { ptr, i32 } %177

178:                                              ; preds = %175, %2
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_79DOMString13substringDataEjj(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMString6equalsEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !203 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !204

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !142
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !205

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !142
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !206, !llvm.loop !207

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !149
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !150
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !208

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #18
  %21 = load i32, ptr %0, align 8, !tbaa !149
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !154
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !149
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !149
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #9 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 8 dereferenceable(80) %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12endIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) unnamed_addr #11 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %3, i64 0, i32 9
  store i8 0, ptr %4, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12endIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #11 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12endExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12endExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #10 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %16 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %16) #18
  %17 = load ptr, ptr %15, align 8, !tbaa !49
  %18 = getelementptr inbounds ptr, ptr %17, i64 55
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(168) %15, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %21 unwind label %51

21:                                               ; preds = %4
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %22 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %22) #18
  %23 = load ptr, ptr %20, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 51
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(120) %20, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %26 unwind label %53

26:                                               ; preds = %21
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %27 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %27) #18
  %28 = load ptr, ptr %20, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 52
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(120) %20, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
          to label %31 unwind label %55

31:                                               ; preds = %26
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %32 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %32) #18
  %33 = load ptr, ptr %20, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 50
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(120) %20, ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %36 unwind label %57

36:                                               ; preds = %31
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !128
  %39 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !129
  %41 = load ptr, ptr %40, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull %20) #18
  %45 = icmp eq ptr %44, null
  br i1 %45, label %59, label %46

46:                                               ; preds = %36
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %44, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !201
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %44) #18
  br label %59

51:                                               ; preds = %4
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %158

53:                                               ; preds = %21
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %158

55:                                               ; preds = %26
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %158

57:                                               ; preds = %31
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %158

59:                                               ; preds = %50, %46, %36
  %60 = load ptr, ptr %37, align 8, !tbaa !128
  %61 = call noundef zeroext i1 @_ZN11xercesc_2_716DocumentTypeImpl18isIntSubsetReadingEv(ptr noundef nonnull align 8 dereferenceable(145) %60) #18
  br i1 %61, label %62, label %157

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  call void @_ZN11xercesc_2_79DOMStringC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 60) #18
          to label %63 unwind label %81

63:                                               ; preds = %62
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 33) #18
          to label %64 unwind label %81

64:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE) #18
          to label %65 unwind label %81

65:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %66 unwind label %81

66:                                               ; preds = %65
  %67 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %67) #18
          to label %68 unwind label %81

68:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %69 = load ptr, ptr %20, align 8, !tbaa !49
  %70 = getelementptr inbounds ptr, ptr %69, i64 47
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(120) %20) #18
          to label %72 unwind label %83

72:                                               ; preds = %68
  %73 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #18
          to label %74 unwind label %85

74:                                               ; preds = %72
  br i1 %73, label %75, label %87

75:                                               ; preds = %74
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %76 unwind label %85

76:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgPubIDStringE) #18
          to label %77 unwind label %85

77:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %78 unwind label %85

78:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %79 unwind label %85

79:                                               ; preds = %78
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %80 unwind label %85

80:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %87 unwind label %85

81:                                               ; preds = %66, %65, %64, %63, %62
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %155

83:                                               ; preds = %68
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %153

85:                                               ; preds = %147, %146, %139, %138, %137, %136, %133, %122, %121, %120, %119, %118, %117, %114, %101, %100, %99, %98, %97, %96, %93, %80, %79, %78, %77, %76, %75, %72
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %151

87:                                               ; preds = %80, %74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %88 = load ptr, ptr %20, align 8, !tbaa !49
  %89 = getelementptr inbounds ptr, ptr %88, i64 48
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(120) %20) #18
          to label %91 unwind label %102

91:                                               ; preds = %87
  %92 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
          to label %93 unwind label %104

93:                                               ; preds = %91
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  %94 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #18
          to label %95 unwind label %85

95:                                               ; preds = %93
  br i1 %94, label %96, label %108

96:                                               ; preds = %95
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %97 unwind label %85

97:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgSysIDStringE) #18
          to label %98 unwind label %85

98:                                               ; preds = %97
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %99 unwind label %85

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %100 unwind label %85

100:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %101 unwind label %85

101:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %108 unwind label %85

102:                                              ; preds = %87
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %106

104:                                              ; preds = %91
  %105 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #20
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  br label %151

108:                                              ; preds = %101, %95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %109 = load ptr, ptr %20, align 8, !tbaa !49
  %110 = getelementptr inbounds ptr, ptr %109, i64 49
  %111 = load ptr, ptr %110, align 8
  invoke void %111(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(120) %20) #18
          to label %112 unwind label %123

112:                                              ; preds = %108
  %113 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
          to label %114 unwind label %125

114:                                              ; preds = %112
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  %115 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #18
          to label %116 unwind label %85

116:                                              ; preds = %114
  br i1 %115, label %117, label %129

117:                                              ; preds = %116
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %118 unwind label %85

118:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgNDATAStringE) #18
          to label %119 unwind label %85

119:                                              ; preds = %118
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %120 unwind label %85

120:                                              ; preds = %119
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %121 unwind label %85

121:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %122 unwind label %85

122:                                              ; preds = %121
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %129 unwind label %85

123:                                              ; preds = %108
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %127

125:                                              ; preds = %112
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #20
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %124, %123 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  br label %151

129:                                              ; preds = %122, %116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  %130 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18
  invoke void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %130) #18
          to label %131 unwind label %140

131:                                              ; preds = %129
  %132 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_79DOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
          to label %133 unwind label %142

133:                                              ; preds = %131
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  %134 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef null) #18
          to label %135 unwind label %85

135:                                              ; preds = %133
  br i1 %134, label %136, label %146

136:                                              ; preds = %135
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 32) #18
          to label %137 unwind label %85

137:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %138 unwind label %85

138:                                              ; preds = %137
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %139 unwind label %85

139:                                              ; preds = %138
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 34) #18
          to label %146 unwind label %85

140:                                              ; preds = %129
  %141 = landingpad { ptr, i32 }
          cleanup
  br label %144

142:                                              ; preds = %131
  %143 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #20
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi { ptr, i32 } [ %143, %142 ], [ %141, %140 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  br label %151

146:                                              ; preds = %139, %135
  invoke void @_ZN11xercesc_2_79DOMString10appendDataEt(ptr noundef nonnull align 8 dereferenceable(8) %9, i16 noundef zeroext 62) #18
          to label %147 unwind label %85

147:                                              ; preds = %146
  %148 = load ptr, ptr %37, align 8, !tbaa !128
  %149 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %148, i64 0, i32 8
  invoke void @_ZN11xercesc_2_79DOMString10appendDataERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %149, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
          to label %150 unwind label %85

150:                                              ; preds = %147
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %157

151:                                              ; preds = %144, %127, %106, %85
  %152 = phi { ptr, i32 } [ %86, %85 ], [ %145, %144 ], [ %128, %127 ], [ %107, %106 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #20
  br label %153

153:                                              ; preds = %151, %83
  %154 = phi { ptr, i32 } [ %152, %151 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  br label %155

155:                                              ; preds = %153, %81
  %156 = phi { ptr, i32 } [ %154, %153 ], [ %82, %81 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %158

157:                                              ; preds = %150, %59
  ret void

158:                                              ; preds = %155, %57, %55, %53, %51
  %159 = phi { ptr, i32 } [ %156, %155 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ]
  resume { ptr, i32 } %159
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !210
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl15getNotationNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringneEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl8getValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext %2, i1 zeroext %3) unnamed_addr #9 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(160) %5, ptr noundef nonnull align 8 dereferenceable(75) %1, i1 zeroext poison, i1 zeroext poison) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12resetDocTypeEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(160) %0) unnamed_addr #12 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  store ptr null, ptr %2, align 8, !tbaa !128
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12resetDocTypeEv(ptr nocapture noundef writeonly %0) unnamed_addr #12 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %9 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %9) #18
  %10 = load ptr, ptr %8, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 57
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
          to label %14 unwind label %39

14:                                               ; preds = %3
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %15 = call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %15) #18
  %16 = load ptr, ptr %13, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %16, i64 49
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
          to label %19 unwind label %41

19:                                               ; preds = %14
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %20 = call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  call void @_ZN11xercesc_2_79DOMStringC1EPKt(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %20) #18
  %21 = load ptr, ptr %13, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 50
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %24 unwind label %43

24:                                               ; preds = %19
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %25 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %26 = load ptr, ptr %25, align 8, !tbaa !128
  %27 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !214
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = getelementptr inbounds ptr, ptr %29, i64 10
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull %13) #18
  %33 = icmp eq ptr %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !201
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %32) #18
  br label %45

39:                                               ; preds = %3
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %46

41:                                               ; preds = %14
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %46

43:                                               ; preds = %19
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %46

45:                                               ; preds = %38, %34, %24
  ret void

46:                                               ; preds = %43, %41, %39
  %47 = phi { ptr, i32 } [ %44, %43 ], [ %42, %41 ], [ %40, %39 ]
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !217
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext %2) unnamed_addr #9 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i1 zeroext poison) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #10 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser12startAttListERKNS_14DTDElementDeclE(ptr nocapture readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #10 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14startIntSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) unnamed_addr #11 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentTypeImpl", ptr %3, i64 0, i32 9
  store i8 1, ptr %4, align 8, !tbaa !209
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser14startIntSubsetEv(ptr nocapture noundef readonly %0) unnamed_addr #11 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_79DOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser14startExtSubsetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser14startExtSubsetEv(ptr nocapture readnone %0) unnamed_addr #10 align 2 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser8TextDeclEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #10 align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn24_N11xercesc_2_79DOMParser8TextDeclEPKtS2_(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #10 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser11loadGrammarEPKcsb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !91, !range !95, !noundef !96
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1385, i32 noundef 43, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  br label %33

15:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !91
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %19 unwind label %20

19:                                               ; preds = %15
  store i8 0, ptr %5, align 1, !tbaa !91
  ret ptr %18

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %25 = icmp eq i32 %23, %24
  %26 = tail call ptr @__cxa_begin_catch(ptr %22) #16
  br i1 %25, label %27, label %28

27:                                               ; preds = %20
  invoke void @__cxa_rethrow() #19
          to label %38 unwind label %31

28:                                               ; preds = %20
  store i8 0, ptr %5, align 1, !tbaa !91
  invoke void @__cxa_rethrow() #19
          to label %38 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

33:                                               ; preds = %29, %31, %13
  %34 = phi { ptr, i32 } [ %14, %13 ], [ %30, %29 ], [ %32, %31 ]
  resume { ptr, i32 } %34

35:                                               ; preds = %31, %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #17
  unreachable

38:                                               ; preds = %27, %28
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser11loadGrammarEPKtsb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !91, !range !95, !noundef !96
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1412, i32 noundef 43, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  br label %33

15:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !91
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %19 unwind label %20

19:                                               ; preds = %15
  store i8 0, ptr %5, align 1, !tbaa !91
  ret ptr %18

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %25 = icmp eq i32 %23, %24
  %26 = tail call ptr @__cxa_begin_catch(ptr %22) #16
  br i1 %25, label %27, label %28

27:                                               ; preds = %20
  invoke void @__cxa_rethrow() #19
          to label %38 unwind label %31

28:                                               ; preds = %20
  store i8 0, ptr %5, align 1, !tbaa !91
  invoke void @__cxa_rethrow() #19
          to label %38 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %33 unwind label %35

33:                                               ; preds = %29, %31, %13
  %34 = phi { ptr, i32 } [ %14, %13 ], [ %30, %29 ], [ %32, %31 ]
  resume { ptr, i32 } %34

35:                                               ; preds = %31, %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #17
  unreachable

38:                                               ; preds = %27, %28
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79DOMParser11loadGrammarERKNS_11InputSourceEsb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 1, !tbaa !91, !range !95, !noundef !96
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 22
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 43, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  br label %36

15:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !91
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 17
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 10
  %20 = load ptr, ptr %19, align 8
  %21 = invoke noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(776) %17, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  store i8 0, ptr %5, align 1, !tbaa !91
  ret ptr %21

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  %29 = tail call ptr @__cxa_begin_catch(ptr %25) #16
  br i1 %28, label %30, label %31

30:                                               ; preds = %23
  invoke void @__cxa_rethrow() #19
          to label %41 unwind label %34

31:                                               ; preds = %23
  store i8 0, ptr %5, align 1, !tbaa !91
  invoke void @__cxa_rethrow() #19
          to label %41 unwind label %32

32:                                               ; preds = %31
  %33 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %36 unwind label %38

34:                                               ; preds = %30
  %35 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %36 unwind label %38

36:                                               ; preds = %32, %34, %13
  %37 = phi { ptr, i32 } [ %14, %13 ], [ %33, %32 ], [ %35, %34 ]
  resume { ptr, i32 } %37

38:                                               ; preds = %34, %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #17
  unreachable

41:                                               ; preds = %30, %31
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79DOMParser22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #3 align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParser", ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandler15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #4 comdat align 2 !prof !48 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 comdat align 2 !prof !48 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #9 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 1 %1) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #9 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79DOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(160) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #18
  ret i1 %5
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_79DOMParser13resetEntitiesEv(ptr noundef %0) unnamed_addr #9 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(160) %2) #18
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #9 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_79DOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(160) %3, ptr noundef nonnull align 1 %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718XMLDocumentHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLErrorReporterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XMLEntityHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !67 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DocTypeHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !219
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #18
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !221 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !222

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #18
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr24setStandardUriConformantEb(ptr noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 %3, ptr %4, align 8, !tbaa !223
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !227 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !230 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !231
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEEC2EjPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 comdat align 2 !prof !48 {
  %5 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #18
  store i8 %5, ptr %0, align 8, !tbaa !232
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !234
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %7, align 8, !tbaa !235
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !236
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  store ptr %2, ptr %9, align 8, !tbaa !237
  %10 = zext i32 %1 to i64
  %11 = shl nuw nsw i64 %10, 3
  %12 = load ptr, ptr %2, align 8, !tbaa !49
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %11) #18
  store ptr %15, ptr %8, align 8, !tbaa !236
  %16 = load i32, ptr %7, align 8, !tbaa !235
  %17 = zext i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %18, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = load i8, ptr %0, align 8, !tbaa !232, !range !95, !noundef !96
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !235
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %11 = zext nneg i32 %7 to i64
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i64 [ %11, %9 ], [ %16, %12 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !236
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %14, i64 %13
  tail call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #20
  %16 = add nsw i64 %13, -1
  %17 = icmp eq i64 %13, 0
  br i1 %17, label %18, label %12, !llvm.loop !238

18:                                               ; preds = %12, %4, %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !237
  %21 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !236
  %23 = load ptr, ptr %20, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %22) #18
          to label %26 unwind label %27

26:                                               ; preds = %18
  ret void

27:                                               ; preds = %18
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !234
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !234
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !236
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !234
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !237
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 156, i32 noundef 116, ptr noundef %9) #18
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #19
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = add i32 %4, -1
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %18 = zext i32 %1 to i64
  br label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %18, %16 ], [ %22, %19 ]
  %21 = load ptr, ptr %17, align 8, !tbaa !236
  %22 = add nuw nsw i64 %20, 1
  %23 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %21, i64 %22
  %24 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %21, i64 %20
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23) #18
  %26 = load i32, ptr %3, align 4, !tbaa !234
  %27 = add i32 %26, -1
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %22, %28
  br i1 %29, label %19, label %30, !llvm.loop !239

30:                                               ; preds = %19, %13
  %31 = phi i32 [ %14, %13 ], [ %27, %19 ]
  store i32 %31, ptr %3, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #18
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !48 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #18
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #18
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #20
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #18
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE10addElementERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 1) #18
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !236
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !234
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %4, i64 %7
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %10 = load i32, ptr %5, align 4, !tbaa !234
  %11 = add i32 %10, 1
  store i32 %11, ptr %5, align 4, !tbaa !234
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !48 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !234
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !235
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %43

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !237
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !49
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17) #18
  %22 = load i32, ptr %3, align 4, !tbaa !234
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  br label %33

26:                                               ; preds = %33, %9
  %27 = load ptr, ptr %14, align 8, !tbaa !237
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !236
  %30 = load ptr, ptr %27, align 8, !tbaa !49
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #18
  store ptr %21, ptr %28, align 8, !tbaa !236
  store i32 %13, ptr %6, align 8, !tbaa !235
  br label %43

33:                                               ; preds = %24, %33
  %34 = phi i64 [ 0, %24 ], [ %39, %33 ]
  %35 = load ptr, ptr %25, align 8, !tbaa !236
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %35, i64 %34
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOM_Node", ptr %21, i64 %34
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_78DOM_NodeaSERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36) #18
  %39 = add nuw nsw i64 %34, 1
  %40 = load i32, ptr %3, align 4, !tbaa !234
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %33, label %26, !llvm.loop !240

43:                                               ; preds = %2, %26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { optsize }
attributes #19 = { noreturn }
attributes #20 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!47}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!35 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!36 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!37 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 1666922}
!38 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!39 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_throw, i64 1}
!41 = !{ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!42 = !{ptr @_ZNK11xercesc_2_77XMLAttr8getURIIdEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 360316}
!43 = !{ptr @_ZNK11xercesc_2_77XMLAttr7getNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 159625}
!44 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!45 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!46 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!47 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!48 = !{!"function_entry_count", i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !51, i64 0}
!51 = !{!"Simple C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"bool", !54, i64 0}
!54 = !{!"omnipotent char", !51, i64 0}
!55 = !{!56, !53, i64 36}
!56 = !{!"_ZTSN11xercesc_2_79DOMParserE", !57, i64 0, !58, i64 8, !59, i64 16, !60, i64 24, !53, i64 32, !53, i64 33, !53, i64 34, !53, i64 35, !53, i64 36, !61, i64 40, !61, i64 48, !63, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152}
!57 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!58 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!59 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!60 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!61 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !62, i64 0}
!62 = !{!"any pointer", !54, i64 0}
!63 = !{!"_ZTSN11xercesc_2_712DOM_DocumentE", !61, i64 0}
!64 = !{!56, !62, i64 136}
!65 = !{!56, !62, i64 144}
!66 = !{!56, !62, i64 152}
!67 = !{!"function_entry_count", i64 3}
!68 = !{!"function_entry_count", i64 5836268}
!69 = !{!56, !62, i64 120}
!70 = !{!56, !62, i64 128}
!71 = !{!56, !62, i64 104}
!72 = !{!56, !62, i64 96}
!73 = !{!"function_entry_count", i64 4}
!74 = !{!75, !62, i64 8}
!75 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !53, i64 0, !53, i64 1, !53, i64 2, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72}
!76 = !{!77, !62, i64 120}
!77 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !78, i64 0, !79, i64 8, !53, i64 16, !53, i64 17, !53, i64 18, !53, i64 19, !53, i64 20, !53, i64 21, !53, i64 22, !53, i64 23, !53, i64 24, !53, i64 25, !53, i64 26, !53, i64 27, !53, i64 28, !53, i64 29, !53, i64 30, !53, i64 31, !53, i64 32, !53, i64 33, !53, i64 34, !53, i64 35, !53, i64 36, !53, i64 37, !53, i64 38, !80, i64 40, !80, i64 44, !80, i64 48, !80, i64 52, !80, i64 56, !80, i64 60, !80, i64 64, !80, i64 68, !62, i64 72, !80, i64 80, !80, i64 84, !80, i64 88, !80, i64 92, !80, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !53, i64 176, !81, i64 184, !62, i64 264, !84, i64 272, !62, i64 280, !62, i64 288, !62, i64 296, !62, i64 304, !62, i64 312, !62, i64 320, !62, i64 328, !62, i64 336, !62, i64 344, !83, i64 352, !62, i64 360, !85, i64 368, !86, i64 392, !86, i64 432, !86, i64 472, !86, i64 512, !86, i64 552, !86, i64 592, !86, i64 632, !87, i64 672}
!78 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!79 = !{!"long", !54, i64 0}
!80 = !{!"int", !54, i64 0}
!81 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !82, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !80, i64 40, !62, i64 48, !53, i64 56, !83, i64 60, !53, i64 64, !62, i64 72}
!82 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!83 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !54, i64 0}
!84 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !54, i64 0}
!85 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !80, i64 0, !62, i64 8, !62, i64 16}
!86 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !80, i64 0, !80, i64 4, !80, i64 8, !53, i64 12, !62, i64 16, !62, i64 24, !62, i64 32}
!87 = !{!"_ZTSN11xercesc_2_79ElemStackE", !80, i64 0, !80, i64 4, !88, i64 8, !62, i64 48, !80, i64 56, !80, i64 60, !80, i64 64, !80, i64 68, !80, i64 72, !80, i64 76, !80, i64 80, !62, i64 88, !62, i64 96}
!88 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !89, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !80, i64 32, !80, i64 36}
!89 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!90 = !{!77, !62, i64 128}
!91 = !{!56, !53, i64 35}
!92 = !{!77, !62, i64 264}
!93 = !{!"function_entry_count", i64 1666453}
!94 = !{!77, !53, i64 18}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!"function_entry_count", i64 1}
!98 = !{!77, !53, i64 19}
!99 = !{!77, !53, i64 20}
!100 = !{!77, !84, i64 272}
!101 = !{!77, !53, i64 26}
!102 = !{!"function_entry_count", i64 2}
!103 = !{!77, !53, i64 27}
!104 = !{!77, !53, i64 28}
!105 = !{!77, !80, i64 40}
!106 = !{!77, !62, i64 328}
!107 = !{!77, !62, i64 336}
!108 = !{!77, !53, i64 29}
!109 = !{!77, !53, i64 30}
!110 = !{!77, !62, i64 304}
!111 = !{!77, !53, i64 17}
!112 = !{!77, !53, i64 16}
!113 = !{!"function_entry_count", i64 5}
!114 = !{!56, !62, i64 80}
!115 = !{!77, !62, i64 144}
!116 = !{!77, !62, i64 152}
!117 = !{!56, !62, i64 88}
!118 = !{!77, !62, i64 160}
!119 = !{!56, !62, i64 64}
!120 = !{!56, !62, i64 72}
!121 = !{!77, !62, i64 136}
!122 = !{!77, !62, i64 360}
!123 = !{!124, !62, i64 8}
!124 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !125, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40}
!125 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !54, i64 0}
!126 = !{!124, !62, i64 16}
!127 = !{!56, !53, i64 33}
!128 = !{!56, !62, i64 112}
!129 = !{!130, !62, i64 96}
!130 = !{!"_ZTSN11xercesc_2_716DocumentTypeImplE", !131, i64 0, !137, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !53, i64 144}
!131 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !132, i64 0, !62, i64 48, !62, i64 56, !80, i64 64, !62, i64 72, !80, i64 80}
!132 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !133, i64 0, !62, i64 32, !62, i64 40}
!133 = !{!"_ZTSN11xercesc_2_78NodeImplE", !134, i64 0, !62, i64 16, !136, i64 24}
!134 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !135, i64 0}
!135 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !80, i64 8}
!136 = !{!"short", !54, i64 0}
!137 = !{!"_ZTSN11xercesc_2_79DOMStringE", !62, i64 0}
!138 = !{!56, !62, i64 40}
!139 = !{!61, !62, i64 0}
!140 = !{!141, !62, i64 24}
!141 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !89, i64 0, !80, i64 8, !80, i64 12, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64}
!142 = !{!136, !136, i64 0}
!143 = !{!144, !62, i64 112}
!144 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !131, i64 0, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !80, i64 152, !53, i64 156, !62, i64 160}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.mustprogress"}
!147 = distinct !{!147, !146}
!148 = !{!"function_entry_count", i64 496321}
!149 = !{!86, !80, i64 0}
!150 = !{!86, !80, i64 4}
!151 = !{!86, !80, i64 8}
!152 = !{!86, !53, i64 12}
!153 = !{!86, !62, i64 16}
!154 = !{!86, !62, i64 32}
!155 = !{!"function_entry_count", i64 344419}
!156 = !{!77, !80, i64 52}
!157 = !{!"function_entry_count", i64 10769804}
!158 = !{!"function_entry_count", i64 1666922}
!159 = !{!160, !62, i64 16}
!160 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !89, i64 0, !62, i64 8, !62, i64 16, !161, i64 24, !80, i64 28, !53, i64 32}
!161 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !54, i64 0}
!162 = !{!"function_entry_count", i64 1366334}
!163 = !{!164, !80, i64 12}
!164 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !53, i64 8, !80, i64 12, !80, i64 16, !62, i64 24, !62, i64 32}
!165 = !{!"branch_weights", i32 1366335, i32 1}
!166 = !{!164, !62, i64 32}
!167 = !{!164, !62, i64 24}
!168 = !{!62, !62, i64 0}
!169 = !{!"function_entry_count", i64 360316}
!170 = !{!171, !62, i64 24}
!171 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !53, i64 0, !172, i64 4, !80, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !53, i64 48}
!172 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !54, i64 0}
!173 = !{!"function_entry_count", i64 159625}
!174 = !{!77, !80, i64 64}
!175 = !{!"function_entry_count", i64 360600}
!176 = !{!171, !62, i64 16}
!177 = !{!"function_entry_count", i64 201563}
!178 = !{!171, !172, i64 4}
!179 = !{!133, !136, i64 24}
!180 = !{!"function_entry_count", i64 650}
!181 = !{!171, !53, i64 0}
!182 = !{!"function_entry_count", i64 1668291}
!183 = !{!56, !53, i64 32}
!184 = !{!77, !53, i64 24}
!185 = distinct !{!185, !146}
!186 = !{!"function_entry_count", i64 593014}
!187 = !{!188, !172, i64 12}
!188 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !89, i64 0, !189, i64 8, !172, i64 12, !190, i64 16, !53, i64 20, !53, i64 21, !80, i64 24, !62, i64 32, !62, i64 40, !62, i64 48}
!189 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !54, i64 0}
!190 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !54, i64 0}
!191 = !{!188, !62, i64 40}
!192 = !{!"function_entry_count", i64 2453164456}
!193 = !{!"branch_weights", i32 1, i32 -1841802839}
!194 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!195 = !{!"branch_weights", i32 408669070, i32 -279908794}
!196 = distinct !{!196, !146}
!197 = !{!"function_entry_count", i64 401820}
!198 = !{!188, !189, i64 8}
!199 = !{!"function_entry_count", i64 19496}
!200 = !{!188, !62, i64 32}
!201 = !{!135, !80, i64 8}
!202 = distinct !{!202, !146}
!203 = !{!"function_entry_count", i64 789922}
!204 = !{!"branch_weights", i32 1, i32 789923}
!205 = !{!"branch_weights", i32 285, i32 789639}
!206 = !{!"branch_weights", i32 789639, i32 41628304}
!207 = distinct !{!207, !146}
!208 = !{!"branch_weights", i32 789637, i32 3}
!209 = !{!130, !53, i64 144}
!210 = !{!141, !62, i64 40}
!211 = !{!141, !62, i64 48}
!212 = !{!141, !62, i64 32}
!213 = !{!141, !62, i64 16}
!214 = !{!130, !62, i64 104}
!215 = !{!216, !62, i64 16}
!216 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !89, i64 0, !80, i64 8, !80, i64 12, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48}
!217 = !{!216, !62, i64 24}
!218 = !{!216, !62, i64 32}
!219 = !{!81, !62, i64 16}
!220 = !{!81, !62, i64 24}
!221 = !{!"function_entry_count", i64 558789}
!222 = !{!"branch_weights", i32 158605, i32 400186}
!223 = !{!81, !53, i64 64}
!224 = !{!225, !62, i64 40}
!225 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !226, i64 8, !62, i64 16, !80, i64 24, !62, i64 32, !62, i64 40}
!226 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !54, i64 0}
!227 = !{!"function_entry_count", i64 2192223}
!228 = !{!229, !62, i64 32}
!229 = !{!"_ZTSN11xercesc_2_75QNameE", !89, i64 0, !80, i64 8, !80, i64 12, !80, i64 16, !80, i64 20, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48}
!230 = !{!"function_entry_count", i64 6553673}
!231 = !{!229, !80, i64 20}
!232 = !{!233, !53, i64 0}
!233 = !{!"_ZTSN11xercesc_2_713ValueVectorOfINS_8DOM_NodeEEE", !53, i64 0, !80, i64 4, !80, i64 8, !62, i64 16, !62, i64 24}
!234 = !{!233, !80, i64 4}
!235 = !{!233, !80, i64 8}
!236 = !{!233, !62, i64 16}
!237 = !{!233, !62, i64 24}
!238 = distinct !{!238, !146}
!239 = distinct !{!239, !146}
!240 = distinct !{!240, !146}
