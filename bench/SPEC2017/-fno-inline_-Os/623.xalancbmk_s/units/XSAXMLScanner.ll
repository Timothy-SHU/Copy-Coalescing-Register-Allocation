; ModuleID = 'XSAXMLScanner.cpp'
source_filename = "XSAXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLBufBid" = type { ptr, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_713XSAXMLScanner7getNameEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_79ElemStack7isEmptyEv = comdat any

$_ZN11xercesc_2_79ReaderMgr12skipPastCharEt = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ElemStack13getCurrentURIEv = comdat any

$_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv = comdat any

$_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt = comdat any

$_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv = comdat any

$_ZN11xercesc_2_79ElemStack17getValidationFlagEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi = comdat any

$_ZNK11xercesc_2_79XMLBuffer7isEmptyEv = comdat any

$_ZN11xercesc_2_79ReaderMgr10skipToCharEt = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv = comdat any

$_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv = comdat any

$_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb = comdat any

$_ZN11xercesc_2_79ElemStack15getCurrentScopeEv = comdat any

$_ZN11xercesc_2_79ElemStack17setValidationFlagEb = comdat any

$_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE = comdat any

$_ZN11xercesc_2_79ElemStack13setCurrentURIEj = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv = comdat any

$_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv = comdat any

$_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE = comdat any

$_ZN11xercesc_2_79XMLBufBid9getBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufBidD2Ev = comdat any

$_ZN11xercesc_2_79ElemStack15setCurrentScopeEi = comdat any

$_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE = comdat any

$_ZN11xercesc_2_714XMLElementDecl14getElementNameEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_710XMLScanner22resetValidationContextEv = comdat any

$_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb = comdat any

$_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZNK11xercesc_2_712KVStringPair6getKeyEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_712KVStringPair8getValueEv = comdat any

$_ZN11xercesc_2_75QName9getPrefixEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_715SchemaValidator11setNillableEb = comdat any

$_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_713XSAXMLScannerE = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSAXMLScannerE, ptr @_ZN11xercesc_2_713XSAXMLScannerD2Ev, ptr @_ZN11xercesc_2_713XSAXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_713XSAXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_713XSAXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_, ptr @_ZN11xercesc_2_713XSAXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_713XSAXMLScanner10scanEndTagERb] }, align 8
@_ZTSN11xercesc_2_713XSAXMLScannerE = dso_local constant [31 x i8] c"N11xercesc_2_713XSAXMLScannerE\00", align 1
@_ZTIN11xercesc_2_712SGXMLScannerE = external constant ptr
@_ZTIN11xercesc_2_713XSAXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSAXMLScannerE, ptr @_ZTIN11xercesc_2_712SGXMLScannerE }, align 8
@.str = private unnamed_addr constant [18 x i8] c"XSAXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
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
@_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXSAXMLScannerE = external constant [0 x i16], align 2

@_ZN11xercesc_2_713XSAXMLScannerC1EPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_713XSAXMLScannerC2EPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_13MemoryManagerE
@_ZN11xercesc_2_713XSAXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XSAXMLScannerD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_713XSAXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #1 comdat align 2 !prof !80 {
  %3 = load ptr, ptr %0, align 8, !tbaa !81
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !84
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XSAXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 comdat align 2 !prof !80 {
  ret ptr @_ZN11xercesc_2_76XMLUni15fgXSAXMLScannerE
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 1) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(41), i16 noundef signext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1000), i1 noundef zeroext, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !104
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %4, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !84
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %4, ptr %7, align 8, !tbaa !106
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = load ptr, ptr %9, align 8, !tbaa !81
  %11 = getelementptr inbounds ptr, ptr %10, i64 11
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %4) #9
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %13, align 8, !tbaa !108
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %15, align 8, !tbaa !81
  %19 = getelementptr inbounds ptr, ptr %18, i64 9
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #9
  br label %21

21:                                               ; preds = %17, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %23 = load ptr, ptr %22, align 8, !tbaa !110
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !81
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #9
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !111
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !81
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31) #9
  br label %37

37:                                               ; preds = %33, %29
  tail call void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #9
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %39 = load ptr, ptr %38, align 8, !tbaa !112
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  %44 = load ptr, ptr %43, align 8, !tbaa !81
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull %39) #9
  br label %47

47:                                               ; preds = %41, %37
  store ptr null, ptr %38, align 8, !tbaa !112
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %50 = load i32, ptr %49, align 4, !tbaa !114
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %52 = load i32, ptr %51, align 8, !tbaa !115
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %54 = load i32, ptr %53, align 4, !tbaa !116
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %56 = load i32, ptr %55, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #9
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %58 = load i32, ptr %57, align 4, !tbaa !118
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %47
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %62 = load ptr, ptr %61, align 8, !tbaa !119
  %63 = load ptr, ptr %62, align 8, !tbaa !81
  %64 = getelementptr inbounds ptr, ptr %63, i64 5
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef i32 %65(ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #9
  store i32 %66, ptr %57, align 4, !tbaa !118
  br label %67

67:                                               ; preds = %60, %47
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %68, align 1, !tbaa !120
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %69, align 2, !tbaa !121
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %70, align 8, !tbaa !122
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %71, align 1, !tbaa !123
  %72 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %72, align 8, !tbaa !124
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 1, ptr %73, align 2, !tbaa !125
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 1, ptr %74, align 2, !tbaa !126
  %75 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %76 = load ptr, ptr %75, align 8, !tbaa !127
  %77 = load ptr, ptr %76, align 8, !tbaa !81
  %78 = getelementptr inbounds ptr, ptr %77, i64 6
  %79 = load ptr, ptr %78, align 8
  tail call void %79(ptr noundef nonnull align 8 dereferenceable(186) %76) #9
  %80 = load ptr, ptr %75, align 8, !tbaa !127
  %81 = load ptr, ptr %30, align 8, !tbaa !111
  tail call void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %80, ptr noundef %81) #9
  %82 = load ptr, ptr %75, align 8, !tbaa !127
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %84 = load i8, ptr %83, align 1, !tbaa !128, !range !129, !noundef !130
  %85 = icmp ne i8 %84, 0
  tail call void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %82, i1 noundef zeroext %85) #9
  %86 = load ptr, ptr %75, align 8, !tbaa !127
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %88 = load ptr, ptr %87, align 8, !tbaa !131
  tail call void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %86, ptr noundef %88) #9
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %91 = load i8, ptr %90, align 1, !tbaa !132, !range !129, !noundef !130
  %92 = icmp ne i8 %91, 0
  %93 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %89, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %92) #9
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %120

95:                                               ; preds = %67
  %96 = load ptr, ptr %1, align 8, !tbaa !81
  %97 = getelementptr inbounds ptr, ptr %96, i64 6
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef zeroext i1 %98(ptr noundef nonnull align 8 dereferenceable(41) %1) #9
  %100 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %101 = load ptr, ptr %1, align 8, !tbaa !81
  %102 = getelementptr inbounds ptr, ptr %101, i64 5
  %103 = load ptr, ptr %102, align 8
  br i1 %99, label %104, label %112

104:                                              ; preds = %95
  %105 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(41) %1) #9
          to label %106 unwind label %110

106:                                              ; preds = %104
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %108 = load ptr, ptr %107, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %100, ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 76, ptr noundef %105, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %108) #9
          to label %109 unwind label %110

109:                                              ; preds = %106
  tail call void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

110:                                              ; preds = %106, %104
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %144

112:                                              ; preds = %95
  %113 = invoke noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(41) %1) #9
          to label %114 unwind label %118

114:                                              ; preds = %112
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %116 = load ptr, ptr %115, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %100, ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 2, ptr noundef %113, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %116) #9
          to label %117 unwind label %118

117:                                              ; preds = %114
  tail call void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

118:                                              ; preds = %114, %112
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %144

120:                                              ; preds = %67
  %121 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %89, ptr noundef nonnull %93, ptr noundef null) #9
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %123 = load ptr, ptr %122, align 8, !tbaa !133
  %124 = icmp eq ptr %123, null
  br i1 %124, label %132, label %125

125:                                              ; preds = %120
  %126 = load ptr, ptr %123, align 8, !tbaa !81
  %127 = getelementptr inbounds ptr, ptr %126, i64 3
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef i32 %128(ptr noundef nonnull align 8 dereferenceable(12) %123) #9
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %129, ptr %130, align 4, !tbaa !134
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %131, align 8, !tbaa !135
  br label %132

132:                                              ; preds = %125, %120
  %133 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %133, align 8, !tbaa !136
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %135 = load i32, ptr %134, align 8, !tbaa !137
  %136 = icmp ugt i32 %135, 31
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %139 = load ptr, ptr %138, align 8, !tbaa !138
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %139) #9
  tail call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #9
  br label %141

140:                                              ; preds = %132
  tail call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0) #9
  br label %141

141:                                              ; preds = %140, %137
  %142 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %143 = load ptr, ptr %142, align 8, !tbaa !139
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %143) #9
  ret void

144:                                              ; preds = %118, %110
  %145 = phi { ptr, i32 } [ %111, %110 ], [ %119, %118 ]
  tail call void @__cxa_free_exception(ptr %100) #10
  resume { ptr, i32 } %145
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_713XSAXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca %"class.xercesc_2_7::QName", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  store i8 1, ptr %1, align 1, !tbaa !140
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %10 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull %3) #9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #9
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183) #9
  br label %16

14:                                               ; preds = %11
  %15 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #9
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %16

16:                                               ; preds = %14, %13
  call void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 60) #9
  br label %281

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %19 = call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  %20 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false) #9
  %21 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  %22 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !141
  %24 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 1 dereferenceable(1) %4) #9
  br i1 %19, label %52, label %25

25:                                               ; preds = %17
  %26 = call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  %27 = load ptr, ptr %26, align 8, !tbaa !142
  %28 = call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %27) #9
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %30 = load i8, ptr %29, align 8, !tbaa !108, !range !129, !noundef !130
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %34 = load ptr, ptr %33, align 8, !tbaa !107
  %35 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %34) #9
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %32
  %38 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %35) #9
  br label %41

39:                                               ; preds = %25
  %40 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %27) #9
  br label %41

41:                                               ; preds = %37, %39
  %42 = phi ptr [ %35, %37 ], [ %40, %39 ]
  %43 = phi i32 [ %38, %37 ], [ %28, %39 ]
  switch i32 %43, label %52 [
    i32 4, label %44
    i32 3, label %44
    i32 2, label %44
    i32 1, label %51
  ]

44:                                               ; preds = %41, %41, %41
  %45 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %42, i1 noundef zeroext false) #9
  %46 = load ptr, ptr %45, align 8, !tbaa !81
  %47 = getelementptr inbounds ptr, ptr %46, i64 5
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %45) #9
  %50 = call noundef i32 @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  br label %52

51:                                               ; preds = %32, %41
  br label %52

52:                                               ; preds = %44, %51, %41, %17
  %53 = phi i8 [ 0, %17 ], [ 0, %44 ], [ 1, %51 ], [ 0, %41 ]
  %54 = phi i32 [ -2, %17 ], [ %50, %44 ], [ -2, %51 ], [ -2, %41 ]
  %55 = phi ptr [ null, %17 ], [ %45, %44 ], [ null, %51 ], [ null, %41 ]
  %56 = phi ptr [ null, %17 ], [ %49, %44 ], [ null, %51 ], [ null, %41 ]
  %57 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %59 = load i8, ptr %58, align 8, !tbaa !108, !range !129, !noundef !130
  %60 = icmp ne i8 %59, 0
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %18, i1 noundef zeroext %60) #9
  %61 = load i32, ptr %3, align 4, !tbaa !144
  call void @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi(ptr noundef nonnull align 8 dereferenceable(104) %18, i32 noundef %61) #9
  %62 = icmp eq i32 %24, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  call void @_ZN11xercesc_2_713XSAXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %24) #9
  br label %64

64:                                               ; preds = %63, %52
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %66 = load i32, ptr %3, align 4, !tbaa !144
  %67 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(40) %65, i16 noundef signext 1, i32 noundef %66) #9
  %68 = load i8, ptr %58, align 8, !tbaa !108, !range !129, !noundef !130
  %69 = icmp eq i8 %68, 0
  %70 = icmp eq ptr %56, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #10
  %72 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %65) #9
  %73 = load i32, ptr %3, align 4, !tbaa !144
  %74 = sext i32 %73 to i64
  %75 = getelementptr i16, ptr %21, i64 %74
  %76 = getelementptr i16, ptr %75, i64 1
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %78 = load ptr, ptr %77, align 8, !tbaa !113
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %72, ptr noundef %76, i32 noundef %67, ptr noundef %78) #9
  %79 = add i32 %57, -1
  %80 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %5, ptr noundef nonnull %56, ptr noundef %55, i32 noundef %79) #9
          to label %81 unwind label %83

81:                                               ; preds = %71
  %82 = zext i1 %80 to i8
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  br label %85

83:                                               ; preds = %71
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #10
  br label %279

85:                                               ; preds = %81, %64
  %86 = phi i8 [ %82, %81 ], [ %53, %64 ]
  %87 = load i32, ptr %3, align 4, !tbaa !144
  %88 = sext i32 %87 to i64
  %89 = getelementptr i16, ptr %21, i64 %88
  %90 = getelementptr i16, ptr %89, i64 1
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %92 = load ptr, ptr %91, align 8, !tbaa !105
  %93 = load ptr, ptr %92, align 8, !tbaa !81
  %94 = getelementptr inbounds ptr, ptr %93, i64 11
  %95 = load ptr, ptr %94, align 8
  %96 = call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %92, i32 noundef %67, ptr noundef %90, ptr noundef %21, i32 noundef %54) #9
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %138

98:                                               ; preds = %85
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %100 = load ptr, ptr %99, align 8, !tbaa !119
  %101 = load ptr, ptr %91, align 8, !tbaa !105
  %102 = load ptr, ptr %101, align 8, !tbaa !81
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  %105 = call noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(8) %101) #9
  %106 = load ptr, ptr %100, align 8, !tbaa !81
  %107 = getelementptr inbounds ptr, ptr %106, i64 9
  %108 = load ptr, ptr %107, align 8
  %109 = call noundef i32 %108(ptr noundef nonnull align 8 dereferenceable(40) %100, ptr noundef %105) #9
  %110 = icmp eq i32 %67, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %98
  %112 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %67) #9
  %113 = icmp ne i8 %86, 0
  call void @_ZN11xercesc_2_713XSAXMLScanner13switchGrammarEPKtb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %112, i1 noundef zeroext %113) #9
  br label %114

114:                                              ; preds = %111, %98
  %115 = load ptr, ptr %91, align 8, !tbaa !105
  %116 = load ptr, ptr %115, align 8, !tbaa !81
  %117 = getelementptr inbounds ptr, ptr %116, i64 11
  %118 = load ptr, ptr %117, align 8
  %119 = call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %115, i32 noundef %67, ptr noundef %90, ptr noundef %21, i32 noundef -2) #9
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %114
  %122 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %123 = load ptr, ptr %122, align 8, !tbaa !145
  %124 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %123, ptr noundef %90, i32 noundef %67, i32 noundef -2) #9
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %121
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %128 = load ptr, ptr %127, align 8, !tbaa !113
  %129 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %128) #9
  %130 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %65) #9
  %131 = load ptr, ptr %127, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %129, ptr noundef %130, ptr noundef %90, i32 noundef %67, i32 noundef 1, i32 noundef -2, ptr noundef %131) #9
          to label %134 unwind label %132

132:                                              ; preds = %126
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %129, ptr noundef %128) #8
  br label %279

134:                                              ; preds = %126
  %135 = load ptr, ptr %122, align 8, !tbaa !145
  %136 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %129) #9
  %137 = call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %135, ptr noundef %136, i32 noundef %67, i32 noundef -2, ptr noundef nonnull %129) #9
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %129, i32 noundef %137) #9
  br label %141

138:                                              ; preds = %85, %114, %121
  %139 = phi ptr [ %124, %121 ], [ %119, %114 ], [ %96, %85 ]
  %140 = call noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %139) #9
  br i1 %140, label %152, label %141

141:                                              ; preds = %134, %138
  %142 = phi ptr [ %139, %138 ], [ %129, %134 ]
  %143 = icmp eq i8 %86, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  store i8 0, ptr %58, align 8, !tbaa !108
  call void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %18, i1 noundef zeroext false) #9
  br label %145

145:                                              ; preds = %144, %141
  %146 = load i8, ptr %58, align 8, !tbaa !108, !range !129, !noundef !130
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  call void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %142, i32 noundef 5) #9
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %150 = load ptr, ptr %149, align 8, !tbaa !107
  %151 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %142) #9
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %150, i32 noundef 2, ptr noundef %151, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %152

152:                                              ; preds = %145, %148, %138
  %153 = phi ptr [ %142, %145 ], [ %142, %148 ], [ %139, %138 ]
  %154 = call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %8) #9
  call void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef nonnull %153, i32 noundef %154) #9
  call void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %18, i32 noundef %67) #9
  br i1 %19, label %155, label %160

155:                                              ; preds = %152
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %157 = load ptr, ptr %156, align 8, !tbaa !113
  %158 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %157) #9
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  store ptr %158, ptr %159, align 8, !tbaa !112
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i8, ptr %58, align 8, !tbaa !108, !range !129, !noundef !130
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %169, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %165 = load ptr, ptr %164, align 8, !tbaa !107
  %166 = load ptr, ptr %165, align 8, !tbaa !81
  %167 = getelementptr inbounds ptr, ptr %166, i64 9
  %168 = load ptr, ptr %167, align 8
  call void %168(ptr noundef nonnull align 8 dereferenceable(40) %165, ptr noundef nonnull %153) #9
  br label %169

169:                                              ; preds = %163, %160
  %170 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #9
  call void @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef %170) #9
  %171 = load i8, ptr %58, align 8, !tbaa !108, !range !129, !noundef !130
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %175 = load ptr, ptr %174, align 8, !tbaa !107
  %176 = call noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %175) #9
  br label %179

177:                                              ; preds = %169
  %178 = call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %153) #9
  br label %179

179:                                              ; preds = %177, %173
  %180 = phi ptr [ %176, %173 ], [ %178, %177 ]
  %181 = icmp eq ptr %180, null
  br i1 %181, label %196, label %182

182:                                              ; preds = %179
  %183 = call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %180) #9
  %184 = call noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(176) %180) #9
  %185 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %184, i16 noundef zeroext 44) #9
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %188) #9
  %189 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %189, ptr noundef %184, i32 noundef %185) #9
          to label %190 unwind label %194

190:                                              ; preds = %187
  %191 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %189) #9
  %192 = icmp ne i8 %86, 0
  invoke void @_ZN11xercesc_2_713XSAXMLScanner13switchGrammarEPKtb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %191, i1 noundef zeroext %192) #9
          to label %193 unwind label %194

193:                                              ; preds = %190
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %196

194:                                              ; preds = %190, %187
  %195 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %279

196:                                              ; preds = %182, %193, %179
  %197 = phi i32 [ %54, %179 ], [ %183, %193 ], [ %183, %182 ]
  call void @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi(ptr noundef nonnull align 8 dereferenceable(104) %18, i32 noundef %197) #9
  %198 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %199 = load i32, ptr %198, align 8, !tbaa !146
  %200 = icmp ult i32 %57, %199
  br i1 %200, label %202, label %201

201:                                              ; preds = %196
  call void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) #9
  br label %202

202:                                              ; preds = %201, %196
  %203 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %204 = load ptr, ptr %203, align 8, !tbaa !147
  %205 = zext i32 %57 to i64
  %206 = getelementptr inbounds i32, ptr %204, i64 %205
  store i32 0, ptr %206, align 4, !tbaa !144
  %207 = load ptr, ptr %91, align 8, !tbaa !105
  call void @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef %207) #9
  %208 = or i1 %19, %69
  br i1 %208, label %212, label %209

209:                                              ; preds = %202
  %210 = call noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %153) #9
  %211 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef %210, i1 noundef zeroext true) #9
  br label %212

212:                                              ; preds = %202, %209
  %213 = load ptr, ptr %22, align 8, !tbaa !141
  %214 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %215 = load ptr, ptr %214, align 8, !tbaa !148
  %216 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %213, i32 noundef %24, ptr noundef nonnull %153, ptr noundef nonnull align 1 %215) #9
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %212
  %219 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %220 = load ptr, ptr %219, align 8, !tbaa !139
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %220) #9
  br label %221

221:                                              ; preds = %218, %212
  %222 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %223 = load ptr, ptr %222, align 8, !tbaa !109
  %224 = icmp eq ptr %223, null
  br i1 %224, label %231, label %225

225:                                              ; preds = %221
  %226 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %65) #9
  %227 = load ptr, ptr %214, align 8, !tbaa !148
  %228 = load ptr, ptr %223, align 8, !tbaa !81
  %229 = getelementptr inbounds ptr, ptr %228, i64 11
  %230 = load ptr, ptr %229, align 8
  call void %230(ptr noundef nonnull align 8 dereferenceable(8) %223, ptr noundef nonnull align 8 dereferenceable(33) %153, i32 noundef %67, ptr noundef %226, ptr noundef nonnull align 1 %227, i32 noundef %216, i1 noundef zeroext false, i1 noundef zeroext %19) #9
  br label %231

231:                                              ; preds = %225, %221
  %232 = load i8, ptr %4, align 1, !tbaa !140, !range !129, !noundef !130
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %278, label %234

234:                                              ; preds = %231
  %235 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  %236 = load i8, ptr %58, align 8, !tbaa !108, !range !129, !noundef !130
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %253, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %240 = load ptr, ptr %239, align 8, !tbaa !107
  %241 = load ptr, ptr %240, align 8, !tbaa !81
  %242 = getelementptr inbounds ptr, ptr %241, i64 2
  %243 = load ptr, ptr %242, align 8
  %244 = call noundef i32 %243(ptr noundef nonnull align 8 dereferenceable(40) %240, ptr noundef nonnull %153, ptr noundef null, i32 noundef 0) #9
  %245 = icmp sgt i32 %244, -1
  br i1 %245, label %246, label %253

246:                                              ; preds = %238
  %247 = load ptr, ptr %239, align 8, !tbaa !107
  %248 = call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %153) #9
  %249 = load ptr, ptr %153, align 8, !tbaa !81
  %250 = getelementptr inbounds ptr, ptr %249, i64 15
  %251 = load ptr, ptr %250, align 8
  %252 = call noundef ptr %251(ptr noundef nonnull align 8 dereferenceable(33) %153) #9
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %247, i32 noundef 7, ptr noundef %248, ptr noundef %252, ptr noundef null, ptr noundef null) #9
  br label %253

253:                                              ; preds = %238, %246, %234
  %254 = load ptr, ptr %222, align 8, !tbaa !109
  %255 = icmp eq ptr %254, null
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %65) #9
  %258 = load ptr, ptr %254, align 8, !tbaa !81
  %259 = getelementptr inbounds ptr, ptr %258, i64 6
  %260 = load ptr, ptr %259, align 8
  call void %260(ptr noundef nonnull align 8 dereferenceable(8) %254, ptr noundef nonnull align 8 dereferenceable(33) %153, i32 noundef %67, i1 noundef zeroext %19, ptr noundef %257) #9
  br label %261

261:                                              ; preds = %256, %253
  br i1 %19, label %262, label %263

262:                                              ; preds = %261
  store i8 0, ptr %1, align 1, !tbaa !140
  br label %278

263:                                              ; preds = %261
  %264 = call noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  store ptr %264, ptr %91, align 8, !tbaa !105
  %265 = load ptr, ptr %264, align 8, !tbaa !81
  %266 = getelementptr inbounds ptr, ptr %265, i64 5
  %267 = load ptr, ptr %266, align 8
  %268 = call noundef i32 %267(ptr noundef nonnull align 8 dereferenceable(8) %264) #9
  %269 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %268, ptr %269, align 4, !tbaa !84
  %270 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %271 = load ptr, ptr %270, align 8, !tbaa !107
  %272 = load ptr, ptr %91, align 8, !tbaa !105
  %273 = load ptr, ptr %271, align 8, !tbaa !81
  %274 = getelementptr inbounds ptr, ptr %273, i64 11
  %275 = load ptr, ptr %274, align 8
  call void %275(ptr noundef nonnull align 8 dereferenceable(40) %271, ptr noundef %272) #9
  %276 = call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %18) #9
  %277 = zext i1 %276 to i8
  store i8 %277, ptr %58, align 8, !tbaa !108
  br label %278

278:                                              ; preds = %262, %263, %231
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  br label %281

279:                                              ; preds = %132, %194, %83
  %280 = phi { ptr, i32 } [ %84, %83 ], [ %195, %194 ], [ %133, %132 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  resume { ptr, i32 } %280

281:                                              ; preds = %278, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  store i8 1, ptr %1, align 1, !tbaa !140
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  br i1 %4, label %5, label %13

5:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245) #9
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %6, i16 noundef zeroext 62) #9
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 77, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  %15 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  %16 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef %15) #9
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %15, ptr noundef null, ptr noundef null, ptr noundef null) #9
  tail call void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 62) #9
  br label %119

20:                                               ; preds = %13
  %21 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  %22 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %16, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !149
  %24 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %17) #9
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278) #9
  br label %27

27:                                               ; preds = %26, %20
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, i1 noundef zeroext false) #9
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 62) #9
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8, !tbaa !142
  %32 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %31) #9
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %32, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %33

33:                                               ; preds = %30, %27
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %35 = load i8, ptr %34, align 8, !tbaa !108, !range !129, !noundef !130
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %80, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %39 = load ptr, ptr %38, align 8, !tbaa !107
  %40 = load ptr, ptr %16, align 8, !tbaa !142
  %41 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %16, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !150
  %43 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %16, i64 0, i32 3
  %44 = load i32, ptr %43, align 8, !tbaa !151
  %45 = load ptr, ptr %39, align 8, !tbaa !81
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef i32 %47(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef %40, ptr noundef %42, i32 noundef %44) #9
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %80

50:                                               ; preds = %37
  %51 = load i32, ptr %43, align 8, !tbaa !151
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load ptr, ptr %38, align 8, !tbaa !107
  %55 = load ptr, ptr %16, align 8, !tbaa !142
  %56 = load ptr, ptr %55, align 8, !tbaa !81
  %57 = getelementptr inbounds ptr, ptr %56, i64 15
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(33) %55) #9
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef 16, ptr noundef %59, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %80

60:                                               ; preds = %50
  %61 = icmp ult i32 %48, %51
  %62 = load ptr, ptr %38, align 8, !tbaa !107
  br i1 %61, label %69, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %16, align 8, !tbaa !142
  %65 = load ptr, ptr %64, align 8, !tbaa !81
  %66 = getelementptr inbounds ptr, ptr %65, i64 15
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(33) %64) #9
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %62, i32 noundef 21, ptr noundef %68, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %80

69:                                               ; preds = %60
  %70 = load ptr, ptr %41, align 8, !tbaa !150
  %71 = zext nneg i32 %48 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !152
  %74 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %73) #9
  %75 = load ptr, ptr %16, align 8, !tbaa !142
  %76 = load ptr, ptr %75, align 8, !tbaa !81
  %77 = getelementptr inbounds ptr, ptr %76, i64 15
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(33) %75) #9
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %62, i32 noundef 7, ptr noundef %74, ptr noundef %79, ptr noundef null, ptr noundef null) #9
  br label %80

80:                                               ; preds = %37, %63, %69, %53, %33
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %82 = load ptr, ptr %81, align 8, !tbaa !107
  tail call void @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv(ptr noundef nonnull align 8 dereferenceable(186) %82) #9
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %84 = load ptr, ptr %83, align 8, !tbaa !109
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86

86:                                               ; preds = %80
  %87 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %16, i64 0, i32 16
  %88 = load i32, ptr %87, align 4, !tbaa !153
  %89 = icmp eq i32 %88, -1
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  br i1 %89, label %92, label %91

91:                                               ; preds = %86
  tail call void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %90, ptr noundef %15, i32 noundef %88) #9
  br label %93

92:                                               ; preds = %86
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %90) #9
  br label %93

93:                                               ; preds = %92, %91
  %94 = load ptr, ptr %83, align 8, !tbaa !109
  %95 = load ptr, ptr %16, align 8, !tbaa !142
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %97 = tail call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %96) #9
  %98 = load ptr, ptr %94, align 8, !tbaa !81
  %99 = getelementptr inbounds ptr, ptr %98, i64 6
  %100 = load ptr, ptr %99, align 8
  tail call void %100(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef nonnull align 8 dereferenceable(33) %95, i32 noundef %14, i1 noundef zeroext %21, ptr noundef %97) #9
  br label %101

101:                                              ; preds = %93, %80
  %102 = xor i1 %21, true
  %103 = zext i1 %102 to i8
  store i8 %103, ptr %1, align 1, !tbaa !140
  br i1 %21, label %119, label %104

104:                                              ; preds = %101
  %105 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %105, ptr %106, align 8, !tbaa !105
  %107 = load ptr, ptr %105, align 8, !tbaa !81
  %108 = getelementptr inbounds ptr, ptr %107, i64 5
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef i32 %109(ptr noundef nonnull align 8 dereferenceable(8) %105) #9
  %111 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %110, ptr %111, align 4, !tbaa !84
  %112 = load ptr, ptr %81, align 8, !tbaa !107
  %113 = load ptr, ptr %106, align 8, !tbaa !105
  %114 = load ptr, ptr %112, align 8, !tbaa !81
  %115 = getelementptr inbounds ptr, ptr %114, i64 11
  %116 = load ptr, ptr %115, align 8
  tail call void %116(ptr noundef nonnull align 8 dereferenceable(40) %112, ptr noundef %113) #9
  %117 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #9
  %118 = zext i1 %117 to i8
  store i8 %118, ptr %34, align 8, !tbaa !108
  br label %119

119:                                              ; preds = %101, %104, %19
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScannerC2EPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef null, ptr noundef %1, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_713XSAXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  store ptr %3, ptr %6, align 8, !tbaa !104
  invoke void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %2) #9
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #8
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #0 align 2 !prof !80 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ElemStack7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !154 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !155
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr12skipPastCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !80 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !156

8:                                                ; preds = %3
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack13getCurrentURIEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !158 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 13
  %11 = load i32, ptr %10, align 8, !tbaa !160
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ElemStack24getCurrentSchemaElemNameEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !163 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef %1) #9
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #1 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #9
  ret i32 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #9
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !161 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !170 {
  store i32 0, ptr %0, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !172 {
  store i32 0, ptr %0, align 8, !tbaa !171
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  store i16 0, ptr %3, align 2, !tbaa !174
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !176 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !173
  %4 = load i32, ptr %0, align 8, !tbaa !171
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !174
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79ElemStack17getCurrentGrammarEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !177 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ElemStack17getValidationFlagEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !179 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 8
  %11 = load i8, ptr %10, align 8, !tbaa !180, !range !129, !noundef !130
  %12 = icmp ne i8 %11, 0
  ret i1 %12
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !80 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !165 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !184
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !190 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !191

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !171
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !192
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !193

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #9
  %12 = load i32, ptr %0, align 8, !tbaa !171
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !173
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !171
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !171
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #9
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !194 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !195

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !174
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !196

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !174
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !197, !llvm.loop !198

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !171
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !192
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !199

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #9
  %21 = load i32, ptr %0, align 8, !tbaa !171
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !173
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !171
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !171
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !200 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2) #9
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !201 {
  %2 = load i32, ptr %0, align 8, !tbaa !171
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr10skipToCharEt(ptr noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !80 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #9
  %5 = icmp ne i16 %4, %1
  %6 = icmp ne i16 %4, 0
  %7 = and i1 %5, %6
  br i1 %7, label %3, label %8, !llvm.loop !202

8:                                                ; preds = %3
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !203 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !210

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %3) #9
  br label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !211
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i32 [ %6, %5 ], [ %9, %7 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(186) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #9
  br i1 %4, label %9, label %5, !prof !217

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !213
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #9
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !218 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 10
  %3 = load i32, ptr %2, align 8, !tbaa !219
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl18getComplexTypeInfoEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !221 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !222 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !223
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %12, !prof !224

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !225
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !226

10:                                               ; preds = %6
  %11 = tail call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %0, i1 noundef zeroext %1) #9
  store ptr %11, ptr %3, align 8, !tbaa !223
  br label %12

12:                                               ; preds = %10, %6, %2
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ %4, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79ElemStack15getCurrentScopeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !227 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = add i32 %5, -1
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %3, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %9, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !228
  ret i32 %11
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setValidationFlagEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !229 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !155
  %8 = add i32 %7, -1
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds ptr, ptr %5, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 8
  store i8 %3, ptr %12, align 8, !tbaa !180
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setPrefixColonPosEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !155
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 16
  store i32 %1, ptr %11, align 4, !tbaa !153
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca %"class.xercesc_2_7::XMLBufBid", align 8
  %4 = alloca %"class.xercesc_2_7::QName", align 8
  %5 = alloca i32, align 4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %10 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %11 = zext nneg i32 %1 to i64
  br label %12

12:                                               ; preds = %7, %29
  %13 = phi i64 [ 0, %7 ], [ %30, %29 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !141
  %15 = trunc i64 %13 to i32
  %16 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %15) #9
  %17 = tail call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %16) #9
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %17, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %17, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #9
  br i1 %21, label %22, label %29

22:                                               ; preds = %20, %12
  %23 = tail call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %16) #9
  %24 = load ptr, ptr %9, align 8, !tbaa !231
  %25 = getelementptr inbounds i32, ptr %24, i64 %13
  %26 = load i32, ptr %25, align 4, !tbaa !144
  tail call void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %17, ptr noundef %23, i32 noundef %26) #9
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %23, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE) #9
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8 1, ptr %10, align 8, !tbaa !124
  br label %29

29:                                               ; preds = %22, %28, %20
  %30 = add nuw nsw i64 %13, 1
  %31 = icmp eq i64 %30, %11
  br i1 %31, label %32, label %12, !llvm.loop !232

32:                                               ; preds = %29, %2
  %33 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %34 = load i8, ptr %33, align 8, !tbaa !124, !range !129, !noundef !130
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %110, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #10
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  call void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %37) #9
  %38 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #10
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %40 = load ptr, ptr %39, align 8, !tbaa !113
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %40) #9
          to label %41 unwind label %65

41:                                               ; preds = %36
  br i1 %6, label %42, label %84

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %47

47:                                               ; preds = %42, %81
  %48 = phi i32 [ 0, %42 ], [ %82, %81 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !141
  %50 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef %48) #9
          to label %51 unwind label %67

51:                                               ; preds = %47
  %52 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #9
  %53 = load i32, ptr %44, align 4, !tbaa !114
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %52, i32 noundef %53) #9
          to label %54 unwind label %69

54:                                               ; preds = %51
  %55 = call noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #9
  %56 = invoke noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %55, i32 noundef 0) #9
          to label %57 unwind label %71

57:                                               ; preds = %54
  %58 = load i32, ptr %45, align 4, !tbaa !118
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %57
  %61 = call noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #9
  %62 = call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %4) #9
  %63 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE) #9
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef %61) #9
          to label %81 unwind label %73

65:                                               ; preds = %36
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %108

67:                                               ; preds = %47
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %106

69:                                               ; preds = %51
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %106

71:                                               ; preds = %54
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %106

73:                                               ; preds = %64
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %106

75:                                               ; preds = %60
  %76 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE) #9
  br i1 %76, label %77, label %81

77:                                               ; preds = %75
  %78 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %61, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE) #9
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = load ptr, ptr %46, align 8, !tbaa !107
  call void @_ZN11xercesc_2_715SchemaValidator11setNillableEb(ptr noundef nonnull align 8 dereferenceable(186) %80, i1 noundef zeroext true) #9
  br label %81

81:                                               ; preds = %64, %79, %77, %75, %57
  %82 = add nuw nsw i32 %48, 1
  %83 = icmp eq i32 %82, %1
  br i1 %83, label %84, label %47, !llvm.loop !233

84:                                               ; preds = %81, %41
  %85 = call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #9
  br i1 %85, label %105, label %86

86:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 -1, ptr %5, align 4, !tbaa !144
  %87 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #9
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %89 = load ptr, ptr %0, align 8, !tbaa !81
  %90 = getelementptr inbounds ptr, ptr %89, i64 7
  %91 = load ptr, ptr %90, align 8
  %92 = invoke noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %87, ptr noundef nonnull align 8 dereferenceable(40) %88, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %5) #9
          to label %93 unwind label %103

93:                                               ; preds = %86
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %95 = load ptr, ptr %94, align 8, !tbaa !107
  %96 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %88) #9
  %97 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %38) #9
  %98 = load i32, ptr %5, align 4, !tbaa !144
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i16, ptr %97, i64 %99
  %101 = getelementptr inbounds i16, ptr %100, i64 1
  invoke void @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(186) %95, ptr noundef %96, ptr noundef nonnull %101, i32 noundef %92) #9
          to label %102 unwind label %103

102:                                              ; preds = %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %105

103:                                              ; preds = %93, %86
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %106

105:                                              ; preds = %102, %84
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  br label %110

106:                                              ; preds = %67, %71, %73, %69, %103
  %107 = phi { ptr, i32 } [ %104, %103 ], [ %68, %67 ], [ %70, %69 ], [ %74, %73 ], [ %72, %71 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %4) #8
  br label %108

108:                                              ; preds = %106, %65
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #10
  resume { ptr, i32 } %109

110:                                              ; preds = %105, %32
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner13switchGrammarEPKtb(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 !prof !80 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE) #9
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !104
  br label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef %1) #9
  br label %12

12:                                               ; preds = %8, %5
  %13 = phi ptr [ %7, %5 ], [ %11, %8 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !81
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %13) #9
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %13, ptr %22, align 8, !tbaa !105
  %23 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 1, ptr %23, align 4, !tbaa !84
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %25 = load ptr, ptr %24, align 8, !tbaa !107
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  %27 = getelementptr inbounds ptr, ptr %26, i64 11
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull %13) #9
  br label %33

29:                                               ; preds = %15, %12
  br i1 %2, label %33, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %32 = load ptr, ptr %31, align 8, !tbaa !107
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 72, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #9
  br label %33

33:                                               ; preds = %29, %30, %21
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 !prof !234 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %6 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #9
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !235

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !236
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret ptr %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !238 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !239
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 comdat align 2 !prof !240 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !241

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !242, !range !129, !noundef !130
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !236
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !81
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #8
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !236
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !244
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !245
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !246
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !247
  %26 = load ptr, ptr %25, align 8, !tbaa !81
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32) #9
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !248
  %32 = load i32, ptr %6, align 4, !tbaa !144
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !152
  call void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %35) #9
  %36 = load ptr, ptr %30, align 8, !tbaa !248
  %37 = load i32, ptr %6, align 4, !tbaa !144
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr %29, ptr %39, align 8, !tbaa !152
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !249
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !250
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %50, label %47, !prof !251

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !252
  br label %73

50:                                               ; preds = %40
  %51 = uitofp i32 %43 to double
  %52 = fmul double %51, 1.500000e+00
  %53 = fptoui double %52 to i32
  %54 = load ptr, ptr %0, align 8, !tbaa !247
  %55 = zext i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = load ptr, ptr %54, align 8, !tbaa !81
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %56) #9
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !252
  %63 = load i32, ptr %44, align 8, !tbaa !250
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %62, i64 %65, i1 false)
  %66 = load ptr, ptr %0, align 8, !tbaa !247
  %67 = load ptr, ptr %61, align 8, !tbaa !252
  %68 = load ptr, ptr %66, align 8, !tbaa !81
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67) #9
  store ptr %60, ptr %61, align 8, !tbaa !252
  store i32 %53, ptr %44, align 8, !tbaa !250
  %71 = load i32, ptr %41, align 4, !tbaa !249
  %72 = add i32 %71, 1
  br label %73

73:                                               ; preds = %47, %50
  %74 = phi i32 [ %43, %47 ], [ %72, %50 ]
  %75 = phi ptr [ %49, %47 ], [ %60, %50 ]
  store i32 %74, ptr %41, align 4, !tbaa !249
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %4, ptr %77, align 8, !tbaa !152
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %4, i32 noundef %74) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714XMLElementDecl10isDeclaredEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !254 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !255
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl15setCreateReasonENS0_13CreateReasonsE(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !240 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !255
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack13setCurrentURIEj(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !155
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 13
  store i32 %1, ptr %11, align 8, !tbaa !160
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !256 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !257

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #9
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !81
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !155
  %6 = add i32 %5, -1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = zext i32 %6 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !152
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !258
  %14 = icmp ugt i32 %13, %3
  br i1 %14, label %38, label %15, !prof !259

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %11, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !162
  %18 = shl i32 %3, 1
  store i32 %18, ptr %12, align 8, !tbaa !258
  %19 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 12
  %20 = load ptr, ptr %19, align 8, !tbaa !260
  %21 = zext i32 %18 to i64
  %22 = shl nuw nsw i64 %21, 1
  %23 = load ptr, ptr %20, align 8, !tbaa !81
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef %22) #9
  %27 = load ptr, ptr %7, align 8, !tbaa !159
  %28 = getelementptr inbounds ptr, ptr %27, i64 %9
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 14
  store ptr %26, ptr %30, align 8, !tbaa !162
  %31 = load ptr, ptr %19, align 8, !tbaa !260
  %32 = load ptr, ptr %31, align 8, !tbaa !81
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %17) #9
  %35 = load ptr, ptr %7, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %35, i64 %9
  %37 = load ptr, ptr %36, align 8, !tbaa !152
  br label %38

38:                                               ; preds = %15, %2
  %39 = phi ptr [ %37, %15 ], [ %11, %2 ]
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %39, i64 0, i32 14
  %41 = load ptr, ptr %40, align 8, !tbaa !162
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %41, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715ComplexTypeInfo15getScopeDefinedEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !261 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !262
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715ComplexTypeInfo11getTypeNameEv(ptr noundef nonnull align 8 dereferenceable(176) %0) local_unnamed_addr #0 comdat align 2 !prof !263 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 !prof !265 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #9
  store ptr %3, ptr %0, align 8, !tbaa !152
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !266
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_79XMLBufBid9getBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !268 {
  %2 = load ptr, ptr %0, align 8, !tbaa !269
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufBidD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !265 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBufBid", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !266
  %4 = load ptr, ptr %0, align 8, !tbaa !269
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret void

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack15setCurrentScopeEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !221 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !155
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 11
  store i32 %1, ptr %11, align 4, !tbaa !228
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ElemStack17setCurrentGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !230 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = getelementptr inbounds %"class.xercesc_2_7::ElemStack", ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !155
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds ptr, ptr %4, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !152
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %10, i64 0, i32 12
  store ptr %1, ptr %11, align 8, !tbaa !178
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl14getElementNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !167
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !271 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #9
  br i1 %2, label %45, label %3, !prof !272

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !273
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !275
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !276
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !277
  %23 = load i8, ptr %9, align 8, !tbaa !279, !range !129, !noundef !130
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !280
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #13
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !281
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #9
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !282

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !276
  %37 = load i32, ptr %4, align 8, !tbaa !273
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !152
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !283

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !212 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !217

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #9
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 80, ptr noundef %7) #9
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #10
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %12) #9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !284 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !285
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !287
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !212 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !285
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !288

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !287
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !289
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !80 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !80 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !181
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #8
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 comdat align 2 !prof !290 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !291
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !292
  %10 = load ptr, ptr %0, align 8, !tbaa !247
  %11 = load ptr, ptr %7, align 8, !tbaa !81
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10) #9
  store i32 %13, ptr %4, align 4, !tbaa !144
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !248
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !293

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !245
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !294

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !246
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !295

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !291
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !244
  %33 = load ptr, ptr %30, align 8, !tbaa !81
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32) #9
  br i1 %36, label %41, label %37, !prof !296

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !152
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !297, !llvm.loop !298

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ null, %37 ], [ %21, %29 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 !prof !240 {
  store ptr %4, ptr %0, align 8, !tbaa !236
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !299
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !244
  %9 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %9, align 8, !tbaa !245
  %10 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 4
  store i32 %3, ptr %10, align 4, !tbaa !246
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !300 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !301
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !303 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !304

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !174
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !305

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !174
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !306, !llvm.loop !307

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
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !308 {
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !271 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !275
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner22resetValidationContextEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #1 comdat align 2 !prof !309 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %3 = load ptr, ptr %2, align 8, !tbaa !310
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  %7 = load ptr, ptr %2, align 8, !tbaa !310
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = getelementptr inbounds ptr, ptr %8, i64 9
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef null) #9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %12, align 8, !tbaa !311
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !309 {
  tail call void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #1 comdat align 2 !prof !309 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 13
  tail call void @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator18setGrammarResolverEPNS_15GrammarResolverE(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !309 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !312
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !81
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !313 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  br i1 %2, label %45, label %3, !prof !314

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !315
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !317

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !318
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !319
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !152
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !320

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !321
  %23 = load i8, ptr %9, align 8, !tbaa !323, !range !129, !noundef !130
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !324

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !325
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #13
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !326
  %31 = load ptr, ptr %30, align 8, !tbaa !81
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #9
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !327, !llvm.loop !328

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !319
  %37 = load i32, ptr %4, align 8, !tbaa !315
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !152
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !329, !llvm.loop !330

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !331 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !332
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !333 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !334
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb(ptr noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !335 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSDErrorReporter", ptr %0, i64 0, i32 1
  store i8 %3, ptr %4, align 8, !tbaa !336
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !313 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !318
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !337 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !338
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !340

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !341
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !342
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !343 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !344
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !346 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !347

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !174
  %8 = load i16, ptr %1, align 2, !tbaa !174
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !348

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !349

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !174
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !350

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !351

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !174
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !352

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !353

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !174
  %28 = load i16, ptr %26, align 2, !tbaa !174
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !354, !llvm.loop !355

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !356 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !357
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !358 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !359
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !360 {
  store i32 0, ptr %0, align 8, !tbaa !171
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator11setNillableEb(ptr noundef nonnull align 8 dereferenceable(186) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !80 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 5
  store i8 %3, ptr %4, align 8, !tbaa !361
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715SchemaValidator10setXsiTypeEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(186) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !362
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !81
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(56) %6) #8
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !363
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %14) #9
  %16 = load ptr, ptr %13, align 8, !tbaa !363
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %15, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %16) #9
          to label %17 unwind label %18

17:                                               ; preds = %12
  store ptr %15, ptr %5, align 8, !tbaa !362
  ret void

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #8
  resume { ptr, i32 } %19
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!79}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!36 = !{ptr @_ZN11xercesc_2_79ReaderMgr13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680336}
!37 = !{ptr @_ZNK11xercesc_2_79ReaderMgr19getCurrentReaderNumEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 4926602}
!38 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!39 = !{ptr @_ZN11xercesc_2_715SchemaValidator19clearDatatypeBufferEv, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 679966}
!40 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 695}
!41 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!42 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!43 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!44 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1025276}
!45 = !{ptr @_ZN11xercesc_2_79ReaderMgr8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 1025276}
!46 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl12getModelTypeEv, ptr @_ZNK11xercesc_2_715ComplexTypeInfo14getContentTypeEv, i64 832910}
!47 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, i64 4843157}
!48 = !{ptr @_ZNK11xercesc_2_715SchemaValidator18getCurrentTypeInfoEv, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 4843156}
!49 = !{ptr @_ZN11xercesc_2_715ComplexTypeInfo15getContentModelEb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!50 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 1992715}
!51 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!52 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_, i64 78}
!53 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 79}
!54 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!55 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!56 = !{ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 832911}
!57 = !{ptr @_ZN11xercesc_2_79ElemStack24setCurrentSchemaElemNameEPKt, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 832911}
!58 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 379609}
!59 = !{ptr @_ZN11xercesc_2_79XMLBufBidC2EPNS_12XMLBufferMgrE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 379609}
!60 = !{ptr @_ZN11xercesc_2_79XMLBufBidD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 379609}
!61 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfIjE7isEmptyEv, i64 190056}
!62 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 156}
!63 = !{ptr @_ZN11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE5emptyEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!64 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE4sizeEv, i64 4843157}
!65 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @__cxa_allocate_exception, i64 1}
!66 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE16getMemoryManagerEv, i64 1}
!67 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!68 = !{ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, i64 4843156}
!69 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!70 = !{ptr @_ZNK11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!71 = !{ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_712XMLValidator16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!72 = !{ptr @_ZN11xercesc_2_715SchemaValidator16setErrorReporterEPNS_16XMLErrorReporterE, ptr @_ZN11xercesc_2_716XSDErrorReporter16setErrorReporterEPNS_16XMLErrorReporterE, i64 3}
!73 = !{ptr @_ZN11xercesc_2_715SchemaValidator19setExitOnFirstFatalEb, ptr @_ZN11xercesc_2_716XSDErrorReporter19setExitOnFirstFatalEb, i64 3}
!74 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE7isEmptyEv, i64 190248}
!75 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, ptr @_ZdlPv, i64 1}
!76 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!77 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!78 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!79 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!80 = !{!"function_entry_count", i64 0}
!81 = !{!82, !82, i64 0}
!82 = !{!"vtable pointer", !83, i64 0}
!83 = !{!"Simple C++ TBAA"}
!84 = !{!85, !102, i64 780}
!85 = !{!"_ZTSN11xercesc_2_712SGXMLScannerE", !86, i64 0, !90, i64 776, !102, i64 780, !91, i64 784, !92, i64 792, !98, i64 800, !92, i64 840, !92, i64 848, !91, i64 856, !92, i64 864, !92, i64 872, !92, i64 880, !92, i64 888, !92, i64 896, !91, i64 904, !92, i64 912, !92, i64 920, !92, i64 928, !92, i64 936, !92, i64 944, !92, i64 952, !103, i64 960}
!86 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !87, i64 0, !88, i64 8, !90, i64 16, !90, i64 17, !90, i64 18, !90, i64 19, !90, i64 20, !90, i64 21, !90, i64 22, !90, i64 23, !90, i64 24, !90, i64 25, !90, i64 26, !90, i64 27, !90, i64 28, !90, i64 29, !90, i64 30, !90, i64 31, !90, i64 32, !90, i64 33, !90, i64 34, !90, i64 35, !90, i64 36, !90, i64 37, !90, i64 38, !91, i64 40, !91, i64 44, !91, i64 48, !91, i64 52, !91, i64 56, !91, i64 60, !91, i64 64, !91, i64 68, !92, i64 72, !91, i64 80, !91, i64 84, !91, i64 88, !91, i64 92, !91, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168, !90, i64 176, !93, i64 184, !92, i64 264, !96, i64 272, !92, i64 280, !92, i64 288, !92, i64 296, !92, i64 304, !92, i64 312, !92, i64 320, !92, i64 328, !92, i64 336, !92, i64 344, !95, i64 352, !92, i64 360, !97, i64 368, !98, i64 392, !98, i64 432, !98, i64 472, !98, i64 512, !98, i64 552, !98, i64 592, !98, i64 632, !99, i64 672}
!87 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!88 = !{!"long", !89, i64 0}
!89 = !{!"omnipotent char", !83, i64 0}
!90 = !{!"bool", !89, i64 0}
!91 = !{!"int", !89, i64 0}
!92 = !{!"any pointer", !89, i64 0}
!93 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !94, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !91, i64 40, !92, i64 48, !90, i64 56, !95, i64 60, !90, i64 64, !92, i64 72}
!94 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!95 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !89, i64 0}
!96 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !89, i64 0}
!97 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !91, i64 0, !92, i64 8, !92, i64 16}
!98 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !91, i64 0, !91, i64 4, !91, i64 8, !90, i64 12, !92, i64 16, !92, i64 24, !92, i64 32}
!99 = !{!"_ZTSN11xercesc_2_79ElemStackE", !91, i64 0, !91, i64 4, !100, i64 8, !92, i64 48, !91, i64 56, !91, i64 60, !91, i64 64, !91, i64 68, !91, i64 72, !91, i64 76, !91, i64 80, !92, i64 88, !92, i64 96}
!100 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !101, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !91, i64 32, !91, i64 36}
!101 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!102 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !89, i64 0}
!103 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !90, i64 0, !90, i64 1, !91, i64 4, !91, i64 8, !91, i64 12, !92, i64 16, !92, i64 24, !92, i64 32}
!104 = !{!85, !92, i64 872}
!105 = !{!86, !92, i64 296}
!106 = !{!86, !92, i64 304}
!107 = !{!86, !92, i64 264}
!108 = !{!86, !90, i64 24}
!109 = !{!86, !92, i64 120}
!110 = !{!86, !92, i64 136}
!111 = !{!86, !92, i64 144}
!112 = !{!86, !92, i64 320}
!113 = !{!86, !92, i64 360}
!114 = !{!86, !91, i64 52}
!115 = !{!86, !91, i64 56}
!116 = !{!86, !91, i64 60}
!117 = !{!86, !91, i64 64}
!118 = !{!86, !91, i64 68}
!119 = !{!86, !92, i64 312}
!120 = !{!86, !90, i64 21}
!121 = !{!86, !90, i64 22}
!122 = !{!86, !91, i64 40}
!123 = !{!86, !90, i64 23}
!124 = !{!85, !90, i64 776}
!125 = !{!86, !90, i64 18}
!126 = !{!86, !90, i64 26}
!127 = !{!85, !92, i64 880}
!128 = !{!86, !90, i64 19}
!129 = !{i8 0, i8 2}
!130 = !{}
!131 = !{!86, !92, i64 280}
!132 = !{!86, !90, i64 17}
!133 = !{!86, !92, i64 344}
!134 = !{!86, !91, i64 44}
!135 = !{!86, !91, i64 48}
!136 = !{!85, !91, i64 904}
!137 = !{!86, !91, i64 88}
!138 = !{!85, !92, i64 912}
!139 = !{!85, !92, i64 920}
!140 = !{!90, !90, i64 0}
!141 = !{!85, !92, i64 848}
!142 = !{!143, !92, i64 0}
!143 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !92, i64 0, !91, i64 8, !91, i64 12, !91, i64 16, !92, i64 24, !92, i64 32, !91, i64 40, !91, i64 44, !90, i64 48, !90, i64 49, !90, i64 50, !91, i64 52, !92, i64 56, !91, i64 64, !92, i64 72, !91, i64 80, !91, i64 84}
!144 = !{!91, !91, i64 0}
!145 = !{!85, !92, i64 896}
!146 = !{!85, !91, i64 784}
!147 = !{!85, !92, i64 792}
!148 = !{!86, !92, i64 104}
!149 = !{!143, !91, i64 8}
!150 = !{!143, !92, i64 24}
!151 = !{!143, !91, i64 16}
!152 = !{!92, !92, i64 0}
!153 = !{!143, !91, i64 84}
!154 = !{!"function_entry_count", i64 2194501}
!155 = !{!99, !91, i64 60}
!156 = distinct !{!156, !157}
!157 = !{!"llvm.loop.mustprogress"}
!158 = !{!"function_entry_count", i64 680084}
!159 = !{!99, !92, i64 48}
!160 = !{!143, !91, i64 64}
!161 = !{!"function_entry_count", i64 679966}
!162 = !{!143, !92, i64 72}
!163 = !{!"function_entry_count", i64 680336}
!164 = !{!93, !92, i64 16}
!165 = !{!"function_entry_count", i64 4926602}
!166 = !{!"function_entry_count", i64 1668291}
!167 = !{!168, !92, i64 16}
!168 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !101, i64 0, !92, i64 8, !92, i64 16, !169, i64 24, !91, i64 28, !90, i64 32}
!169 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !89, i64 0}
!170 = !{!"function_entry_count", i64 695}
!171 = !{!98, !91, i64 0}
!172 = !{!"function_entry_count", i64 8985736}
!173 = !{!98, !92, i64 32}
!174 = !{!175, !175, i64 0}
!175 = !{!"short", !89, i64 0}
!176 = !{!"function_entry_count", i64 10769804}
!177 = !{!"function_entry_count", i64 833459}
!178 = !{!143, !92, i64 56}
!179 = !{!"function_entry_count", i64 833848}
!180 = !{!143, !90, i64 48}
!181 = !{!182, !92, i64 40}
!182 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !183, i64 8, !92, i64 16, !91, i64 24, !92, i64 32, !92, i64 40}
!183 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !89, i64 0}
!184 = !{!185, !91, i64 163904}
!185 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !91, i64 0, !89, i64 4, !91, i64 32772, !89, i64 32776, !89, i64 49160, !88, i64 114696, !88, i64 114704, !186, i64 114712, !92, i64 114720, !90, i64 114728, !90, i64 114729, !92, i64 114736, !91, i64 114744, !89, i64 114748, !91, i64 163900, !91, i64 163904, !187, i64 163908, !90, i64 163912, !188, i64 163916, !91, i64 163920, !90, i64 163924, !90, i64 163925, !92, i64 163928, !92, i64 163936, !90, i64 163944, !90, i64 163945, !92, i64 163952, !189, i64 163960, !92, i64 163968, !90, i64 163976, !95, i64 163980, !92, i64 163984}
!186 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !89, i64 0}
!187 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !89, i64 0}
!188 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !89, i64 0}
!189 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !89, i64 0}
!190 = !{!"function_entry_count", i64 2718768}
!191 = !{!"branch_weights", i32 1, i32 2718769}
!192 = !{!98, !91, i64 4}
!193 = !{!"branch_weights", i32 2718765, i32 5}
!194 = !{!"function_entry_count", i64 789922}
!195 = !{!"branch_weights", i32 1, i32 789923}
!196 = !{!"branch_weights", i32 285, i32 789639}
!197 = !{!"branch_weights", i32 789639, i32 41628304}
!198 = distinct !{!198, !157}
!199 = !{!"branch_weights", i32 789637, i32 3}
!200 = !{!"function_entry_count", i64 1025276}
!201 = !{!"function_entry_count", i64 2728090}
!202 = distinct !{!202, !157}
!203 = !{!"function_entry_count", i64 1169658}
!204 = !{!205, !92, i64 80}
!205 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !168, i64 0, !206, i64 36, !207, i64 40, !208, i64 44, !209, i64 48, !91, i64 52, !91, i64 56, !91, i64 60, !91, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !90, i64 144, !90, i64 145, !90, i64 146}
!206 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !89, i64 0}
!207 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !89, i64 0}
!208 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !89, i64 0}
!209 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !89, i64 0}
!210 = !{!"branch_weights", i32 336749, i32 832911}
!211 = !{!205, !206, i64 36}
!212 = !{!"function_entry_count", i64 4843157}
!213 = !{!214, !92, i64 168}
!214 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !215, i64 0, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !90, i64 72, !92, i64 80, !92, i64 88, !98, i64 96, !90, i64 136, !90, i64 137, !216, i64 144, !92, i64 168, !92, i64 176, !90, i64 184, !90, i64 185}
!215 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32}
!216 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !90, i64 8, !92, i64 16}
!217 = !{!"branch_weights", i32 1, i32 4843158}
!218 = !{!"function_entry_count", i64 3338153}
!219 = !{!220, !91, i64 32}
!220 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !101, i64 0, !90, i64 8, !90, i64 9, !90, i64 10, !90, i64 11, !90, i64 12, !91, i64 16, !91, i64 20, !91, i64 24, !91, i64 28, !91, i64 32, !91, i64 36, !91, i64 40, !91, i64 44, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !92, i64 104, !92, i64 112, !92, i64 120, !92, i64 128, !92, i64 136, !92, i64 144, !92, i64 152, !92, i64 160, !92, i64 168}
!221 = !{!"function_entry_count", i64 832911}
!222 = !{!"function_entry_count", i64 1176128}
!223 = !{!220, !92, i64 136}
!224 = !{!"branch_weights", i32 25, i32 1176105}
!225 = !{!220, !92, i64 96}
!226 = !{!"branch_weights", i32 1, i32 25}
!227 = !{!"function_entry_count", i64 832910}
!228 = !{!143, !91, i64 52}
!229 = !{!"function_entry_count", i64 833852}
!230 = !{!"function_entry_count", i64 833461}
!231 = !{!85, !92, i64 864}
!232 = distinct !{!232, !157}
!233 = distinct !{!233, !157}
!234 = !{!"function_entry_count", i64 1992715}
!235 = !{!"branch_weights", i32 1159753, i32 832964}
!236 = !{!237, !92, i64 0}
!237 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !92, i64 0, !92, i64 8, !92, i64 16, !91, i64 24, !91, i64 28}
!238 = !{!"function_entry_count", i64 173}
!239 = !{!168, !91, i64 28}
!240 = !{!"function_entry_count", i64 79}
!241 = !{!"branch_weights", i32 80, i32 1}
!242 = !{!243, !90, i64 8}
!243 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !92, i64 0, !90, i64 8, !92, i64 16, !91, i64 24, !92, i64 32, !92, i64 40, !91, i64 48, !91, i64 52}
!244 = !{!237, !92, i64 16}
!245 = !{!237, !91, i64 24}
!246 = !{!237, !91, i64 28}
!247 = !{!243, !92, i64 0}
!248 = !{!243, !92, i64 16}
!249 = !{!243, !91, i64 52}
!250 = !{!243, !91, i64 48}
!251 = !{!"branch_weights", i32 1, i32 80}
!252 = !{!243, !92, i64 40}
!253 = !{!"function_entry_count", i64 95}
!254 = !{!"function_entry_count", i64 1666355}
!255 = !{!168, !169, i64 24}
!256 = !{!"function_entry_count", i64 558789}
!257 = !{!"branch_weights", i32 158605, i32 400186}
!258 = !{!143, !91, i64 80}
!259 = !{!"branch_weights", i32 832896, i32 17}
!260 = !{!99, !92, i64 96}
!261 = !{!"function_entry_count", i64 496241}
!262 = !{!220, !91, i64 28}
!263 = !{!"function_entry_count", i64 496163}
!264 = !{!220, !92, i64 48}
!265 = !{!"function_entry_count", i64 379609}
!266 = !{!267, !92, i64 8}
!267 = !{!"_ZTSN11xercesc_2_79XMLBufBidE", !92, i64 0, !92, i64 8}
!268 = !{!"function_entry_count", i64 379607}
!269 = !{!267, !92, i64 0}
!270 = !{!"function_entry_count", i64 833744}
!271 = !{!"function_entry_count", i64 190056}
!272 = !{!"branch_weights", i32 190057, i32 1}
!273 = !{!274, !91, i64 24}
!274 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !92, i64 0, !90, i64 8, !92, i64 16, !91, i64 24, !91, i64 28, !92, i64 32}
!275 = !{!274, !91, i64 28}
!276 = !{!274, !92, i64 16}
!277 = !{!278, !92, i64 8}
!278 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !92, i64 0, !92, i64 8, !92, i64 16, !91, i64 24}
!279 = !{!274, !90, i64 8}
!280 = !{!278, !92, i64 0}
!281 = !{!274, !92, i64 0}
!282 = distinct !{!282, !157}
!283 = distinct !{!283, !157}
!284 = !{!"function_entry_count", i64 10519225}
!285 = !{!286, !91, i64 4}
!286 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !90, i64 0, !91, i64 4, !91, i64 8, !92, i64 16, !92, i64 24}
!287 = !{!286, !92, i64 24}
!288 = !{!"branch_weights", i32 4843158, i32 1}
!289 = !{!286, !92, i64 16}
!290 = !{!"function_entry_count", i64 1992794}
!291 = !{!243, !92, i64 32}
!292 = !{!243, !91, i64 24}
!293 = !{!"branch_weights", i32 1, i32 1159831}
!294 = !{!"branch_weights", i32 2435527, i32 1}
!295 = !{!"branch_weights", i32 1030785, i32 1404743}
!296 = !{!"branch_weights", i32 832964, i32 197822}
!297 = !{!"branch_weights", i32 1159831, i32 1275696}
!298 = distinct !{!298, !157}
!299 = !{!237, !92, i64 8}
!300 = !{!"function_entry_count", i64 2192223}
!301 = !{!302, !92, i64 32}
!302 = !{!"_ZTSN11xercesc_2_75QNameE", !101, i64 0, !91, i64 8, !91, i64 12, !91, i64 16, !91, i64 20, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48}
!303 = !{!"function_entry_count", i64 2453164456}
!304 = !{!"branch_weights", i32 1, i32 -1841802839}
!305 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!306 = !{!"branch_weights", i32 408669070, i32 -279908792}
!307 = distinct !{!307, !157}
!308 = !{!"function_entry_count", i64 5836268}
!309 = !{!"function_entry_count", i64 3}
!310 = !{!86, !92, i64 168}
!311 = !{!86, !90, i64 176}
!312 = !{!214, !92, i64 56}
!313 = !{!"function_entry_count", i64 190248}
!314 = !{!"branch_weights", i32 189545, i32 705}
!315 = !{!316, !91, i64 24}
!316 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !92, i64 0, !90, i64 8, !92, i64 16, !91, i64 24, !91, i64 28, !91, i64 32, !92, i64 40}
!317 = !{!"branch_weights", i32 1, i32 704}
!318 = !{!316, !91, i64 32}
!319 = !{!316, !92, i64 16}
!320 = !{!"branch_weights", i32 4167, i32 886}
!321 = !{!322, !92, i64 8}
!322 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !92, i64 0, !92, i64 8, !92, i64 16}
!323 = !{!316, !90, i64 8}
!324 = !{!"branch_weights", i32 886, i32 1}
!325 = !{!322, !92, i64 0}
!326 = !{!316, !92, i64 0}
!327 = !{!"branch_weights", i32 886, i32 0}
!328 = distinct !{!328, !157}
!329 = !{!"branch_weights", i32 4349, i32 704}
!330 = distinct !{!330, !157}
!331 = !{!"function_entry_count", i64 12}
!332 = !{!215, !92, i64 16}
!333 = !{!"function_entry_count", i64 5}
!334 = !{!216, !92, i64 16}
!335 = !{!"function_entry_count", i64 4}
!336 = !{!216, !90, i64 8}
!337 = !{!"function_entry_count", i64 574788}
!338 = !{!339, !91, i64 12}
!339 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !90, i64 8, !91, i64 12, !91, i64 16, !92, i64 24, !92, i64 32}
!340 = !{!"branch_weights", i32 574789, i32 1}
!341 = !{!339, !92, i64 32}
!342 = !{!339, !92, i64 24}
!343 = !{!"function_entry_count", i64 574795}
!344 = !{!345, !92, i64 24}
!345 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !101, i64 0, !88, i64 8, !88, i64 16, !92, i64 24, !92, i64 32, !92, i64 40}
!346 = !{!"function_entry_count", i64 1231717351}
!347 = !{!"branch_weights", i32 621, i32 -1469098093}
!348 = !{!"branch_weights", i32 408901017, i32 1}
!349 = !{!"branch_weights", i32 267, i32 4}
!350 = !{!"branch_weights", i32 1, i32 4}
!351 = !{!"branch_weights", i32 156, i32 112}
!352 = !{!"branch_weights", i32 1, i32 112}
!353 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!354 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!355 = distinct !{!355, !157}
!356 = !{!"function_entry_count", i64 191820}
!357 = !{!345, !92, i64 32}
!358 = !{!"function_entry_count", i64 211020}
!359 = !{!302, !92, i64 24}
!360 = !{!"function_entry_count", i64 190774}
!361 = !{!214, !90, i64 72}
!362 = !{!214, !92, i64 64}
!363 = !{!214, !92, i64 40}
