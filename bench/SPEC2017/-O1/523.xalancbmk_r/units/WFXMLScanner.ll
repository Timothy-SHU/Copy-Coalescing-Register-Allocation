; ModuleID = 'WFXMLScanner.cpp'
source_filename = "WFXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::WFXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i16, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.4" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_ = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712WFXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTSN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTIN11xercesc_2_78XMLValid5CodesE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZTVN11xercesc_2_712WFXMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712WFXMLScannerE, ptr @_ZN11xercesc_2_712WFXMLScannerD2Ev, ptr @_ZN11xercesc_2_712WFXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712WFXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712WFXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712WFXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712WFXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712WFXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712WFXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712WFXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712WFXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712WFXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712WFXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712WFXMLScanner15resolveSystemIdEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [17 x i8] c"WFXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni5fgAmpE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11chAmpersandE = internal constant i16 38, align 2
@_ZN11xercesc_2_76XMLUni4fgLTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L11chOpenAngleE = internal constant i16 60, align 2
@_ZN11xercesc_2_76XMLUni4fgGTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L12chCloseAngleE = internal constant i16 62, align 2
@_ZN11xercesc_2_76XMLUni6fgQuotE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13chDoubleQuoteE = internal constant i16 34, align 2
@_ZN11xercesc_2_76XMLUni6fgAposE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L13chSingleQuoteE = internal constant i16 39, align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEvE9doctypeIE = internal constant [3 x i16] [i16 91, i16 62, i16 0], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZZN11xercesc_2_712WFXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTSN11xercesc_2_712WFXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712WFXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712WFXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712WFXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712WFXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712WFXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712WFXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712WFXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712WFXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712WFXMLScannerD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !41 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %5 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  invoke void @_ZN11xercesc_2_712WFXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(824) %0)
          to label %17 unwind label %7

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %9 = extractvalue { ptr, i32 } %8, 1
  %10 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = extractvalue { ptr, i32 } %8, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #15
  invoke void @__cxa_rethrow() #17
          to label %32 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %29

17:                                               ; preds = %4
  ret void

18:                                               ; preds = %15, %7
  %19 = phi ptr [ null, %15 ], [ @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv, %7 ]
  %20 = phi ptr [ null, %15 ], [ %0, %7 ]
  %21 = phi { ptr, i32 } [ %16, %15 ], [ %8, %7 ]
  %22 = icmp eq ptr %20, null
  %23 = or i1 %11, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(824) %20)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #16
  unreachable

28:                                               ; preds = %18, %24
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #15
  resume { ptr, i32 } %21

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %12
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(824) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #15
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %8, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !65
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !67
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %14)
          to label %21 unwind label %18, !prof !68

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #16
  unreachable

21:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #15
  br label %22

22:                                               ; preds = %21, %6
  %23 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !69
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %24, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = load ptr, ptr %28, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %37 unwind label %34

34:                                               ; preds = %26
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #16
  unreachable

37:                                               ; preds = %26
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %24) #15
  br label %38

38:                                               ; preds = %37, %22
  %39 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !73
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %40)
          to label %46 unwind label %43

43:                                               ; preds = %42
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #16
  unreachable

46:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %40) #15
  br label %47

47:                                               ; preds = %46, %38
  %48 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !74
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(40) %49) #15
  br label %55

55:                                               ; preds = %51, %47
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner10commonInitEv(ptr nocapture noundef nonnull align 8 dereferenceable(824) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 11, ptr noundef %5)
          to label %6 unwind label %71

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 3
  store ptr %4, ptr %7, align 8, !tbaa !63
  %8 = load ptr, ptr %2, align 8, !tbaa !75
  %9 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %8)
  %10 = load ptr, ptr %2, align 8, !tbaa !75
  store i8 0, ptr %9, align 8, !tbaa !76
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %9, i64 0, i32 1
  store i32 0, ptr %11, align 4, !tbaa !77
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %9, i64 0, i32 2
  store i32 16, ptr %12, align 8, !tbaa !78
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %9, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !67
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %9, i64 0, i32 4
  store ptr %10, ptr %14, align 8, !tbaa !65
  %15 = load ptr, ptr %10, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 64)
          to label %19 unwind label %73

19:                                               ; preds = %6
  store ptr %18, ptr %13, align 8, !tbaa !67
  %20 = load i32, ptr %12, align 8, !tbaa !78
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %18, i8 0, i64 %22, i1 false)
  %23 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  store ptr %9, ptr %23, align 8, !tbaa !64
  %24 = load ptr, ptr %2, align 8, !tbaa !75
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %24)
  %26 = load ptr, ptr %2, align 8, !tbaa !75
  store i8 0, ptr %25, align 8, !tbaa !79
  %27 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %25, i64 0, i32 1
  store i32 0, ptr %27, align 4, !tbaa !80
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %25, i64 0, i32 2
  store i32 8, ptr %28, align 8, !tbaa !81
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %25, i64 0, i32 3
  store ptr null, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %25, i64 0, i32 4
  store ptr %26, ptr %30, align 8, !tbaa !70
  %31 = load ptr, ptr %26, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef 64)
          to label %35 unwind label %75

35:                                               ; preds = %19
  store ptr %34, ptr %29, align 8, !tbaa !72
  %36 = load i32, ptr %28, align 8, !tbaa !81
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %34, i8 0, i64 %38, i1 false)
  %39 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 5
  store ptr %25, ptr %39, align 8, !tbaa !69
  %40 = load ptr, ptr %2, align 8, !tbaa !75
  %41 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %40)
  %42 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %41, i64 0, i32 1
  store i8 1, ptr %43, align 8, !tbaa !82
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %41, i64 0, i32 2
  store i32 0, ptr %44, align 4, !tbaa !84
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %41, i64 0, i32 3
  store i32 32, ptr %45, align 8, !tbaa !85
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %41, i64 0, i32 4
  store ptr null, ptr %46, align 8, !tbaa !86
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %41, i64 0, i32 5
  store ptr %42, ptr %47, align 8, !tbaa !87
  %48 = load ptr, ptr %42, align 8, !tbaa !42
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef 256)
          to label %52 unwind label %77

52:                                               ; preds = %35
  store ptr %51, ptr %46, align 8, !tbaa !86
  br label %53

53:                                               ; preds = %52, %53
  %54 = phi i64 [ 0, %52 ], [ %57, %53 ]
  %55 = load ptr, ptr %46, align 8, !tbaa !86
  %56 = getelementptr inbounds ptr, ptr %55, i64 %54
  store ptr null, ptr %56, align 8, !tbaa !88
  %57 = add nuw nsw i64 %54, 1
  %58 = icmp eq i64 %57, 32
  br i1 %58, label %59, label %53, !llvm.loop !89

59:                                               ; preds = %53
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %41, align 8, !tbaa !42
  %60 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  store ptr %41, ptr %60, align 8, !tbaa !74
  %61 = load ptr, ptr %2, align 8, !tbaa !75
  %62 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %61)
  %63 = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %62, i32 noundef 109, i1 noundef zeroext false, ptr noundef %63)
          to label %64 unwind label %79

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  store ptr %62, ptr %65, align 8, !tbaa !73
  %66 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chAmpersandE)
  %67 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L11chOpenAngleE)
  %68 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L12chCloseAngleE)
  %69 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chDoubleQuoteE)
  %70 = load ptr, ptr %7, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, ptr noundef nonnull align 2 dereferenceable(2) @_ZN11xercesc_2_7L13chSingleQuoteE)
  ret void

71:                                               ; preds = %1
  %72 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  br label %81

73:                                               ; preds = %6
  %74 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %9, ptr noundef %8) #15
  br label %81

75:                                               ; preds = %19
  %76 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %25, ptr noundef %24) #15
  br label %81

77:                                               ; preds = %35
  %78 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %41, ptr noundef %40) #15
  br label %81

79:                                               ; preds = %59
  %80 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %62, ptr noundef %61) #15
  br label %81

81:                                               ; preds = %79, %77, %75, %73, %71
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ]
  resume { ptr, i32 } %82
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !45
  %10 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %10, i8 0, i64 40, i1 false)
  invoke void @_ZN11xercesc_2_712WFXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(824) %0)
          to label %21 unwind label %11

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %13 = extractvalue { ptr, i32 } %12, 1
  %14 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = extractvalue { ptr, i32 } %12, 0
  %18 = tail call ptr @__cxa_begin_catch(ptr %17) #15
  invoke void @__cxa_rethrow() #17
          to label %36 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %33

21:                                               ; preds = %8
  ret void

22:                                               ; preds = %19, %11
  %23 = phi ptr [ null, %19 ], [ @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv, %11 ]
  %24 = phi ptr [ null, %19 ], [ %0, %11 ]
  %25 = phi { ptr, i32 } [ %20, %19 ], [ %12, %11 ]
  %26 = icmp eq ptr %24, null
  %27 = or i1 %15, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(824) %24)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %22, %28
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #15
  resume { ptr, i32 } %25

33:                                               ; preds = %19
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #16
  unreachable

36:                                               ; preds = %16
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  tail call void @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(824) %0)
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712WFXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  tail call void @_ZN11xercesc_2_712WFXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(824) %0)
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_712WFXMLScanner17getEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !92
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !92
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %0, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %10 unwind label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %54 unwind label %18

18:                                               ; preds = %68, %64, %61, %59, %58, %55, %54, %14, %2
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #15
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18, %31
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #15
  tail call void @__cxa_end_catch() #15
  br label %26

26:                                               ; preds = %24, %65, %109, %68
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %30 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #16
  unreachable

30:                                               ; preds = %26
  ret void

31:                                               ; preds = %18
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #15
  %33 = icmp eq i32 %21, %32
  br i1 %33, label %24, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %36 = icmp eq i32 %21, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call ptr @__cxa_begin_catch(ptr %20) #15
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %39, align 1, !tbaa !94
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !95
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %86

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8, !tbaa !42
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %99 unwind label %77

49:                                               ; preds = %34
  %50 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %51 = icmp eq i32 %21, %50
  br i1 %51, label %52, label %119

52:                                               ; preds = %49
  %53 = tail call ptr @__cxa_begin_catch(ptr %20) #15
  invoke void @__cxa_rethrow() #17
          to label %138 unwind label %72

54:                                               ; preds = %14, %10
  invoke void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %55 unwind label %18

55:                                               ; preds = %54
  %56 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %57 unwind label %18

57:                                               ; preds = %55
  br i1 %56, label %58, label %59

58:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279)
          to label %65 unwind label %18

59:                                               ; preds = %57
  %60 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(824) %0)
          to label %61 unwind label %18

61:                                               ; preds = %59
  %62 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %63 unwind label %18

63:                                               ; preds = %61
  br i1 %62, label %65, label %64

64:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %65 unwind label %18

65:                                               ; preds = %64, %63, %58
  %66 = load ptr, ptr %11, align 8, !tbaa !93
  %67 = icmp eq ptr %66, null
  br i1 %67, label %26, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %66, align 8, !tbaa !42
  %70 = getelementptr inbounds ptr, ptr %69, i64 5
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %66)
          to label %26 unwind label %18

72:                                               ; preds = %52
  %73 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %74 unwind label %135

74:                                               ; preds = %72
  %75 = extractvalue { ptr, i32 } %73, 1
  %76 = extractvalue { ptr, i32 } %73, 0
  br label %119

77:                                               ; preds = %99, %97, %95, %44
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %79 = extractvalue { ptr, i32 } %78, 0
  %80 = extractvalue { ptr, i32 } %78, 1
  %81 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = tail call ptr @__cxa_begin_catch(ptr %79) #15
  invoke void @__cxa_rethrow() #17
          to label %85 unwind label %104

85:                                               ; preds = %83
  unreachable

86:                                               ; preds = %37
  %87 = add i32 %41, -5
  %88 = icmp ult i32 %87, 397
  %89 = and i32 %41, -2
  %90 = icmp ne i32 %89, 402
  %91 = or i1 %88, %90
  %92 = load ptr, ptr %38, align 8, !tbaa !42
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8
  br i1 %91, label %95, label %97

95:                                               ; preds = %86
  %96 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %99 unwind label %77

97:                                               ; preds = %86
  %98 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %99 unwind label %77

99:                                               ; preds = %97, %95, %44
  %100 = phi i32 [ 7, %44 ], [ 292, %95 ], [ 157, %97 ]
  %101 = phi ptr [ %48, %44 ], [ %96, %95 ], [ %98, %97 ]
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %100, ptr noundef %101, ptr noundef %103, ptr noundef null, ptr noundef null)
          to label %109 unwind label %77

104:                                              ; preds = %83
  %105 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %106 unwind label %135

106:                                              ; preds = %104
  %107 = extractvalue { ptr, i32 } %105, 1
  %108 = extractvalue { ptr, i32 } %105, 0
  br label %114

109:                                              ; preds = %99
  invoke void @__cxa_end_catch()
          to label %26 unwind label %110

110:                                              ; preds = %109
  %111 = landingpad { ptr, i32 }
          cleanup
  %112 = extractvalue { ptr, i32 } %111, 0
  %113 = extractvalue { ptr, i32 } %111, 1
  br label %119

114:                                              ; preds = %106, %77
  %115 = phi i64 [ 0, %106 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %77 ]
  %116 = phi ptr [ null, %106 ], [ %6, %77 ]
  %117 = phi i32 [ %107, %106 ], [ %80, %77 ]
  %118 = phi ptr [ %108, %106 ], [ %79, %77 ]
  invoke void @__cxa_end_catch()
          to label %119 unwind label %135

119:                                              ; preds = %114, %110, %74, %49
  %120 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %110 ], [ 0, %74 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %49 ], [ %115, %114 ]
  %121 = phi ptr [ %6, %110 ], [ null, %74 ], [ %6, %49 ], [ %116, %114 ]
  %122 = phi i32 [ %113, %110 ], [ %75, %74 ], [ %21, %49 ], [ %117, %114 ]
  %123 = phi ptr [ %112, %110 ], [ %76, %74 ], [ %20, %49 ], [ %118, %114 ]
  %124 = icmp eq ptr %121, null
  %125 = icmp eq i64 %120, 0
  %126 = or i1 %125, %124
  br i1 %126, label %132, label %127

127:                                              ; preds = %119
  %128 = inttoptr i64 %120 to ptr
  invoke void %128(ptr noundef nonnull align 8 dereferenceable(80) %121)
          to label %132 unwind label %129

129:                                              ; preds = %127
  %130 = landingpad { ptr, i32 }
          catch ptr null
  %131 = extractvalue { ptr, i32 } %130, 0
  tail call void @__clang_call_terminate(ptr %131) #16
  unreachable

132:                                              ; preds = %119, %127
  %133 = insertvalue { ptr, i32 } poison, ptr %123, 0
  %134 = insertvalue { ptr, i32 } %133, i32 %122, 1
  resume { ptr, i32 } %134

135:                                              ; preds = %114, %104, %72
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  tail call void @__clang_call_terminate(ptr %137) #16
  unreachable

138:                                              ; preds = %52
  unreachable
}

declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #3

declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(824) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #15
  store i8 1, ptr %2, align 1, !tbaa !99
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  br label %11

11:                                               ; preds = %1, %93
  %12 = load i8, ptr %2, align 1, !tbaa !99, !range !100, !noundef !101
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %93, label %14

14:                                               ; preds = %11, %68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %15 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %16 unwind label %23

16:                                               ; preds = %14
  switch i32 %15, label %58 [
    i32 1, label %17
    i32 4, label %26
    i32 0, label %40
    i32 2, label %48
    i32 3, label %49
    i32 5, label %50
    i32 6, label %51
  ]

17:                                               ; preds = %16
  %18 = load ptr, ptr %0, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %68 unwind label %23, !llvm.loop !102

21:                                               ; preds = %58
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %71

23:                                               ; preds = %14, %17, %43, %44, %48, %49, %50, %54, %56, %67
  %24 = phi i1 [ false, %14 ], [ true, %43 ], [ true, %44 ], [ true, %48 ], [ true, %49 ], [ true, %50 ], [ true, %56 ], [ true, %54 ], [ true, %67 ], [ false, %17 ]
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %71

26:                                               ; preds = %16
  %27 = load i32, ptr %6, align 4, !tbaa !103
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %7)
          to label %31 unwind label %37

31:                                               ; preds = %29
  %32 = load ptr, ptr %30, align 8, !tbaa !104
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %34)
          to label %36 unwind label %37

36:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %35, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %39 unwind label %37

37:                                               ; preds = %31, %36, %29
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %71

39:                                               ; preds = %36, %26
  store i8 0, ptr %2, align 1, !tbaa !99
  br label %68, !llvm.loop !102

40:                                               ; preds = %16
  %41 = load i32, ptr %5, align 4, !tbaa !103
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %44 unwind label %23

44:                                               ; preds = %43, %40
  %45 = load ptr, ptr %0, align 8, !tbaa !42
  %46 = getelementptr inbounds ptr, ptr %45, i64 11
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(824) %0)
          to label %61 unwind label %23

48:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %61 unwind label %23

49:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_712WFXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %61 unwind label %23

50:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %61 unwind label %23

51:                                               ; preds = %16
  %52 = load i8, ptr %4, align 2, !tbaa !109, !range !100, !noundef !101
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %61 unwind label %23

56:                                               ; preds = %51
  %57 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %61 unwind label %23

58:                                               ; preds = %16, %60
  %59 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
          to label %60 unwind label %21

60:                                               ; preds = %58
  switch i16 %59, label %58 [
    i16 60, label %61
    i16 0, label %61
  ]

61:                                               ; preds = %60, %60, %56, %54, %50, %49, %48, %44
  %62 = load i32, ptr %3, align 4, !tbaa !110
  %63 = load ptr, ptr %10, align 8, !tbaa !111
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %63, i64 0, i32 15
  %65 = load i32, ptr %64, align 8, !tbaa !112
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %68 unwind label %23

68:                                               ; preds = %17, %61, %67, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %69 = load i8, ptr %2, align 1, !tbaa !99, !range !100, !noundef !101
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %93, label %14

71:                                               ; preds = %21, %23, %37
  %72 = phi { ptr, i32 } [ %38, %37 ], [ %22, %21 ], [ %25, %23 ]
  %73 = phi i1 [ false, %37 ], [ true, %21 ], [ %24, %23 ]
  %74 = extractvalue { ptr, i32 } %72, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %75 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %97

77:                                               ; preds = %71
  %78 = extractvalue { ptr, i32 } %72, 0
  %79 = call ptr @__cxa_begin_catch(ptr %78) #15
  br i1 %73, label %80, label %83

80:                                               ; preds = %77
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %83 unwind label %81

81:                                               ; preds = %87, %80
  %82 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %97 unwind label %99

83:                                               ; preds = %80, %77
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %85 = load ptr, ptr %84, align 8, !tbaa !93
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %79, align 8, !tbaa !118
  %89 = load ptr, ptr %85, align 8, !tbaa !42
  %90 = getelementptr inbounds ptr, ptr %89, i64 7
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef nonnull align 8 dereferenceable(72) %88)
          to label %92 unwind label %81

92:                                               ; preds = %83, %87
  call void @__cxa_end_catch()
  br label %93

93:                                               ; preds = %68, %11, %92
  %94 = load i8, ptr %2, align 1, !tbaa !99, !range !100, !noundef !101
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %11, !llvm.loop !120

96:                                               ; preds = %93
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  ret i1 true

97:                                               ; preds = %71, %81
  %98 = phi { ptr, i32 } [ %82, %81 ], [ %72, %71 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #15
  resume { ptr, i32 } %98

99:                                               ; preds = %81
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #16
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 78, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #15
  br label %224

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %17

17:                                               ; preds = %38, %15
  %18 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %19 unwind label %20

19:                                               ; preds = %17
  switch i32 %18, label %71 [
    i32 1, label %45
    i32 4, label %54
  ]

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %28 = call ptr @__cxa_begin_catch(ptr %22) #15
  %29 = load ptr, ptr %27, align 8, !tbaa !93
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %28, align 8, !tbaa !118
  %33 = load ptr, ptr %29, align 8, !tbaa !42
  %34 = getelementptr inbounds ptr, ptr %33, i64 7
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(72) %32)
          to label %38 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  invoke void @__cxa_end_catch()
          to label %41 unwind label %229

38:                                               ; preds = %31, %26
  invoke void @__cxa_end_catch()
          to label %17 unwind label %39, !llvm.loop !121

39:                                               ; preds = %38
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %41

41:                                               ; preds = %36, %39
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %37, %36 ]
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = extractvalue { ptr, i32 } %42, 1
  br label %85

45:                                               ; preds = %19
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %47 = load ptr, ptr %0, align 8, !tbaa !42
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %46)
          to label %92 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %52 = extractvalue { ptr, i32 } %51, 0
  %53 = extractvalue { ptr, i32 } %51, 1
  br label %85

54:                                               ; preds = %19
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %56 = load i32, ptr %55, align 4, !tbaa !103
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %60 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %59)
          to label %61 unwind label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %60, align 8, !tbaa !104
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !106
  %65 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %64)
          to label %66 unwind label %67

66:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %65, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %92 unwind label %67

67:                                               ; preds = %61, %66, %58
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %69 = extractvalue { ptr, i32 } %68, 0
  %70 = extractvalue { ptr, i32 } %68, 1
  br label %85

71:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 1, ptr %4, align 1, !tbaa !99
  switch i32 %18, label %134 [
    i32 0, label %72
    i32 2, label %123
    i32 3, label %124
    i32 5, label %125
    i32 6, label %126
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !103
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %119 unwind label %79

77:                                               ; preds = %134
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %81

79:                                               ; preds = %76, %119, %123, %124, %125, %130, %132, %144, %148, %153
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %78, %77 ], [ %80, %79 ]
  %83 = extractvalue { ptr, i32 } %82, 0
  %84 = extractvalue { ptr, i32 } %82, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %85

85:                                               ; preds = %20, %81, %67, %50, %41
  %86 = phi i32 [ %53, %50 ], [ %70, %67 ], [ %84, %81 ], [ %44, %41 ], [ %23, %20 ]
  %87 = phi ptr [ %52, %50 ], [ %69, %67 ], [ %83, %81 ], [ %43, %41 ], [ %22, %20 ]
  %88 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #15
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call ptr @__cxa_begin_catch(ptr %87) #15
  call void @__cxa_end_catch() #15
  br label %92

92:                                               ; preds = %195, %54, %66, %45, %157, %90, %97
  %93 = phi i1 [ true, %45 ], [ false, %90 ], [ false, %97 ], [ true, %157 ], [ false, %66 ], [ false, %54 ], [ false, %195 ]
  br i1 %93, label %209, label %205

94:                                               ; preds = %85
  %95 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #15
  %96 = icmp eq i32 %86, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call ptr @__cxa_begin_catch(ptr %87) #15
  call void @__cxa_end_catch() #15
  br label %92

99:                                               ; preds = %94
  %100 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %101 = icmp eq i32 %86, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = call ptr @__cxa_begin_catch(ptr %87) #15
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %104, align 1, !tbaa !94
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !95
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %172

109:                                              ; preds = %102
  %110 = load ptr, ptr %103, align 8, !tbaa !42
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %185 unwind label %163

114:                                              ; preds = %99
  %115 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %116 = icmp eq i32 %86, %115
  br i1 %116, label %117, label %210

117:                                              ; preds = %114
  %118 = call ptr @__cxa_begin_catch(ptr %87) #15
  invoke void @__cxa_rethrow() #17
          to label %232 unwind label %158

119:                                              ; preds = %76, %72
  %120 = load ptr, ptr %0, align 8, !tbaa !42
  %121 = getelementptr inbounds ptr, ptr %120, i64 11
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(824) %0)
          to label %137 unwind label %79

123:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %137 unwind label %79

124:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_712WFXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

125:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %137 unwind label %79

126:                                              ; preds = %71
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %128 = load i8, ptr %127, align 2, !tbaa !109, !range !100, !noundef !101
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

132:                                              ; preds = %126
  %133 = invoke noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

134:                                              ; preds = %71, %136
  %135 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %136 unwind label %77

136:                                              ; preds = %134
  switch i16 %135, label %134 [
    i16 60, label %137
    i16 0, label %137
  ]

137:                                              ; preds = %136, %136, %132, %130, %125, %124, %123, %119
  %138 = load i32, ptr %3, align 4, !tbaa !110
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !111
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %140, i64 0, i32 15
  %142 = load i32, ptr %141, align 8, !tbaa !112
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %145 unwind label %79

145:                                              ; preds = %144, %137
  %146 = load i8, ptr %4, align 1, !tbaa !99, !range !100, !noundef !101
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %149 unwind label %79

149:                                              ; preds = %148
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %151 = load ptr, ptr %150, align 8, !tbaa !93
  %152 = icmp eq ptr %151, null
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load ptr, ptr %151, align 8, !tbaa !42
  %155 = getelementptr inbounds ptr, ptr %154, i64 5
  %156 = load ptr, ptr %155, align 8
  invoke void %156(ptr noundef nonnull align 8 dereferenceable(8) %151)
          to label %157 unwind label %79

157:                                              ; preds = %153, %149, %145
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %92

158:                                              ; preds = %117
  %159 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %160 unwind label %229

160:                                              ; preds = %158
  %161 = extractvalue { ptr, i32 } %159, 1
  %162 = extractvalue { ptr, i32 } %159, 0
  br label %210

163:                                              ; preds = %185, %183, %181, %109
  %164 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %165 = extractvalue { ptr, i32 } %164, 0
  %166 = extractvalue { ptr, i32 } %164, 1
  %167 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %200

169:                                              ; preds = %163
  %170 = call ptr @__cxa_begin_catch(ptr %165) #15
  invoke void @__cxa_rethrow() #17
          to label %171 unwind label %190

171:                                              ; preds = %169
  unreachable

172:                                              ; preds = %102
  %173 = add i32 %106, -5
  %174 = icmp ult i32 %173, 397
  %175 = and i32 %106, -2
  %176 = icmp ne i32 %175, 402
  %177 = or i1 %174, %176
  %178 = load ptr, ptr %103, align 8, !tbaa !42
  %179 = getelementptr inbounds ptr, ptr %178, i64 2
  %180 = load ptr, ptr %179, align 8
  br i1 %177, label %181, label %183

181:                                              ; preds = %172
  %182 = invoke noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %185 unwind label %163

183:                                              ; preds = %172
  %184 = invoke noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %185 unwind label %163

185:                                              ; preds = %183, %181, %109
  %186 = phi i32 [ 7, %109 ], [ 292, %181 ], [ 157, %183 ]
  %187 = phi ptr [ %113, %109 ], [ %182, %181 ], [ %184, %183 ]
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %186, ptr noundef %187, ptr noundef %189, ptr noundef null, ptr noundef null)
          to label %195 unwind label %163

190:                                              ; preds = %169
  %191 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %192 unwind label %229

192:                                              ; preds = %190
  %193 = extractvalue { ptr, i32 } %191, 1
  %194 = extractvalue { ptr, i32 } %191, 0
  br label %200

195:                                              ; preds = %185
  invoke void @__cxa_end_catch()
          to label %92 unwind label %196

196:                                              ; preds = %195
  %197 = landingpad { ptr, i32 }
          cleanup
  %198 = extractvalue { ptr, i32 } %197, 0
  %199 = extractvalue { ptr, i32 } %197, 1
  br label %210

200:                                              ; preds = %163, %192
  %201 = phi i64 [ 0, %192 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %163 ]
  %202 = phi ptr [ null, %192 ], [ %16, %163 ]
  %203 = phi i32 [ %193, %192 ], [ %166, %163 ]
  %204 = phi ptr [ %194, %192 ], [ %165, %163 ]
  invoke void @__cxa_end_catch()
          to label %210 unwind label %229

205:                                              ; preds = %92
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %209 unwind label %206

206:                                              ; preds = %205
  %207 = landingpad { ptr, i32 }
          catch ptr null
  %208 = extractvalue { ptr, i32 } %207, 0
  call void @__clang_call_terminate(ptr %208) #16
  unreachable

209:                                              ; preds = %92, %205
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i1 %93

210:                                              ; preds = %200, %196, %160, %114
  %211 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %196 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %160 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %114 ], [ %201, %200 ]
  %212 = phi ptr [ %16, %196 ], [ %16, %160 ], [ %16, %114 ], [ %202, %200 ]
  %213 = phi i32 [ %199, %196 ], [ %161, %160 ], [ %86, %114 ], [ %203, %200 ]
  %214 = phi ptr [ %198, %196 ], [ %162, %160 ], [ %87, %114 ], [ %204, %200 ]
  %215 = icmp eq ptr %212, null
  %216 = icmp eq i64 %211, 0
  %217 = or i1 %216, %215
  br i1 %217, label %223, label %218

218:                                              ; preds = %210
  %219 = inttoptr i64 %211 to ptr
  invoke void %219(ptr noundef nonnull align 8 dereferenceable(80) %212)
          to label %223 unwind label %220

220:                                              ; preds = %218
  %221 = landingpad { ptr, i32 }
          catch ptr null
  %222 = extractvalue { ptr, i32 } %221, 0
  call void @__clang_call_terminate(ptr %222) #16
  unreachable

223:                                              ; preds = %210, %218
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %224

224:                                              ; preds = %223, %11
  %225 = phi i32 [ %213, %223 ], [ %14, %11 ]
  %226 = phi ptr [ %214, %223 ], [ %13, %11 ]
  %227 = insertvalue { ptr, i32 } poison, ptr %226, 0
  %228 = insertvalue { ptr, i32 } %227, i32 %225, 1
  resume { ptr, i32 } %228

229:                                              ; preds = %200, %190, %158, %36
  %230 = landingpad { ptr, i32 }
          catch ptr null
  %231 = extractvalue { ptr, i32 } %230, 0
  call void @__clang_call_terminate(ptr %231) #16
  unreachable

232:                                              ; preds = %117
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store i8 1, ptr %1, align 1, !tbaa !99
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !103
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245)
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %9

9:                                                ; preds = %9, %7
  %10 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  switch i16 %10, label %9 [
    i16 62, label %11
    i16 0, label %11
  ]

11:                                               ; preds = %9, %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 694, i32 noundef 77, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #15
  resume { ptr, i32 } %17

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !109, !range !100, !noundef !101
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  %25 = add i32 %5, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %28, i64 0, i32 13
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %29, %22 ], [ %31, %30 ]
  %34 = load i32, ptr %33, align 4, !tbaa !110
  %35 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %36 = load i32, ptr %4, align 4, !tbaa !103
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %39 = load ptr, ptr %35, align 8, !tbaa !104
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !106
  %42 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %41)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !111
  %45 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %44, ptr noundef %42)
  br i1 %45, label %53, label %46

46:                                               ; preds = %32
  %47 = load ptr, ptr %35, align 8, !tbaa !104
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !106
  %50 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %49)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %51

51:                                               ; preds = %51, %46
  %52 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %38)
  switch i16 %52, label %51 [
    i16 62, label %85
    i16 0, label %85
  ]

53:                                               ; preds = %32
  %54 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !123
  %56 = load ptr, ptr %43, align 8, !tbaa !111
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %56, i64 0, i32 15
  %58 = load i32, ptr %57, align 8, !tbaa !112
  %59 = icmp eq i32 %55, %58
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278)
  br label %61

61:                                               ; preds = %60, %53
  %62 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %38, i1 noundef zeroext false)
  %63 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %38, i16 noundef zeroext 62)
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %35, align 8, !tbaa !104
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !106
  %68 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %67)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %68, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %69

69:                                               ; preds = %64, %61
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %71 = load ptr, ptr %70, align 8, !tbaa !93
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %35, align 8, !tbaa !104
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !106
  %77 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %76, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !124
  %79 = load ptr, ptr %71, align 8, !tbaa !42
  %80 = getelementptr inbounds ptr, ptr %79, i64 6
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull align 8 dereferenceable(33) %74, i32 noundef %34, i1 noundef zeroext %37, ptr noundef %78)
  br label %82

82:                                               ; preds = %73, %69
  %83 = xor i1 %37, true
  %84 = zext i1 %83 to i8
  store i8 %84, ptr %1, align 1, !tbaa !99
  br label %85

85:                                               ; preds = %51, %51, %82
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8 1, ptr %1, align 1, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %10, align 8, !tbaa !126
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  store i16 0, ptr %12, align 2, !tbaa !128
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %14, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull %4)
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load i32, ptr %10, align 8, !tbaa !126
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %11, align 8, !tbaa !127
  %22 = zext i32 %17 to i64
  %23 = getelementptr inbounds i16, ptr %21, i64 %22
  store i16 0, ptr %23, align 2, !tbaa !128
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %21, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %24

24:                                               ; preds = %20, %19
  br label %25

25:                                               ; preds = %24, %25
  %26 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  switch i16 %26, label %25 [
    i16 60, label %703
    i16 0, label %703
  ]

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %30 = load i32, ptr %29, align 4, !tbaa !103
  %31 = icmp eq i32 %30, 0
  %32 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false)
  %33 = load ptr, ptr %11, align 8, !tbaa !127
  %34 = load i32, ptr %10, align 8, !tbaa !126
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i16, ptr %33, i64 %35
  store i16 0, ptr %36, align 2, !tbaa !128
  %37 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %38 = load ptr, ptr %37, align 8, !tbaa !73
  %39 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef %33)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %81

41:                                               ; preds = %27
  %42 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %45

45:                                               ; preds = %44, %41
  %46 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !45
  %48 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !74
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %49, i64 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !84
  %52 = icmp ult i32 %47, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %49, i32 noundef %47)
  br label %71

55:                                               ; preds = %45
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %57 = load ptr, ptr %56, align 8, !tbaa !130
  %58 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %57)
  %59 = load ptr, ptr %56, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %58, ptr noundef %59)
          to label %60 unwind label %69

60:                                               ; preds = %55
  %61 = load ptr, ptr %48, align 8, !tbaa !74
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %61, i32 noundef 1)
  %62 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !86
  %64 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %61, i64 0, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !84
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds ptr, ptr %63, i64 %66
  store ptr %58, ptr %67, align 8, !tbaa !88
  %68 = add i32 %65, 1
  store i32 %68, ptr %64, align 4, !tbaa !84
  br label %71

69:                                               ; preds = %55
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %58, ptr noundef %57) #15
  br label %701

71:                                               ; preds = %60, %53
  %72 = phi ptr [ %54, %53 ], [ %58, %60 ]
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %74 = load i32, ptr %73, align 4, !tbaa !131
  call void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33) %72, ptr noundef %33, i32 noundef %74)
  %75 = load ptr, ptr %37, align 8, !tbaa !73
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %72, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !106
  %78 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %77)
  call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef %78, ptr noundef nonnull %72)
  %79 = load i32, ptr %46, align 8, !tbaa !45
  %80 = add i32 %79, 1
  store i32 %80, ptr %46, align 8, !tbaa !45
  br label %81

81:                                               ; preds = %71, %27
  %82 = phi ptr [ %39, %27 ], [ %72, %71 ]
  %83 = load ptr, ptr %13, align 8, !tbaa !111
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %83, i64 0, i32 15
  %85 = load i32, ptr %84, align 8, !tbaa !112
  %86 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef nonnull %82, i32 noundef %85)
  %87 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !69
  %89 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %88, i64 0, i32 1
  store i32 0, ptr %89, align 4, !tbaa !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 0, ptr %5, align 4, !tbaa !110
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %91 = load ptr, ptr %90, align 8, !tbaa !132
  %92 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %91, i64 0, i32 2
  %93 = load i32, ptr %92, align 4, !tbaa !133
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  br label %97

97:                                               ; preds = %533, %81
  %98 = phi i8 [ 0, %81 ], [ %531, %533 ]
  %99 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  %100 = load i32, ptr %5, align 4, !tbaa !110
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %97
  switch i16 %99, label %103 [
    i16 62, label %115
    i16 47, label %115
  ]

103:                                              ; preds = %102
  %104 = load ptr, ptr %13, align 8, !tbaa !111
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %104, i64 0, i32 28
  %106 = load ptr, ptr %105, align 8, !tbaa !135
  %107 = zext i16 %99 to i64
  %108 = getelementptr inbounds i8, ptr %106, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !136
  %110 = icmp slt i8 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false)
  %113 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  br label %115

114:                                              ; preds = %103
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %115

115:                                              ; preds = %102, %102, %114, %111, %97
  %116 = phi i16 [ %113, %111 ], [ %99, %114 ], [ %99, %97 ], [ %99, %102 ], [ %99, %102 ]
  %117 = load ptr, ptr %13, align 8, !tbaa !111
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %117, i64 0, i32 28
  %119 = load ptr, ptr %118, align 8, !tbaa !135
  %120 = zext i16 %116 to i64
  %121 = getelementptr inbounds i8, ptr %119, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !136
  %123 = and i8 %122, 16
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %512

125:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %94, align 8, !tbaa !126
  %126 = load ptr, ptr %95, align 8, !tbaa !127
  store i16 0, ptr %126, align 2, !tbaa !128
  %127 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %117, ptr noundef nonnull align 8 dereferenceable(40) %94, ptr noundef nonnull %6)
  br i1 %127, label %139, label %128

128:                                              ; preds = %125
  %129 = load i32, ptr %94, align 8, !tbaa !126
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  br label %136

132:                                              ; preds = %128
  %133 = load ptr, ptr %95, align 8, !tbaa !127
  %134 = zext i32 %129 to i64
  %135 = getelementptr inbounds i16, ptr %133, i64 %134
  store i16 0, ptr %135, align 2, !tbaa !128
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %133, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %136

136:                                              ; preds = %132, %131
  br label %137

137:                                              ; preds = %136, %137
  %138 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  switch i16 %138, label %137 [
    i16 62, label %510
    i16 0, label %510
  ]

139:                                              ; preds = %125
  %140 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false)
  br i1 %140, label %158, label %141

141:                                              ; preds = %139
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
  %142 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList)
  switch i16 %142, label %143 [
    i16 62, label %155
    i16 47, label %155
    i16 39, label %154
    i16 34, label %154
  ]

143:                                              ; preds = %141
  %144 = load ptr, ptr %13, align 8, !tbaa !111
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %144, i64 0, i32 28
  %146 = load ptr, ptr %145, align 8, !tbaa !135
  %147 = zext i16 %142 to i64
  %148 = getelementptr inbounds i8, ptr %146, i64 %147
  %149 = load i8, ptr %148, align 1, !tbaa !136
  %150 = icmp slt i8 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %143
  %152 = icmp eq i16 %142, 60
  br i1 %152, label %153, label %155

153:                                              ; preds = %151
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %155

154:                                              ; preds = %141, %141
  br label %155

155:                                              ; preds = %141, %141, %154, %143, %151, %153
  %156 = phi i1 [ false, %153 ], [ false, %141 ], [ false, %151 ], [ true, %143 ], [ true, %154 ], [ false, %141 ]
  %157 = phi i32 [ 1, %153 ], [ 2, %141 ], [ 1, %151 ], [ 0, %143 ], [ 0, %154 ], [ 2, %141 ]
  br i1 %156, label %158, label %510

158:                                              ; preds = %155, %139
  %159 = load ptr, ptr %95, align 8, !tbaa !127
  %160 = load i32, ptr %94, align 8, !tbaa !126
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds i16, ptr %159, i64 %161
  store i16 0, ptr %162, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  %163 = icmp eq ptr %159, null
  br i1 %163, label %187, label %164

164:                                              ; preds = %158
  %165 = load i16, ptr %159, align 2, !tbaa !128
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %187, label %167

167:                                              ; preds = %164
  %168 = zext i16 %165 to i32
  %169 = getelementptr inbounds i16, ptr %159, i64 1
  %170 = load i16, ptr %169, align 2, !tbaa !128
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %167, %172
  %173 = phi i16 [ %182, %172 ], [ %170, %167 ]
  %174 = phi ptr [ %181, %172 ], [ %169, %167 ]
  %175 = phi i32 [ %180, %172 ], [ %168, %167 ]
  %176 = mul i32 %175, 38
  %177 = lshr i32 %175, 24
  %178 = add i32 %176, %177
  %179 = zext i16 %173 to i32
  %180 = add i32 %178, %179
  %181 = getelementptr inbounds i16, ptr %174, i64 1
  %182 = load i16, ptr %181, align 2, !tbaa !128
  %183 = icmp eq i16 %182, 0
  br i1 %183, label %184, label %172, !llvm.loop !137

184:                                              ; preds = %172, %167
  %185 = phi i32 [ %168, %167 ], [ %180, %172 ]
  %186 = urem i32 %185, 109
  br label %187

187:                                              ; preds = %158, %164, %184
  %188 = phi i32 [ %186, %184 ], [ 0, %164 ], [ 0, %158 ]
  store i32 %188, ptr %7, align 4, !tbaa !110
  %189 = load i32, ptr %5, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %234, label %191

191:                                              ; preds = %187
  %192 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  br label %193

193:                                              ; preds = %191, %230
  %194 = phi i32 [ %231, %230 ], [ 0, %191 ]
  %195 = load ptr, ptr %192, align 8, !tbaa !64
  %196 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %195, i32 noundef %194)
  %197 = load i32, ptr %196, align 4, !tbaa !110
  %198 = load i32, ptr %7, align 4, !tbaa !110
  %199 = icmp eq i32 %197, %198
  br i1 %199, label %200, label %230

200:                                              ; preds = %193
  %201 = load ptr, ptr %90, align 8, !tbaa !132
  %202 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %201, i32 noundef %194)
  %203 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %202)
  %204 = icmp eq ptr %203, null
  %205 = or i1 %163, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %200
  %207 = load i16, ptr %203, align 2, !tbaa !128
  %208 = load i16, ptr %159, align 2, !tbaa !128
  %209 = icmp eq i16 %207, %208
  br i1 %209, label %218, label %230

210:                                              ; preds = %200
  br i1 %204, label %214, label %211

211:                                              ; preds = %210
  %212 = load i16, ptr %203, align 2, !tbaa !128
  %213 = icmp eq i16 %212, 0
  br i1 %213, label %214, label %230

214:                                              ; preds = %211, %210
  br i1 %163, label %229, label %215

215:                                              ; preds = %214
  %216 = load i16, ptr %159, align 2, !tbaa !128
  %217 = icmp eq i16 %216, 0
  br i1 %217, label %229, label %230

218:                                              ; preds = %206, %223
  %219 = phi i16 [ %226, %223 ], [ %207, %206 ]
  %220 = phi ptr [ %225, %223 ], [ %159, %206 ]
  %221 = phi ptr [ %224, %223 ], [ %203, %206 ]
  %222 = icmp eq i16 %219, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds i16, ptr %221, i64 1
  %225 = getelementptr inbounds i16, ptr %220, i64 1
  %226 = load i16, ptr %224, align 2, !tbaa !128
  %227 = load i16, ptr %225, align 2, !tbaa !128
  %228 = icmp eq i16 %226, %227
  br i1 %228, label %218, label %230, !llvm.loop !138

229:                                              ; preds = %215, %214, %218
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %159, ptr noundef %33, ptr noundef null, ptr noundef null)
  br label %234

230:                                              ; preds = %223, %206, %215, %211, %193
  %231 = add nuw i32 %194, 1
  %232 = load i32, ptr %5, align 4, !tbaa !110
  %233 = icmp ult i32 %231, %232
  br i1 %233, label %193, label %234, !llvm.loop !139

234:                                              ; preds = %230, %229, %187
  %235 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false)
  %236 = call noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanAttValueEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %159, ptr noundef nonnull align 8 dereferenceable(40) %96)
  br i1 %236, label %250, label %237

237:                                              ; preds = %234
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199)
  %238 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner14scanStartTagNSERbE7tmpList_0)
  switch i16 %238, label %239 [
    i16 62, label %250
    i16 47, label %250
  ]

239:                                              ; preds = %237
  %240 = load ptr, ptr %13, align 8, !tbaa !111
  %241 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %240, i64 0, i32 28
  %242 = load ptr, ptr %241, align 8, !tbaa !135
  %243 = zext i16 %238 to i64
  %244 = getelementptr inbounds i8, ptr %242, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !136
  %246 = icmp slt i8 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %239
  %248 = icmp eq i16 %238, 60
  br i1 %248, label %249, label %508

249:                                              ; preds = %247
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %508

250:                                              ; preds = %237, %237, %239, %234
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %252 = load ptr, ptr %251, align 8, !tbaa !127
  %253 = load i32, ptr %96, align 8, !tbaa !126
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i16, ptr %252, i64 %254
  store i16 0, ptr %255, align 2, !tbaa !128
  %256 = load i32, ptr %5, align 4, !tbaa !110
  %257 = icmp ult i32 %256, %93
  br i1 %257, label %287, label %258

258:                                              ; preds = %250
  %259 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %260 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %261 = load ptr, ptr %259, align 8, !tbaa !75
  %262 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %261)
  %263 = load i32, ptr %260, align 4, !tbaa !131
  %264 = load ptr, ptr %259, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %262, i32 noundef %263, ptr noundef %159, ptr noundef %252, i32 noundef 0, i1 noundef zeroext true, ptr noundef %264, ptr noundef null, i1 noundef zeroext false)
          to label %265 unwind label %285

265:                                              ; preds = %258
  %266 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %267 = load ptr, ptr %90, align 8, !tbaa !132
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %267, i32 noundef 1)
  %268 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %267, i64 0, i32 4
  %269 = load ptr, ptr %268, align 8, !tbaa !140
  %270 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %267, i64 0, i32 2
  %271 = load i32, ptr %270, align 4, !tbaa !133
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds ptr, ptr %269, i64 %272
  store ptr %262, ptr %273, align 8, !tbaa !88
  %274 = add i32 %271, 1
  store i32 %274, ptr %270, align 4, !tbaa !133
  %275 = load ptr, ptr %266, align 8, !tbaa !64
  call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %275, i32 noundef 1)
  %276 = load i32, ptr %7, align 4, !tbaa !110
  %277 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %275, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !67
  %279 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %275, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !77
  %281 = zext i32 %280 to i64
  %282 = getelementptr inbounds i32, ptr %278, i64 %281
  store i32 %276, ptr %282, align 4, !tbaa !110
  %283 = load i32, ptr %279, align 4, !tbaa !77
  %284 = add i32 %283, 1
  store i32 %284, ptr %279, align 4, !tbaa !77
  br label %300

285:                                              ; preds = %258
  %286 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %262, ptr noundef %261) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %539

287:                                              ; preds = %250
  %288 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %289 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %290 = load ptr, ptr %90, align 8, !tbaa !132
  %291 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %290, i32 noundef %256)
  %292 = load i32, ptr %288, align 4, !tbaa !131
  %293 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %291, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !141
  call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %294, ptr noundef %159, i32 noundef %292)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %291, ptr noundef %252)
  %295 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %291, i64 0, i32 2
  store i32 0, ptr %295, align 4, !tbaa !144
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %291, i64 0, i32 9
  store i8 0, ptr %296, align 8, !tbaa !145
  %297 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %291, i64 0, i32 8
  store ptr null, ptr %297, align 8, !tbaa !146
  store i8 1, ptr %291, align 8, !tbaa !147
  %298 = load ptr, ptr %289, align 8, !tbaa !64
  %299 = load i32, ptr %5, align 4, !tbaa !110
  call void @_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj(ptr noundef nonnull align 8 dereferenceable(32) %298, ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef %299)
  br label %300

300:                                              ; preds = %287, %265
  %301 = phi ptr [ %291, %287 ], [ %262, %265 ]
  %302 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %301, i64 0, i32 6
  %303 = load ptr, ptr %302, align 8, !tbaa !141
  %304 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %303, i64 0, i32 5
  %305 = load ptr, ptr %304, align 8, !tbaa !124
  %306 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %303, i64 0, i32 6
  %307 = load ptr, ptr %306, align 8, !tbaa !148
  %308 = load ptr, ptr %251, align 8, !tbaa !127
  %309 = load i32, ptr %96, align 8, !tbaa !126
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i16, ptr %308, i64 %310
  store i16 0, ptr %311, align 2, !tbaa !128
  %312 = icmp eq ptr %305, null
  br i1 %312, label %438, label %313

313:                                              ; preds = %300
  %314 = load i16, ptr %305, align 2, !tbaa !128
  %315 = icmp eq i16 %314, 0
  br i1 %315, label %438, label %316

316:                                              ; preds = %313
  %317 = load i16, ptr %305, align 2, !tbaa !128
  %318 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %319 = icmp eq i16 %317, %318
  br i1 %319, label %324, label %320

320:                                              ; preds = %329, %316
  %321 = load i16, ptr %305, align 2, !tbaa !128
  %322 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %323 = icmp eq i16 %321, %322
  br i1 %323, label %338, label %429

324:                                              ; preds = %316, %329
  %325 = phi i16 [ %332, %329 ], [ %317, %316 ]
  %326 = phi ptr [ %331, %329 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %316 ]
  %327 = phi ptr [ %330, %329 ], [ %305, %316 ]
  %328 = icmp eq i16 %325, 0
  br i1 %328, label %335, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds i16, ptr %327, i64 1
  %331 = getelementptr inbounds i16, ptr %326, i64 1
  %332 = load i16, ptr %330, align 2, !tbaa !128
  %333 = load i16, ptr %331, align 2, !tbaa !128
  %334 = icmp eq i16 %332, %333
  br i1 %334, label %324, label %320, !llvm.loop !138

335:                                              ; preds = %324
  %336 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %337 = load i32, ptr %336, align 4, !tbaa !149
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %301, i32 noundef %337)
  br label %505

338:                                              ; preds = %320, %343
  %339 = phi i16 [ %346, %343 ], [ %321, %320 ]
  %340 = phi ptr [ %345, %343 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %320 ]
  %341 = phi ptr [ %344, %343 ], [ %305, %320 ]
  %342 = icmp eq i16 %339, 0
  br i1 %342, label %349, label %343

343:                                              ; preds = %338
  %344 = getelementptr inbounds i16, ptr %341, i64 1
  %345 = getelementptr inbounds i16, ptr %340, i64 1
  %346 = load i16, ptr %344, align 2, !tbaa !128
  %347 = load i16, ptr %345, align 2, !tbaa !128
  %348 = icmp eq i16 %346, %347
  br i1 %348, label %338, label %429, !llvm.loop !138

349:                                              ; preds = %338
  %350 = icmp eq ptr %307, null
  br i1 %350, label %355, label %351

351:                                              ; preds = %349
  %352 = load i16, ptr %307, align 2, !tbaa !128
  %353 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %354 = icmp eq i16 %352, %353
  br i1 %354, label %358, label %369

355:                                              ; preds = %349
  %356 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %408, label %369

358:                                              ; preds = %351, %363
  %359 = phi i16 [ %366, %363 ], [ %352, %351 ]
  %360 = phi ptr [ %365, %363 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %351 ]
  %361 = phi ptr [ %364, %363 ], [ %307, %351 ]
  %362 = icmp eq i16 %359, 0
  br i1 %362, label %408, label %363

363:                                              ; preds = %358
  %364 = getelementptr inbounds i16, ptr %361, i64 1
  %365 = getelementptr inbounds i16, ptr %360, i64 1
  %366 = load i16, ptr %364, align 2, !tbaa !128
  %367 = load i16, ptr %365, align 2, !tbaa !128
  %368 = icmp eq i16 %366, %367
  br i1 %368, label %358, label %369, !llvm.loop !138

369:                                              ; preds = %363, %351, %355
  br i1 %350, label %374, label %370

370:                                              ; preds = %369
  %371 = load i16, ptr %307, align 2, !tbaa !128
  %372 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %373 = icmp eq i16 %371, %372
  br i1 %373, label %377, label %410

374:                                              ; preds = %369
  %375 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %376 = icmp eq i16 %375, 0
  br i1 %376, label %388, label %410

377:                                              ; preds = %370, %382
  %378 = phi i16 [ %385, %382 ], [ %371, %370 ]
  %379 = phi ptr [ %384, %382 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %370 ]
  %380 = phi ptr [ %383, %382 ], [ %307, %370 ]
  %381 = icmp eq i16 %378, 0
  br i1 %381, label %388, label %382

382:                                              ; preds = %377
  %383 = getelementptr inbounds i16, ptr %380, i64 1
  %384 = getelementptr inbounds i16, ptr %379, i64 1
  %385 = load i16, ptr %383, align 2, !tbaa !128
  %386 = load i16, ptr %384, align 2, !tbaa !128
  %387 = icmp eq i16 %385, %386
  br i1 %387, label %377, label %410, !llvm.loop !138

388:                                              ; preds = %377, %374
  %389 = icmp eq ptr %308, null
  br i1 %389, label %394, label %390

390:                                              ; preds = %388
  %391 = load i16, ptr %308, align 2, !tbaa !128
  %392 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !128
  %393 = icmp eq i16 %391, %392
  br i1 %393, label %397, label %408

394:                                              ; preds = %388
  %395 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !128
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %410, label %408

397:                                              ; preds = %390, %402
  %398 = phi i16 [ %405, %402 ], [ %391, %390 ]
  %399 = phi ptr [ %404, %402 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %390 ]
  %400 = phi ptr [ %403, %402 ], [ %308, %390 ]
  %401 = icmp eq i16 %398, 0
  br i1 %401, label %410, label %402

402:                                              ; preds = %397
  %403 = getelementptr inbounds i16, ptr %400, i64 1
  %404 = getelementptr inbounds i16, ptr %399, i64 1
  %405 = load i16, ptr %403, align 2, !tbaa !128
  %406 = load i16, ptr %404, align 2, !tbaa !128
  %407 = icmp eq i16 %405, %406
  br i1 %407, label %397, label %408, !llvm.loop !138

408:                                              ; preds = %358, %402, %394, %390, %355
  %409 = phi i32 [ 301, %355 ], [ 303, %390 ], [ 303, %394 ], [ 303, %402 ], [ 301, %358 ]
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %409)
  br label %410

410:                                              ; preds = %382, %397, %408, %370, %394, %374
  %411 = icmp eq ptr %308, null
  br i1 %411, label %419, label %412

412:                                              ; preds = %410
  %413 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %414 = load i16, ptr %308, align 2, !tbaa !128
  %415 = icmp eq i16 %414, 0
  %416 = load i32, ptr %413, align 8
  %417 = icmp eq i32 %416, 0
  %418 = select i1 %415, i1 %417, i1 false
  br i1 %418, label %419, label %420

419:                                              ; preds = %412, %410
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %420

420:                                              ; preds = %419, %412
  %421 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %422 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %423 = load ptr, ptr %421, align 8, !tbaa !150
  %424 = load ptr, ptr %423, align 8, !tbaa !42
  %425 = getelementptr inbounds ptr, ptr %424, i64 5
  %426 = load ptr, ptr %425, align 8
  %427 = call noundef i32 %426(ptr noundef nonnull align 8 dereferenceable(40) %423, ptr noundef %308)
  call void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef %307, i32 noundef %427)
  %428 = load i32, ptr %422, align 8, !tbaa !151
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %301, i32 noundef %428)
  br label %505

429:                                              ; preds = %343, %320
  %430 = load ptr, ptr %87, align 8, !tbaa !69
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %430, i32 noundef 1)
  %431 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %430, i64 0, i32 3
  %432 = load ptr, ptr %431, align 8, !tbaa !72
  %433 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %430, i64 0, i32 1
  %434 = load i32, ptr %433, align 4, !tbaa !80
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds ptr, ptr %432, i64 %435
  store ptr %301, ptr %436, align 8, !tbaa !88
  %437 = add i32 %434, 1
  store i32 %437, ptr %433, align 4, !tbaa !80
  br label %505

438:                                              ; preds = %313, %300
  %439 = icmp eq ptr %307, null
  %440 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  br i1 %439, label %444, label %441

441:                                              ; preds = %438
  %442 = load i16, ptr %307, align 2, !tbaa !128
  %443 = icmp eq i16 %440, %442
  br i1 %443, label %446, label %505

444:                                              ; preds = %438
  %445 = icmp eq i16 %440, 0
  br i1 %445, label %457, label %505

446:                                              ; preds = %441, %451
  %447 = phi i16 [ %454, %451 ], [ %440, %441 ]
  %448 = phi ptr [ %453, %451 ], [ %307, %441 ]
  %449 = phi ptr [ %452, %451 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %441 ]
  %450 = icmp eq i16 %447, 0
  br i1 %450, label %457, label %451

451:                                              ; preds = %446
  %452 = getelementptr inbounds i16, ptr %449, i64 1
  %453 = getelementptr inbounds i16, ptr %448, i64 1
  %454 = load i16, ptr %452, align 2, !tbaa !128
  %455 = load i16, ptr %453, align 2, !tbaa !128
  %456 = icmp eq i16 %454, %455
  br i1 %456, label %446, label %505, !llvm.loop !138

457:                                              ; preds = %446, %444
  %458 = icmp eq ptr %308, null
  br i1 %458, label %463, label %459

459:                                              ; preds = %457
  %460 = load i16, ptr %308, align 2, !tbaa !128
  %461 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !128
  %462 = icmp eq i16 %460, %461
  br i1 %462, label %466, label %477

463:                                              ; preds = %457
  %464 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !128
  %465 = icmp eq i16 %464, 0
  br i1 %465, label %496, label %477

466:                                              ; preds = %459, %471
  %467 = phi i16 [ %474, %471 ], [ %460, %459 ]
  %468 = phi ptr [ %473, %471 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %459 ]
  %469 = phi ptr [ %472, %471 ], [ %308, %459 ]
  %470 = icmp eq i16 %467, 0
  br i1 %470, label %496, label %471

471:                                              ; preds = %466
  %472 = getelementptr inbounds i16, ptr %469, i64 1
  %473 = getelementptr inbounds i16, ptr %468, i64 1
  %474 = load i16, ptr %472, align 2, !tbaa !128
  %475 = load i16, ptr %473, align 2, !tbaa !128
  %476 = icmp eq i16 %474, %475
  br i1 %476, label %466, label %477, !llvm.loop !138

477:                                              ; preds = %471, %459, %463
  br i1 %458, label %482, label %478

478:                                              ; preds = %477
  %479 = load i16, ptr %308, align 2, !tbaa !128
  %480 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !128
  %481 = icmp eq i16 %479, %480
  br i1 %481, label %485, label %498

482:                                              ; preds = %477
  %483 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !128
  %484 = icmp eq i16 %483, 0
  br i1 %484, label %496, label %498

485:                                              ; preds = %478, %490
  %486 = phi i16 [ %493, %490 ], [ %479, %478 ]
  %487 = phi ptr [ %492, %490 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %478 ]
  %488 = phi ptr [ %491, %490 ], [ %308, %478 ]
  %489 = icmp eq i16 %486, 0
  br i1 %489, label %496, label %490

490:                                              ; preds = %485
  %491 = getelementptr inbounds i16, ptr %488, i64 1
  %492 = getelementptr inbounds i16, ptr %487, i64 1
  %493 = load i16, ptr %491, align 2, !tbaa !128
  %494 = load i16, ptr %492, align 2, !tbaa !128
  %495 = icmp eq i16 %493, %494
  br i1 %495, label %485, label %498, !llvm.loop !138

496:                                              ; preds = %466, %485, %482, %463
  %497 = phi i32 [ 302, %463 ], [ 304, %482 ], [ 304, %485 ], [ 302, %466 ]
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %497)
  br label %498

498:                                              ; preds = %490, %496, %478, %482
  %499 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %500 = load ptr, ptr %499, align 8, !tbaa !150
  %501 = load ptr, ptr %500, align 8, !tbaa !42
  %502 = getelementptr inbounds ptr, ptr %501, i64 5
  %503 = load ptr, ptr %502, align 8
  %504 = call noundef i32 %503(ptr noundef nonnull align 8 dereferenceable(40) %500, ptr noundef %308)
  call void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %504)
  br label %505

505:                                              ; preds = %451, %441, %444, %498, %335, %429, %420
  %506 = load i32, ptr %5, align 4, !tbaa !110
  %507 = add i32 %506, 1
  store i32 %507, ptr %5, align 4, !tbaa !110
  br label %508

508:                                              ; preds = %249, %247, %505
  %509 = phi i32 [ 2, %505 ], [ 1, %247 ], [ 1, %249 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %510

510:                                              ; preds = %137, %137, %155, %508
  %511 = phi i32 [ %509, %508 ], [ %157, %155 ], [ 1, %137 ], [ 1, %137 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %530

512:                                              ; preds = %115
  switch i16 %116, label %530 [
    i16 0, label %513
    i16 47, label %520
    i16 62, label %524
    i16 60, label %526
    i16 39, label %527
    i16 34, label %527
  ]

513:                                              ; preds = %512
  %514 = call ptr @__cxa_allocate_exception(i64 48) #15
  %515 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %516 = load ptr, ptr %515, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %514, ptr noundef nonnull @.str, i32 noundef 1390, i32 noundef 47, ptr noundef %516)
          to label %517 unwind label %518

517:                                              ; preds = %513
  call void @__cxa_throw(ptr nonnull %514, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

518:                                              ; preds = %513
  %519 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %514) #15
  br label %539

520:                                              ; preds = %512
  %521 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  %522 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext 62)
  br i1 %522, label %530, label %523

523:                                              ; preds = %520
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %530

524:                                              ; preds = %512
  %525 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  br label %530

526:                                              ; preds = %512
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %530

527:                                              ; preds = %512, %512
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  %528 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %9)
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %9, i16 noundef zeroext %116)
  %529 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %9, i1 noundef zeroext false)
  br label %530, !llvm.loop !152

530:                                              ; preds = %512, %520, %523, %527, %526, %524, %510
  %531 = phi i8 [ %98, %524 ], [ %98, %526 ], [ %98, %527 ], [ %98, %510 ], [ 1, %523 ], [ 1, %520 ], [ %98, %512 ]
  %532 = phi i32 [ 3, %524 ], [ 3, %526 ], [ 2, %527 ], [ %511, %510 ], [ 3, %523 ], [ 3, %520 ], [ 0, %512 ]
  switch i32 %532, label %699 [
    i32 0, label %533
    i32 2, label %533
    i32 3, label %534
  ]

533:                                              ; preds = %530, %530
  br label %97, !llvm.loop !152

534:                                              ; preds = %530
  %535 = load ptr, ptr %87, align 8, !tbaa !69
  %536 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %535, i64 0, i32 1
  %537 = load i32, ptr %536, align 4, !tbaa !80
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %541, label %544

539:                                              ; preds = %518, %285
  %540 = phi { ptr, i32 } [ %519, %518 ], [ %286, %285 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %701

541:                                              ; preds = %544, %534
  %542 = load i32, ptr %5, align 4, !tbaa !110
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %657, label %559

544:                                              ; preds = %534, %544
  %545 = phi ptr [ %555, %544 ], [ %535, %534 ]
  %546 = phi i32 [ %554, %544 ], [ 0, %534 ]
  %547 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %545, i32 noundef %546)
  %548 = load ptr, ptr %547, align 8, !tbaa !88
  %549 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %548, i64 0, i32 6
  %550 = load ptr, ptr %549, align 8, !tbaa !141
  %551 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %550, i64 0, i32 5
  %552 = load ptr, ptr %551, align 8, !tbaa !124
  %553 = call noundef i32 @_ZN11xercesc_2_712WFXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %552, i32 noundef 0)
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %548, i32 noundef %553)
  %554 = add nuw i32 %546, 1
  %555 = load ptr, ptr %87, align 8, !tbaa !69
  %556 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %555, i64 0, i32 1
  %557 = load i32, ptr %556, align 4, !tbaa !80
  %558 = icmp ult i32 %554, %557
  br i1 %558, label %544, label %541, !llvm.loop !153

559:                                              ; preds = %541
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #15
  store i8 0, ptr %8, align 1, !tbaa !99
  call void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(1) %8)
  %560 = load i32, ptr %5, align 4, !tbaa !110
  %561 = icmp eq i32 %560, 1
  br i1 %561, label %566, label %562

562:                                              ; preds = %559
  %563 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %564 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %82, i64 0, i32 2
  %565 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %82, i64 0, i32 2
  br label %567

566:                                              ; preds = %652, %559
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #15
  br label %657

567:                                              ; preds = %562, %652
  %568 = phi i32 [ 0, %562 ], [ %653, %652 ]
  %569 = load ptr, ptr %90, align 8, !tbaa !132
  %570 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %569, i32 noundef %568)
  %571 = load i8, ptr %8, align 1, !tbaa !99, !range !100, !noundef !101
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %573, label %629

573:                                              ; preds = %567
  %574 = add nuw i32 %568, 1
  %575 = load i32, ptr %5, align 4, !tbaa !110
  %576 = icmp ult i32 %574, %575
  br i1 %576, label %577, label %652

577:                                              ; preds = %573
  %578 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %570, i64 0, i32 6
  br label %579

579:                                              ; preds = %577, %625
  %580 = phi i32 [ %574, %577 ], [ %626, %625 ]
  %581 = load ptr, ptr %90, align 8, !tbaa !132
  %582 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %581, i32 noundef %580)
  %583 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %582, i64 0, i32 6
  %584 = load ptr, ptr %583, align 8, !tbaa !141
  %585 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %584, i64 0, i32 4
  %586 = load i32, ptr %585, align 4, !tbaa !154
  %587 = load ptr, ptr %578, align 8, !tbaa !141
  %588 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %587, i64 0, i32 4
  %589 = load i32, ptr %588, align 4, !tbaa !154
  %590 = icmp eq i32 %586, %589
  br i1 %590, label %591, label %625

591:                                              ; preds = %579
  %592 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %584, i64 0, i32 6
  %593 = load ptr, ptr %592, align 8, !tbaa !148
  %594 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %587, i64 0, i32 6
  %595 = load ptr, ptr %594, align 8, !tbaa !148
  %596 = icmp eq ptr %593, null
  %597 = icmp eq ptr %595, null
  %598 = or i1 %596, %597
  br i1 %598, label %603, label %599

599:                                              ; preds = %591
  %600 = load i16, ptr %593, align 2, !tbaa !128
  %601 = load i16, ptr %595, align 2, !tbaa !128
  %602 = icmp eq i16 %600, %601
  br i1 %602, label %611, label %625

603:                                              ; preds = %591
  br i1 %596, label %607, label %604

604:                                              ; preds = %603
  %605 = load i16, ptr %593, align 2, !tbaa !128
  %606 = icmp eq i16 %605, 0
  br i1 %606, label %607, label %625

607:                                              ; preds = %604, %603
  br i1 %597, label %622, label %608

608:                                              ; preds = %607
  %609 = load i16, ptr %595, align 2, !tbaa !128
  %610 = icmp eq i16 %609, 0
  br i1 %610, label %622, label %625

611:                                              ; preds = %599, %616
  %612 = phi i16 [ %619, %616 ], [ %600, %599 ]
  %613 = phi ptr [ %618, %616 ], [ %595, %599 ]
  %614 = phi ptr [ %617, %616 ], [ %593, %599 ]
  %615 = icmp eq i16 %612, 0
  br i1 %615, label %622, label %616

616:                                              ; preds = %611
  %617 = getelementptr inbounds i16, ptr %614, i64 1
  %618 = getelementptr inbounds i16, ptr %613, i64 1
  %619 = load i16, ptr %617, align 2, !tbaa !128
  %620 = load i16, ptr %618, align 2, !tbaa !128
  %621 = icmp eq i16 %619, %620
  br i1 %621, label %611, label %625, !llvm.loop !138

622:                                              ; preds = %611, %608, %607
  %623 = load ptr, ptr %565, align 8, !tbaa !106
  %624 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %623)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %593, ptr noundef %624, ptr noundef null, ptr noundef null)
  br label %625

625:                                              ; preds = %616, %599, %608, %604, %579, %622
  %626 = add nuw i32 %580, 1
  %627 = load i32, ptr %5, align 4, !tbaa !110
  %628 = icmp ult i32 %626, %627
  br i1 %628, label %579, label %652, !llvm.loop !155

629:                                              ; preds = %567
  %630 = load ptr, ptr %563, align 8, !tbaa !156
  %631 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %570, i64 0, i32 6
  %632 = load ptr, ptr %631, align 8, !tbaa !141
  %633 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %632, i64 0, i32 6
  %634 = load ptr, ptr %633, align 8, !tbaa !148
  %635 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %632, i64 0, i32 4
  %636 = load i32, ptr %635, align 4, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %637 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %630, ptr noundef %634, i32 noundef %636, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %638 = icmp eq ptr %637, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br i1 %638, label %645, label %639

639:                                              ; preds = %629
  %640 = load ptr, ptr %631, align 8, !tbaa !141
  %641 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %640, i64 0, i32 6
  %642 = load ptr, ptr %641, align 8, !tbaa !148
  %643 = load ptr, ptr %564, align 8, !tbaa !106
  %644 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %643)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %642, ptr noundef %644, ptr noundef null, ptr noundef null)
  br label %645

645:                                              ; preds = %639, %629
  %646 = load ptr, ptr %563, align 8, !tbaa !156
  %647 = load ptr, ptr %631, align 8, !tbaa !141
  %648 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %647, i64 0, i32 6
  %649 = load ptr, ptr %648, align 8, !tbaa !148
  %650 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %647, i64 0, i32 4
  %651 = load i32, ptr %650, align 4, !tbaa !154
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %646, ptr noundef %649, i32 noundef %651, ptr noundef nonnull %570)
  br label %652

652:                                              ; preds = %625, %573, %645
  %653 = add nuw i32 %568, 1
  %654 = load i32, ptr %5, align 4, !tbaa !110
  %655 = add i32 %654, -1
  %656 = icmp ult i32 %653, %655
  br i1 %656, label %567, label %566, !llvm.loop !157

657:                                              ; preds = %566, %541
  %658 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %82, i64 0, i32 2
  %659 = load ptr, ptr %658, align 8, !tbaa !106
  %660 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %659, i64 0, i32 5
  %661 = load ptr, ptr %660, align 8, !tbaa !124
  %662 = call noundef i32 @_ZN11xercesc_2_712WFXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %661, i32 noundef 1)
  %663 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %664 = load ptr, ptr %663, align 8, !tbaa !122
  %665 = load i32, ptr %29, align 4, !tbaa !103
  %666 = add i32 %665, -1
  %667 = zext i32 %666 to i64
  %668 = getelementptr inbounds ptr, ptr %664, i64 %667
  %669 = load ptr, ptr %668, align 8, !tbaa !88
  %670 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %669, i64 0, i32 13
  store i32 %662, ptr %670, align 8, !tbaa !158
  %671 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %672 = load ptr, ptr %671, align 8, !tbaa !93
  %673 = icmp eq ptr %672, null
  br i1 %673, label %683, label %674

674:                                              ; preds = %657
  %675 = load ptr, ptr %658, align 8, !tbaa !106
  %676 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %675, i64 0, i32 5
  %677 = load ptr, ptr %676, align 8, !tbaa !124
  %678 = load ptr, ptr %90, align 8, !tbaa !132
  %679 = load i32, ptr %5, align 4, !tbaa !110
  %680 = load ptr, ptr %672, align 8, !tbaa !42
  %681 = getelementptr inbounds ptr, ptr %680, i64 11
  %682 = load ptr, ptr %681, align 8
  call void %682(ptr noundef nonnull align 8 dereferenceable(8) %672, ptr noundef nonnull align 8 dereferenceable(33) %82, i32 noundef %662, ptr noundef %677, ptr noundef nonnull align 8 dereferenceable(40) %678, i32 noundef %679, i1 noundef zeroext false, i1 noundef zeroext %31)
  br label %683

683:                                              ; preds = %674, %657
  %684 = and i8 %531, 1
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %699, label %686

686:                                              ; preds = %683
  %687 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %28)
  %688 = load ptr, ptr %671, align 8, !tbaa !93
  %689 = icmp eq ptr %688, null
  br i1 %689, label %697, label %690

690:                                              ; preds = %686
  %691 = load ptr, ptr %658, align 8, !tbaa !106
  %692 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %691, i64 0, i32 5
  %693 = load ptr, ptr %692, align 8, !tbaa !124
  %694 = load ptr, ptr %688, align 8, !tbaa !42
  %695 = getelementptr inbounds ptr, ptr %694, i64 6
  %696 = load ptr, ptr %695, align 8
  call void %696(ptr noundef nonnull align 8 dereferenceable(8) %688, ptr noundef nonnull align 8 dereferenceable(33) %82, i32 noundef %662, i1 noundef zeroext %31, ptr noundef %693)
  br label %697

697:                                              ; preds = %690, %686
  br i1 %31, label %698, label %699

698:                                              ; preds = %697
  store i8 0, ptr %1, align 1, !tbaa !99
  br label %699

699:                                              ; preds = %530, %683, %698, %697
  %700 = phi i1 [ true, %697 ], [ true, %698 ], [ true, %683 ], [ false, %530 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %703

701:                                              ; preds = %539, %69
  %702 = phi { ptr, i32 } [ %540, %539 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  resume { ptr, i32 } %702

703:                                              ; preds = %25, %25, %699
  %704 = phi i1 [ %700, %699 ], [ false, %25 ], [ false, %25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret i1 %704
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca i32, align 4
  store i8 1, ptr %1, align 1, !tbaa !99
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  store i16 0, ptr %7, align 2, !tbaa !128
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %9, ptr noundef nonnull align 8 dereferenceable(40) %5, i1 noundef zeroext false)
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %12

12:                                               ; preds = %12, %11
  %13 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  switch i16 %13, label %12 [
    i16 60, label %321
    i16 0, label %321
  ]

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %17 = load i32, ptr %16, align 4, !tbaa !103
  %18 = icmp eq i32 %17, 0
  %19 = load ptr, ptr %6, align 8, !tbaa !127
  %20 = load i32, ptr %5, align 8, !tbaa !126
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i16, ptr %19, i64 %21
  store i16 0, ptr %22, align 2, !tbaa !128
  %23 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !73
  %25 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef %19)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %63

27:                                               ; preds = %14
  %28 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !45
  %30 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !84
  %34 = icmp ult i32 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef %29)
  br label %53

37:                                               ; preds = %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %39 = load ptr, ptr %38, align 8, !tbaa !130
  %40 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %39)
  %41 = load ptr, ptr %38, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %40, ptr noundef %41)
          to label %42 unwind label %51

42:                                               ; preds = %37
  %43 = load ptr, ptr %30, align 8, !tbaa !74
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %43, i32 noundef 1)
  %44 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !86
  %46 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %43, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !84
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %45, i64 %48
  store ptr %40, ptr %49, align 8, !tbaa !88
  %50 = add i32 %47, 1
  store i32 %50, ptr %46, align 4, !tbaa !84
  br label %53

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %39) #15
  br label %319

53:                                               ; preds = %42, %35
  %54 = phi ptr [ %36, %35 ], [ %40, %42 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %56 = load i32, ptr %55, align 4, !tbaa !131
  tail call void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33) %54, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %19, i32 noundef %56)
  %57 = load ptr, ptr %23, align 8, !tbaa !73
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !106
  %60 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %59)
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef %60, ptr noundef nonnull %54)
  %61 = load i32, ptr %28, align 8, !tbaa !45
  %62 = add i32 %61, 1
  store i32 %62, ptr %28, align 8, !tbaa !45
  br label %63

63:                                               ; preds = %53, %14
  %64 = phi ptr [ %25, %14 ], [ %54, %53 ]
  %65 = load ptr, ptr %8, align 8, !tbaa !111
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %65, i64 0, i32 15
  %67 = load i32, ptr %66, align 8, !tbaa !112
  %68 = tail call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef nonnull %64, i32 noundef %67)
  %69 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %71 = load ptr, ptr %70, align 8, !tbaa !132
  %72 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !133
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %64, i64 0, i32 2
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  br label %77

77:                                               ; preds = %301, %63
  %78 = phi i32 [ 0, %63 ], [ %298, %301 ]
  %79 = phi i8 [ 0, %63 ], [ %300, %301 ]
  %80 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  %81 = icmp eq i32 %78, 0
  br i1 %81, label %95, label %82

82:                                               ; preds = %77
  switch i16 %80, label %83 [
    i16 62, label %95
    i16 47, label %95
  ]

83:                                               ; preds = %82
  %84 = load ptr, ptr %8, align 8, !tbaa !111
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %84, i64 0, i32 28
  %86 = load ptr, ptr %85, align 8, !tbaa !135
  %87 = zext i16 %80 to i64
  %88 = getelementptr inbounds i8, ptr %86, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !136
  %90 = icmp slt i8 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  %93 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  br label %95

94:                                               ; preds = %83
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %95

95:                                               ; preds = %82, %82, %94, %91, %77
  %96 = phi i16 [ %93, %91 ], [ %80, %94 ], [ %80, %77 ], [ %80, %82 ], [ %80, %82 ]
  %97 = load ptr, ptr %8, align 8, !tbaa !111
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %97, i64 0, i32 28
  %99 = load ptr, ptr %98, align 8, !tbaa !135
  %100 = zext i16 %96 to i64
  %101 = getelementptr inbounds i8, ptr %99, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !136
  %103 = and i8 %102, 16
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %277

105:                                              ; preds = %95
  store i32 0, ptr %75, align 8, !tbaa !126
  %106 = load ptr, ptr %76, align 8, !tbaa !127
  store i16 0, ptr %106, align 2, !tbaa !128
  %107 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %97, ptr noundef nonnull align 8 dereferenceable(40) %75, i1 noundef zeroext false)
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  br label %109

109:                                              ; preds = %109, %108
  %110 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  switch i16 %110, label %109 [
    i16 62, label %297
    i16 0, label %297
  ]

111:                                              ; preds = %105
  %112 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false)
  br i1 %112, label %130, label %113

113:                                              ; preds = %111
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
  %114 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList)
  switch i16 %114, label %115 [
    i16 62, label %127
    i16 47, label %127
    i16 39, label %126
    i16 34, label %126
  ]

115:                                              ; preds = %113
  %116 = load ptr, ptr %8, align 8, !tbaa !111
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %116, i64 0, i32 28
  %118 = load ptr, ptr %117, align 8, !tbaa !135
  %119 = zext i16 %114 to i64
  %120 = getelementptr inbounds i8, ptr %118, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !136
  %122 = icmp slt i8 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %115
  %124 = icmp eq i16 %114, 60
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %127

126:                                              ; preds = %113, %113
  br label %127

127:                                              ; preds = %113, %113, %126, %115, %123, %125
  %128 = phi i1 [ false, %125 ], [ false, %113 ], [ false, %123 ], [ true, %115 ], [ true, %126 ], [ false, %113 ]
  %129 = phi i32 [ 1, %125 ], [ 2, %113 ], [ 1, %123 ], [ 0, %115 ], [ 0, %126 ], [ 2, %113 ]
  br i1 %128, label %130, label %297

130:                                              ; preds = %127, %111
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %132 = load ptr, ptr %76, align 8, !tbaa !127
  %133 = load i32, ptr %75, align 8, !tbaa !126
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i16, ptr %132, i64 %134
  store i16 0, ptr %135, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %136 = icmp eq ptr %132, null
  br i1 %136, label %160, label %137

137:                                              ; preds = %130
  %138 = load i16, ptr %132, align 2, !tbaa !128
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %160, label %140

140:                                              ; preds = %137
  %141 = zext i16 %138 to i32
  %142 = getelementptr inbounds i16, ptr %132, i64 1
  %143 = load i16, ptr %142, align 2, !tbaa !128
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %157, label %145

145:                                              ; preds = %140, %145
  %146 = phi i16 [ %155, %145 ], [ %143, %140 ]
  %147 = phi ptr [ %154, %145 ], [ %142, %140 ]
  %148 = phi i32 [ %153, %145 ], [ %141, %140 ]
  %149 = mul i32 %148, 38
  %150 = lshr i32 %148, 24
  %151 = add i32 %149, %150
  %152 = zext i16 %146 to i32
  %153 = add i32 %151, %152
  %154 = getelementptr inbounds i16, ptr %147, i64 1
  %155 = load i16, ptr %154, align 2, !tbaa !128
  %156 = icmp eq i16 %155, 0
  br i1 %156, label %157, label %145, !llvm.loop !137

157:                                              ; preds = %145, %140
  %158 = phi i32 [ %141, %140 ], [ %153, %145 ]
  %159 = urem i32 %158, 109
  br label %160

160:                                              ; preds = %130, %137, %157
  %161 = phi i32 [ %159, %157 ], [ 0, %137 ], [ 0, %130 ]
  store i32 %161, ptr %3, align 4, !tbaa !110
  br i1 %81, label %207, label %162

162:                                              ; preds = %160
  %163 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  br label %164

164:                                              ; preds = %162, %204
  %165 = phi i32 [ %205, %204 ], [ 0, %162 ]
  %166 = load ptr, ptr %163, align 8, !tbaa !64
  %167 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %166, i32 noundef %165)
  %168 = load i32, ptr %167, align 4, !tbaa !110
  %169 = load i32, ptr %3, align 4, !tbaa !110
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %204

171:                                              ; preds = %164
  %172 = load ptr, ptr %70, align 8, !tbaa !132
  %173 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %172, i32 noundef %165)
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %173, i64 0, i32 6
  %175 = load ptr, ptr %174, align 8, !tbaa !141
  %176 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %175, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !148
  %178 = icmp eq ptr %177, null
  %179 = or i1 %136, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %171
  %181 = load i16, ptr %177, align 2, !tbaa !128
  %182 = load i16, ptr %132, align 2, !tbaa !128
  %183 = icmp eq i16 %181, %182
  br i1 %183, label %192, label %204

184:                                              ; preds = %171
  br i1 %178, label %188, label %185

185:                                              ; preds = %184
  %186 = load i16, ptr %177, align 2, !tbaa !128
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %185, %184
  br i1 %136, label %203, label %189

189:                                              ; preds = %188
  %190 = load i16, ptr %132, align 2, !tbaa !128
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %203, label %204

192:                                              ; preds = %180, %197
  %193 = phi i16 [ %200, %197 ], [ %181, %180 ]
  %194 = phi ptr [ %199, %197 ], [ %132, %180 ]
  %195 = phi ptr [ %198, %197 ], [ %177, %180 ]
  %196 = icmp eq i16 %193, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds i16, ptr %195, i64 1
  %199 = getelementptr inbounds i16, ptr %194, i64 1
  %200 = load i16, ptr %198, align 2, !tbaa !128
  %201 = load i16, ptr %199, align 2, !tbaa !128
  %202 = icmp eq i16 %200, %201
  br i1 %202, label %192, label %204, !llvm.loop !138

203:                                              ; preds = %189, %188, %192
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %132, ptr noundef %19, ptr noundef null, ptr noundef null)
  br label %207

204:                                              ; preds = %197, %180, %189, %185, %164
  %205 = add nuw i32 %165, 1
  %206 = icmp eq i32 %205, %78
  br i1 %206, label %207, label %164, !llvm.loop !159

207:                                              ; preds = %204, %203, %160
  %208 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  %209 = call noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanAttValueEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %132, ptr noundef nonnull align 8 dereferenceable(40) %131)
  br i1 %209, label %223, label %210

210:                                              ; preds = %207
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199)
  %211 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner12scanStartTagERbE7tmpList_0)
  switch i16 %211, label %212 [
    i16 62, label %223
    i16 47, label %223
  ]

212:                                              ; preds = %210
  %213 = load ptr, ptr %8, align 8, !tbaa !111
  %214 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %213, i64 0, i32 28
  %215 = load ptr, ptr %214, align 8, !tbaa !135
  %216 = zext i16 %211 to i64
  %217 = getelementptr inbounds i8, ptr %215, i64 %216
  %218 = load i8, ptr %217, align 1, !tbaa !136
  %219 = icmp slt i8 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %212
  %221 = icmp eq i16 %211, 60
  br i1 %221, label %222, label %274

222:                                              ; preds = %220
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %274

223:                                              ; preds = %210, %210, %212, %207
  %224 = icmp ult i32 %78, %73
  br i1 %224, label %257, label %225

225:                                              ; preds = %223
  %226 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %228 = load ptr, ptr %226, align 8, !tbaa !75
  %229 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %228)
  %230 = load ptr, ptr %227, align 8, !tbaa !127
  %231 = load i32, ptr %131, align 8, !tbaa !126
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds i16, ptr %230, i64 %232
  store i16 0, ptr %233, align 2, !tbaa !128
  %234 = load ptr, ptr %226, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %229, i32 noundef 0, ptr noundef %132, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %230, i32 noundef 0, i1 noundef zeroext true, ptr noundef %234, ptr noundef null, i1 noundef zeroext false)
          to label %235 unwind label %255

235:                                              ; preds = %225
  %236 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %237 = load ptr, ptr %70, align 8, !tbaa !132
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %237, i32 noundef 1)
  %238 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %237, i64 0, i32 4
  %239 = load ptr, ptr %238, align 8, !tbaa !140
  %240 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %237, i64 0, i32 2
  %241 = load i32, ptr %240, align 4, !tbaa !133
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds ptr, ptr %239, i64 %242
  store ptr %229, ptr %243, align 8, !tbaa !88
  %244 = add i32 %241, 1
  store i32 %244, ptr %240, align 4, !tbaa !133
  %245 = load ptr, ptr %236, align 8, !tbaa !64
  call void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %245, i32 noundef 1)
  %246 = load i32, ptr %3, align 4, !tbaa !110
  %247 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %245, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !67
  %249 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %245, i64 0, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !77
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i32, ptr %248, i64 %251
  store i32 %246, ptr %252, align 4, !tbaa !110
  %253 = load i32, ptr %249, align 4, !tbaa !77
  %254 = add i32 %253, 1
  store i32 %254, ptr %249, align 4, !tbaa !77
  br label %272

255:                                              ; preds = %225
  %256 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %229, ptr noundef %228) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %319

257:                                              ; preds = %223
  %258 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %259 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 4
  %260 = load ptr, ptr %70, align 8, !tbaa !132
  %261 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %260, i32 noundef %78)
  %262 = load ptr, ptr %258, align 8, !tbaa !127
  %263 = load i32, ptr %131, align 8, !tbaa !126
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i16, ptr %262, i64 %264
  store i16 0, ptr %265, align 2, !tbaa !128
  %266 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %261, i64 0, i32 6
  %267 = load ptr, ptr %266, align 8, !tbaa !141
  call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %267, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %132, i32 noundef 0)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %261, ptr noundef %262)
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %261, i64 0, i32 2
  store i32 0, ptr %268, align 4, !tbaa !144
  %269 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %261, i64 0, i32 9
  store i8 0, ptr %269, align 8, !tbaa !145
  %270 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %261, i64 0, i32 8
  store ptr null, ptr %270, align 8, !tbaa !146
  store i8 1, ptr %261, align 8, !tbaa !147
  %271 = load ptr, ptr %259, align 8, !tbaa !64
  call void @_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj(ptr noundef nonnull align 8 dereferenceable(32) %271, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %78)
  br label %272

272:                                              ; preds = %257, %235
  %273 = add i32 %78, 1
  br label %274

274:                                              ; preds = %222, %220, %272
  %275 = phi i32 [ %273, %272 ], [ %78, %220 ], [ %78, %222 ]
  %276 = phi i32 [ 2, %272 ], [ 1, %220 ], [ 1, %222 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %297

277:                                              ; preds = %95
  switch i16 %96, label %297 [
    i16 0, label %278
    i16 47, label %285
    i16 62, label %289
    i16 60, label %291
    i16 39, label %294
    i16 34, label %294
  ]

278:                                              ; preds = %277
  %279 = call ptr @__cxa_allocate_exception(i64 48) #15
  %280 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %281 = load ptr, ptr %280, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %279, ptr noundef nonnull @.str, i32 noundef 1009, i32 noundef 47, ptr noundef %281)
          to label %282 unwind label %283

282:                                              ; preds = %278
  call void @__cxa_throw(ptr nonnull %279, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

283:                                              ; preds = %278
  %284 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %279) #15
  br label %319

285:                                              ; preds = %277
  %286 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  %287 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 62)
  br i1 %287, label %297, label %288

288:                                              ; preds = %285
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %19, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %297

289:                                              ; preds = %277
  %290 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  br label %297

291:                                              ; preds = %277
  %292 = load ptr, ptr %74, align 8, !tbaa !106
  %293 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %292)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %293, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %297

294:                                              ; preds = %277, %277
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  %295 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext %96)
  %296 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  br label %297, !llvm.loop !160

297:                                              ; preds = %109, %109, %277, %285, %288, %127, %294, %291, %289, %274
  %298 = phi i32 [ %78, %289 ], [ %78, %291 ], [ %78, %294 ], [ %275, %274 ], [ %78, %127 ], [ %78, %288 ], [ %78, %285 ], [ %78, %277 ], [ %78, %109 ], [ %78, %109 ]
  %299 = phi i32 [ 3, %289 ], [ 3, %291 ], [ 2, %294 ], [ %276, %274 ], [ %129, %127 ], [ 3, %288 ], [ 3, %285 ], [ 0, %277 ], [ 1, %109 ], [ 1, %109 ]
  %300 = phi i8 [ %79, %289 ], [ %79, %291 ], [ %79, %294 ], [ %79, %274 ], [ %79, %127 ], [ 1, %288 ], [ 1, %285 ], [ %79, %277 ], [ %79, %109 ], [ %79, %109 ]
  switch i32 %299, label %321 [
    i32 0, label %301
    i32 2, label %301
    i32 3, label %302
  ]

301:                                              ; preds = %297, %297
  br label %77, !llvm.loop !160

302:                                              ; preds = %297
  %303 = and i8 %300, 1
  %304 = icmp ne i8 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %15)
  br i1 %18, label %307, label %308

307:                                              ; preds = %305
  store i8 0, ptr %1, align 1, !tbaa !99
  br label %308

308:                                              ; preds = %305, %307, %302
  %309 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %310 = load ptr, ptr %309, align 8, !tbaa !93
  %311 = icmp eq ptr %310, null
  br i1 %311, label %321, label %312

312:                                              ; preds = %308
  %313 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %314 = load i32, ptr %313, align 4, !tbaa !131
  %315 = load ptr, ptr %70, align 8, !tbaa !132
  %316 = load ptr, ptr %310, align 8, !tbaa !42
  %317 = getelementptr inbounds ptr, ptr %316, i64 11
  %318 = load ptr, ptr %317, align 8
  call void %318(ptr noundef nonnull align 8 dereferenceable(8) %310, ptr noundef nonnull align 8 dereferenceable(33) %64, i32 noundef %314, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %315, i32 noundef %298, i1 noundef zeroext %304, i1 noundef zeroext %18)
  br label %321

319:                                              ; preds = %255, %283, %51
  %320 = phi { ptr, i32 } [ %52, %51 ], [ %284, %283 ], [ %256, %255 ]
  resume { ptr, i32 } %320

321:                                              ; preds = %12, %12, %297, %312, %308
  %322 = phi i1 [ true, %312 ], [ true, %308 ], [ false, %297 ], [ false, %12 ], [ false, %12 ]
  ret i1 %322
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  store ptr %2, ptr %0, align 8, !tbaa !162
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !164
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !165
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !166
  tail call void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  %7 = load ptr, ptr %0, align 8, !tbaa !162
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10, !prof !167

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !166
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #15
  resume { ptr, i32 } %11
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !168
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !170
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !172
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !173
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !174
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !175
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %12 = load ptr, ptr %0, align 8, !tbaa !168
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !175
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE3putEPvRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #2 comdat align 2 !prof !176 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !165
  %8 = load ptr, ptr %0, align 8, !tbaa !162
  %9 = load ptr, ptr %5, align 8, !tbaa !42
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !177
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !178

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !166
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = load ptr, ptr %20, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !181
  br i1 %26, label %31, label %27, !prof !182

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !183, !llvm.loop !184

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34, !prof !185

34:                                               ; preds = %31
  %35 = load i16, ptr %2, align 2, !tbaa !128
  store i16 %35, ptr %32, align 8, !tbaa !186
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !179
  br label %49

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !162
  %39 = load ptr, ptr %38, align 8, !tbaa !42
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24), !prof !187
  %43 = load ptr, ptr %12, align 8, !tbaa !164
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = load i16, ptr %2, align 2, !tbaa !128
  store i16 %46, ptr %42, align 8, !tbaa !186
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !188
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 2
  store ptr %1, ptr %48, align 8, !tbaa !179
  store ptr %42, ptr %44, align 8, !tbaa !88
  br label %49

49:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !165
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5, !prof !189

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi i64 [ 0, %5 ], [ %25, %22 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !164
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  br label %12

12:                                               ; preds = %15, %7
  %13 = phi ptr [ %11, %7 ], [ %17, %15 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !190

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  %18 = load ptr, ptr %0, align 8, !tbaa !162
  %19 = load ptr, ptr %18, align 8, !tbaa !42
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %13)
          to label %12 unwind label %45, !prof !191, !llvm.loop !192

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8, !tbaa !164
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr null, ptr %24, align 8, !tbaa !88
  %25 = add nuw nsw i64 %8, 1
  %26 = load i32, ptr %2, align 8, !tbaa !165
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %7, label %29, !prof !193, !llvm.loop !194

29:                                               ; preds = %22, %1
  %30 = load ptr, ptr %0, align 8, !tbaa !162
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !164
  %33 = load ptr, ptr %30, align 8, !tbaa !42
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %36 unwind label %47, !prof !195

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !166
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40, !prof !196

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !42
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %38) #15, !prof !197
  br label %44

44:                                               ; preds = %40, %36
  ret void

45:                                               ; preds = %15
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

47:                                               ; preds = %29
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %46, %45 ], [ %48, %47 ]
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712WFXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !41 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !128
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %27

10:                                               ; preds = %3
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %27

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %1, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !128
  %22 = load i16, ptr %20, align 2, !tbaa !128
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %27, !llvm.loop !138

24:                                               ; preds = %13, %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %26 = load i32, ptr %25, align 8, !tbaa !151
  br label %56

27:                                               ; preds = %18, %6, %10
  br i1 %5, label %32, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %1, align 2, !tbaa !128
  %30 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %35, label %49

32:                                               ; preds = %27
  %33 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %46, label %49

35:                                               ; preds = %28, %40
  %36 = phi i16 [ %43, %40 ], [ %29, %28 ]
  %37 = phi ptr [ %42, %40 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %28 ]
  %38 = phi ptr [ %41, %40 ], [ %1, %28 ]
  %39 = icmp eq i16 %36, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds i16, ptr %38, i64 1
  %42 = getelementptr inbounds i16, ptr %37, i64 1
  %43 = load i16, ptr %41, align 2, !tbaa !128
  %44 = load i16, ptr %42, align 2, !tbaa !128
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %49, !llvm.loop !138

46:                                               ; preds = %35, %32
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %48 = load i32, ptr %47, align 4, !tbaa !149
  br label %56

49:                                               ; preds = %40, %28, %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %51 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %50, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %52 = load i8, ptr %4, align 1, !tbaa !99, !range !100, !noundef !101
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %56

56:                                               ; preds = %55, %46, %24
  %57 = phi i32 [ %26, %24 ], [ %48, %46 ], [ %51, %55 ]
  ret i32 %57
}

declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !93
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 9
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !198
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !42
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
  br label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %20 = load ptr, ptr %19, align 8, !tbaa !199
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %20)
  br label %26

26:                                               ; preds = %22, %18
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %29 = load i32, ptr %28, align 4, !tbaa !131
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %31 = load i32, ptr %30, align 8, !tbaa !200
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %33 = load i32, ptr %32, align 4, !tbaa !149
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %35 = load i32, ptr %34, align 8, !tbaa !151
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %36, align 1, !tbaa !94
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %37, align 2, !tbaa !201
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %38, align 8, !tbaa !202
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %39, align 1, !tbaa !203
  %40 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 1
  store i32 0, ptr %40, align 8, !tbaa !45
  %41 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %42)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %45 = load i8, ptr %44, align 1, !tbaa !204, !range !100, !noundef !101
  %46 = icmp ne i8 %45, 0
  %47 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %46)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %26
  %50 = load ptr, ptr %1, align 8, !tbaa !42
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %54 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %55 = load ptr, ptr %1, align 8, !tbaa !42
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  br i1 %53, label %58, label %66

58:                                               ; preds = %49
  %59 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %60 unwind label %64

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 521, i32 noundef 76, ptr noundef %59, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %62)
          to label %63 unwind label %64

63:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

64:                                               ; preds = %60, %58
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %87

66:                                               ; preds = %49
  %67 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %68 unwind label %72

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 2, ptr noundef %67, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %70)
          to label %71 unwind label %72

71:                                               ; preds = %68
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

72:                                               ; preds = %68, %66
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %87

74:                                               ; preds = %26
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef nonnull %47, ptr noundef null)
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %77 = load ptr, ptr %76, align 8, !tbaa !205
  %78 = icmp eq ptr %77, null
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load ptr, ptr %77, align 8, !tbaa !42
  %81 = getelementptr inbounds ptr, ptr %80, i64 3
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef i32 %82(ptr noundef nonnull align 8 dereferenceable(12) %77)
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %83, ptr %84, align 4, !tbaa !206
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %85, align 8, !tbaa !207
  br label %86

86:                                               ; preds = %79, %74
  ret void

87:                                               ; preds = %72, %64
  %88 = phi { ptr, i32 } [ %65, %64 ], [ %73, %72 ]
  tail call void @__cxa_free_exception(ptr %54) #15
  resume { ptr, i32 } %88
}

declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !174
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !172
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !174
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !171
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !208
  %23 = load i8, ptr %11, align 8, !tbaa !170, !range !100, !noundef !101
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !210
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !42
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(33) %26) #15
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !168
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !211

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !171
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !88
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !172
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !212

45:                                               ; preds = %1, %12
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner12sendCharDataERNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(824) %0, ptr nocapture noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 !prof !41 {
  %3 = load i32, ptr %1, align 8, !tbaa !126
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !127
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !128
  %14 = load ptr, ptr %7, align 8, !tbaa !42
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %17

17:                                               ; preds = %9, %5
  store i32 0, ptr %1, align 8, !tbaa !126
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !127
  store i16 0, ptr %19, align 2, !tbaa !128
  br label %20

20:                                               ; preds = %2, %17
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #2 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner15scanDocTypeDeclEvE9doctypeIE)
  %4 = icmp eq i16 %3, 91
  br i1 %4, label %5, label %7

5:                                                ; preds = %1, %5
  %6 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %2)
  switch i16 %6, label %5 [
    i16 93, label %7
    i16 0, label %7
  ]

7:                                                ; preds = %5, %5, %1
  br label %8

8:                                                ; preds = %7, %8
  %9 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %2)
  switch i16 %9, label %8 [
    i16 62, label %10
    i16 0, label %10
  ]

10:                                               ; preds = %8, %8
  ret void
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !175
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !172
  %7 = load ptr, ptr %0, align 8, !tbaa !168
  %8 = load ptr, ptr %4, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !175
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !213
  %22 = load ptr, ptr %19, align 8, !tbaa !42
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !214

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !210
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  ret ptr %18
}

declare void @_ZN11xercesc_2_714DTDElementDeclC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !172
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !174
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !175
  %15 = load i32, ptr %4, align 8, !tbaa !172
  %16 = load ptr, ptr %0, align 8, !tbaa !168
  %17 = load ptr, ptr %14, align 8, !tbaa !42
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !171
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !175
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !213
  %31 = load ptr, ptr %28, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !214

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !170, !range !100, !noundef !101
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !210
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !42
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(33) %47) #15
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !210
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !213
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !168
  %57 = load ptr, ptr %56, align 8, !tbaa !42
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24)
  %61 = load ptr, ptr %20, align 8, !tbaa !171
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  store ptr %2, ptr %60, align 8, !tbaa !210
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !208
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !213
  store ptr %60, ptr %62, align 8, !tbaa !88
  %66 = load i32, ptr %8, align 8, !tbaa !174
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !174
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_713ValueVectorOfIjE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !216

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !67
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !133
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !218

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712WFXMLScanner12scanAttValueEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca [9 x i16], align 16
  store i32 0, ptr %2, align 8, !tbaa !126
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !127
  store i16 0, ptr %10, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %12 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %11, ptr noundef nonnull align 2 dereferenceable(2) %4)
  br i1 %12, label %13, label %135

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !111
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %15, i64 0, i32 15
  %17 = load i32, ptr %16, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #15
  store i16 0, ptr %6, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 1
  br label %19

19:                                               ; preds = %90, %13
  %20 = phi i8 [ 0, %13 ], [ %91, %90 ]
  %21 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %11)
          to label %22 unwind label %29

22:                                               ; preds = %19
  store i16 %21, ptr %5, align 2, !tbaa !128
  %23 = icmp eq i16 %21, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %26 = call ptr @__cxa_allocate_exception(i64 48) #15
  %27 = load ptr, ptr %25, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 1634, i32 noundef 47, ptr noundef %27)
          to label %28 unwind label %33

28:                                               ; preds = %24
  invoke void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %137 unwind label %31

29:                                               ; preds = %62, %19, %48, %60, %99, %114, %126
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %82

31:                                               ; preds = %28, %45
  %32 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %82

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %26) #15
  br label %82

35:                                               ; preds = %22
  %36 = load i16, ptr %4, align 2, !tbaa !128
  %37 = icmp eq i16 %21, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load ptr, ptr %14, align 8, !tbaa !111
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %39, i64 0, i32 15
  %41 = load i32, ptr %40, align 8, !tbaa !112
  %42 = icmp eq i32 %17, %41
  br i1 %42, label %133, label %43

43:                                               ; preds = %38
  %44 = icmp ugt i32 %17, %41
  br i1 %44, label %45, label %46

45:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %133 unwind label %31

46:                                               ; preds = %43, %35
  store i8 0, ptr %7, align 1, !tbaa !99
  %47 = icmp eq i16 %21, 38
  br i1 %47, label %48, label %55

48:                                               ; preds = %46
  %49 = load ptr, ptr %0, align 8, !tbaa !42
  %50 = getelementptr inbounds ptr, ptr %49, i64 13
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef i32 %51(ptr noundef nonnull align 8 dereferenceable(824) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %5, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %53 unwind label %29

53:                                               ; preds = %48
  %54 = icmp eq i32 %52, 1
  br i1 %54, label %92, label %90

55:                                               ; preds = %46
  %56 = and i16 %21, -1024
  %57 = and i8 %20, 1
  %58 = icmp eq i8 %57, 0
  switch i16 %56, label %64 [
    i16 -10240, label %59
    i16 -9216, label %61
  ]

59:                                               ; preds = %55
  br i1 %58, label %92, label %60

60:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %92 unwind label %29

61:                                               ; preds = %55
  br i1 %58, label %62, label %92

62:                                               ; preds = %64, %61
  %63 = phi i32 [ 282, %61 ], [ 249, %64 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %63)
          to label %92 unwind label %29

64:                                               ; preds = %55
  br i1 %58, label %65, label %62

65:                                               ; preds = %64
  %66 = load ptr, ptr %14, align 8, !tbaa !111
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %66, i64 0, i32 28
  %68 = load ptr, ptr %67, align 8, !tbaa !135
  %69 = zext i16 %21 to i64
  %70 = getelementptr inbounds i8, ptr %68, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !136
  %72 = and i8 %71, 64
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %65
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %8) #15
  %76 = zext i16 %21 to i32
  %77 = load ptr, ptr %75, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %76, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %77)
          to label %78 unwind label %80

78:                                               ; preds = %74
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %1, ptr noundef nonnull %8, ptr noundef null, ptr noundef null)
          to label %79 unwind label %80

79:                                               ; preds = %78
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #15
  br label %92

80:                                               ; preds = %78, %74
  %81 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %8) #15
  br label %82

82:                                               ; preds = %29, %31, %80, %33
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %34, %33 ], [ %30, %29 ], [ %32, %31 ]
  %84 = extractvalue { ptr, i32 } %83, 1
  %85 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %134

87:                                               ; preds = %82
  %88 = extractvalue { ptr, i32 } %83, 0
  %89 = call ptr @__cxa_begin_catch(ptr %88) #15
  store i8 0, ptr %7, align 1, !tbaa !99
  call void @__cxa_end_catch()
  br label %90

90:                                               ; preds = %87, %115, %127, %53
  %91 = phi i8 [ 0, %87 ], [ 0, %53 ], [ %93, %127 ], [ %93, %115 ]
  br label %19, !llvm.loop !220

92:                                               ; preds = %62, %60, %61, %65, %79, %59, %53
  %93 = phi i8 [ %20, %53 ], [ 1, %59 ], [ 0, %79 ], [ 0, %65 ], [ 0, %61 ], [ %20, %60 ], [ 0, %62 ]
  %94 = load i8, ptr %7, align 1, !tbaa !99, !range !100, !noundef !101
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i16, ptr %5, align 2, !tbaa !128
  %98 = icmp eq i16 %97, 60
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %109 unwind label %29

100:                                              ; preds = %96
  %101 = load ptr, ptr %14, align 8, !tbaa !111
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %101, i64 0, i32 28
  %103 = load ptr, ptr %102, align 8, !tbaa !135
  %104 = zext i16 %97 to i64
  %105 = getelementptr inbounds i8, ptr %103, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !136
  %107 = icmp slt i8 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i16 32, ptr %5, align 2, !tbaa !128
  br label %109

109:                                              ; preds = %99, %108, %100, %92
  %110 = load i16, ptr %5, align 2, !tbaa !128
  %111 = load i32, ptr %2, align 8, !tbaa !126
  %112 = load i32, ptr %18, align 4, !tbaa !221
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %115 unwind label %29

115:                                              ; preds = %114, %109
  %116 = load ptr, ptr %9, align 8, !tbaa !127
  %117 = load i32, ptr %2, align 8, !tbaa !126
  %118 = add i32 %117, 1
  store i32 %118, ptr %2, align 8, !tbaa !126
  %119 = zext i32 %117 to i64
  %120 = getelementptr inbounds i16, ptr %116, i64 %119
  store i16 %110, ptr %120, align 2, !tbaa !128
  %121 = load i16, ptr %6, align 2, !tbaa !128
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %90, label %123

123:                                              ; preds = %115
  %124 = load i32, ptr %18, align 4, !tbaa !221
  %125 = icmp eq i32 %118, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
          to label %127 unwind label %29

127:                                              ; preds = %126, %123
  %128 = load ptr, ptr %9, align 8, !tbaa !127
  %129 = load i32, ptr %2, align 8, !tbaa !126
  %130 = add i32 %129, 1
  store i32 %130, ptr %2, align 8, !tbaa !126
  %131 = zext i32 %129 to i64
  %132 = getelementptr inbounds i16, ptr %128, i64 %131
  store i16 %121, ptr %132, align 2, !tbaa !128
  store i16 0, ptr %6, align 2, !tbaa !128
  br label %90

133:                                              ; preds = %45, %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  br label %135

134:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  resume { ptr, i32 } %83

135:                                              ; preds = %3, %133
  %136 = phi i1 [ %42, %133 ], [ false, %3 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  ret i1 %136

137:                                              ; preds = %28
  unreachable
}

declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE12setElementAtERKjj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !77
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 126, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = load i32, ptr %1, align 4, !tbaa !110
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = zext i32 %2 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store i32 %15, ptr %19, align 4, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_714XMLElementDecl14setElementNameEPKti(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !222 {
  %4 = load i32, ptr %1, align 4, !tbaa !110
  %5 = icmp ugt i32 %4, 100
  br i1 %5, label %6, label %35, !prof !223

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !99
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !156
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12)
  %14 = load i32, ptr %1, align 4, !tbaa !110
  %15 = shl i32 %14, 1
  %16 = or disjoint i32 %15, 1
  %17 = load ptr, ptr %11, align 8, !tbaa !75
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %17)
          to label %19 unwind label %28

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %20 unwind label %30

20:                                               ; preds = %19
  %21 = load ptr, ptr %11, align 8, !tbaa !75
  store ptr %21, ptr %13, align 8, !tbaa !224
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 1
  store i8 0, ptr %22, align 8, !tbaa !226
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !227
  %24 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 3
  store i32 %16, ptr %24, align 8, !tbaa !228
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 4
  store i32 0, ptr %25, align 4, !tbaa !229
  %26 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 5
  store ptr null, ptr %26, align 8, !tbaa !230
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %16)
          to label %27 unwind label %28

27:                                               ; preds = %20
  store ptr %18, ptr %26, align 8, !tbaa !230
  store ptr %13, ptr %7, align 8, !tbaa !156
  br label %35

28:                                               ; preds = %20, %10
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %19
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #15
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #15
  resume { ptr, i32 } %33

34:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %35

35:                                               ; preds = %27, %34, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !228
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !229
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !226, !range !100, !noundef !101
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !231
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %21)
          to label %27 unwind label %24

24:                                               ; preds = %23
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #16
  unreachable

27:                                               ; preds = %23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #15
  br label %28

28:                                               ; preds = %20, %27, %16
  store ptr %3, ptr %14, align 8, !tbaa !231
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %29, align 8, !tbaa !233
  %30 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %30, align 8, !tbaa !234
  br label %48

31:                                               ; preds = %13
  %32 = load ptr, ptr %0, align 8, !tbaa !224
  %33 = load ptr, ptr %32, align 8, !tbaa !42
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef 32)
  %37 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !227
  %39 = load i32, ptr %5, align 4, !tbaa !110
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  store ptr %3, ptr %36, align 8, !tbaa !231
  %43 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !235
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  store ptr %1, ptr %44, align 8, !tbaa !233
  %45 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 3
  store i32 %2, ptr %45, align 8, !tbaa !234
  store ptr %36, ptr %41, align 8, !tbaa !88
  %46 = load i32, ptr %9, align 4, !tbaa !229
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !229
  br label %48

48:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712WFXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 !prof !41 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  store i32 %8, ptr %4, align 4, !tbaa !110
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #15
  store i8 0, ptr %6, align 1, !tbaa !99
  store i32 0, ptr %2, align 8, !tbaa !126
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  store i16 0, ptr %12, align 2, !tbaa !128
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %14 = sext i16 %3 to i32
  %15 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #15
  br label %77

16:                                               ; preds = %5
  store i32 0, ptr %2, align 8, !tbaa !126
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %8)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !127
  %19 = load i32, ptr %2, align 8, !tbaa !126
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %18, i64 %20
  store i16 0, ptr %21, align 2, !tbaa !128
  %22 = icmp eq ptr %18, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i16, ptr %18, align 2, !tbaa !128
  %25 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %26 = icmp eq i16 %24, %25
  br i1 %26, label %30, label %47

27:                                               ; preds = %16
  %28 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !128
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %41, label %47

30:                                               ; preds = %23, %35
  %31 = phi i16 [ %38, %35 ], [ %24, %23 ]
  %32 = phi ptr [ %37, %35 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %23 ]
  %33 = phi ptr [ %36, %35 ], [ %18, %23 ]
  %34 = icmp eq i16 %31, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds i16, ptr %33, i64 1
  %37 = getelementptr inbounds i16, ptr %32, i64 1
  %38 = load i16, ptr %36, align 2, !tbaa !128
  %39 = load i16, ptr %37, align 2, !tbaa !128
  %40 = icmp eq i16 %38, %39
  br i1 %40, label %30, label %47, !llvm.loop !138

41:                                               ; preds = %30, %27
  %42 = icmp eq i16 %3, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %44

44:                                               ; preds = %43, %41
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %46 = load i32, ptr %45, align 8, !tbaa !151
  br label %77

47:                                               ; preds = %35, %23, %27
  br i1 %22, label %52, label %48

48:                                               ; preds = %47
  %49 = load i16, ptr %18, align 2, !tbaa !128
  %50 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %55, label %69

52:                                               ; preds = %47
  %53 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !128
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %69

55:                                               ; preds = %48, %60
  %56 = phi i16 [ %63, %60 ], [ %49, %48 ]
  %57 = phi ptr [ %62, %60 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %48 ]
  %58 = phi ptr [ %61, %60 ], [ %18, %48 ]
  %59 = icmp eq i16 %56, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i16, ptr %58, i64 1
  %62 = getelementptr inbounds i16, ptr %57, i64 1
  %63 = load i16, ptr %61, align 2, !tbaa !128
  %64 = load i16, ptr %62, align 2, !tbaa !128
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %55, label %69, !llvm.loop !138

66:                                               ; preds = %55, %52
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %68 = load i32, ptr %67, align 4, !tbaa !149
  br label %77

69:                                               ; preds = %60, %48, %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1, !tbaa !99
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %71 = sext i16 %3 to i32
  %72 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %70, ptr noundef %18, i32 noundef %71, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %73 = load i8, ptr %7, align 1, !tbaa !99, !range !100, !noundef !101
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %76

76:                                               ; preds = %75, %69
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %77

77:                                               ; preds = %44, %66, %76, %10
  %78 = phi i32 [ %15, %10 ], [ %46, %44 ], [ %68, %66 ], [ %72, %76 ]
  ret i32 %78
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261)
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %7, label %8, label %113

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 1
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  br label %18

18:                                               ; preds = %99, %8
  %19 = phi i8 [ 0, %8 ], [ %100, %99 ]
  %20 = phi i8 [ 0, %8 ], [ %101, %99 ]
  %21 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %22 unwind label %30

22:                                               ; preds = %18
  %23 = icmp eq i16 %21, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264)
          to label %25 unwind label %32

25:                                               ; preds = %24
  %26 = call ptr @__cxa_allocate_exception(i64 48) #15
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %28 = load ptr, ptr %27, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef nonnull @.str, i32 noundef 1781, i32 noundef 47, ptr noundef %28)
          to label %29 unwind label %34

29:                                               ; preds = %25
  invoke void @__cxa_throw(ptr nonnull %26, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %114 unwind label %32

30:                                               ; preds = %68, %18, %46, %50, %66, %39, %92
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %103

32:                                               ; preds = %24, %29
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %103

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %26) #15
  br label %103

36:                                               ; preds = %22
  %37 = zext i16 %21 to i32
  %38 = icmp eq i16 %21, 93
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load ptr, ptr %11, align 8, !tbaa !111
  %41 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %40, ptr noundef nonnull @_ZZN11xercesc_2_712WFXMLScanner13scanCDSectionEvE10CDataClose)
          to label %42 unwind label %30

42:                                               ; preds = %39
  br i1 %41, label %43, label %58

43:                                               ; preds = %42
  %44 = and i8 %19, 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %47 unwind label %30

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr %16, align 8, !tbaa !93
  %49 = icmp eq ptr %48, null
  br i1 %49, label %99, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %17, align 8, !tbaa !127
  %52 = load i32, ptr %10, align 8, !tbaa !126
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i16, ptr %51, i64 %53
  store i16 0, ptr %54, align 2, !tbaa !128
  %55 = load ptr, ptr %48, align 8, !tbaa !42
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %51, i32 noundef %52, i1 noundef zeroext true)
          to label %99 unwind label %30

58:                                               ; preds = %42, %36
  %59 = and i8 %20, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = and i16 %21, -1024
  %63 = and i8 %19, 1
  %64 = icmp eq i8 %63, 0
  switch i16 %62, label %70 [
    i16 -10240, label %65
    i16 -9216, label %67
  ]

65:                                               ; preds = %61
  br i1 %64, label %86, label %66

66:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %86 unwind label %30

67:                                               ; preds = %61
  br i1 %64, label %68, label %86

68:                                               ; preds = %70, %67
  %69 = phi i32 [ 282, %67 ], [ 249, %70 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %69)
          to label %86 unwind label %30

70:                                               ; preds = %61
  br i1 %64, label %71, label %68

71:                                               ; preds = %70
  %72 = load ptr, ptr %12, align 8, !tbaa !111
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %72, i64 0, i32 28
  %74 = load ptr, ptr %73, align 8, !tbaa !135
  %75 = zext i16 %21 to i64
  %76 = getelementptr inbounds i8, ptr %74, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !136
  %78 = and i8 %77, 64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #15
  %81 = load ptr, ptr %13, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %37, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %81)
          to label %82 unwind label %84

82:                                               ; preds = %80
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %83 unwind label %84

83:                                               ; preds = %82
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #15
  br label %86

84:                                               ; preds = %82, %80
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #15
  br label %103

86:                                               ; preds = %68, %66, %67, %71, %83, %65, %58
  %87 = phi i8 [ %19, %58 ], [ 1, %65 ], [ 0, %83 ], [ 0, %71 ], [ 0, %67 ], [ %19, %66 ], [ 0, %68 ]
  %88 = phi i8 [ %20, %58 ], [ %20, %65 ], [ 1, %83 ], [ %20, %71 ], [ %20, %67 ], [ %20, %66 ], [ %20, %68 ]
  %89 = load i32, ptr %10, align 8, !tbaa !126
  %90 = load i32, ptr %14, align 4, !tbaa !221
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1)
          to label %93 unwind label %30

93:                                               ; preds = %92, %86
  %94 = load ptr, ptr %15, align 8, !tbaa !127
  %95 = load i32, ptr %10, align 8, !tbaa !126
  %96 = add i32 %95, 1
  store i32 %96, ptr %10, align 8, !tbaa !126
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds i16, ptr %94, i64 %97
  store i16 %21, ptr %98, align 2, !tbaa !128
  br label %99

99:                                               ; preds = %50, %47, %93
  %100 = phi i8 [ %87, %93 ], [ %19, %47 ], [ %19, %50 ]
  %101 = phi i8 [ %88, %93 ], [ %20, %47 ], [ %20, %50 ]
  %102 = phi i1 [ true, %93 ], [ false, %47 ], [ false, %50 ]
  br i1 %102, label %18, label %109

103:                                              ; preds = %30, %32, %84, %34
  %104 = phi { ptr, i32 } [ %85, %84 ], [ %35, %34 ], [ %31, %30 ], [ %33, %32 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %108 unwind label %105

105:                                              ; preds = %103
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  call void @__clang_call_terminate(ptr %107) #16
  unreachable

108:                                              ; preds = %103
  resume { ptr, i32 } %104

109:                                              ; preds = %99
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %113 unwind label %110

110:                                              ; preds = %109
  %111 = landingpad { ptr, i32 }
          catch ptr null
  %112 = extractvalue { ptr, i32 } %111, 0
  call void @__clang_call_terminate(ptr %112) #16
  unreachable

113:                                              ; preds = %109, %5
  ret void

114:                                              ; preds = %29
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712WFXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca [9 x i16], align 16
  store i32 0, ptr %1, align 8, !tbaa !126
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  store i16 0, ptr %8, align 2, !tbaa !128
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !236, !range !100, !noundef !101
  store i8 1, ptr %9, align 8, !tbaa !236
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  store i16 0, ptr %4, align 2, !tbaa !128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  store i8 0, ptr %5, align 1, !tbaa !99
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %16

16:                                               ; preds = %2, %205
  %17 = phi i32 [ 0, %2 ], [ %208, %205 ]
  %18 = phi i8 [ 1, %2 ], [ %207, %205 ]
  %19 = phi i8 [ 0, %2 ], [ %206, %205 ]
  br label %20

20:                                               ; preds = %201, %16
  %21 = phi i8 [ %19, %16 ], [ %164, %201 ]
  %22 = phi i32 [ %17, %16 ], [ %177, %201 ]
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %20, %113
  %25 = phi i8 [ %115, %113 ], [ %21, %20 ]
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %23, i1 %27, i1 false
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load ptr, ptr %11, align 8, !tbaa !111
  %31 = load i32, ptr %30, align 8, !tbaa !237
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !238
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 28
  %37 = load ptr, ptr %36, align 8, !tbaa !135
  br label %38

38:                                               ; preds = %35, %48
  %39 = phi i32 [ %31, %35 ], [ %49, %48 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !128
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds i8, ptr %37, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !136
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = add nuw i32 %39, 1
  store i32 %49, ptr %30, align 8, !tbaa !237
  %50 = icmp eq i32 %49, %33
  br i1 %50, label %51, label %38, !llvm.loop !239

51:                                               ; preds = %48, %38, %29
  %52 = phi i32 [ %31, %29 ], [ %33, %48 ], [ %39, %38 ]
  %53 = icmp eq i32 %31, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = sub i32 %52, %31
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !240
  %59 = add nsw i64 %58, %56
  store i64 %59, ptr %57, align 8, !tbaa !240
  %60 = zext i32 %31 to i64
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 1, i64 %60
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %61, i32 noundef %55)
          to label %70 unwind label %62

62:                                               ; preds = %97, %80, %54, %103
  %63 = phi i32 [ %22, %103 ], [ 0, %54 ], [ %22, %80 ], [ %22, %97 ]
  %64 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %142

65:                                               ; preds = %124, %194, %182, %175, %121
  %66 = phi i32 [ 2, %175 ], [ %22, %121 ], [ %177, %182 ], [ %177, %194 ], [ %22, %124 ]
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %142

68:                                               ; preds = %99
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %142

70:                                               ; preds = %51, %54, %24
  %71 = load ptr, ptr %12, align 8, !tbaa !111
  %72 = load i32, ptr %71, align 8, !tbaa !237
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !238
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 10
  %78 = load i8, ptr %77, align 1, !tbaa !241, !range !100, !noundef !101
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %71)
          to label %82 unwind label %62

82:                                               ; preds = %80
  br i1 %81, label %83, label %98

83:                                               ; preds = %82, %70
  %84 = load i32, ptr %71, align 8, !tbaa !237
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 1, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !128
  %88 = icmp eq i16 %87, 60
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = add i32 %84, 1
  store i32 %90, ptr %71, align 8, !tbaa !237
  store i16 %87, ptr %3, align 2, !tbaa !128
  %91 = and i16 %87, -8368
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 5
  %95 = load i64, ptr %94, align 8, !tbaa !240
  %96 = add nsw i64 %95, 1
  store i64 %96, ptr %94, align 8, !tbaa !240
  br label %100

97:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %71, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext false)
          to label %100 unwind label %62

98:                                               ; preds = %83, %82, %76
  br i1 %27, label %205, label %99

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %205 unwind label %68

100:                                              ; preds = %97, %93
  store i8 0, ptr %5, align 1, !tbaa !99
  %101 = load i16, ptr %3, align 2
  %102 = icmp eq i16 %101, 38
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load ptr, ptr %0, align 8, !tbaa !42
  %105 = getelementptr inbounds ptr, ptr %104, i64 16
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %107 unwind label %62

107:                                              ; preds = %103
  %108 = load i8, ptr %9, align 8, !tbaa !236, !range !100, !noundef !101
  store i8 0, ptr %9, align 8, !tbaa !236
  %109 = load ptr, ptr %0, align 8, !tbaa !42
  %110 = getelementptr inbounds ptr, ptr %109, i64 13
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef i32 %111(ptr noundef nonnull align 8 dereferenceable(824) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %113 unwind label %116

113:                                              ; preds = %107
  %114 = icmp eq i32 %112, 1
  %115 = select i1 %114, i8 %25, i8 0
  store i8 %108, ptr %9, align 8, !tbaa !236
  br i1 %114, label %163, label %24

116:                                              ; preds = %107
  %117 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  store i8 %108, ptr %9, align 8, !tbaa !236
  br label %142

118:                                              ; preds = %100
  %119 = and i16 %101, -1024
  switch i16 %119, label %123 [
    i16 -10240, label %120
    i16 -9216, label %122
  ]

120:                                              ; preds = %118
  br i1 %27, label %163, label %121

121:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %163 unwind label %65

122:                                              ; preds = %118
  br i1 %27, label %124, label %163

123:                                              ; preds = %118
  br i1 %27, label %126, label %124

124:                                              ; preds = %123, %122
  %125 = phi i32 [ 282, %122 ], [ 249, %123 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %125)
          to label %163 unwind label %65

126:                                              ; preds = %123
  %127 = load ptr, ptr %13, align 8, !tbaa !111
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %127, i64 0, i32 28
  %129 = load ptr, ptr %128, align 8, !tbaa !135
  %130 = zext i16 %101 to i64
  %131 = getelementptr inbounds i8, ptr %129, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !136
  %133 = and i8 %132, 64
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #15
  %136 = zext i16 %101 to i32
  %137 = load ptr, ptr %14, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %136, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %137)
          to label %138 unwind label %140

138:                                              ; preds = %135
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %139 unwind label %140

139:                                              ; preds = %138
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #15
  br label %163

140:                                              ; preds = %138, %135
  %141 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #15
  br label %142

142:                                              ; preds = %68, %65, %62, %140, %116
  %143 = phi { ptr, i32 } [ %117, %116 ], [ %141, %140 ], [ %69, %68 ], [ %64, %62 ], [ %67, %65 ]
  %144 = phi i32 [ %22, %116 ], [ %22, %140 ], [ %22, %68 ], [ %63, %62 ], [ %66, %65 ]
  %145 = extractvalue { ptr, i32 } %143, 1
  %146 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #15
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %220

148:                                              ; preds = %142
  %149 = extractvalue { ptr, i32 } %143, 0
  %150 = call ptr @__cxa_begin_catch(ptr %149) #15
  %151 = load ptr, ptr %0, align 8, !tbaa !42
  %152 = getelementptr inbounds ptr, ptr %151, i64 16
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %154 unwind label %202

154:                                              ; preds = %148
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %156 = load ptr, ptr %155, align 8, !tbaa !93
  %157 = icmp eq ptr %156, null
  br i1 %157, label %204, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %150, align 8, !tbaa !118
  %160 = load ptr, ptr %156, align 8, !tbaa !42
  %161 = getelementptr inbounds ptr, ptr %160, i64 7
  %162 = load ptr, ptr %161, align 8
  invoke void %162(ptr noundef nonnull align 8 dereferenceable(8) %156, ptr noundef nonnull align 8 dereferenceable(72) %159)
          to label %204 unwind label %202

163:                                              ; preds = %113, %124, %121, %122, %126, %139, %120
  %164 = phi i8 [ 1, %120 ], [ 0, %139 ], [ 0, %126 ], [ 0, %122 ], [ %25, %121 ], [ 0, %124 ], [ %115, %113 ]
  %165 = load i8, ptr %5, align 1, !tbaa !99, !range !100, !noundef !101
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i16, ptr %3, align 2, !tbaa !128
  switch i16 %168, label %176 [
    i16 93, label %169
    i16 62, label %173
  ]

169:                                              ; preds = %167
  br i1 %23, label %176, label %170

170:                                              ; preds = %169
  %171 = icmp eq i32 %22, 1
  %172 = select i1 %171, i32 2, i32 %22
  br label %176

173:                                              ; preds = %167
  %174 = icmp eq i32 %22, 2
  br i1 %174, label %175, label %176

175:                                              ; preds = %173
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 262)
          to label %176 unwind label %65

176:                                              ; preds = %175, %163, %167, %173, %169, %170
  %177 = phi i32 [ %172, %170 ], [ 1, %169 ], [ 0, %173 ], [ 0, %167 ], [ 0, %163 ], [ 0, %175 ]
  %178 = load i16, ptr %3, align 2, !tbaa !128
  %179 = load i32, ptr %1, align 8, !tbaa !126
  %180 = load i32, ptr %15, align 4, !tbaa !221
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %183 unwind label %65

183:                                              ; preds = %182, %176
  %184 = load ptr, ptr %7, align 8, !tbaa !127
  %185 = load i32, ptr %1, align 8, !tbaa !126
  %186 = add i32 %185, 1
  store i32 %186, ptr %1, align 8, !tbaa !126
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds i16, ptr %184, i64 %187
  store i16 %178, ptr %188, align 2, !tbaa !128
  %189 = load i16, ptr %4, align 2, !tbaa !128
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %183
  %192 = load i32, ptr %15, align 4, !tbaa !221
  %193 = icmp eq i32 %186, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %195 unwind label %65

195:                                              ; preds = %194, %191
  %196 = load ptr, ptr %7, align 8, !tbaa !127
  %197 = load i32, ptr %1, align 8, !tbaa !126
  %198 = add i32 %197, 1
  store i32 %198, ptr %1, align 8, !tbaa !126
  %199 = zext i32 %197 to i64
  %200 = getelementptr inbounds i16, ptr %196, i64 %199
  store i16 %189, ptr %200, align 2, !tbaa !128
  store i16 0, ptr %4, align 2, !tbaa !128
  br label %201

201:                                              ; preds = %195, %183
  br label %20, !llvm.loop !242

202:                                              ; preds = %158, %148
  %203 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %220 unwind label %222

204:                                              ; preds = %158, %154
  invoke void @__cxa_end_catch()
          to label %205 unwind label %211

205:                                              ; preds = %204, %98, %99
  %206 = phi i8 [ %25, %99 ], [ %25, %98 ], [ 0, %204 ]
  %207 = phi i8 [ 0, %99 ], [ 0, %98 ], [ %18, %204 ]
  %208 = phi i32 [ %22, %99 ], [ %22, %98 ], [ %144, %204 ]
  %209 = and i8 %207, 1
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %213, label %16, !llvm.loop !243

211:                                              ; preds = %204
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %220

213:                                              ; preds = %205
  %214 = load ptr, ptr %0, align 8, !tbaa !42
  %215 = getelementptr inbounds ptr, ptr %214, i64 16
  %216 = load ptr, ptr %215, align 8
  invoke void %216(ptr noundef nonnull align 8 dereferenceable(824) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %217 unwind label %218

217:                                              ; preds = %213
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  store i8 %10, ptr %9, align 8, !tbaa !236
  ret void

218:                                              ; preds = %213
  %219 = landingpad { ptr, i32 }
          cleanup
  br label %220

220:                                              ; preds = %142, %202, %211, %218
  %221 = phi { ptr, i32 } [ %219, %218 ], [ %212, %211 ], [ %203, %202 ], [ %143, %142 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  store i8 %10, ptr %9, align 8, !tbaa !236
  resume { ptr, i32 } %221

222:                                              ; preds = %202
  %223 = landingpad { ptr, i32 }
          catch ptr null
  %224 = extractvalue { ptr, i32 } %223, 0
  call void @__clang_call_terminate(ptr %224) #16
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712WFXMLScanner15resolveSystemIdEPKtS2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712WFXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(824) %0, i1 zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %6 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !128
  store i8 0, ptr %4, align 1, !tbaa !99
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %9, i64 0, i32 15
  %11 = load i32, ptr %10, align 8, !tbaa !112
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 35)
  br i1 %12, label %13, label %21

13:                                               ; preds = %5
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %14, label %15, label %107

15:                                               ; preds = %13
  store i8 1, ptr %4, align 1, !tbaa !99
  %16 = load ptr, ptr %8, align 8, !tbaa !111
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %16, i64 0, i32 15
  %18 = load i32, ptr %17, align 8, !tbaa !112
  %19 = icmp eq i32 %11, %18
  br i1 %19, label %107, label %20

20:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
  br label %107

21:                                               ; preds = %5
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %23 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %22)
  store i32 0, ptr %23, align 8, !tbaa !126
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !127
  store i16 0, ptr %25, align 2, !tbaa !128
  %26 = load ptr, ptr %8, align 8, !tbaa !111
  %27 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %26, ptr noundef nonnull align 8 dereferenceable(40) %23, i1 noundef zeroext false)
          to label %28 unwind label %30

28:                                               ; preds = %21
  br i1 %27, label %32, label %29

29:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226)
          to label %96 unwind label %30

30:                                               ; preds = %21, %86, %63, %46, %45, %35, %32, %29
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %101

32:                                               ; preds = %28
  %33 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %7, i16 noundef zeroext 59)
          to label %34 unwind label %30

34:                                               ; preds = %32
  br i1 %33, label %40, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %24, align 8, !tbaa !127
  %37 = load i32, ptr %23, align 8, !tbaa !126
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i16, ptr %36, i64 %38
  store i16 0, ptr %39, align 2, !tbaa !128
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %36, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %40 unwind label %30

40:                                               ; preds = %35, %34
  %41 = load ptr, ptr %8, align 8, !tbaa !111
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %41, i64 0, i32 15
  %43 = load i32, ptr %42, align 8, !tbaa !112
  %44 = icmp eq i32 %11, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %46 unwind label %30

46:                                               ; preds = %45, %40
  %47 = getelementptr inbounds %"class.xercesc_2_7::WFXMLScanner", ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !63
  %49 = load ptr, ptr %24, align 8, !tbaa !127
  %50 = load i32, ptr %23, align 8, !tbaa !126
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !128
  %53 = invoke noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef %49)
          to label %54 unwind label %30

54:                                               ; preds = %46
  br i1 %53, label %68, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %57 = load i8, ptr %56, align 2, !tbaa !201, !range !100, !noundef !101
  %58 = icmp eq i8 %57, 0
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %60 = load i8, ptr %59, align 1, !range !100
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %58, i1 %61, i1 false
  br i1 %62, label %96, label %63

63:                                               ; preds = %55
  %64 = load ptr, ptr %24, align 8, !tbaa !127
  %65 = load i32, ptr %23, align 8, !tbaa !126
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i16, ptr %64, i64 %66
  store i16 0, ptr %67, align 2, !tbaa !128
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 227, ptr noundef %64, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %96 unwind label %30

68:                                               ; preds = %54
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %70 = load ptr, ptr %69, align 8, !tbaa !205
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %74 = load i32, ptr %73, align 8, !tbaa !207
  %75 = add i32 %74, 1
  store i32 %75, ptr %73, align 8, !tbaa !207
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %77 = load i32, ptr %76, align 4, !tbaa !206
  %78 = icmp ugt i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %81 = load ptr, ptr %80, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %77, ptr noundef nonnull %6, i32 noundef 15, i32 noundef 10, ptr noundef %81)
          to label %82 unwind label %84

82:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %83 unwind label %84

83:                                               ; preds = %82
  store i32 0, ptr %73, align 8, !tbaa !207
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %86

84:                                               ; preds = %82, %79
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  br label %101

86:                                               ; preds = %83, %72, %68
  %87 = load ptr, ptr %47, align 8, !tbaa !63
  %88 = load ptr, ptr %24, align 8, !tbaa !127
  %89 = load i32, ptr %23, align 8, !tbaa !126
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i16, ptr %88, i64 %90
  store i16 0, ptr %91, align 2, !tbaa !128
  %92 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !88
  %93 = invoke noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef %88, ptr noundef %92)
          to label %94 unwind label %30

94:                                               ; preds = %86
  %95 = load i16, ptr %93, align 2, !tbaa !128
  store i16 %95, ptr %2, align 2, !tbaa !128
  store i8 1, ptr %4, align 1, !tbaa !99
  br label %96

96:                                               ; preds = %63, %55, %29, %94
  %97 = phi i32 [ 1, %94 ], [ 2, %29 ], [ 2, %55 ], [ 2, %63 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(40) %23)
          to label %107 unwind label %98

98:                                               ; preds = %96
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #16
  unreachable

101:                                              ; preds = %84, %30
  %102 = phi { ptr, i32 } [ %31, %30 ], [ %85, %84 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(40) %23)
          to label %106 unwind label %103

103:                                              ; preds = %101
  %104 = landingpad { ptr, i32 }
          catch ptr null
  %105 = extractvalue { ptr, i32 } %104, 0
  call void @__clang_call_terminate(ptr %105) #16
  unreachable

106:                                              ; preds = %101
  resume { ptr, i32 } %102

107:                                              ; preds = %96, %15, %20, %13
  %108 = phi i32 [ 2, %13 ], [ 1, %20 ], [ 1, %15 ], [ %97, %96 ]
  ret i32 %108
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfItE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !166
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !165
  %7 = load ptr, ptr %0, align 8, !tbaa !162
  %8 = load ptr, ptr %4, align 8, !tbaa !42
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !164
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !166
  %19 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !179
  %21 = load ptr, ptr %18, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %38, label %25

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !llvm.loop !244

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !166
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !179
  %34 = load ptr, ptr %31, align 8, !tbaa !42
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33)
  br i1 %37, label %38, label %25, !llvm.loop !244

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_716ValueHashTableOfItE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !245 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !165
  %8 = load ptr, ptr %0, align 8, !tbaa !162
  %9 = load ptr, ptr %5, align 8, !tbaa !42
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8), !prof !246
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !164
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !88
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !247

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !166
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = load ptr, ptr %20, align 8, !tbaa !42
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22), !prof !248
  br i1 %26, label %31, label %27, !prof !249

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !250, !llvm.loop !184

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39, !prof !251

34:                                               ; preds = %31
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str.2, i32 noundef 153, i32 noundef 50, ptr noundef %2)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #15
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  ret ptr %32
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712WFXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, i16 signext %2, i1 zeroext %3) unnamed_addr #7 align 2 !prof !41 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #2 comdat align 2 !prof !41 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) unnamed_addr #10 comdat align 2 !prof !41 {
  ret i32 2
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712WFXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(824) %0) unnamed_addr #10 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgWFXMLScannerE
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !229
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !228
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %39, %5
  store i32 0, ptr %2, align 4, !tbaa !229
  br label %46

13:                                               ; preds = %9, %39
  %14 = phi i64 [ 0, %9 ], [ %42, %39 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !227
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %13, %33
  %20 = phi ptr [ %22, %33 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !235
  %23 = load i8, ptr %11, align 8, !tbaa !226, !range !100, !noundef !101
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !231
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %26)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #16
  unreachable

32:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #15
  br label %33

33:                                               ; preds = %25, %32, %19
  %34 = load ptr, ptr %0, align 8, !tbaa !224
  %35 = load ptr, ptr %34, align 8, !tbaa !42
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %20)
  %38 = icmp eq ptr %22, null
  br i1 %38, label %39, label %19, !llvm.loop !253

39:                                               ; preds = %33, %13
  %40 = load ptr, ptr %10, align 8, !tbaa !227
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !88
  %42 = add nuw nsw i64 %14, 1
  %43 = load i32, ptr %6, align 8, !tbaa !228
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %13, label %12, !llvm.loop !254

46:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !224
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 93, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !224
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !228
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !227
  %21 = load i32, ptr %12, align 8, !tbaa !228
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !227
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !88
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !255
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #8 comdat align 2 !prof !256 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !257

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !126
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !221
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !258

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !127
  %15 = load i32, ptr %0, align 8, !tbaa !126
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !259
  %20 = load i32, ptr %0, align 8, !tbaa !126
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !126
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #8 comdat align 2 !prof !260 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !261

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !128
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !262

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !128
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !263, !llvm.loop !264

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !126
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !221
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !265

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !127
  %24 = load i32, ptr %0, align 8, !tbaa !126
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !266
  %28 = load i32, ptr %0, align 8, !tbaa !126
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !126
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !196

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !162
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !162
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !165
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !267
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !164
  %21 = load i32, ptr %12, align 8, !tbaa !165
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !189

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !164
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !88
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !268, !llvm.loop !269
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !100, !noundef !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !84
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(33) %15) #15
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !84
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !270

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = load ptr, ptr %28, align 8, !tbaa !42
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
  tail call void @__clang_call_terminate(ptr %37) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !84
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !82, !range !100, !noundef !101
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !86
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(33) %23) #15
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !88
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !84
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !84
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !82, !range !100, !noundef !101
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !86
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !88
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !42
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(33) %18) #15
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !88
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !84
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !271
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !82, !range !100, !noundef !101
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !42
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(33) %22) #15
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !84
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
  %40 = load ptr, ptr %35, align 8, !tbaa !86
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !88
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !272

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !86
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !88
  store i32 %30, ptr %3, align 4, !tbaa !84
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !84
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !84
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !82, !range !100, !noundef !101
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(33) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !82, !range !100, !noundef !101
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !84
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !86
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(33) %15) #15
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !84
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !273

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = load ptr, ptr %28, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !168
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !168
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !172
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !42
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !171
  %21 = load i32, ptr %12, align 8, !tbaa !172
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !171
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !88
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !274
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !168
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = load ptr, ptr %2, align 8, !tbaa !42
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !42
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #15
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !87
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !84
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !88
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !86
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !88
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !275

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !87
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !86
  %52 = load ptr, ptr %49, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !86
  store i32 %12, ptr %6, align 8, !tbaa !85
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !172
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !168
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !168
  store ptr %12, ptr %2, align 8, !tbaa !276
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !278
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !172
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = load ptr, ptr %2, align 8, !tbaa !276
  store ptr null, ptr %2, align 8, !tbaa !276
  store ptr %23, ptr %21, align 8, !tbaa !171
  store i32 %5, ptr %3, align 8, !tbaa !172
  %24 = load ptr, ptr %0, align 8, !tbaa !168
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !171
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !208
  %38 = load ptr, ptr %19, align 8, !tbaa !175
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !213
  %41 = load ptr, ptr %0, align 8, !tbaa !168
  %42 = load ptr, ptr %38, align 8, !tbaa !42
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !88
  store ptr %48, ptr %36, align 8, !tbaa !208
  store ptr %35, ptr %47, align 8, !tbaa !88
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !279

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !172
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !280

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %61
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !276
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !278
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #18
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #16
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !281 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !133
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !282
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !283

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !42
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !133
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !88
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !140
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !88
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !284

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !219
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !140
  %52 = load ptr, ptr %49, align 8, !tbaa !42
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !140
  store i32 %12, ptr %6, align 8, !tbaa !282
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIjE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 !prof !285 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %43, !prof !286

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = load ptr, ptr %15, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17), !prof !287
  %22 = load i32, ptr %3, align 4, !tbaa !77
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24, !prof !288

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !65
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = load ptr, ptr %28, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30), !prof !289
  store ptr %21, ptr %29, align 8, !tbaa !67
  store i32 %13, ptr %6, align 8, !tbaa !78
  br label %43

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %39, %34 ]
  %36 = getelementptr inbounds i32, ptr %26, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !110
  %38 = getelementptr inbounds i32, ptr %21, i64 %35
  store i32 %37, ptr %38, align 4, !tbaa !110
  %39 = add nuw nsw i64 %35, 1
  %40 = load i32, ptr %3, align 4, !tbaa !77
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %34, label %27, !prof !290, !llvm.loop !291

43:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !81
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !42
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !80
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !70
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = load ptr, ptr %28, align 8, !tbaa !42
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !72
  store i32 %13, ptr %6, align 8, !tbaa !81
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !72
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !88
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !88
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !292

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = load ptr, ptr %0, align 8, !tbaa !224
  %10 = load ptr, ptr %6, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !110
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !227
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !230
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !233
  %24 = load ptr, ptr %21, align 8, !tbaa !42
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23)
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !234
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !293

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %28 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.4", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !228
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !224
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !42
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %14 = load ptr, ptr %0, align 8, !tbaa !224
  store ptr %13, ptr %2, align 8, !tbaa !294
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !228
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !227
  %24 = load ptr, ptr %2, align 8, !tbaa !294
  store ptr null, ptr %2, align 8, !tbaa !294
  store ptr %24, ptr %22, align 8, !tbaa !227
  store i32 %6, ptr %3, align 8, !tbaa !228
  %25 = load ptr, ptr %0, align 8, !tbaa !224
  %26 = load ptr, ptr %25, align 8, !tbaa !42
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !227
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !235
  %39 = load ptr, ptr %20, align 8, !tbaa !230
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !233
  %42 = load ptr, ptr %0, align 8, !tbaa !224
  %43 = load ptr, ptr %39, align 8, !tbaa !42
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  store ptr %49, ptr %37, align 8, !tbaa !235
  store ptr %36, ptr %48, align 8, !tbaa !88
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !297

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !228
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !298

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 comdat align 2 !prof !41 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !230
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !228
  %9 = load ptr, ptr %0, align 8, !tbaa !224
  %10 = load ptr, ptr %6, align 8, !tbaa !42
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !110
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !227
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !234
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !230
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !233
  %28 = load ptr, ptr %25, align 8, !tbaa !42
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !88
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !299

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !294
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !296
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #18
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #16
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !42
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_716ValueHashTableOfItE10initializeEj, i64 2}
!36 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xercesc_2_716ValueHashTableOfItEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 2}
!38 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!39 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!46, !52, i64 776}
!46 = !{!"_ZTSN11xercesc_2_712WFXMLScannerE", !47, i64 0, !52, i64 776, !53, i64 784, !53, i64 792, !53, i64 800, !53, i64 808, !53, i64 816}
!47 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !48, i64 0, !49, i64 8, !51, i64 16, !51, i64 17, !51, i64 18, !51, i64 19, !51, i64 20, !51, i64 21, !51, i64 22, !51, i64 23, !51, i64 24, !51, i64 25, !51, i64 26, !51, i64 27, !51, i64 28, !51, i64 29, !51, i64 30, !51, i64 31, !51, i64 32, !51, i64 33, !51, i64 34, !51, i64 35, !51, i64 36, !51, i64 37, !51, i64 38, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !52, i64 64, !52, i64 68, !53, i64 72, !52, i64 80, !52, i64 84, !52, i64 88, !52, i64 92, !52, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !51, i64 176, !54, i64 184, !53, i64 264, !57, i64 272, !53, i64 280, !53, i64 288, !53, i64 296, !53, i64 304, !53, i64 312, !53, i64 320, !53, i64 328, !53, i64 336, !53, i64 344, !56, i64 352, !53, i64 360, !58, i64 368, !59, i64 392, !59, i64 432, !59, i64 472, !59, i64 512, !59, i64 552, !59, i64 592, !59, i64 632, !60, i64 672}
!48 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!49 = !{!"long", !50, i64 0}
!50 = !{!"omnipotent char", !44, i64 0}
!51 = !{!"bool", !50, i64 0}
!52 = !{!"int", !50, i64 0}
!53 = !{!"any pointer", !50, i64 0}
!54 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !55, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !52, i64 40, !53, i64 48, !51, i64 56, !56, i64 60, !51, i64 64, !53, i64 72}
!55 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!56 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !50, i64 0}
!57 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !50, i64 0}
!58 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !52, i64 0, !53, i64 8, !53, i64 16}
!59 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !52, i64 0, !52, i64 4, !52, i64 8, !51, i64 12, !53, i64 16, !53, i64 24, !53, i64 32}
!60 = !{!"_ZTSN11xercesc_2_79ElemStackE", !52, i64 0, !52, i64 4, !61, i64 8, !53, i64 48, !52, i64 56, !52, i64 60, !52, i64 64, !52, i64 68, !52, i64 72, !52, i64 76, !52, i64 80, !53, i64 88, !53, i64 96}
!61 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !62, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !52, i64 32, !52, i64 36}
!62 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!63 = !{!46, !53, i64 792}
!64 = !{!46, !53, i64 800}
!65 = !{!66, !53, i64 24}
!66 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIjEE", !51, i64 0, !52, i64 4, !52, i64 8, !53, i64 16, !53, i64 24}
!67 = !{!66, !53, i64 16}
!68 = !{!"VP", i32 0, i64 12, i64 -7405368087501025645, i64 12}
!69 = !{!46, !53, i64 808}
!70 = !{!71, !53, i64 24}
!71 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEE", !51, i64 0, !52, i64 4, !52, i64 8, !53, i64 16, !53, i64 24}
!72 = !{!71, !53, i64 16}
!73 = !{!46, !53, i64 816}
!74 = !{!46, !53, i64 784}
!75 = !{!47, !53, i64 360}
!76 = !{!66, !51, i64 0}
!77 = !{!66, !52, i64 4}
!78 = !{!66, !52, i64 8}
!79 = !{!71, !51, i64 0}
!80 = !{!71, !52, i64 4}
!81 = !{!71, !52, i64 8}
!82 = !{!83, !51, i64 8}
!83 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14XMLElementDeclEEE", !51, i64 8, !52, i64 12, !52, i64 16, !53, i64 24, !53, i64 32}
!84 = !{!83, !52, i64 12}
!85 = !{!83, !52, i64 16}
!86 = !{!83, !53, i64 24}
!87 = !{!83, !53, i64 32}
!88 = !{!53, !53, i64 0}
!89 = distinct !{!89, !90, !91}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !{!47, !52, i64 96}
!93 = !{!47, !53, i64 120}
!94 = !{!47, !51, i64 21}
!95 = !{!96, !97, i64 8}
!96 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !97, i64 8, !53, i64 16, !52, i64 24, !53, i64 32, !53, i64 40}
!97 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !50, i64 0}
!98 = !{!96, !53, i64 32}
!99 = !{!51, !51, i64 0}
!100 = !{i8 0, i8 2}
!101 = !{}
!102 = distinct !{!102, !90, !91}
!103 = !{!60, !52, i64 60}
!104 = !{!105, !53, i64 0}
!105 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !53, i64 0, !52, i64 8, !52, i64 12, !52, i64 16, !53, i64 24, !53, i64 32, !52, i64 40, !52, i64 44, !51, i64 48, !51, i64 49, !51, i64 50, !52, i64 52, !53, i64 56, !52, i64 64, !53, i64 72, !52, i64 80, !52, i64 84}
!106 = !{!107, !53, i64 16}
!107 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !62, i64 0, !53, i64 8, !53, i64 16, !108, i64 24, !52, i64 28, !51, i64 32}
!108 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !50, i64 0}
!109 = !{!47, !51, i64 18}
!110 = !{!52, !52, i64 0}
!111 = !{!54, !53, i64 16}
!112 = !{!113, !52, i64 163904}
!113 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !52, i64 0, !50, i64 4, !52, i64 32772, !50, i64 32776, !50, i64 49160, !49, i64 114696, !49, i64 114704, !114, i64 114712, !53, i64 114720, !51, i64 114728, !51, i64 114729, !53, i64 114736, !52, i64 114744, !50, i64 114748, !52, i64 163900, !52, i64 163904, !115, i64 163908, !51, i64 163912, !116, i64 163916, !52, i64 163920, !51, i64 163924, !51, i64 163925, !53, i64 163928, !53, i64 163936, !51, i64 163944, !51, i64 163945, !53, i64 163952, !117, i64 163960, !53, i64 163968, !51, i64 163976, !56, i64 163980, !53, i64 163984}
!114 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !50, i64 0}
!115 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !50, i64 0}
!116 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !50, i64 0}
!117 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !50, i64 0}
!118 = !{!119, !53, i64 0}
!119 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !53, i64 0, !52, i64 8}
!120 = distinct !{!120, !90, !91}
!121 = distinct !{!121, !90, !91}
!122 = !{!60, !53, i64 48}
!123 = !{!105, !52, i64 8}
!124 = !{!125, !53, i64 24}
!125 = !{!"_ZTSN11xercesc_2_75QNameE", !62, i64 0, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48}
!126 = !{!59, !52, i64 0}
!127 = !{!59, !53, i64 32}
!128 = !{!129, !129, i64 0}
!129 = !{!"short", !50, i64 0}
!130 = !{!47, !53, i64 288}
!131 = !{!47, !52, i64 52}
!132 = !{!47, !53, i64 104}
!133 = !{!134, !52, i64 12}
!134 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !51, i64 8, !52, i64 12, !52, i64 16, !53, i64 24, !53, i64 32}
!135 = !{!113, !53, i64 163968}
!136 = !{!50, !50, i64 0}
!137 = distinct !{!137, !90, !91}
!138 = distinct !{!138, !90, !91}
!139 = distinct !{!139, !90, !91}
!140 = !{!134, !53, i64 24}
!141 = !{!142, !53, i64 24}
!142 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !51, i64 0, !143, i64 4, !52, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !51, i64 48}
!143 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !50, i64 0}
!144 = !{!142, !143, i64 4}
!145 = !{!142, !51, i64 48}
!146 = !{!142, !53, i64 40}
!147 = !{!142, !51, i64 0}
!148 = !{!125, !53, i64 32}
!149 = !{!47, !52, i64 60}
!150 = !{!47, !53, i64 312}
!151 = !{!47, !52, i64 64}
!152 = distinct !{!152, !90, !91}
!153 = distinct !{!153, !90, !91}
!154 = !{!125, !52, i64 20}
!155 = distinct !{!155, !90, !91}
!156 = !{!47, !53, i64 112}
!157 = distinct !{!157, !90, !91}
!158 = !{!105, !52, i64 64}
!159 = distinct !{!159, !90, !91}
!160 = distinct !{!160, !90, !91}
!161 = !{!"function_entry_count", i64 2}
!162 = !{!163, !53, i64 0}
!163 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfItEE", !53, i64 0, !53, i64 8, !52, i64 16, !53, i64 24}
!164 = !{!163, !53, i64 8}
!165 = !{!163, !52, i64 16}
!166 = !{!163, !53, i64 24}
!167 = !{!"branch_weights", i32 2, i32 0}
!168 = !{!169, !53, i64 0}
!169 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_14XMLElementDeclEEE", !53, i64 0, !51, i64 8, !53, i64 16, !52, i64 24, !52, i64 28, !52, i64 32, !53, i64 40}
!170 = !{!169, !51, i64 8}
!171 = !{!169, !53, i64 16}
!172 = !{!169, !52, i64 24}
!173 = !{!169, !52, i64 28}
!174 = !{!169, !52, i64 32}
!175 = !{!169, !53, i64 40}
!176 = !{!"function_entry_count", i64 46}
!177 = !{!"VP", i32 0, i64 46, i64 3024540859536234746, i64 46}
!178 = !{!"branch_weights", i32 29, i32 17}
!179 = !{!180, !53, i64 16}
!180 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemItEE", !129, i64 0, !53, i64 8, !53, i64 16}
!181 = !{!"VP", i32 0, i64 17, i64 -1309333655503989351, i64 17}
!182 = !{!"branch_weights", i32 0, i32 17}
!183 = !{!"branch_weights", i32 17, i32 0}
!184 = distinct !{!184, !90, !91}
!185 = !{!"branch_weights", i32 46, i32 0}
!186 = !{!180, !129, i64 0}
!187 = !{!"VP", i32 0, i64 46, i64 8345045103670217670, i64 46}
!188 = !{!180, !53, i64 8}
!189 = !{!"branch_weights", i32 1, i32 127}
!190 = !{!"branch_weights", i32 47, i32 46}
!191 = !{!"VP", i32 0, i64 46, i64 -7405368087501025645, i64 46}
!192 = distinct !{!192, !90, !91}
!193 = !{!"branch_weights", i32 2881, i32 127}
!194 = distinct !{!194, !90, !91}
!195 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!196 = !{!"branch_weights", i32 0, i32 2}
!197 = !{!"VP", i32 0, i64 2, i64 -5147776714887549805, i64 2}
!198 = !{!47, !53, i64 136}
!199 = !{!47, !53, i64 144}
!200 = !{!47, !52, i64 56}
!201 = !{!47, !51, i64 22}
!202 = !{!47, !52, i64 40}
!203 = !{!47, !51, i64 23}
!204 = !{!47, !51, i64 17}
!205 = !{!47, !53, i64 344}
!206 = !{!47, !52, i64 44}
!207 = !{!47, !52, i64 48}
!208 = !{!209, !53, i64 8}
!209 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_14XMLElementDeclEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!210 = !{!209, !53, i64 0}
!211 = distinct !{!211, !90, !91}
!212 = distinct !{!212, !90, !91}
!213 = !{!209, !53, i64 16}
!214 = distinct !{!214, !90, !91}
!215 = !{!"function_entry_count", i64 832914}
!216 = !{!"branch_weights", i32 832914, i32 0}
!217 = !{!"function_entry_count", i64 201935}
!218 = !{!"branch_weights", i32 201935, i32 0}
!219 = !{!134, !53, i64 32}
!220 = distinct !{!220, !90, !91}
!221 = !{!59, !52, i64 4}
!222 = !{!"function_entry_count", i64 514}
!223 = !{!"branch_weights", i32 0, i32 514}
!224 = !{!225, !53, i64 0}
!225 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !53, i64 0, !51, i64 8, !53, i64 16, !52, i64 24, !52, i64 28, !53, i64 32}
!226 = !{!225, !51, i64 8}
!227 = !{!225, !53, i64 16}
!228 = !{!225, !52, i64 24}
!229 = !{!225, !52, i64 28}
!230 = !{!225, !53, i64 32}
!231 = !{!232, !53, i64 0}
!232 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !53, i64 0, !53, i64 8, !53, i64 16, !52, i64 24}
!233 = !{!232, !53, i64 16}
!234 = !{!232, !52, i64 24}
!235 = !{!232, !53, i64 8}
!236 = !{!54, !51, i64 56}
!237 = !{!113, !52, i64 0}
!238 = !{!113, !52, i64 32772}
!239 = distinct !{!239, !90, !91}
!240 = !{!113, !49, i64 114696}
!241 = !{!113, !51, i64 114729}
!242 = distinct !{!242, !90, !91}
!243 = distinct !{!243, !90, !91}
!244 = distinct !{!244, !90, !91}
!245 = !{!"function_entry_count", i64 917}
!246 = !{!"VP", i32 0, i64 917, i64 3024540859536234746, i64 917}
!247 = !{!"branch_weights", i32 0, i32 1}
!248 = !{!"VP", i32 0, i64 1234, i64 -1309333655503989351, i64 1234}
!249 = !{!"branch_weights", i32 917, i32 317}
!250 = !{!"branch_weights", i32 0, i32 1234}
!251 = !{!"branch_weights", i32 0, i32 917}
!252 = !{!96, !53, i64 40}
!253 = distinct !{!253, !90, !91}
!254 = distinct !{!254, !90, !91}
!255 = distinct !{!255, !90, !91}
!256 = !{!"function_entry_count", i64 2718768}
!257 = !{!"branch_weights", i32 0, i32 2718768}
!258 = !{!"branch_weights", i32 2718764, i32 4}
!259 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!260 = !{!"function_entry_count", i64 789922}
!261 = !{!"branch_weights", i32 0, i32 789922}
!262 = !{!"branch_weights", i32 284, i32 789638}
!263 = !{!"branch_weights", i32 789638, i32 41628303}
!264 = distinct !{!264, !90, !91}
!265 = !{!"branch_weights", i32 789636, i32 2}
!266 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!267 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!268 = !{!"branch_weights", i32 127, i32 2881}
!269 = distinct !{!269, !90, !91}
!270 = distinct !{!270, !90, !91}
!271 = distinct !{!271, !90, !91}
!272 = distinct !{!272, !90, !91}
!273 = distinct !{!273, !90, !91}
!274 = distinct !{!274, !90, !91}
!275 = distinct !{!275, !90, !91}
!276 = !{!277, !53, i64 0}
!277 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_14XMLElementDeclEEEEE", !53, i64 0, !53, i64 8}
!278 = !{!277, !53, i64 8}
!279 = distinct !{!279, !90, !91}
!280 = distinct !{!280, !90, !91}
!281 = !{!"function_entry_count", i64 10}
!282 = !{!134, !52, i64 16}
!283 = !{!"branch_weights", i32 0, i32 10}
!284 = distinct !{!284, !90, !91}
!285 = !{!"function_entry_count", i64 833040}
!286 = !{!"branch_weights", i32 17, i32 833023}
!287 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!288 = !{!"branch_weights", i32 1, i32 135}
!289 = !{!"VP", i32 0, i64 17, i64 -7405368087501025645, i64 17}
!290 = !{!"branch_weights", i32 2177, i32 135}
!291 = distinct !{!291, !90, !91}
!292 = distinct !{!292, !90, !91}
!293 = distinct !{!293, !90, !91}
!294 = !{!295, !53, i64 0}
!295 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEE", !53, i64 0, !53, i64 8}
!296 = !{!295, !53, i64 8}
!297 = distinct !{!297, !90, !91}
!298 = distinct !{!298, !90, !91}
!299 = distinct !{!299, !90, !91}
