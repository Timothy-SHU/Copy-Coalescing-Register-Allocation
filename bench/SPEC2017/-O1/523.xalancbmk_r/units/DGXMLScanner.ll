; ModuleID = 'DGXMLScanner.cpp'
source_filename = "DGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", ptr, ptr, ptr, ptr, i32, ptr, ptr }
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
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::DTDScanner" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem.5" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::NameIdPool.3" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.6" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.7" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj = comdat any

$_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712DGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712DGXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev = comdat any

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

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_712DGXMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DGXMLScannerE, ptr @_ZN11xercesc_2_712DGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712DGXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712DGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712DGXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712DGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712DGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712DGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712DGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712DGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712DGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712DGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712DGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712DGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712DGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712DGXMLScanner15resolveSystemIdEPKtS2_] }, align 8
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
@.str = private unnamed_addr constant [17 x i8] c"DGXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZZN11xercesc_2_712DGXMLScanner13scanCDSectionEvE10CDataClose = internal constant [3 x i16] [i16 93, i16 62, i16 0], align 2
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTSN11xercesc_2_712DGXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712DGXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712DGXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DGXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.5 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1

@_ZN11xercesc_2_712DGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DGXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DGXMLScannerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !45 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  invoke void @_ZN11xercesc_2_712DGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(832) %0)
          to label %17 unwind label %7

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %9 = extractvalue { ptr, i32 } %8, 1
  %10 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = extractvalue { ptr, i32 } %8, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #16
  invoke void @__cxa_rethrow() #18
          to label %32 unwind label %15

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %18 unwind label %29

17:                                               ; preds = %4
  ret void

18:                                               ; preds = %15, %7
  %19 = phi ptr [ null, %15 ], [ @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv, %7 ]
  %20 = phi ptr [ null, %15 ], [ %0, %7 ]
  %21 = phi { ptr, i32 } [ %16, %15 ], [ %8, %7 ]
  %22 = icmp eq ptr %20, null
  %23 = or i1 %11, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(832) %20)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable

28:                                               ; preds = %18, %24
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  resume { ptr, i32 } %21

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #17
  unreachable

32:                                               ; preds = %12
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(832) %0) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9)
          to label %16 unwind label %13

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable

16:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #16
  br label %17

17:                                               ; preds = %16, %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !71
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(48) %19) #16
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %27) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #16
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !73
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %32)
          to label %38 unwind label %35

35:                                               ; preds = %34
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #17
  unreachable

38:                                               ; preds = %34
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %32) #16
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !74
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %41)
          to label %47 unwind label %44

44:                                               ; preds = %43
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #17
  unreachable

47:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %41) #16
  br label %48

48:                                               ; preds = %47, %39
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  store i8 0, ptr %4, align 8, !tbaa !76
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 1
  store i32 0, ptr %6, align 4, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 2
  store i32 8, ptr %7, align 8, !tbaa !78
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 3
  store ptr null, ptr %8, align 8, !tbaa !70
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %4, i64 0, i32 4
  store ptr %5, ptr %9, align 8, !tbaa !68
  %10 = load ptr, ptr %5, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 64)
          to label %14 unwind label %100

14:                                               ; preds = %1
  store ptr %13, ptr %8, align 8, !tbaa !70
  %15 = load i32, ptr %7, align 8, !tbaa !78
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %13, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  store ptr %4, ptr %18, align 8, !tbaa !50
  %19 = load ptr, ptr %2, align 8, !tbaa !75
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %19)
  invoke void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef null)
          to label %21 unwind label %102

21:                                               ; preds = %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  store ptr %20, ptr %22, align 8, !tbaa !71
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %20)
  %23 = load ptr, ptr %2, align 8, !tbaa !75
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %23)
  %25 = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 29, i32 noundef 128, ptr noundef %25)
          to label %26 unwind label %104

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  store ptr %24, ptr %27, align 8, !tbaa !72
  %28 = load ptr, ptr %2, align 8, !tbaa !75
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %28)
  %30 = load ptr, ptr %2, align 8, !tbaa !75
  %31 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %30)
          to label %32 unwind label %106

32:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %33 unwind label %108

33:                                               ; preds = %32
  %34 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %34, ptr %29, align 8, !tbaa !79
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 1
  store i8 0, ptr %35, align 8, !tbaa !81
  %36 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 2
  store ptr null, ptr %36, align 8, !tbaa !82
  %37 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 3
  store i32 131, ptr %37, align 8, !tbaa !83
  %38 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 4
  store i32 131, ptr %38, align 4, !tbaa !84
  %39 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 5
  store i32 0, ptr %39, align 8, !tbaa !85
  %40 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 6
  store ptr null, ptr %40, align 8, !tbaa !86
  %41 = load ptr, ptr %34, align 8, !tbaa !47
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef 1048)
          to label %45 unwind label %106

45:                                               ; preds = %33
  store ptr %44, ptr %36, align 8, !tbaa !82
  %46 = load i32, ptr %37, align 8, !tbaa !83
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %45
  %49 = zext i32 %46 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ 0, %48 ], [ %54, %50 ]
  %52 = load ptr, ptr %36, align 8, !tbaa !82
  %53 = getelementptr inbounds ptr, ptr %52, i64 %51
  store ptr null, ptr %53, align 8, !tbaa !87
  %54 = add nuw nsw i64 %51, 1
  %55 = icmp eq i64 %54, %49
  br i1 %55, label %56, label %50, !llvm.loop !88

56:                                               ; preds = %50, %45
  store ptr %31, ptr %40, align 8, !tbaa !86
  %57 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  store ptr %29, ptr %57, align 8, !tbaa !73
  %58 = load ptr, ptr %2, align 8, !tbaa !75
  %59 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %58)
  %60 = load ptr, ptr %2, align 8, !tbaa !75
  %61 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %60)
          to label %62 unwind label %112

62:                                               ; preds = %56
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %63 unwind label %114

63:                                               ; preds = %62
  %64 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %64, ptr %59, align 8, !tbaa !79
  %65 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %59, i64 0, i32 1
  store i8 0, ptr %65, align 8, !tbaa !81
  %66 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %59, i64 0, i32 2
  store ptr null, ptr %66, align 8, !tbaa !82
  %67 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %59, i64 0, i32 3
  store i32 7, ptr %67, align 8, !tbaa !83
  %68 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %59, i64 0, i32 4
  store i32 7, ptr %68, align 4, !tbaa !84
  %69 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %59, i64 0, i32 5
  store i32 0, ptr %69, align 8, !tbaa !85
  %70 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %59, i64 0, i32 6
  store ptr null, ptr %70, align 8, !tbaa !86
  %71 = load ptr, ptr %64, align 8, !tbaa !47
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %64, i64 noundef 56)
          to label %75 unwind label %112

75:                                               ; preds = %63
  store ptr %74, ptr %66, align 8, !tbaa !82
  %76 = load i32, ptr %67, align 8, !tbaa !83
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %75
  %79 = zext i32 %76 to i64
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i64 [ 0, %78 ], [ %84, %80 ]
  %82 = load ptr, ptr %66, align 8, !tbaa !82
  %83 = getelementptr inbounds ptr, ptr %82, i64 %81
  store ptr null, ptr %83, align 8, !tbaa !87
  %84 = add nuw nsw i64 %81, 1
  %85 = icmp eq i64 %84, %79
  br i1 %85, label %86, label %80, !llvm.loop !88

86:                                               ; preds = %80, %75
  store ptr %61, ptr %70, align 8, !tbaa !86
  %87 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  store ptr %59, ptr %87, align 8, !tbaa !74
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %89 = load ptr, ptr %88, align 8, !tbaa !91
  %90 = icmp eq ptr %89, null
  br i1 %90, label %120, label %91

91:                                               ; preds = %86
  %92 = load ptr, ptr %89, align 8, !tbaa !47
  %93 = getelementptr inbounds ptr, ptr %92, i64 12
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef zeroext i1 %94(ptr noundef nonnull align 8 dereferenceable(40) %89)
  br i1 %95, label %122, label %96

96:                                               ; preds = %91
  %97 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %98 = load ptr, ptr %2, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef nonnull @.str, i32 noundef 1860, i32 noundef 44, ptr noundef %98)
          to label %99 unwind label %118

99:                                               ; preds = %96
  tail call void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

100:                                              ; preds = %1
  %101 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef %3) #16
  br label %123

102:                                              ; preds = %14
  %103 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #16
  br label %123

104:                                              ; preds = %21
  %105 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #16
  br label %123

106:                                              ; preds = %33, %26
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %110

108:                                              ; preds = %32
  %109 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #16
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi { ptr, i32 } [ %107, %106 ], [ %109, %108 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #16
  br label %123

112:                                              ; preds = %63, %56
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %116

114:                                              ; preds = %62
  %115 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %61, ptr noundef %60) #16
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi { ptr, i32 } [ %113, %112 ], [ %115, %114 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %59, ptr noundef %58) #16
  br label %123

118:                                              ; preds = %96
  %119 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %97) #16
  br label %123

120:                                              ; preds = %86
  %121 = load ptr, ptr %22, align 8, !tbaa !71
  store ptr %121, ptr %88, align 8, !tbaa !91
  br label %122

122:                                              ; preds = %91, %120
  ret void

123:                                              ; preds = %118, %116, %110, %104, %102, %100
  %124 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ], [ %111, %110 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ]
  resume { ptr, i32 } %124
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %9 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %9, i8 0, i64 36, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  invoke void @_ZN11xercesc_2_712DGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(832) %0)
          to label %21 unwind label %11

11:                                               ; preds = %8
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %13 = extractvalue { ptr, i32 } %12, 1
  %14 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = extractvalue { ptr, i32 } %12, 0
  %18 = tail call ptr @__cxa_begin_catch(ptr %17) #16
  invoke void @__cxa_rethrow() #18
          to label %36 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %33

21:                                               ; preds = %8
  ret void

22:                                               ; preds = %19, %11
  %23 = phi ptr [ null, %19 ], [ @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv, %11 ]
  %24 = phi ptr [ null, %19 ], [ %0, %11 ]
  %25 = phi { ptr, i32 } [ %20, %19 ], [ %12, %11 ]
  %26 = icmp eq ptr %24, null
  %27 = or i1 %15, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(832) %24)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #17
  unreachable

32:                                               ; preds = %22, %28
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  resume { ptr, i32 } %25

33:                                               ; preds = %19
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #17
  unreachable

36:                                               ; preds = %16
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(832) %0)
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712DGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  tail call void @_ZN11xercesc_2_712DGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(832) %0)
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(832) %0) unnamed_addr #9 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712DGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(832) %0) unnamed_addr #9 align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !96
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !96
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %0, align 8, !tbaa !47
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %10 unwind label %18

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %54 unwind label %18

18:                                               ; preds = %73, %69, %66, %65, %59, %58, %55, %54, %14, %2
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #16
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18, %31
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #16
  tail call void @__cxa_end_catch() #16
  br label %26

26:                                               ; preds = %24, %70, %114, %73
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %30 unwind label %27

27:                                               ; preds = %26
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #17
  unreachable

30:                                               ; preds = %26
  ret void

31:                                               ; preds = %18
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #16
  %33 = icmp eq i32 %21, %32
  br i1 %33, label %24, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #16
  %36 = icmp eq i32 %21, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = tail call ptr @__cxa_begin_catch(ptr %20) #16
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %39, align 1, !tbaa !98
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !99
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %91

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8, !tbaa !47
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %104 unwind label %82

49:                                               ; preds = %34
  %50 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %51 = icmp eq i32 %21, %50
  br i1 %51, label %52, label %124

52:                                               ; preds = %49
  %53 = tail call ptr @__cxa_begin_catch(ptr %20) #16
  invoke void @__cxa_rethrow() #18
          to label %143 unwind label %77

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
          to label %70 unwind label %18

59:                                               ; preds = %57
  %60 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(832) %0)
          to label %61 unwind label %18

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %63 = load i8, ptr %62, align 8, !tbaa !102, !range !103, !noundef !104
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %66 unwind label %18

66:                                               ; preds = %65, %61
  %67 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %68 unwind label %18

68:                                               ; preds = %66
  br i1 %67, label %70, label %69

69:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %70 unwind label %18

70:                                               ; preds = %69, %68, %58
  %71 = load ptr, ptr %11, align 8, !tbaa !97
  %72 = icmp eq ptr %71, null
  br i1 %72, label %26, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 8, !tbaa !47
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %26 unwind label %18

77:                                               ; preds = %52
  %78 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %79 unwind label %140

79:                                               ; preds = %77
  %80 = extractvalue { ptr, i32 } %78, 1
  %81 = extractvalue { ptr, i32 } %78, 0
  br label %124

82:                                               ; preds = %104, %102, %100, %44
  %83 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %84 = extractvalue { ptr, i32 } %83, 0
  %85 = extractvalue { ptr, i32 } %83, 1
  %86 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %119

88:                                               ; preds = %82
  %89 = tail call ptr @__cxa_begin_catch(ptr %84) #16
  invoke void @__cxa_rethrow() #18
          to label %90 unwind label %109

90:                                               ; preds = %88
  unreachable

91:                                               ; preds = %37
  %92 = add i32 %41, -5
  %93 = icmp ult i32 %92, 397
  %94 = and i32 %41, -2
  %95 = icmp ne i32 %94, 402
  %96 = or i1 %93, %95
  %97 = load ptr, ptr %38, align 8, !tbaa !47
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  br i1 %96, label %100, label %102

100:                                              ; preds = %91
  %101 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %104 unwind label %82

102:                                              ; preds = %91
  %103 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %104 unwind label %82

104:                                              ; preds = %102, %100, %44
  %105 = phi i32 [ 7, %44 ], [ 292, %100 ], [ 157, %102 ]
  %106 = phi ptr [ %48, %44 ], [ %101, %100 ], [ %103, %102 ]
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 4
  %108 = load ptr, ptr %107, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %105, ptr noundef %106, ptr noundef %108, ptr noundef null, ptr noundef null)
          to label %114 unwind label %82

109:                                              ; preds = %88
  %110 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %111 unwind label %140

111:                                              ; preds = %109
  %112 = extractvalue { ptr, i32 } %110, 1
  %113 = extractvalue { ptr, i32 } %110, 0
  br label %119

114:                                              ; preds = %104
  invoke void @__cxa_end_catch()
          to label %26 unwind label %115

115:                                              ; preds = %114
  %116 = landingpad { ptr, i32 }
          cleanup
  %117 = extractvalue { ptr, i32 } %116, 0
  %118 = extractvalue { ptr, i32 } %116, 1
  br label %124

119:                                              ; preds = %111, %82
  %120 = phi i64 [ 0, %111 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %82 ]
  %121 = phi ptr [ null, %111 ], [ %6, %82 ]
  %122 = phi i32 [ %112, %111 ], [ %85, %82 ]
  %123 = phi ptr [ %113, %111 ], [ %84, %82 ]
  invoke void @__cxa_end_catch()
          to label %124 unwind label %140

124:                                              ; preds = %119, %115, %79, %49
  %125 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %115 ], [ 0, %79 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %49 ], [ %120, %119 ]
  %126 = phi ptr [ %6, %115 ], [ null, %79 ], [ %6, %49 ], [ %121, %119 ]
  %127 = phi i32 [ %118, %115 ], [ %80, %79 ], [ %21, %49 ], [ %122, %119 ]
  %128 = phi ptr [ %117, %115 ], [ %81, %79 ], [ %20, %49 ], [ %123, %119 ]
  %129 = icmp eq ptr %126, null
  %130 = icmp eq i64 %125, 0
  %131 = or i1 %130, %129
  br i1 %131, label %137, label %132

132:                                              ; preds = %124
  %133 = inttoptr i64 %125 to ptr
  invoke void %133(ptr noundef nonnull align 8 dereferenceable(80) %126)
          to label %137 unwind label %134

134:                                              ; preds = %132
  %135 = landingpad { ptr, i32 }
          catch ptr null
  %136 = extractvalue { ptr, i32 } %135, 0
  tail call void @__clang_call_terminate(ptr %136) #17
  unreachable

137:                                              ; preds = %124, %132
  %138 = insertvalue { ptr, i32 } poison, ptr %128, 0
  %139 = insertvalue { ptr, i32 } %138, i32 %127, 1
  resume { ptr, i32 } %139

140:                                              ; preds = %119, %109, %77
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  tail call void @__clang_call_terminate(ptr %142) #17
  unreachable

143:                                              ; preds = %52
  unreachable
}

declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #5

declare void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(832) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 1, ptr %2, align 1, !tbaa !106
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  br label %10

10:                                               ; preds = %1, %87
  %11 = load i8, ptr %2, align 1, !tbaa !106, !range !103, !noundef !104
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %87, label %13

13:                                               ; preds = %10, %62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %14 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %15 unwind label %22

15:                                               ; preds = %13
  switch i32 %14, label %52 [
    i32 1, label %16
    i32 4, label %25
    i32 0, label %39
    i32 2, label %47
    i32 3, label %48
    i32 5, label %49
    i32 6, label %50
  ]

16:                                               ; preds = %15
  %17 = load ptr, ptr %0, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %62 unwind label %22, !llvm.loop !107

20:                                               ; preds = %52
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %65

22:                                               ; preds = %13, %16, %42, %43, %47, %48, %49, %50, %61
  %23 = phi i1 [ false, %13 ], [ true, %42 ], [ true, %43 ], [ true, %47 ], [ true, %48 ], [ true, %49 ], [ true, %50 ], [ true, %61 ], [ false, %16 ]
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %65

25:                                               ; preds = %15
  %26 = load i32, ptr %5, align 4, !tbaa !108
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %6)
          to label %30 unwind label %36

30:                                               ; preds = %28
  %31 = load ptr, ptr %29, align 8, !tbaa !109
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !111
  %34 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %33)
          to label %35 unwind label %36

35:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %34, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %38 unwind label %36

36:                                               ; preds = %30, %35, %28
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %65

38:                                               ; preds = %35, %25
  store i8 0, ptr %2, align 1, !tbaa !106
  br label %62, !llvm.loop !107

39:                                               ; preds = %15
  %40 = load i32, ptr %4, align 4, !tbaa !108
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %43 unwind label %22

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr %0, align 8, !tbaa !47
  %45 = getelementptr inbounds ptr, ptr %44, i64 11
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(832) %0)
          to label %55 unwind label %22

47:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %55 unwind label %22

48:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_712DGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %55 unwind label %22

49:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %55 unwind label %22

50:                                               ; preds = %15
  %51 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %55 unwind label %22

52:                                               ; preds = %15, %54
  %53 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %54 unwind label %20

54:                                               ; preds = %52
  switch i16 %53, label %52 [
    i16 60, label %55
    i16 0, label %55
  ]

55:                                               ; preds = %54, %54, %50, %49, %48, %47, %43
  %56 = load i32, ptr %3, align 4, !tbaa !114
  %57 = load ptr, ptr %9, align 8, !tbaa !115
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %57, i64 0, i32 15
  %59 = load i32, ptr %58, align 8, !tbaa !116
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %62 unwind label %22

62:                                               ; preds = %16, %55, %61, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %63 = load i8, ptr %2, align 1, !tbaa !106, !range !103, !noundef !104
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %87, label %13

65:                                               ; preds = %20, %22, %36
  %66 = phi { ptr, i32 } [ %37, %36 ], [ %21, %20 ], [ %24, %22 ]
  %67 = phi i1 [ false, %36 ], [ true, %20 ], [ %23, %22 ]
  %68 = extractvalue { ptr, i32 } %66, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %69 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #16
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = extractvalue { ptr, i32 } %66, 0
  %73 = call ptr @__cxa_begin_catch(ptr %72) #16
  br i1 %67, label %74, label %77

74:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %77 unwind label %75

75:                                               ; preds = %81, %74
  %76 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %91 unwind label %93

77:                                               ; preds = %74, %71
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %79 = load ptr, ptr %78, align 8, !tbaa !97
  %80 = icmp eq ptr %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %73, align 8, !tbaa !122
  %83 = load ptr, ptr %79, align 8, !tbaa !47
  %84 = getelementptr inbounds ptr, ptr %83, i64 7
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull align 8 dereferenceable(72) %82)
          to label %86 unwind label %75

86:                                               ; preds = %77, %81
  call void @__cxa_end_catch()
  br label %87

87:                                               ; preds = %62, %10, %86
  %88 = load i8, ptr %2, align 1, !tbaa !106, !range !103, !noundef !104
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %10, !llvm.loop !124

90:                                               ; preds = %87
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret i1 true

91:                                               ; preds = %65, %75
  %92 = phi { ptr, i32 } [ %76, %75 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  resume { ptr, i32 } %92

93:                                               ; preds = %75
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 78, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  tail call void @__cxa_free_exception(ptr %7) #16
  br label %223

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
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
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #16
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %28 = call ptr @__cxa_begin_catch(ptr %22) #16
  %29 = load ptr, ptr %27, align 8, !tbaa !97
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %28, align 8, !tbaa !122
  %33 = load ptr, ptr %29, align 8, !tbaa !47
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
          to label %41 unwind label %228

38:                                               ; preds = %31, %26
  invoke void @__cxa_end_catch()
          to label %17 unwind label %39, !llvm.loop !125

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
  %47 = load ptr, ptr %0, align 8, !tbaa !47
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %46)
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
  %56 = load i32, ptr %55, align 4, !tbaa !108
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %60 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %59)
          to label %61 unwind label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %60, align 8, !tbaa !109
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !111
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  store i8 1, ptr %4, align 1, !tbaa !106
  switch i32 %18, label %128 [
    i32 0, label %72
    i32 2, label %123
    i32 3, label %124
    i32 5, label %125
    i32 6, label %126
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !108
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %119 unwind label %79

77:                                               ; preds = %128
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %81

79:                                               ; preds = %76, %119, %123, %124, %125, %126, %138, %146, %147, %152
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
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %85

85:                                               ; preds = %20, %81, %67, %50, %41
  %86 = phi i32 [ %53, %50 ], [ %70, %67 ], [ %84, %81 ], [ %44, %41 ], [ %23, %20 ]
  %87 = phi ptr [ %52, %50 ], [ %69, %67 ], [ %83, %81 ], [ %43, %41 ], [ %22, %20 ]
  %88 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #16
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = call ptr @__cxa_begin_catch(ptr %87) #16
  call void @__cxa_end_catch() #16
  br label %92

92:                                               ; preds = %194, %54, %66, %45, %156, %90, %97
  %93 = phi i1 [ true, %45 ], [ false, %90 ], [ false, %97 ], [ true, %156 ], [ false, %66 ], [ false, %54 ], [ false, %194 ]
  br i1 %93, label %208, label %204

94:                                               ; preds = %85
  %95 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #16
  %96 = icmp eq i32 %86, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call ptr @__cxa_begin_catch(ptr %87) #16
  call void @__cxa_end_catch() #16
  br label %92

99:                                               ; preds = %94
  %100 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #16
  %101 = icmp eq i32 %86, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %99
  %103 = call ptr @__cxa_begin_catch(ptr %87) #16
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %104, align 1, !tbaa !98
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !99
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %171

109:                                              ; preds = %102
  %110 = load ptr, ptr %103, align 8, !tbaa !47
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %184 unwind label %162

114:                                              ; preds = %99
  %115 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %116 = icmp eq i32 %86, %115
  br i1 %116, label %117, label %209

117:                                              ; preds = %114
  %118 = call ptr @__cxa_begin_catch(ptr %87) #16
  invoke void @__cxa_rethrow() #18
          to label %231 unwind label %157

119:                                              ; preds = %76, %72
  %120 = load ptr, ptr %0, align 8, !tbaa !47
  %121 = getelementptr inbounds ptr, ptr %120, i64 11
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(832) %0)
          to label %131 unwind label %79

123:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %131 unwind label %79

124:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_712DGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %131 unwind label %79

125:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %131 unwind label %79

126:                                              ; preds = %71
  %127 = invoke noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %131 unwind label %79

128:                                              ; preds = %71, %130
  %129 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %130 unwind label %77

130:                                              ; preds = %128
  switch i16 %129, label %128 [
    i16 60, label %131
    i16 0, label %131
  ]

131:                                              ; preds = %130, %130, %126, %125, %124, %123, %119
  %132 = load i32, ptr %3, align 4, !tbaa !114
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !115
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %134, i64 0, i32 15
  %136 = load i32, ptr %135, align 8, !tbaa !116
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %139, label %138

138:                                              ; preds = %131
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %139 unwind label %79

139:                                              ; preds = %138, %131
  %140 = load i8, ptr %4, align 1, !tbaa !106, !range !103, !noundef !104
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %156

142:                                              ; preds = %139
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %144 = load i8, ptr %143, align 8, !tbaa !102, !range !103, !noundef !104
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %147 unwind label %79

147:                                              ; preds = %146, %142
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %148 unwind label %79

148:                                              ; preds = %147
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %150 = load ptr, ptr %149, align 8, !tbaa !97
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load ptr, ptr %150, align 8, !tbaa !47
  %154 = getelementptr inbounds ptr, ptr %153, i64 5
  %155 = load ptr, ptr %154, align 8
  invoke void %155(ptr noundef nonnull align 8 dereferenceable(8) %150)
          to label %156 unwind label %79

156:                                              ; preds = %152, %148, %139
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %92

157:                                              ; preds = %117
  %158 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %159 unwind label %228

159:                                              ; preds = %157
  %160 = extractvalue { ptr, i32 } %158, 1
  %161 = extractvalue { ptr, i32 } %158, 0
  br label %209

162:                                              ; preds = %184, %182, %180, %109
  %163 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %164 = extractvalue { ptr, i32 } %163, 0
  %165 = extractvalue { ptr, i32 } %163, 1
  %166 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %199

168:                                              ; preds = %162
  %169 = call ptr @__cxa_begin_catch(ptr %164) #16
  invoke void @__cxa_rethrow() #18
          to label %170 unwind label %189

170:                                              ; preds = %168
  unreachable

171:                                              ; preds = %102
  %172 = add i32 %106, -5
  %173 = icmp ult i32 %172, 397
  %174 = and i32 %106, -2
  %175 = icmp ne i32 %174, 402
  %176 = or i1 %173, %175
  %177 = load ptr, ptr %103, align 8, !tbaa !47
  %178 = getelementptr inbounds ptr, ptr %177, i64 2
  %179 = load ptr, ptr %178, align 8
  br i1 %176, label %180, label %182

180:                                              ; preds = %171
  %181 = invoke noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %184 unwind label %162

182:                                              ; preds = %171
  %183 = invoke noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %184 unwind label %162

184:                                              ; preds = %182, %180, %109
  %185 = phi i32 [ 7, %109 ], [ 292, %180 ], [ 157, %182 ]
  %186 = phi ptr [ %113, %109 ], [ %181, %180 ], [ %183, %182 ]
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 4
  %188 = load ptr, ptr %187, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %185, ptr noundef %186, ptr noundef %188, ptr noundef null, ptr noundef null)
          to label %194 unwind label %162

189:                                              ; preds = %168
  %190 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %191 unwind label %228

191:                                              ; preds = %189
  %192 = extractvalue { ptr, i32 } %190, 1
  %193 = extractvalue { ptr, i32 } %190, 0
  br label %199

194:                                              ; preds = %184
  invoke void @__cxa_end_catch()
          to label %92 unwind label %195

195:                                              ; preds = %194
  %196 = landingpad { ptr, i32 }
          cleanup
  %197 = extractvalue { ptr, i32 } %196, 0
  %198 = extractvalue { ptr, i32 } %196, 1
  br label %209

199:                                              ; preds = %162, %191
  %200 = phi i64 [ 0, %191 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %162 ]
  %201 = phi ptr [ null, %191 ], [ %16, %162 ]
  %202 = phi i32 [ %192, %191 ], [ %165, %162 ]
  %203 = phi ptr [ %193, %191 ], [ %164, %162 ]
  invoke void @__cxa_end_catch()
          to label %209 unwind label %228

204:                                              ; preds = %92
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %208 unwind label %205

205:                                              ; preds = %204
  %206 = landingpad { ptr, i32 }
          catch ptr null
  %207 = extractvalue { ptr, i32 } %206, 0
  call void @__clang_call_terminate(ptr %207) #17
  unreachable

208:                                              ; preds = %92, %204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i1 %93

209:                                              ; preds = %199, %195, %159, %114
  %210 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %195 ], [ 0, %159 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %114 ], [ %200, %199 ]
  %211 = phi ptr [ %16, %195 ], [ null, %159 ], [ %16, %114 ], [ %201, %199 ]
  %212 = phi i32 [ %198, %195 ], [ %160, %159 ], [ %86, %114 ], [ %202, %199 ]
  %213 = phi ptr [ %197, %195 ], [ %161, %159 ], [ %87, %114 ], [ %203, %199 ]
  %214 = icmp eq ptr %211, null
  %215 = icmp eq i64 %210, 0
  %216 = or i1 %215, %214
  br i1 %216, label %222, label %217

217:                                              ; preds = %209
  %218 = inttoptr i64 %210 to ptr
  invoke void %218(ptr noundef nonnull align 8 dereferenceable(80) %211)
          to label %222 unwind label %219

219:                                              ; preds = %217
  %220 = landingpad { ptr, i32 }
          catch ptr null
  %221 = extractvalue { ptr, i32 } %220, 0
  call void @__clang_call_terminate(ptr %221) #17
  unreachable

222:                                              ; preds = %209, %217
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %223

223:                                              ; preds = %222, %11
  %224 = phi i32 [ %212, %222 ], [ %14, %11 ]
  %225 = phi ptr [ %213, %222 ], [ %13, %11 ]
  %226 = insertvalue { ptr, i32 } poison, ptr %225, 0
  %227 = insertvalue { ptr, i32 } %226, i32 %224, 1
  resume { ptr, i32 } %227

228:                                              ; preds = %199, %189, %157, %36
  %229 = landingpad { ptr, i32 }
          catch ptr null
  %230 = extractvalue { ptr, i32 } %229, 0
  call void @__clang_call_terminate(ptr %230) #17
  unreachable

231:                                              ; preds = %117
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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

declare noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store i8 1, ptr %1, align 1, !tbaa !106
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !108
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
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 77, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #16
  resume { ptr, i32 } %17

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !126, !range !103, !noundef !104
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !127
  %25 = add i32 %5, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %28, i64 0, i32 13
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %29, %22 ], [ %31, %30 ]
  %34 = load i32, ptr %33, align 4, !tbaa !114
  %35 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %36 = load ptr, ptr %35, align 8, !tbaa !109
  %37 = load i32, ptr %4, align 4, !tbaa !108
  %38 = icmp eq i32 %37, 0
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !111
  %42 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %41)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !115
  %45 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %44, ptr noundef %42)
  br i1 %45, label %51, label %46

46:                                               ; preds = %32
  %47 = load ptr, ptr %40, align 8, !tbaa !111
  %48 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %47)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %49

49:                                               ; preds = %49, %46
  %50 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %39)
  switch i16 %50, label %49 [
    i16 62, label %165
    i16 0, label %165
  ]

51:                                               ; preds = %32
  %52 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !128
  %54 = load ptr, ptr %43, align 8, !tbaa !115
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %54, i64 0, i32 15
  %56 = load i32, ptr %55, align 8, !tbaa !116
  %57 = icmp eq i32 %53, %56
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278)
  br label %59

59:                                               ; preds = %58, %51
  %60 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %39, i1 noundef zeroext false)
  %61 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %39, i16 noundef zeroext 62)
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr %35, align 8, !tbaa !109
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !111
  %66 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %65)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %66, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %67

67:                                               ; preds = %62, %59
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %69 = load i8, ptr %68, align 8, !tbaa !102, !range !103, !noundef !104
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %144, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 9
  %73 = load i8, ptr %72, align 1, !tbaa !129, !range !103, !noundef !104
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %71
  %76 = load ptr, ptr %35, align 8, !tbaa !109
  %77 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %76, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !130
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %82 = load ptr, ptr %81, align 8, !tbaa !91
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %76, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !111
  %85 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %84)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %82, i32 noundef 110, ptr noundef %85, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %86

86:                                               ; preds = %80, %75, %71
  %87 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 10
  %88 = load i8, ptr %87, align 2, !tbaa !133, !range !103, !noundef !104
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %35, align 8, !tbaa !109
  %92 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %91, i64 0, i32 1
  %93 = load i32, ptr %92, align 4, !tbaa !130
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %97 = load ptr, ptr %96, align 8, !tbaa !91
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %91, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !111
  %100 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %99)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef 113, ptr noundef %100, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %101

101:                                              ; preds = %95, %90, %86
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %103 = load ptr, ptr %102, align 8, !tbaa !91
  %104 = load ptr, ptr %35, align 8, !tbaa !109
  %105 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !134
  %107 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %35, i64 0, i32 3
  %108 = load i32, ptr %107, align 8, !tbaa !135
  %109 = load ptr, ptr %103, align 8, !tbaa !47
  %110 = getelementptr inbounds ptr, ptr %109, i64 2
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef i32 %111(ptr noundef nonnull align 8 dereferenceable(40) %103, ptr noundef %104, ptr noundef %106, i32 noundef %108)
  %113 = icmp sgt i32 %112, -1
  br i1 %113, label %114, label %144

114:                                              ; preds = %101
  %115 = load i32, ptr %107, align 8, !tbaa !135
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load ptr, ptr %102, align 8, !tbaa !91
  %119 = load ptr, ptr %35, align 8, !tbaa !109
  %120 = load ptr, ptr %119, align 8, !tbaa !47
  %121 = getelementptr inbounds ptr, ptr %120, i64 15
  %122 = load ptr, ptr %121, align 8
  %123 = tail call noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(33) %119)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %118, i32 noundef 16, ptr noundef %123, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %144

124:                                              ; preds = %114
  %125 = icmp ult i32 %112, %115
  %126 = load ptr, ptr %102, align 8, !tbaa !91
  br i1 %125, label %133, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %35, align 8, !tbaa !109
  %129 = load ptr, ptr %128, align 8, !tbaa !47
  %130 = getelementptr inbounds ptr, ptr %129, i64 15
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(33) %128)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %126, i32 noundef 21, ptr noundef %132, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %144

133:                                              ; preds = %124
  %134 = load ptr, ptr %105, align 8, !tbaa !134
  %135 = zext nneg i32 %112 to i64
  %136 = getelementptr inbounds ptr, ptr %134, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !87
  %138 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %137)
  %139 = load ptr, ptr %35, align 8, !tbaa !109
  %140 = load ptr, ptr %139, align 8, !tbaa !47
  %141 = getelementptr inbounds ptr, ptr %140, i64 15
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(33) %139)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %126, i32 noundef 7, ptr noundef %138, ptr noundef %143, ptr noundef null, ptr noundef null)
  br label %144

144:                                              ; preds = %101, %127, %133, %117, %67
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %146 = load ptr, ptr %145, align 8, !tbaa !97
  %147 = icmp eq ptr %146, null
  br i1 %147, label %162, label %148

148:                                              ; preds = %144
  %149 = load ptr, ptr %35, align 8, !tbaa !109
  %150 = load i8, ptr %19, align 2, !tbaa !126, !range !103, !noundef !104
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %149, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !111
  %155 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %154, i64 0, i32 5
  %156 = load ptr, ptr %155, align 8, !tbaa !136
  br label %157

157:                                              ; preds = %148, %152
  %158 = phi ptr [ %156, %152 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %148 ]
  %159 = load ptr, ptr %146, align 8, !tbaa !47
  %160 = getelementptr inbounds ptr, ptr %159, i64 6
  %161 = load ptr, ptr %160, align 8
  tail call void %161(ptr noundef nonnull align 8 dereferenceable(8) %146, ptr noundef nonnull align 8 dereferenceable(33) %149, i32 noundef %34, i1 noundef zeroext %38, ptr noundef %158)
  br label %162

162:                                              ; preds = %157, %144
  %163 = xor i1 %38, true
  %164 = zext i1 %163 to i8
  store i8 %164, ptr %1, align 1, !tbaa !106
  br label %165

165:                                              ; preds = %49, %49, %162
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8 1, ptr %1, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %6 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %8, align 8, !tbaa !138
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  store i16 0, ptr %10, align 2, !tbaa !140
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !115
  br i1 %7, label %15, label %13

13:                                               ; preds = %2
  %14 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %12, ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull %4)
  br label %17

15:                                               ; preds = %2
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %12, ptr noundef nonnull align 8 dereferenceable(40) %8, i1 noundef zeroext false)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i1 [ %14, %13 ], [ %16, %15 ]
  br i1 %18, label %33, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %21 = load i32, ptr %20, align 8, !tbaa !138
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !139
  %27 = zext i32 %21 to i64
  %28 = getelementptr inbounds i16, ptr %26, i64 %27
  store i16 0, ptr %28, align 2, !tbaa !140
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %26, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %29

29:                                               ; preds = %24, %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %31

31:                                               ; preds = %31, %29
  %32 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %30)
  switch i16 %32, label %31 [
    i16 60, label %561
    i16 0, label %561
  ]

33:                                               ; preds = %17
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !108
  %37 = icmp eq i32 %36, 0
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !139
  %41 = load i32, ptr %38, align 8, !tbaa !138
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i16, ptr %40, i64 %42
  store i16 0, ptr %43, align 2, !tbaa !140
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %45 = load ptr, ptr %44, align 8, !tbaa !92
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %47 = load i32, ptr %46, align 4, !tbaa !142
  %48 = load ptr, ptr %45, align 8, !tbaa !47
  %49 = getelementptr inbounds ptr, ptr %48, i64 11
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %45, i32 noundef %47, ptr noundef null, ptr noundef %40, i32 noundef -2)
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %33
  %54 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %56 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %55, ptr noundef %40, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %56, align 8, !tbaa !143
  br label %60

60:                                               ; preds = %53, %58
  %61 = phi ptr [ %59, %58 ], [ null, %53 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %62

62:                                               ; preds = %60, %33
  %63 = phi ptr [ %51, %33 ], [ %61, %60 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %67)
  %69 = load i32, ptr %46, align 4, !tbaa !142
  %70 = load ptr, ptr %66, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %68, ptr noundef %40, i32 noundef %69, i32 noundef 1, ptr noundef %70)
          to label %71 unwind label %76

71:                                               ; preds = %65
  %72 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  %74 = call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %73, ptr noundef nonnull %68)
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %68, i64 0, i32 4
  store i32 %74, ptr %75, align 4, !tbaa !145
  br label %78

76:                                               ; preds = %65
  %77 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %68, ptr noundef %67) #16
  br label %559

78:                                               ; preds = %71, %62
  %79 = phi ptr [ %63, %62 ], [ %68, %71 ]
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %81 = load i8, ptr %80, align 8, !tbaa !102, !range !103, !noundef !104
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 3
  br i1 %64, label %85, label %86

85:                                               ; preds = %83
  store i32 5, ptr %84, align 8, !tbaa !146
  br label %89

86:                                               ; preds = %83
  %87 = load i32, ptr %84, align 8, !tbaa !146
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %92, label %89

89:                                               ; preds = %86, %85
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %91 = load ptr, ptr %90, align 8, !tbaa !91
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %91, i32 noundef 2, ptr noundef %40, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %92

92:                                               ; preds = %89, %86
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %94 = load ptr, ptr %93, align 8, !tbaa !91
  %95 = load ptr, ptr %94, align 8, !tbaa !47
  %96 = getelementptr inbounds ptr, ptr %95, i64 9
  %97 = load ptr, ptr %96, align 8
  call void %97(ptr noundef nonnull align 8 dereferenceable(40) %94, ptr noundef nonnull %79)
  br label %98

98:                                               ; preds = %92, %78
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !115
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %101, i64 0, i32 15
  %103 = load i32, ptr %102, align 8, !tbaa !116
  %104 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef nonnull %79, i32 noundef %103)
  br i1 %37, label %105, label %137

105:                                              ; preds = %98
  %106 = load ptr, ptr %44, align 8, !tbaa !92
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %106, ptr %107, align 8, !tbaa !147
  %108 = load i8, ptr %80, align 8, !tbaa !102, !range !103, !noundef !104
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %144, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %112 = load ptr, ptr %111, align 8, !tbaa !148
  %113 = icmp eq ptr %112, null
  br i1 %113, label %144, label %114

114:                                              ; preds = %110
  %115 = icmp eq ptr %40, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %114
  %117 = load i16, ptr %40, align 2, !tbaa !140
  %118 = load i16, ptr %112, align 2, !tbaa !140
  %119 = icmp eq i16 %117, %118
  br i1 %119, label %123, label %134

120:                                              ; preds = %114
  %121 = load i16, ptr %112, align 2, !tbaa !140
  %122 = icmp eq i16 %121, 0
  br i1 %122, label %144, label %134

123:                                              ; preds = %116, %128
  %124 = phi i16 [ %131, %128 ], [ %117, %116 ]
  %125 = phi ptr [ %130, %128 ], [ %112, %116 ]
  %126 = phi ptr [ %129, %128 ], [ %40, %116 ]
  %127 = icmp eq i16 %124, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds i16, ptr %126, i64 1
  %130 = getelementptr inbounds i16, ptr %125, i64 1
  %131 = load i16, ptr %129, align 2, !tbaa !140
  %132 = load i16, ptr %130, align 2, !tbaa !140
  %133 = icmp eq i16 %131, %132
  br i1 %133, label %123, label %134, !llvm.loop !149

134:                                              ; preds = %128, %116, %120
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %136 = load ptr, ptr %135, align 8, !tbaa !91
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %136, i32 noundef 5)
  br label %144

137:                                              ; preds = %98
  %138 = load i8, ptr %80, align 8, !tbaa !102, !range !103, !noundef !104
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !111
  %143 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef %142, i1 noundef zeroext true)
  br label %144

144:                                              ; preds = %123, %110, %120, %134, %137, %140, %105
  %145 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %99, i1 noundef zeroext false)
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %147 = load ptr, ptr %146, align 8, !tbaa !150
  %148 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %147, i64 0, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !151
  %150 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 5
  %151 = load i32, ptr %150, align 8, !tbaa !153
  %152 = add i32 %151, 1
  store i32 %152, ptr %150, align 8, !tbaa !153
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %154 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %162 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  br label %165

165:                                              ; preds = %475, %144
  %166 = phi i32 [ 0, %144 ], [ %472, %475 ]
  %167 = phi i8 [ 0, %144 ], [ %473, %475 ]
  %168 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %99)
  %169 = icmp eq i32 %166, 0
  br i1 %169, label %183, label %170

170:                                              ; preds = %165
  switch i16 %168, label %171 [
    i16 62, label %183
    i16 47, label %183
  ]

171:                                              ; preds = %170
  %172 = load ptr, ptr %100, align 8, !tbaa !115
  %173 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %172, i64 0, i32 28
  %174 = load ptr, ptr %173, align 8, !tbaa !154
  %175 = zext i16 %168 to i64
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  %177 = load i8, ptr %176, align 1, !tbaa !155
  %178 = icmp slt i8 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %99, i1 noundef zeroext false)
  %181 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %99)
  br label %183

182:                                              ; preds = %171
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %183

183:                                              ; preds = %170, %170, %182, %179, %165
  %184 = phi i16 [ %181, %179 ], [ %168, %182 ], [ %168, %165 ], [ %168, %170 ], [ %168, %170 ]
  %185 = load ptr, ptr %100, align 8, !tbaa !115
  %186 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %185, i64 0, i32 28
  %187 = load ptr, ptr %186, align 8, !tbaa !154
  %188 = zext i16 %184 to i64
  %189 = getelementptr inbounds i8, ptr %187, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !155
  %191 = and i8 %190, 16
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %449

193:                                              ; preds = %183
  %194 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %193
  store i32 0, ptr %155, align 8, !tbaa !138
  %197 = load ptr, ptr %156, align 8, !tbaa !139
  store i16 0, ptr %197, align 2, !tbaa !140
  %198 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %185, ptr noundef nonnull align 8 dereferenceable(40) %155, ptr noundef nonnull %4)
  br label %202

199:                                              ; preds = %193
  store i32 0, ptr %157, align 8, !tbaa !138
  %200 = load ptr, ptr %158, align 8, !tbaa !139
  store i16 0, ptr %200, align 2, !tbaa !140
  %201 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %185, ptr noundef nonnull align 8 dereferenceable(40) %157, i1 noundef zeroext false)
  br label %202

202:                                              ; preds = %199, %196
  %203 = phi i1 [ %198, %196 ], [ %201, %199 ]
  br i1 %203, label %215, label %204

204:                                              ; preds = %202
  %205 = load i32, ptr %159, align 8, !tbaa !138
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  br label %212

208:                                              ; preds = %204
  %209 = load ptr, ptr %160, align 8, !tbaa !139
  %210 = zext i32 %205 to i64
  %211 = getelementptr inbounds i16, ptr %209, i64 %210
  store i16 0, ptr %211, align 2, !tbaa !140
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %209, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %212

212:                                              ; preds = %208, %207
  br label %213

213:                                              ; preds = %212, %213
  %214 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %99)
  switch i16 %214, label %213 [
    i16 62, label %471
    i16 0, label %471
  ]

215:                                              ; preds = %202
  %216 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false)
  br i1 %216, label %237, label %217

217:                                              ; preds = %215
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
  %218 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %99, ptr noundef nonnull @_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList)
  switch i16 %218, label %219 [
    i16 62, label %234
    i16 47, label %234
    i16 39, label %233
    i16 34, label %233
  ]

219:                                              ; preds = %217
  %220 = load ptr, ptr %100, align 8, !tbaa !115
  %221 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %220, i64 0, i32 28
  %222 = load ptr, ptr %221, align 8, !tbaa !154
  %223 = zext i16 %218 to i64
  %224 = getelementptr inbounds i8, ptr %222, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !155
  %226 = icmp slt i8 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %219
  %228 = icmp eq i16 %218, 60
  br i1 %228, label %229, label %234

229:                                              ; preds = %227
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !111
  %232 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %231)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %232, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %234

233:                                              ; preds = %217, %217
  br label %234

234:                                              ; preds = %217, %217, %233, %219, %227, %229
  %235 = phi i1 [ false, %229 ], [ false, %217 ], [ false, %227 ], [ true, %219 ], [ true, %233 ], [ false, %217 ]
  %236 = phi i32 [ 1, %229 ], [ 2, %217 ], [ 1, %227 ], [ 0, %219 ], [ 0, %233 ], [ 2, %217 ]
  br i1 %235, label %237, label %471

237:                                              ; preds = %234, %215
  %238 = load ptr, ptr %162, align 8, !tbaa !139
  %239 = load i32, ptr %161, align 8, !tbaa !138
  %240 = zext i32 %239 to i64
  %241 = getelementptr inbounds i16, ptr %238, i64 %240
  store i16 0, ptr %241, align 2, !tbaa !140
  %242 = call noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %79, ptr noundef %238)
  %243 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %99, i1 noundef zeroext false)
  %244 = call noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %242, ptr noundef %238, ptr noundef nonnull align 8 dereferenceable(40) %163)
  br i1 %244, label %261, label %245

245:                                              ; preds = %237
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199)
  %246 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %99, ptr noundef nonnull @_ZZN11xercesc_2_712DGXMLScanner12scanStartTagERbE7tmpList_0)
  switch i16 %246, label %247 [
    i16 62, label %261
    i16 47, label %261
  ]

247:                                              ; preds = %245
  %248 = load ptr, ptr %100, align 8, !tbaa !115
  %249 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %248, i64 0, i32 28
  %250 = load ptr, ptr %249, align 8, !tbaa !154
  %251 = zext i16 %246 to i64
  %252 = getelementptr inbounds i8, ptr %250, i64 %251
  %253 = load i8, ptr %252, align 1, !tbaa !155
  %254 = icmp slt i8 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %247
  %256 = icmp eq i16 %246, 60
  br i1 %256, label %257, label %471

257:                                              ; preds = %255
  %258 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !111
  %260 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %259)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %260, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %471

261:                                              ; preds = %245, %245, %247, %237
  %262 = load ptr, ptr %164, align 8, !tbaa !139
  %263 = load i32, ptr %163, align 8, !tbaa !138
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds i16, ptr %262, i64 %264
  store i16 0, ptr %265, align 2, !tbaa !140
  %266 = icmp ult i32 %166, %149
  br i1 %266, label %283, label %267

267:                                              ; preds = %261
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %269 = load ptr, ptr %268, align 8, !tbaa !75
  %270 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %269)
  %271 = load ptr, ptr %268, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49) %270, ptr noundef %271)
          to label %272 unwind label %281

272:                                              ; preds = %267
  %273 = load ptr, ptr %146, align 8, !tbaa !150
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %273, i32 noundef 1)
  %274 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %273, i64 0, i32 4
  %275 = load ptr, ptr %274, align 8, !tbaa !156
  %276 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %273, i64 0, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !151
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds ptr, ptr %275, i64 %278
  store ptr %270, ptr %279, align 8, !tbaa !87
  %280 = add i32 %277, 1
  store i32 %280, ptr %276, align 4, !tbaa !151
  br label %286

281:                                              ; preds = %267
  %282 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %270, ptr noundef %269) #16
  br label %559

283:                                              ; preds = %261
  %284 = load ptr, ptr %146, align 8, !tbaa !150
  %285 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %284, i32 noundef %166)
  br label %286

286:                                              ; preds = %283, %272
  %287 = phi ptr [ %285, %283 ], [ %270, %272 ]
  store i8 1, ptr %287, align 8, !tbaa !157
  %288 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %289 = icmp eq i8 %288, 0
  br i1 %289, label %378, label %290

290:                                              ; preds = %286
  %291 = load i32, ptr %46, align 4, !tbaa !142
  %292 = icmp eq ptr %242, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %242, i64 0, i32 2
  %295 = load i32, ptr %294, align 4, !tbaa !160
  br label %296

296:                                              ; preds = %290, %293
  %297 = phi i32 [ %295, %293 ], [ 0, %290 ]
  %298 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 6
  %299 = load ptr, ptr %298, align 8, !tbaa !164
  call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %299, ptr noundef %238, i32 noundef %291)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %287, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %300 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 2
  store i32 %297, ptr %300, align 4, !tbaa !165
  %301 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 9
  store i8 0, ptr %301, align 8, !tbaa !166
  %302 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 8
  store ptr null, ptr %302, align 8, !tbaa !167
  %303 = load ptr, ptr %298, align 8, !tbaa !164
  %304 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %303, i64 0, i32 5
  %305 = load ptr, ptr %304, align 8, !tbaa !136
  %306 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %303, i64 0, i32 6
  %307 = load ptr, ptr %306, align 8, !tbaa !168
  %308 = icmp eq ptr %305, null
  br i1 %308, label %358, label %309

309:                                              ; preds = %296
  %310 = load i16, ptr %305, align 2, !tbaa !140
  %311 = icmp eq i16 %310, 0
  br i1 %311, label %358, label %312

312:                                              ; preds = %309
  %313 = load i16, ptr %305, align 2, !tbaa !140
  %314 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %315 = icmp eq i16 %313, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %325, %312
  %317 = load i16, ptr %305, align 2, !tbaa !140
  %318 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
  %319 = icmp eq i16 %317, %318
  br i1 %319, label %334, label %348

320:                                              ; preds = %312, %325
  %321 = phi i16 [ %328, %325 ], [ %313, %312 ]
  %322 = phi ptr [ %327, %325 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %312 ]
  %323 = phi ptr [ %326, %325 ], [ %305, %312 ]
  %324 = icmp eq i16 %321, 0
  br i1 %324, label %331, label %325

325:                                              ; preds = %320
  %326 = getelementptr inbounds i16, ptr %323, i64 1
  %327 = getelementptr inbounds i16, ptr %322, i64 1
  %328 = load i16, ptr %326, align 2, !tbaa !140
  %329 = load i16, ptr %327, align 2, !tbaa !140
  %330 = icmp eq i16 %328, %329
  br i1 %330, label %320, label %316, !llvm.loop !149

331:                                              ; preds = %320
  %332 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %333 = load i32, ptr %332, align 4, !tbaa !169
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %287, i32 noundef %333)
  br label %425

334:                                              ; preds = %316, %339
  %335 = phi i16 [ %342, %339 ], [ %317, %316 ]
  %336 = phi ptr [ %341, %339 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %316 ]
  %337 = phi ptr [ %340, %339 ], [ %305, %316 ]
  %338 = icmp eq i16 %335, 0
  br i1 %338, label %345, label %339

339:                                              ; preds = %334
  %340 = getelementptr inbounds i16, ptr %337, i64 1
  %341 = getelementptr inbounds i16, ptr %336, i64 1
  %342 = load i16, ptr %340, align 2, !tbaa !140
  %343 = load i16, ptr %341, align 2, !tbaa !140
  %344 = icmp eq i16 %342, %343
  br i1 %344, label %334, label %348, !llvm.loop !149

345:                                              ; preds = %334
  %346 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %347 = load i32, ptr %346, align 8, !tbaa !170
  call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %287, i32 noundef %347)
  call void @_ZN11xercesc_2_712DGXMLScanner11updateNSMapEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %305, ptr noundef %307, ptr noundef %262)
  br label %425

348:                                              ; preds = %339, %316
  %349 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !50
  call void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %350, i32 noundef 1)
  %351 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %350, i64 0, i32 3
  %352 = load ptr, ptr %351, align 8, !tbaa !70
  %353 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %350, i64 0, i32 1
  %354 = load i32, ptr %353, align 4, !tbaa !77
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds ptr, ptr %352, i64 %355
  store ptr %287, ptr %356, align 8, !tbaa !87
  %357 = add i32 %354, 1
  store i32 %357, ptr %353, align 4, !tbaa !77
  br label %425

358:                                              ; preds = %309, %296
  %359 = icmp eq ptr %307, null
  %360 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
  br i1 %359, label %364, label %361

361:                                              ; preds = %358
  %362 = load i16, ptr %307, align 2, !tbaa !140
  %363 = icmp eq i16 %360, %362
  br i1 %363, label %366, label %425

364:                                              ; preds = %358
  %365 = icmp eq i16 %360, 0
  br i1 %365, label %377, label %425

366:                                              ; preds = %361, %371
  %367 = phi i16 [ %374, %371 ], [ %360, %361 ]
  %368 = phi ptr [ %373, %371 ], [ %307, %361 ]
  %369 = phi ptr [ %372, %371 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %361 ]
  %370 = icmp eq i16 %367, 0
  br i1 %370, label %377, label %371

371:                                              ; preds = %366
  %372 = getelementptr inbounds i16, ptr %369, i64 1
  %373 = getelementptr inbounds i16, ptr %368, i64 1
  %374 = load i16, ptr %372, align 2, !tbaa !140
  %375 = load i16, ptr %373, align 2, !tbaa !140
  %376 = icmp eq i16 %374, %375
  br i1 %376, label %366, label %425, !llvm.loop !149

377:                                              ; preds = %366, %364
  call void @_ZN11xercesc_2_712DGXMLScanner11updateNSMapEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %305, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %262)
  br label %425

378:                                              ; preds = %286
  %379 = icmp eq ptr %242, null
  br i1 %379, label %409, label %380

380:                                              ; preds = %378
  %381 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %382 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %242, i64 0, i32 2
  %383 = load i32, ptr %382, align 4, !tbaa !160
  %384 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 6
  %385 = load ptr, ptr %384, align 8, !tbaa !164
  call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %385, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %238, i32 noundef 0)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %287, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %386 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 2
  store i32 %383, ptr %386, align 4, !tbaa !165
  %387 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 9
  store i8 0, ptr %387, align 8, !tbaa !166
  %388 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 8
  store ptr null, ptr %388, align 8, !tbaa !167
  %389 = load ptr, ptr %381, align 8, !tbaa !73
  %390 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %389, ptr noundef nonnull %242)
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %396

392:                                              ; preds = %380
  %393 = call noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  %394 = load i32, ptr %150, align 8, !tbaa !153
  store i32 %394, ptr %393, align 4, !tbaa !114
  %395 = load ptr, ptr %381, align 8, !tbaa !73
  call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %395, ptr noundef nonnull %242, ptr noundef nonnull %393)
  br label %425

396:                                              ; preds = %380
  %397 = load i32, ptr %390, align 4, !tbaa !114
  %398 = load i32, ptr %150, align 8, !tbaa !153
  %399 = icmp ult i32 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  store i32 %398, ptr %390, align 4, !tbaa !114
  br label %425

401:                                              ; preds = %396
  %402 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %403 = load ptr, ptr %242, align 8, !tbaa !47
  %404 = getelementptr inbounds ptr, ptr %403, i64 5
  %405 = load ptr, ptr %404, align 8
  %406 = call noundef ptr %405(ptr noundef nonnull align 8 dereferenceable(56) %242)
  %407 = load ptr, ptr %402, align 8, !tbaa !111
  %408 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %407)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %406, ptr noundef %408, ptr noundef null, ptr noundef null)
  br label %425

409:                                              ; preds = %378
  %410 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %411 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 6
  %412 = load ptr, ptr %411, align 8, !tbaa !164
  call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %412, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %238, i32 noundef 0)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %287, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %413 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 2
  store i32 0, ptr %413, align 4, !tbaa !165
  %414 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 9
  store i8 0, ptr %414, align 8, !tbaa !166
  %415 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %287, i64 0, i32 8
  store ptr null, ptr %415, align 8, !tbaa !167
  %416 = call noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49) %287)
  %417 = load ptr, ptr %410, align 8, !tbaa !74
  %418 = call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %417, ptr noundef %416)
  br i1 %418, label %421, label %419

419:                                              ; preds = %409
  %420 = load ptr, ptr %410, align 8, !tbaa !74
  call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %420, ptr noundef %416, ptr noundef null)
  br label %425

421:                                              ; preds = %409
  %422 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %423 = load ptr, ptr %422, align 8, !tbaa !111
  %424 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %423)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %416, ptr noundef %424, ptr noundef null, ptr noundef null)
  br label %425

425:                                              ; preds = %371, %361, %364, %392, %401, %400, %345, %348, %331, %377, %421, %419
  %426 = load i8, ptr %80, align 8, !tbaa !102, !range !103, !noundef !104
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %447, label %428

428:                                              ; preds = %425
  %429 = icmp eq ptr %242, null
  br i1 %429, label %440, label %430

430:                                              ; preds = %428
  %431 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %432 = load ptr, ptr %431, align 8, !tbaa !91
  %433 = load ptr, ptr %164, align 8, !tbaa !139
  %434 = load i32, ptr %163, align 8, !tbaa !138
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds i16, ptr %433, i64 %435
  store i16 0, ptr %436, align 2, !tbaa !140
  %437 = load ptr, ptr %432, align 8, !tbaa !47
  %438 = getelementptr inbounds ptr, ptr %437, i64 8
  %439 = load ptr, ptr %438, align 8
  call void %439(ptr noundef nonnull align 8 dereferenceable(40) %432, ptr noundef nonnull %242, ptr noundef %433, i1 noundef zeroext false, ptr noundef nonnull %79)
  br label %447

440:                                              ; preds = %428
  %441 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %442 = load ptr, ptr %441, align 8, !tbaa !91
  %443 = load ptr, ptr %162, align 8, !tbaa !139
  %444 = load i32, ptr %161, align 8, !tbaa !138
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds i16, ptr %443, i64 %445
  store i16 0, ptr %446, align 2, !tbaa !140
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %442, i32 noundef 17, ptr noundef %443, ptr noundef %40, ptr noundef null, ptr noundef null)
  br label %447

447:                                              ; preds = %430, %440, %425
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %287, ptr noundef %262)
  %448 = add i32 %166, 1
  br label %471

449:                                              ; preds = %183
  switch i16 %184, label %471 [
    i16 0, label %450
    i16 47, label %457
    i16 62, label %463
    i16 60, label %465
    i16 39, label %468
    i16 34, label %468
  ]

450:                                              ; preds = %449
  %451 = call ptr @__cxa_allocate_exception(i64 48) #16
  %452 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %453 = load ptr, ptr %452, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %451, ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 47, ptr noundef %453)
          to label %454 unwind label %455

454:                                              ; preds = %450
  call void @__cxa_throw(ptr nonnull %451, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

455:                                              ; preds = %450
  %456 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %451) #16
  br label %559

457:                                              ; preds = %449
  %458 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %99)
  %459 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %99, i16 noundef zeroext 62)
  br i1 %459, label %471, label %460

460:                                              ; preds = %457
  %461 = load ptr, ptr %154, align 8, !tbaa !111
  %462 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %461)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %462, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %471

463:                                              ; preds = %449
  %464 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %99)
  br label %471

465:                                              ; preds = %449
  %466 = load ptr, ptr %153, align 8, !tbaa !111
  %467 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %466)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %467, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %471

468:                                              ; preds = %449, %449
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  %469 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %99)
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %99, i16 noundef zeroext %184)
  %470 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %99, i1 noundef zeroext false)
  br label %471, !llvm.loop !171

471:                                              ; preds = %213, %213, %449, %457, %460, %447, %255, %257, %234, %468, %465, %463
  %472 = phi i32 [ %166, %463 ], [ %166, %465 ], [ %166, %468 ], [ %166, %234 ], [ %448, %447 ], [ %166, %255 ], [ %166, %257 ], [ %166, %460 ], [ %166, %457 ], [ %166, %449 ], [ %166, %213 ], [ %166, %213 ]
  %473 = phi i8 [ %167, %463 ], [ %167, %465 ], [ %167, %468 ], [ %167, %234 ], [ %167, %447 ], [ %167, %255 ], [ %167, %257 ], [ 1, %460 ], [ 1, %457 ], [ %167, %449 ], [ %167, %213 ], [ %167, %213 ]
  %474 = phi i32 [ 3, %463 ], [ 3, %465 ], [ 2, %468 ], [ %236, %234 ], [ 2, %447 ], [ 1, %255 ], [ 1, %257 ], [ 3, %460 ], [ 3, %457 ], [ 0, %449 ], [ 1, %213 ], [ 1, %213 ]
  switch i32 %474, label %561 [
    i32 0, label %475
    i32 2, label %475
    i32 3, label %476
  ]

475:                                              ; preds = %471, %471
  br label %165, !llvm.loop !171

476:                                              ; preds = %471
  %477 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %478 = icmp ne i8 %477, 0
  %479 = icmp ne i32 %472, 0
  %480 = select i1 %478, i1 %479, i1 false
  br i1 %480, label %481, label %483

481:                                              ; preds = %476
  %482 = load ptr, ptr %146, align 8, !tbaa !150
  call void @_ZN11xercesc_2_712DGXMLScanner25scanAttrListforNameSpacesEPNS_11RefVectorOfINS_7XMLAttrEEEiPNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %482, i32 noundef %472, ptr noundef nonnull %79)
  br label %483

483:                                              ; preds = %481, %476
  br i1 %479, label %484, label %487

484:                                              ; preds = %483
  %485 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %486 = load ptr, ptr %485, align 8, !tbaa !74
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %486)
  br label %487

487:                                              ; preds = %484, %483
  %488 = load ptr, ptr %146, align 8, !tbaa !150
  %489 = call noundef i32 @_ZN11xercesc_2_712DGXMLScanner12buildAttListEjPNS_14XMLElementDeclERNS_11RefVectorOfINS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(832) %0, i32 noundef %472, ptr noundef nonnull %79, ptr noundef nonnull align 8 dereferenceable(40) %488)
  %490 = load i32, ptr %46, align 4, !tbaa !142
  %491 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %492 = load ptr, ptr %491, align 8, !tbaa !97
  %493 = icmp eq ptr %492, null
  br i1 %493, label %519, label %494

494:                                              ; preds = %487
  %495 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %503, label %497

497:                                              ; preds = %494
  %498 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !111
  %500 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %499, i64 0, i32 5
  %501 = load ptr, ptr %500, align 8, !tbaa !136
  %502 = call noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %501, i32 noundef 1)
  br label %503

503:                                              ; preds = %497, %494
  %504 = phi i32 [ %502, %497 ], [ %490, %494 ]
  %505 = load ptr, ptr %491, align 8, !tbaa !97
  %506 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %507 = icmp eq i8 %506, 0
  br i1 %507, label %513, label %508

508:                                              ; preds = %503
  %509 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !111
  %511 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %510, i64 0, i32 5
  %512 = load ptr, ptr %511, align 8, !tbaa !136
  br label %513

513:                                              ; preds = %503, %508
  %514 = phi ptr [ %512, %508 ], [ null, %503 ]
  %515 = load ptr, ptr %146, align 8, !tbaa !150
  %516 = load ptr, ptr %505, align 8, !tbaa !47
  %517 = getelementptr inbounds ptr, ptr %516, i64 11
  %518 = load ptr, ptr %517, align 8
  call void %518(ptr noundef nonnull align 8 dereferenceable(8) %505, ptr noundef nonnull align 8 dereferenceable(33) %79, i32 noundef %504, ptr noundef %514, ptr noundef nonnull align 8 dereferenceable(40) %515, i32 noundef %489, i1 noundef zeroext false, i1 noundef zeroext %37)
  br label %519

519:                                              ; preds = %513, %487
  %520 = phi i32 [ %504, %513 ], [ %490, %487 ]
  %521 = and i8 %473, 1
  %522 = icmp eq i8 %521, 0
  br i1 %522, label %561, label %523

523:                                              ; preds = %519
  %524 = load i8, ptr %80, align 8, !tbaa !102, !range !103, !noundef !104
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %540, label %526

526:                                              ; preds = %523
  %527 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %528 = load ptr, ptr %527, align 8, !tbaa !91
  %529 = load ptr, ptr %528, align 8, !tbaa !47
  %530 = getelementptr inbounds ptr, ptr %529, i64 2
  %531 = load ptr, ptr %530, align 8
  %532 = call noundef i32 %531(ptr noundef nonnull align 8 dereferenceable(40) %528, ptr noundef nonnull %79, ptr noundef null, i32 noundef 0)
  %533 = icmp sgt i32 %532, -1
  br i1 %533, label %534, label %540

534:                                              ; preds = %526
  %535 = load ptr, ptr %527, align 8, !tbaa !91
  %536 = load ptr, ptr %79, align 8, !tbaa !47
  %537 = getelementptr inbounds ptr, ptr %536, i64 15
  %538 = load ptr, ptr %537, align 8
  %539 = call noundef ptr %538(ptr noundef nonnull align 8 dereferenceable(33) %79)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %535, i32 noundef 7, ptr noundef %40, ptr noundef %539, ptr noundef null, ptr noundef null)
  br label %540

540:                                              ; preds = %526, %534, %523
  %541 = load ptr, ptr %491, align 8, !tbaa !97
  %542 = icmp eq ptr %541, null
  br i1 %542, label %556, label %543

543:                                              ; preds = %540
  %544 = load i8, ptr %5, align 2, !tbaa !126, !range !103, !noundef !104
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %551, label %546

546:                                              ; preds = %543
  %547 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %79, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !111
  %549 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %548, i64 0, i32 5
  %550 = load ptr, ptr %549, align 8, !tbaa !136
  br label %551

551:                                              ; preds = %543, %546
  %552 = phi ptr [ %550, %546 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %543 ]
  %553 = load ptr, ptr %541, align 8, !tbaa !47
  %554 = getelementptr inbounds ptr, ptr %553, i64 6
  %555 = load ptr, ptr %554, align 8
  call void %555(ptr noundef nonnull align 8 dereferenceable(8) %541, ptr noundef nonnull align 8 dereferenceable(33) %79, i32 noundef %520, i1 noundef zeroext %37, ptr noundef %552)
  br label %556

556:                                              ; preds = %551, %540
  %557 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %34)
  br i1 %37, label %558, label %561

558:                                              ; preds = %556
  store i8 0, ptr %1, align 1, !tbaa !106
  br label %561

559:                                              ; preds = %281, %455, %76
  %560 = phi { ptr, i32 } [ %77, %76 ], [ %456, %455 ], [ %282, %281 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  resume { ptr, i32 } %560

561:                                              ; preds = %31, %31, %471, %556, %558, %519
  %562 = phi i1 [ true, %556 ], [ true, %558 ], [ true, %519 ], [ false, %471 ], [ false, %31 ], [ false, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret i1 %562
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4 x i16], align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %10 = load ptr, ptr %9, align 8, !tbaa !172
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 12
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, i1 noundef zeroext false)
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %20

20:                                               ; preds = %20, %19
  %21 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
  switch i16 %21, label %20 [
    i16 62, label %603
    i16 0, label %603
  ]

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %24 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %23)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %26 = load i8, ptr %25, align 2, !tbaa !126, !range !103, !noundef !104
  %27 = icmp eq i8 %26, 0
  store i32 0, ptr %24, align 8, !tbaa !138
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %24, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !139
  store i16 0, ptr %29, align 2, !tbaa !140
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !115
  br i1 %27, label %34, label %32

32:                                               ; preds = %22
  %33 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %31, ptr noundef nonnull align 8 dereferenceable(40) %24, ptr noundef nonnull %3)
          to label %36 unwind label %44

34:                                               ; preds = %22
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %31, ptr noundef nonnull align 8 dereferenceable(40) %24, i1 noundef zeroext false)
          to label %36 unwind label %44

36:                                               ; preds = %34, %32
  %37 = phi i1 [ %33, %32 ], [ %35, %34 ]
  br i1 %37, label %55, label %38

38:                                               ; preds = %36
  %39 = load i32, ptr %24, align 8, !tbaa !138
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 208)
          to label %51 unwind label %44

42:                                               ; preds = %52
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %618

44:                                               ; preds = %41, %46, %32, %34, %55, %85
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %618

46:                                               ; preds = %38
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %24, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !139
  %49 = zext i32 %39 to i64
  %50 = getelementptr inbounds i16, ptr %48, i64 %49
  store i16 0, ptr %50, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 307, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %51 unwind label %44

51:                                               ; preds = %41, %46
  br label %52

52:                                               ; preds = %51, %54
  %53 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %54 unwind label %42

54:                                               ; preds = %52
  switch i16 %53, label %52 [
    i16 62, label %599
    i16 0, label %599
  ]

55:                                               ; preds = %36
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %24, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  %58 = load i32, ptr %24, align 8, !tbaa !138
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !140
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %62 = load ptr, ptr %61, align 8, !tbaa !75
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %64 = load ptr, ptr %63, align 8, !tbaa !148
  %65 = load ptr, ptr %62, align 8, !tbaa !47
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %64)
          to label %68 unwind label %44

68:                                               ; preds = %55
  %69 = load ptr, ptr %61, align 8, !tbaa !75
  %70 = icmp eq ptr %57, null
  br i1 %70, label %92, label %71

71:                                               ; preds = %68
  %72 = load i16, ptr %57, align 2, !tbaa !140
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71, %74
  %75 = phi ptr [ %76, %74 ], [ %57, %71 ]
  %76 = getelementptr inbounds i16, ptr %75, i64 1
  %77 = load i16, ptr %76, align 2, !tbaa !140
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %74, !llvm.loop !173

79:                                               ; preds = %74
  %80 = ptrtoint ptr %76 to i64
  %81 = ptrtoint ptr %57 to i64
  %82 = sub i64 %80, %81
  %83 = add i64 %82, 2
  %84 = and i64 %83, 8589934590
  br label %85

85:                                               ; preds = %79, %71
  %86 = phi i64 [ %84, %79 ], [ 2, %71 ]
  %87 = load ptr, ptr %69, align 8, !tbaa !47
  %88 = getelementptr inbounds ptr, ptr %87, i64 2
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %69, i64 noundef %86)
          to label %91 unwind label %44

91:                                               ; preds = %85
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %90, ptr nonnull align 2 %57, i64 %86, i1 false)
  br label %92

92:                                               ; preds = %68, %91
  %93 = phi ptr [ %90, %91 ], [ null, %68 ]
  store ptr %93, ptr %63, align 8, !tbaa !148
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %95 = load i8, ptr %94, align 2, !tbaa !174, !range !103, !noundef !104
  %96 = icmp eq i8 %95, 0
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %98 = load ptr, ptr %97, align 8
  %99 = load ptr, ptr %61, align 8
  %100 = select i1 %96, ptr %98, ptr %99
  %101 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %100)
          to label %102 unwind label %123

102:                                              ; preds = %92
  %103 = load ptr, ptr %56, align 8, !tbaa !139
  %104 = load i32, ptr %24, align 8, !tbaa !138
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %103, i64 %105
  store i16 0, ptr %106, align 2, !tbaa !140
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %108 = load i32, ptr %107, align 4, !tbaa !142
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef %103, i32 noundef %108, i32 noundef 1, ptr noundef %100)
          to label %109 unwind label %125

109:                                              ; preds = %102
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %101, i64 0, i32 3
  store i32 4, ptr %110, align 8, !tbaa !146
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %101, i64 0, i32 5
  store i8 1, ptr %111, align 8, !tbaa !175
  %112 = load i8, ptr %94, align 2, !tbaa !174, !range !103, !noundef !104
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %116 = load ptr, ptr %115, align 8, !tbaa !92
  %117 = load ptr, ptr %116, align 8, !tbaa !47
  %118 = getelementptr inbounds ptr, ptr %117, i64 17
  %119 = load ptr, ptr %118, align 8
  %120 = invoke noundef i32 %119(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull %101, i1 noundef zeroext false)
          to label %121 unwind label %127

121:                                              ; preds = %114
  %122 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %116, i64 0, i32 7
  store i32 %120, ptr %122, align 8, !tbaa !176
  br label %156

123:                                              ; preds = %92
  %124 = landingpad { ptr, i32 }
          cleanup
  br label %618

125:                                              ; preds = %102
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %101, ptr noundef %100) #16
  br label %618

127:                                              ; preds = %165, %159, %156, %114
  %128 = phi ptr [ %157, %165 ], [ %157, %159 ], [ %157, %156 ], [ %101, %114 ]
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %610

130:                                              ; preds = %109
  %131 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 4
  %132 = load ptr, ptr %131, align 8, !tbaa !72
  %133 = load ptr, ptr %56, align 8, !tbaa !139
  %134 = load i32, ptr %24, align 8, !tbaa !138
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i16, ptr %133, i64 %135
  store i16 0, ptr %136, align 2, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %137 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %132, ptr noundef %133, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %138 unwind label %149

138:                                              ; preds = %130
  %139 = icmp eq ptr %137, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %138
  %141 = load ptr, ptr %137, align 8, !tbaa !143
  br label %142

142:                                              ; preds = %138, %140
  %143 = phi ptr [ %141, %140 ], [ null, %138 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %144 = icmp eq ptr %143, null
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %143, i64 0, i32 4
  %147 = load i32, ptr %146, align 4, !tbaa !145
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %101, i64 0, i32 4
  store i32 %147, ptr %148, align 4, !tbaa !145
  br label %156

149:                                              ; preds = %130, %151
  %150 = landingpad { ptr, i32 }
          cleanup
  br label %610

151:                                              ; preds = %142
  %152 = load ptr, ptr %131, align 8, !tbaa !72
  %153 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %152, ptr noundef nonnull %101)
          to label %154 unwind label %149

154:                                              ; preds = %151
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %101, i64 0, i32 4
  store i32 %153, ptr %155, align 4, !tbaa !145
  br label %156

156:                                              ; preds = %145, %154, %121
  %157 = phi ptr [ null, %121 ], [ null, %154 ], [ %101, %145 ]
  %158 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, i1 noundef zeroext false)
          to label %159 unwind label %127

159:                                              ; preds = %156
  %160 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 62)
          to label %161 unwind label %127

161:                                              ; preds = %159
  br i1 %160, label %162, label %169

162:                                              ; preds = %161
  %163 = load ptr, ptr %9, align 8, !tbaa !172
  %164 = icmp eq ptr %163, null
  br i1 %164, label %593, label %165

165:                                              ; preds = %162
  %166 = load ptr, ptr %163, align 8, !tbaa !47
  %167 = getelementptr inbounds ptr, ptr %166, i64 4
  %168 = load ptr, ptr %167, align 8
  invoke void %168(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %593 unwind label %127

169:                                              ; preds = %161
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %171 = load i32, ptr %170, align 8, !tbaa !177
  %172 = icmp eq i32 %171, 2
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %175 = load i8, ptr %174, align 8, !tbaa !102, !range !103, !noundef !104
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %173
  store i8 1, ptr %174, align 8, !tbaa !102
  br label %178

178:                                              ; preds = %177, %173, %169
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #16
  %179 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %180 = load ptr, ptr %179, align 8, !tbaa !92
  %181 = load ptr, ptr %9, align 8, !tbaa !172
  %182 = load ptr, ptr %97, align 8, !tbaa !178
  %183 = load ptr, ptr %61, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %180, ptr noundef %181, ptr noundef %182, ptr noundef %183)
          to label %184 unwind label %189

184:                                              ; preds = %178
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %0, ptr noundef nonnull %17, ptr noundef nonnull %23)
          to label %185 unwind label %191

185:                                              ; preds = %184
  %186 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %187 unwind label %191

187:                                              ; preds = %185
  %188 = icmp ne i16 %186, 91
  br i1 %188, label %193, label %301

189:                                              ; preds = %178
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %608

191:                                              ; preds = %185, %184
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %606

193:                                              ; preds = %187
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 0, ptr %194, align 1, !tbaa !179
  %195 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %196 unwind label %204

196:                                              ; preds = %193
  %197 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %198 unwind label %206

198:                                              ; preds = %196
  %199 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(40) %195, ptr noundef nonnull align 8 dereferenceable(40) %197, i32 noundef 1)
          to label %200 unwind label %210

200:                                              ; preds = %198
  br i1 %199, label %217, label %201

201:                                              ; preds = %200, %203
  %202 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %203 unwind label %208

203:                                              ; preds = %201
  switch i16 %202, label %201 [
    i16 62, label %284
    i16 0, label %284
  ]

204:                                              ; preds = %193
  %205 = landingpad { ptr, i32 }
          cleanup
  br label %606

206:                                              ; preds = %196
  %207 = landingpad { ptr, i32 }
          cleanup
  br label %296

208:                                              ; preds = %201
  %209 = landingpad { ptr, i32 }
          cleanup
  br label %212

210:                                              ; preds = %198, %276, %279, %239, %269
  %211 = landingpad { ptr, i32 }
          cleanup
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi { ptr, i32 } [ %209, %208 ], [ %211, %210 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %197)
          to label %296 unwind label %214

214:                                              ; preds = %212
  %215 = landingpad { ptr, i32 }
          catch ptr null
  %216 = extractvalue { ptr, i32 } %215, 0
  call void @__clang_call_terminate(ptr %216) #17
  unreachable

217:                                              ; preds = %200
  %218 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %195, i64 0, i32 6
  %219 = load ptr, ptr %218, align 8, !tbaa !139
  %220 = load i32, ptr %195, align 8, !tbaa !138
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds i16, ptr %219, i64 %221
  store i16 0, ptr %222, align 2, !tbaa !140
  %223 = load ptr, ptr %61, align 8, !tbaa !75
  %224 = icmp eq ptr %219, null
  br i1 %224, label %246, label %225

225:                                              ; preds = %217
  %226 = load i16, ptr %219, align 2, !tbaa !140
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %239, label %228

228:                                              ; preds = %225, %228
  %229 = phi ptr [ %230, %228 ], [ %219, %225 ]
  %230 = getelementptr inbounds i16, ptr %229, i64 1
  %231 = load i16, ptr %230, align 2, !tbaa !140
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %233, label %228, !llvm.loop !173

233:                                              ; preds = %228
  %234 = ptrtoint ptr %230 to i64
  %235 = ptrtoint ptr %219 to i64
  %236 = sub i64 %234, %235
  %237 = add i64 %236, 2
  %238 = and i64 %237, 8589934590
  br label %239

239:                                              ; preds = %233, %225
  %240 = phi i64 [ %238, %233 ], [ 2, %225 ]
  %241 = load ptr, ptr %223, align 8, !tbaa !47
  %242 = getelementptr inbounds ptr, ptr %241, i64 2
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef ptr %243(ptr noundef nonnull align 8 dereferenceable(8) %223, i64 noundef %240)
          to label %245 unwind label %210

245:                                              ; preds = %239
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %244, ptr nonnull align 2 %219, i64 %240, i1 false)
  br label %246

246:                                              ; preds = %245, %217
  %247 = phi ptr [ %244, %245 ], [ null, %217 ]
  %248 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %197, i64 0, i32 6
  %249 = load ptr, ptr %248, align 8, !tbaa !139
  %250 = load i32, ptr %197, align 8, !tbaa !138
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i16, ptr %249, i64 %251
  store i16 0, ptr %252, align 2, !tbaa !140
  %253 = load ptr, ptr %61, align 8, !tbaa !75
  %254 = icmp eq ptr %249, null
  br i1 %254, label %276, label %255

255:                                              ; preds = %246
  %256 = load i16, ptr %249, align 2, !tbaa !140
  %257 = icmp eq i16 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %255, %258
  %259 = phi ptr [ %260, %258 ], [ %249, %255 ]
  %260 = getelementptr inbounds i16, ptr %259, i64 1
  %261 = load i16, ptr %260, align 2, !tbaa !140
  %262 = icmp eq i16 %261, 0
  br i1 %262, label %263, label %258, !llvm.loop !173

263:                                              ; preds = %258
  %264 = ptrtoint ptr %260 to i64
  %265 = ptrtoint ptr %249 to i64
  %266 = sub i64 %264, %265
  %267 = add i64 %266, 2
  %268 = and i64 %267, 8589934590
  br label %269

269:                                              ; preds = %263, %255
  %270 = phi i64 [ %268, %263 ], [ 2, %255 ]
  %271 = load ptr, ptr %253, align 8, !tbaa !47
  %272 = getelementptr inbounds ptr, ptr %271, i64 2
  %273 = load ptr, ptr %272, align 8
  %274 = invoke noundef ptr %273(ptr noundef nonnull align 8 dereferenceable(8) %253, i64 noundef %270)
          to label %275 unwind label %210

275:                                              ; preds = %269
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %274, ptr nonnull align 2 %249, i64 %270, i1 false)
  br label %276

276:                                              ; preds = %275, %246
  %277 = phi ptr [ %274, %275 ], [ null, %246 ]
  %278 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, i1 noundef zeroext false)
          to label %279 unwind label %210

279:                                              ; preds = %276
  %280 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %281 unwind label %210

281:                                              ; preds = %279
  %282 = icmp eq i16 %280, 91
  %283 = zext i1 %282 to i8
  br label %284

284:                                              ; preds = %203, %203, %281
  %285 = phi ptr [ %277, %281 ], [ null, %203 ], [ null, %203 ]
  %286 = phi ptr [ %247, %281 ], [ null, %203 ], [ null, %203 ]
  %287 = phi i8 [ %283, %281 ], [ 0, %203 ], [ 0, %203 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %197)
          to label %291 unwind label %288

288:                                              ; preds = %284
  %289 = landingpad { ptr, i32 }
          catch ptr null
  %290 = extractvalue { ptr, i32 } %289, 0
  call void @__clang_call_terminate(ptr %290) #17
  unreachable

291:                                              ; preds = %284
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %195)
          to label %295 unwind label %292

292:                                              ; preds = %291
  %293 = landingpad { ptr, i32 }
          catch ptr null
  %294 = extractvalue { ptr, i32 } %293, 0
  call void @__clang_call_terminate(ptr %294) #17
  unreachable

295:                                              ; preds = %291
  br i1 %199, label %301, label %592

296:                                              ; preds = %212, %206
  %297 = phi { ptr, i32 } [ %207, %206 ], [ %213, %212 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %195)
          to label %606 unwind label %298

298:                                              ; preds = %296
  %299 = landingpad { ptr, i32 }
          catch ptr null
  %300 = extractvalue { ptr, i32 } %299, 0
  call void @__clang_call_terminate(ptr %300) #17
  unreachable

301:                                              ; preds = %187, %295
  %302 = phi ptr [ %285, %295 ], [ null, %187 ]
  %303 = phi ptr [ %286, %295 ], [ null, %187 ]
  %304 = phi i8 [ %287, %295 ], [ 1, %187 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %305 = load ptr, ptr %61, align 8, !tbaa !75
  store ptr %302, ptr %5, align 8, !tbaa !180
  %306 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %305, ptr %306, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  store ptr %303, ptr %6, align 8, !tbaa !180
  %307 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %305, ptr %307, align 8, !tbaa !182
  %308 = load ptr, ptr %9, align 8, !tbaa !172
  %309 = icmp eq ptr %308, null
  br i1 %309, label %322, label %310

310:                                              ; preds = %301
  %311 = and i8 %304, 1
  %312 = icmp ne i8 %311, 0
  %313 = load ptr, ptr %308, align 8, !tbaa !47
  %314 = getelementptr inbounds ptr, ptr %313, i64 4
  %315 = load ptr, ptr %314, align 8
  invoke void %315(ptr noundef nonnull align 8 dereferenceable(8) %308, ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef %303, ptr noundef %302, i1 noundef zeroext %312, i1 noundef zeroext %188)
          to label %322 unwind label %320

316:                                              ; preds = %353
  %317 = landingpad { ptr, i32 }
          cleanup
  br label %604

318:                                              ; preds = %331
  %319 = landingpad { ptr, i32 }
          cleanup
  br label %604

320:                                              ; preds = %352, %351, %348, %345, %342, %340, %339, %338, %334, %328, %327, %325, %310
  %321 = landingpad { ptr, i32 }
          cleanup
  br label %604

322:                                              ; preds = %310, %301
  %323 = and i8 %304, 1
  %324 = icmp ne i8 %323, 0
  br i1 %324, label %325, label %342

325:                                              ; preds = %322
  %326 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %327 unwind label %320

327:                                              ; preds = %325
  invoke void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %188, ptr noundef %302, ptr noundef %303)
          to label %328 unwind label %320

328:                                              ; preds = %327
  %329 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %330 unwind label %320

330:                                              ; preds = %328
  br i1 %329, label %334, label %331

331:                                              ; preds = %330, %333
  %332 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %333 unwind label %318

333:                                              ; preds = %331
  switch i16 %332, label %331 [
    i16 62, label %591
    i16 0, label %591
  ]

334:                                              ; preds = %330
  %335 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %336 unwind label %320

336:                                              ; preds = %334
  %337 = icmp ugt i32 %335, 1
  br i1 %337, label %338, label %340

338:                                              ; preds = %336
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 256)
          to label %339 unwind label %320

339:                                              ; preds = %338
  invoke void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80) %17, i32 noundef 1)
          to label %340 unwind label %320

340:                                              ; preds = %339, %336
  %341 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, i1 noundef zeroext false)
          to label %342 unwind label %320

342:                                              ; preds = %340, %322
  %343 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 62)
          to label %344 unwind label %320

344:                                              ; preds = %342
  br i1 %343, label %356, label %345

345:                                              ; preds = %344
  %346 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 93)
          to label %347 unwind label %320

347:                                              ; preds = %345
  br i1 %346, label %348, label %352

348:                                              ; preds = %347
  %349 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %17, i16 noundef zeroext 62)
          to label %350 unwind label %320

350:                                              ; preds = %348
  br i1 %349, label %351, label %352

351:                                              ; preds = %350
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 257)
          to label %356 unwind label %320

352:                                              ; preds = %350, %347
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 212)
          to label %353 unwind label %320

353:                                              ; preds = %352, %355
  %354 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %17)
          to label %355 unwind label %316

355:                                              ; preds = %353
  switch i16 %354, label %353 [
    i16 62, label %356
    i16 0, label %356
  ]

356:                                              ; preds = %355, %355, %351, %344
  br i1 %188, label %357, label %591

357:                                              ; preds = %356
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !87
  %358 = load i8, ptr %94, align 2, !tbaa !174, !range !103, !noundef !104
  %359 = icmp eq i8 %358, 0
  %360 = or i1 %324, %359
  br i1 %360, label %409, label %361

361:                                              ; preds = %357
  %362 = load ptr, ptr %0, align 8, !tbaa !47
  %363 = getelementptr inbounds ptr, ptr %362, i64 17
  %364 = load ptr, ptr %363, align 8
  %365 = invoke noundef ptr %364(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %302, ptr noundef %303)
          to label %366 unwind label %405

366:                                              ; preds = %361
  store ptr %365, ptr %7, align 8, !tbaa !87
  %367 = icmp eq ptr %365, null
  br i1 %367, label %409, label %368

368:                                              ; preds = %366
  %369 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %370 = load ptr, ptr %369, align 8, !tbaa !183
  %371 = load ptr, ptr %365, align 8, !tbaa !47
  %372 = getelementptr inbounds ptr, ptr %371, i64 5
  %373 = load ptr, ptr %372, align 8
  %374 = invoke noundef ptr %373(ptr noundef nonnull align 8 dereferenceable(41) %365)
          to label %375 unwind label %407

375:                                              ; preds = %368
  %376 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %370, ptr noundef %374)
          to label %377 unwind label %407

377:                                              ; preds = %375
  %378 = icmp eq ptr %376, null
  br i1 %378, label %409, label %379

379:                                              ; preds = %377
  %380 = load ptr, ptr %376, align 8, !tbaa !47
  %381 = getelementptr inbounds ptr, ptr %380, i64 5
  %382 = load ptr, ptr %381, align 8
  %383 = invoke noundef i32 %382(ptr noundef nonnull align 8 dereferenceable(8) %376)
          to label %384 unwind label %407

384:                                              ; preds = %379
  %385 = icmp eq i32 %383, 0
  br i1 %385, label %386, label %409

386:                                              ; preds = %384
  %387 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  store ptr %376, ptr %387, align 8, !tbaa !184
  store ptr %376, ptr %179, align 8, !tbaa !92
  %388 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %389 = load ptr, ptr %388, align 8, !tbaa !91
  %390 = load ptr, ptr %389, align 8, !tbaa !47
  %391 = getelementptr inbounds ptr, ptr %390, i64 11
  %392 = load ptr, ptr %391, align 8
  invoke void %392(ptr noundef nonnull align 8 dereferenceable(40) %389, ptr noundef nonnull %376)
          to label %393 unwind label %407

393:                                              ; preds = %386
  %394 = load ptr, ptr %9, align 8, !tbaa !172
  %395 = icmp eq ptr %394, null
  br i1 %395, label %570, label %396

396:                                              ; preds = %393
  %397 = load ptr, ptr %394, align 8, !tbaa !47
  %398 = getelementptr inbounds ptr, ptr %397, i64 16
  %399 = load ptr, ptr %398, align 8
  invoke void %399(ptr noundef nonnull align 8 dereferenceable(8) %394)
          to label %400 unwind label %407

400:                                              ; preds = %396
  %401 = load ptr, ptr %9, align 8, !tbaa !172
  %402 = load ptr, ptr %401, align 8, !tbaa !47
  %403 = getelementptr inbounds ptr, ptr %402, i64 10
  %404 = load ptr, ptr %403, align 8
  invoke void %404(ptr noundef nonnull align 8 dereferenceable(8) %401)
          to label %570 unwind label %407

405:                                              ; preds = %361
  %406 = landingpad { ptr, i32 }
          cleanup
  br label %574

407:                                              ; preds = %400, %396, %386, %379, %375, %368
  %408 = landingpad { ptr, i32 }
          cleanup
  br label %574

409:                                              ; preds = %384, %377, %357, %366
  %410 = phi ptr [ null, %357 ], [ null, %366 ], [ %365, %377 ], [ %365, %384 ]
  %411 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %412 = load i8, ptr %411, align 1, !tbaa !185, !range !103, !noundef !104
  %413 = icmp eq i8 %412, 0
  %414 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %415 = load i8, ptr %414, align 8, !range !103
  %416 = icmp eq i8 %415, 0
  %417 = select i1 %413, i1 %416, i1 false
  br i1 %417, label %583, label %418

418:                                              ; preds = %409
  %419 = load ptr, ptr %7, align 8, !tbaa !87
  %420 = icmp eq ptr %419, null
  %421 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %422 = load i8, ptr %421, align 1, !tbaa !186, !range !103, !noundef !104
  %423 = icmp ne i8 %422, 0
  br i1 %420, label %429, label %424

424:                                              ; preds = %418
  %425 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef nonnull align 8 dereferenceable(41) %419, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %423)
          to label %441 unwind label %426

426:                                              ; preds = %457, %429, %424
  %427 = phi ptr [ %442, %457 ], [ %410, %429 ], [ %410, %424 ]
  %428 = landingpad { ptr, i32 }
          cleanup
  br label %574

429:                                              ; preds = %418
  %430 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %431 = load i8, ptr %430, align 1, !tbaa !187, !range !103, !noundef !104
  %432 = icmp ne i8 %431, 0
  %433 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef %302, ptr noundef %303, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %423, i1 noundef zeroext %432)
          to label %434 unwind label %426

434:                                              ; preds = %429
  %435 = load ptr, ptr %7, align 8, !tbaa !87
  %436 = icmp eq ptr %410, null
  br i1 %436, label %441, label %437

437:                                              ; preds = %434
  %438 = load ptr, ptr %410, align 8, !tbaa !47
  %439 = getelementptr inbounds ptr, ptr %438, i64 1
  %440 = load ptr, ptr %439, align 8
  call void %440(ptr noundef nonnull align 8 dereferenceable(41) %410) #16
  br label %441

441:                                              ; preds = %437, %434, %424
  %442 = phi ptr [ %410, %424 ], [ %435, %434 ], [ %435, %437 ]
  %443 = phi ptr [ %425, %424 ], [ %433, %434 ], [ %433, %437 ]
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %460

445:                                              ; preds = %441
  %446 = call ptr @__cxa_allocate_exception(i64 48) #16
  %447 = load ptr, ptr %7, align 8, !tbaa !87
  %448 = icmp eq ptr %447, null
  br i1 %448, label %454, label %449

449:                                              ; preds = %445
  %450 = load ptr, ptr %447, align 8, !tbaa !47
  %451 = getelementptr inbounds ptr, ptr %450, i64 5
  %452 = load ptr, ptr %451, align 8
  %453 = invoke noundef ptr %452(ptr noundef nonnull align 8 dereferenceable(41) %447)
          to label %454 unwind label %458

454:                                              ; preds = %449, %445
  %455 = phi ptr [ %302, %445 ], [ %453, %449 ]
  %456 = load ptr, ptr %61, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %446, ptr noundef nonnull @.str, i32 noundef 1025, i32 noundef 45, ptr noundef %455, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %456)
          to label %457 unwind label %458

457:                                              ; preds = %454
  invoke void @__cxa_throw(ptr nonnull %446, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %624 unwind label %426

458:                                              ; preds = %454, %449
  %459 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %446) #16
  br label %574

460:                                              ; preds = %441
  %461 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %462 = load i8, ptr %461, align 1, !tbaa !188, !range !103, !noundef !104
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %507, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %466 = load ptr, ptr %465, align 8, !tbaa !183
  %467 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %466, i64 0, i32 3
  %468 = load ptr, ptr %467, align 8, !tbaa !189
  %469 = load ptr, ptr %7, align 8, !tbaa !87
  %470 = load ptr, ptr %469, align 8, !tbaa !47
  %471 = getelementptr inbounds ptr, ptr %470, i64 5
  %472 = load ptr, ptr %471, align 8
  %473 = invoke noundef ptr %472(ptr noundef nonnull align 8 dereferenceable(41) %469)
          to label %474 unwind label %503

474:                                              ; preds = %464
  %475 = load ptr, ptr %468, align 8, !tbaa !47
  %476 = getelementptr inbounds ptr, ptr %475, i64 5
  %477 = load ptr, ptr %476, align 8
  %478 = invoke noundef i32 %477(ptr noundef nonnull align 8 dereferenceable(40) %468, ptr noundef %473)
          to label %479 unwind label %503

479:                                              ; preds = %474
  %480 = load ptr, ptr %465, align 8, !tbaa !183
  %481 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %480, i64 0, i32 3
  %482 = load ptr, ptr %481, align 8, !tbaa !189
  %483 = load ptr, ptr %482, align 8, !tbaa !47
  %484 = getelementptr inbounds ptr, ptr %483, i64 10
  %485 = load ptr, ptr %484, align 8
  %486 = invoke noundef ptr %485(ptr noundef nonnull align 8 dereferenceable(40) %482, i32 noundef %478)
          to label %487 unwind label %505

487:                                              ; preds = %479
  %488 = load ptr, ptr %465, align 8, !tbaa !183
  %489 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %488, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE)
          to label %490 unwind label %505

490:                                              ; preds = %487
  %491 = load ptr, ptr %179, align 8, !tbaa !92
  %492 = load ptr, ptr %491, align 8, !tbaa !47
  %493 = getelementptr inbounds ptr, ptr %492, i64 22
  %494 = load ptr, ptr %493, align 8
  %495 = invoke noundef ptr %494(ptr noundef nonnull align 8 dereferenceable(8) %491)
          to label %496 unwind label %505

496:                                              ; preds = %490
  %497 = load ptr, ptr %495, align 8, !tbaa !47
  %498 = getelementptr inbounds ptr, ptr %497, i64 10
  %499 = load ptr, ptr %498, align 8
  invoke void %499(ptr noundef nonnull align 8 dereferenceable(16) %495, ptr noundef %486)
          to label %500 unwind label %505

500:                                              ; preds = %496
  %501 = load ptr, ptr %465, align 8, !tbaa !183
  %502 = load ptr, ptr %179, align 8, !tbaa !92
  invoke void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %501, ptr noundef %502)
          to label %507 unwind label %505

503:                                              ; preds = %474, %464
  %504 = landingpad { ptr, i32 }
          cleanup
  br label %574

505:                                              ; preds = %500, %496, %490, %487, %479
  %506 = landingpad { ptr, i32 }
          cleanup
  br label %574

507:                                              ; preds = %500, %460
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 292063281220, ptr %8, align 8
  %508 = load ptr, ptr %61, align 8, !tbaa !75
  %509 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %508)
          to label %510 unwind label %559

510:                                              ; preds = %507
  %511 = load ptr, ptr %61, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %509, ptr noundef nonnull %8, ptr noundef %511)
          to label %512 unwind label %561

512:                                              ; preds = %510
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %509, align 8, !tbaa !47
  %513 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %509, i64 0, i32 1
  store i8 0, ptr %513, align 8, !tbaa !191
  %514 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %509, i64 0, i32 2
  store i8 0, ptr %514, align 1, !tbaa !194
  %515 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %509, i64 0, i32 3
  store i8 0, ptr %515, align 2, !tbaa !195
  %516 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %509, i64 0, i32 7
  %517 = load ptr, ptr %516, align 8, !tbaa !196
  %518 = icmp eq ptr %517, null
  br i1 %518, label %525, label %519

519:                                              ; preds = %512
  %520 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %509, i64 0, i32 9
  %521 = load ptr, ptr %520, align 8, !tbaa !197
  %522 = load ptr, ptr %521, align 8, !tbaa !47
  %523 = getelementptr inbounds ptr, ptr %522, i64 3
  %524 = load ptr, ptr %523, align 8
  invoke void %524(ptr noundef nonnull align 8 dereferenceable(8) %521, ptr noundef nonnull %517)
          to label %525 unwind label %559

525:                                              ; preds = %519, %512
  %526 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %509, i64 0, i32 9
  %527 = load ptr, ptr %526, align 8, !tbaa !197
  %528 = icmp eq ptr %302, null
  br i1 %528, label %550, label %529

529:                                              ; preds = %525
  %530 = load i16, ptr %302, align 2, !tbaa !140
  %531 = icmp eq i16 %530, 0
  br i1 %531, label %543, label %532

532:                                              ; preds = %529, %532
  %533 = phi ptr [ %534, %532 ], [ %302, %529 ]
  %534 = getelementptr inbounds i16, ptr %533, i64 1
  %535 = load i16, ptr %534, align 2, !tbaa !140
  %536 = icmp eq i16 %535, 0
  br i1 %536, label %537, label %532, !llvm.loop !173

537:                                              ; preds = %532
  %538 = ptrtoint ptr %534 to i64
  %539 = ptrtoint ptr %302 to i64
  %540 = sub i64 %538, %539
  %541 = add i64 %540, 2
  %542 = and i64 %541, 8589934590
  br label %543

543:                                              ; preds = %537, %529
  %544 = phi i64 [ %542, %537 ], [ 2, %529 ]
  %545 = load ptr, ptr %527, align 8, !tbaa !47
  %546 = getelementptr inbounds ptr, ptr %545, i64 2
  %547 = load ptr, ptr %546, align 8
  %548 = invoke noundef ptr %547(ptr noundef nonnull align 8 dereferenceable(8) %527, i64 noundef %544)
          to label %549 unwind label %559

549:                                              ; preds = %543
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %548, ptr nonnull align 2 %302, i64 %544, i1 false)
  br label %550

550:                                              ; preds = %525, %549
  %551 = phi ptr [ %548, %549 ], [ null, %525 ]
  store ptr %551, ptr %516, align 8, !tbaa !196
  %552 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %443, i64 0, i32 25
  store i8 1, ptr %552, align 1, !tbaa !198
  %553 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %17, ptr noundef nonnull %443, ptr noundef nonnull %509)
          to label %554 unwind label %563

554:                                              ; preds = %550
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %4, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %555 unwind label %563

555:                                              ; preds = %554
  %556 = load ptr, ptr %509, align 8, !tbaa !47
  %557 = getelementptr inbounds ptr, ptr %556, i64 1
  %558 = load ptr, ptr %557, align 8
  call void %558(ptr noundef nonnull align 8 dereferenceable(75) %509) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %583

559:                                              ; preds = %543, %519, %507
  %560 = landingpad { ptr, i32 }
          cleanup
  br label %568

561:                                              ; preds = %510
  %562 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %509, ptr noundef %508) #16
  br label %568

563:                                              ; preds = %554, %550
  %564 = landingpad { ptr, i32 }
          cleanup
  %565 = load ptr, ptr %509, align 8, !tbaa !47
  %566 = getelementptr inbounds ptr, ptr %565, i64 1
  %567 = load ptr, ptr %566, align 8
  call void %567(ptr noundef nonnull align 8 dereferenceable(75) %509) #16
  br label %568

568:                                              ; preds = %563, %561, %559
  %569 = phi { ptr, i32 } [ %564, %563 ], [ %560, %559 ], [ %562, %561 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %574

570:                                              ; preds = %393, %400
  %571 = load ptr, ptr %365, align 8, !tbaa !47
  %572 = getelementptr inbounds ptr, ptr %571, i64 1
  %573 = load ptr, ptr %572, align 8
  call void %573(ptr noundef nonnull align 8 dereferenceable(41) %365) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %591

574:                                              ; preds = %426, %458, %568, %505, %503, %407, %405
  %575 = phi ptr [ %427, %426 ], [ %442, %458 ], [ %442, %568 ], [ %442, %505 ], [ %442, %503 ], [ %365, %407 ], [ null, %405 ]
  %576 = phi { ptr, i32 } [ %428, %426 ], [ %459, %458 ], [ %569, %568 ], [ %506, %505 ], [ %504, %503 ], [ %408, %407 ], [ %406, %405 ]
  %577 = icmp eq ptr %575, null
  br i1 %577, label %582, label %578

578:                                              ; preds = %574
  %579 = load ptr, ptr %575, align 8, !tbaa !47
  %580 = getelementptr inbounds ptr, ptr %579, i64 1
  %581 = load ptr, ptr %580, align 8
  call void %581(ptr noundef nonnull align 8 dereferenceable(41) %575) #16
  br label %582

582:                                              ; preds = %574, %578
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %604

583:                                              ; preds = %555, %409
  %584 = phi ptr [ %410, %409 ], [ %442, %555 ]
  %585 = icmp eq ptr %584, null
  br i1 %585, label %590, label %586

586:                                              ; preds = %583
  %587 = load ptr, ptr %584, align 8, !tbaa !47
  %588 = getelementptr inbounds ptr, ptr %587, i64 1
  %589 = load ptr, ptr %588, align 8
  call void %589(ptr noundef nonnull align 8 dereferenceable(41) %584) #16
  br label %590

590:                                              ; preds = %583, %586
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %591

591:                                              ; preds = %333, %333, %356, %590, %570
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %592

592:                                              ; preds = %295, %591
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #16
  br label %593

593:                                              ; preds = %162, %165, %592
  %594 = icmp eq ptr %157, null
  br i1 %594, label %599, label %595

595:                                              ; preds = %593
  %596 = load ptr, ptr %157, align 8, !tbaa !47
  %597 = getelementptr inbounds ptr, ptr %596, i64 1
  %598 = load ptr, ptr %597, align 8
  call void %598(ptr noundef nonnull align 8 dereferenceable(80) %157) #16
  br label %599

599:                                              ; preds = %54, %54, %595, %593
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %603 unwind label %600

600:                                              ; preds = %599
  %601 = landingpad { ptr, i32 }
          catch ptr null
  %602 = extractvalue { ptr, i32 } %601, 0
  call void @__clang_call_terminate(ptr %602) #17
  unreachable

603:                                              ; preds = %20, %20, %599
  ret void

604:                                              ; preds = %316, %320, %318, %582
  %605 = phi { ptr, i32 } [ %576, %582 ], [ %317, %316 ], [ %319, %318 ], [ %321, %320 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %606

606:                                              ; preds = %204, %296, %604, %191
  %607 = phi { ptr, i32 } [ %605, %604 ], [ %192, %191 ], [ %205, %204 ], [ %297, %296 ]
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #16
  br label %608

608:                                              ; preds = %606, %189
  %609 = phi { ptr, i32 } [ %607, %606 ], [ %190, %189 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #16
  br label %610

610:                                              ; preds = %608, %149, %127
  %611 = phi ptr [ %128, %127 ], [ %157, %608 ], [ %101, %149 ]
  %612 = phi { ptr, i32 } [ %129, %127 ], [ %609, %608 ], [ %150, %149 ]
  %613 = icmp eq ptr %611, null
  br i1 %613, label %618, label %614

614:                                              ; preds = %610
  %615 = load ptr, ptr %611, align 8, !tbaa !47
  %616 = getelementptr inbounds ptr, ptr %615, i64 1
  %617 = load ptr, ptr %616, align 8
  call void %617(ptr noundef nonnull align 8 dereferenceable(80) %611) #16
  br label %618

618:                                              ; preds = %42, %44, %614, %610, %123, %125
  %619 = phi { ptr, i32 } [ %126, %125 ], [ %124, %123 ], [ %612, %610 ], [ %612, %614 ], [ %43, %42 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %23, ptr noundef nonnull align 8 dereferenceable(40) %24)
          to label %623 unwind label %620

620:                                              ; preds = %618
  %621 = landingpad { ptr, i32 }
          catch ptr null
  %622 = extractvalue { ptr, i32 } %621, 0
  call void @__clang_call_terminate(ptr %622) #17
  unreachable

623:                                              ; preds = %618
  resume { ptr, i32 } %619

624:                                              ; preds = %457
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !199 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
  %7 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !200

9:                                                ; preds = %2
  %10 = call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = load ptr, ptr %4, align 8, !tbaa !111
  %12 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %13 unwind label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 65, ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %9, %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  resume { ptr, i32 } %17

18:                                               ; preds = %2
  %19 = load ptr, ptr %0, align 8, !tbaa !201
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 16), !prof !203
  %24 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !204
  %26 = load i32, ptr %3, align 4, !tbaa !114
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !87
  store ptr %1, ptr %23, align 8, !tbaa !143
  %30 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %23, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !205
  store ptr %23, ptr %28, align 8, !tbaa !87
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !206
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !207
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %58, !prof !208

37:                                               ; preds = %18
  %38 = uitofp i32 %35 to double
  %39 = fmul double %38, 1.500000e+00
  %40 = fptoui double %39 to i32
  %41 = load ptr, ptr %0, align 8, !tbaa !201
  %42 = zext i32 %40 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = load ptr, ptr %41, align 8, !tbaa !47
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %43)
  %48 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !209
  %50 = load i32, ptr %34, align 8, !tbaa !207
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %47, ptr align 8 %49, i64 %52, i1 false)
  %53 = load ptr, ptr %0, align 8, !tbaa !201
  %54 = load ptr, ptr %48, align 8, !tbaa !209
  %55 = load ptr, ptr %53, align 8, !tbaa !47
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %54)
  store ptr %47, ptr %48, align 8, !tbaa !209
  store i32 %40, ptr %34, align 8, !tbaa !207
  br label %58

58:                                               ; preds = %37, %18
  %59 = load i32, ptr %31, align 4, !tbaa !206
  %60 = add i32 %59, 1
  store i32 %60, ptr %31, align 4, !tbaa !206
  %61 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !209
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %1, ptr %64, align 8, !tbaa !87
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 4
  store i32 %60, ptr %65, align 4, !tbaa !145
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %60
}

declare void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

declare noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !210 {
  %2 = load ptr, ptr %0, align 8, !tbaa !180
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !211

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !182
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !212

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !213

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #19
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i8, align 1
  %9 = alloca [9 x i16], align 16
  %10 = icmp eq ptr %1, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !160
  %14 = icmp eq i32 %13, 0
  br label %15

15:                                               ; preds = %4, %11
  %16 = phi i1 [ %14, %11 ], [ true, %4 ]
  store i32 0, ptr %3, align 8, !tbaa !138
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  store i16 0, ptr %18, align 2, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %20 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %19, ptr noundef nonnull align 2 dereferenceable(2) %5)
  br i1 %20, label %21, label %268

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !115
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %23, i64 0, i32 15
  %25 = load i32, ptr %24, align 8, !tbaa !116
  br i1 %10, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %1, i64 0, i32 5
  %28 = load i8, ptr %27, align 1, !tbaa !214, !range !103, !noundef !104
  %29 = icmp eq i8 %28, 0
  br label %30

30:                                               ; preds = %21, %26
  %31 = phi i1 [ %29, %26 ], [ true, %21 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #16
  store i16 0, ptr %7, align 2, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #16
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  br label %34

34:                                               ; preds = %137, %30
  %35 = phi i32 [ 1, %30 ], [ %138, %137 ]
  %36 = phi i8 [ 0, %30 ], [ %139, %137 ]
  %37 = phi i8 [ 0, %30 ], [ %140, %137 ]
  br label %38

38:                                               ; preds = %238, %34
  %39 = phi i32 [ %35, %34 ], [ 0, %238 ]
  %40 = phi i8 [ %37, %34 ], [ %142, %238 ]
  br label %41

41:                                               ; preds = %38, %82
  %42 = phi i8 [ 0, %82 ], [ %40, %38 ]
  %43 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %44 unwind label %51

44:                                               ; preds = %41
  store i16 %43, ptr %6, align 2, !tbaa !140
  %45 = icmp eq i16 %43, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %48 = call ptr @__cxa_allocate_exception(i64 48) #16
  %49 = load ptr, ptr %47, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 2490, i32 noundef 47, ptr noundef %49)
          to label %50 unwind label %62

50:                                               ; preds = %46
  invoke void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %270 unwind label %60

51:                                               ; preds = %77, %41
  %52 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %127

53:                                               ; preds = %104, %106, %108, %148, %235, %225
  %54 = phi i32 [ 0, %225 ], [ %39, %108 ], [ %39, %106 ], [ %39, %104 ], [ %39, %148 ], [ 0, %235 ]
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %127

56:                                               ; preds = %164, %192, %247, %259
  %57 = phi i32 [ %240, %259 ], [ %240, %247 ], [ 0, %192 ], [ %35, %164 ]
  %58 = phi i8 [ %241, %259 ], [ %241, %247 ], [ %36, %192 ], [ %36, %164 ]
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %127

60:                                               ; preds = %50, %74
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %127

62:                                               ; preds = %46
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @__cxa_free_exception(ptr %48) #16
  br label %127

64:                                               ; preds = %44
  %65 = load i16, ptr %5, align 2, !tbaa !140
  %66 = icmp eq i16 %43, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load ptr, ptr %22, align 8, !tbaa !115
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %68, i64 0, i32 15
  %70 = load i32, ptr %69, align 8, !tbaa !116
  %71 = icmp eq i32 %25, %70
  br i1 %71, label %266, label %72

72:                                               ; preds = %67
  %73 = icmp ugt i32 %25, %70
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %266 unwind label %60

75:                                               ; preds = %72, %64
  store i8 0, ptr %8, align 1, !tbaa !106
  %76 = icmp eq i16 %43, 38
  br i1 %76, label %77, label %99

77:                                               ; preds = %75
  %78 = load ptr, ptr %0, align 8, !tbaa !47
  %79 = getelementptr inbounds ptr, ptr %78, i64 13
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef i32 %80(ptr noundef nonnull align 8 dereferenceable(832) %0, i1 noundef zeroext true, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %82 unwind label %51

82:                                               ; preds = %77
  %83 = icmp eq i32 %81, 1
  br i1 %83, label %84, label %41, !llvm.loop !215

84:                                               ; preds = %82
  %85 = load i8, ptr %8, align 1, !tbaa !106, !range !103, !noundef !104
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %141, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !108
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %141, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !127
  %94 = add i32 %89, -1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %93, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !87
  %98 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %97, i64 0, i32 10
  store i8 1, ptr %98, align 2, !tbaa !133
  br label %141

99:                                               ; preds = %75
  %100 = and i16 %43, -1024
  %101 = and i8 %42, 1
  %102 = icmp eq i8 %101, 0
  switch i16 %100, label %107 [
    i16 -10240, label %103
    i16 -9216, label %105
  ]

103:                                              ; preds = %99
  br i1 %102, label %141, label %104

104:                                              ; preds = %103
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %141 unwind label %53

105:                                              ; preds = %99
  br i1 %102, label %106, label %141

106:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %141 unwind label %53

107:                                              ; preds = %99
  br i1 %102, label %109, label %108

108:                                              ; preds = %107
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %109 unwind label %53

109:                                              ; preds = %108, %107
  %110 = load ptr, ptr %22, align 8, !tbaa !115
  %111 = load i16, ptr %6, align 2, !tbaa !140
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %110, i64 0, i32 28
  %113 = load ptr, ptr %112, align 8, !tbaa !154
  %114 = zext i16 %111 to i64
  %115 = getelementptr inbounds i8, ptr %113, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !155
  %117 = and i8 %116, 64
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %109
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %9) #16
  %121 = zext i16 %111 to i32
  %122 = load ptr, ptr %120, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %121, ptr noundef nonnull %9, i32 noundef 8, i32 noundef 16, ptr noundef %122)
          to label %123 unwind label %125

123:                                              ; preds = %119
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 218, ptr noundef %2, ptr noundef nonnull %9, ptr noundef null, ptr noundef null)
          to label %124 unwind label %125

124:                                              ; preds = %123
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #16
  br label %141

125:                                              ; preds = %123, %119
  %126 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %9) #16
  br label %127

127:                                              ; preds = %60, %53, %56, %51, %125, %62
  %128 = phi i32 [ %39, %125 ], [ %39, %62 ], [ %39, %60 ], [ %39, %51 ], [ %54, %53 ], [ %57, %56 ]
  %129 = phi i8 [ %36, %125 ], [ %36, %62 ], [ %36, %60 ], [ %36, %51 ], [ %36, %53 ], [ %58, %56 ]
  %130 = phi { ptr, i32 } [ %126, %125 ], [ %63, %62 ], [ %61, %60 ], [ %52, %51 ], [ %55, %53 ], [ %59, %56 ]
  %131 = extractvalue { ptr, i32 } %130, 1
  %132 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #16
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %267

134:                                              ; preds = %127
  %135 = extractvalue { ptr, i32 } %130, 0
  %136 = call ptr @__cxa_begin_catch(ptr %135) #16
  store i8 0, ptr %8, align 1, !tbaa !106
  call void @__cxa_end_catch()
  br label %137

137:                                              ; preds = %134, %260, %248
  %138 = phi i32 [ %128, %134 ], [ %240, %260 ], [ %240, %248 ]
  %139 = phi i8 [ %129, %134 ], [ %241, %260 ], [ %241, %248 ]
  %140 = phi i8 [ 0, %134 ], [ %142, %260 ], [ %142, %248 ]
  br label %34, !llvm.loop !215

141:                                              ; preds = %106, %104, %105, %124, %109, %103, %91, %87, %84
  %142 = phi i8 [ %42, %87 ], [ %42, %91 ], [ %42, %84 ], [ 1, %103 ], [ 0, %109 ], [ 0, %124 ], [ 0, %105 ], [ %42, %104 ], [ 0, %106 ]
  %143 = load i8, ptr %8, align 1, !tbaa !106, !range !103, !noundef !104
  %144 = icmp eq i8 %143, 0
  %145 = load i16, ptr %6, align 2
  %146 = icmp eq i16 %145, 60
  %147 = select i1 %144, i1 %146, i1 false
  br i1 %147, label %148, label %149

148:                                              ; preds = %141
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 248, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %149 unwind label %53

149:                                              ; preds = %148, %141
  br i1 %16, label %150, label %168

150:                                              ; preds = %149
  %151 = load i8, ptr %8, align 1, !tbaa !106, !range !103, !noundef !104
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %239

153:                                              ; preds = %150
  %154 = load i16, ptr %6, align 2
  switch i16 %154, label %239 [
    i16 13, label %155
    i16 10, label %155
    i16 9, label %155
  ]

155:                                              ; preds = %153, %153, %153
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %158 = load i8, ptr %156, align 2, !tbaa !216, !range !103, !noundef !104
  %159 = icmp eq i8 %158, 0
  %160 = load i8, ptr %157, align 8, !range !103
  %161 = icmp eq i8 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  %163 = or i1 %162, %31
  br i1 %163, label %167, label %164

164:                                              ; preds = %155
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %166 = load ptr, ptr %165, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %166, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %167 unwind label %56

167:                                              ; preds = %155, %164
  store i16 32, ptr %6, align 2, !tbaa !140
  br label %239

168:                                              ; preds = %149
  %169 = icmp eq i32 %39, 0
  br i1 %169, label %170, label %199

170:                                              ; preds = %168
  %171 = load i8, ptr %8, align 1, !tbaa !106, !range !103, !noundef !104
  %172 = icmp ne i8 %171, 0
  %173 = load i16, ptr %6, align 2
  %174 = icmp ne i16 %173, 32
  %175 = select i1 %172, i1 %174, i1 false
  br i1 %175, label %184, label %176

176:                                              ; preds = %170
  %177 = load ptr, ptr %22, align 8, !tbaa !115
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %177, i64 0, i32 28
  %179 = load ptr, ptr %178, align 8, !tbaa !154
  %180 = zext i16 %173 to i64
  %181 = getelementptr inbounds i8, ptr %179, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !155
  %183 = icmp slt i8 %182, 0
  br i1 %183, label %238, label %184

184:                                              ; preds = %170, %176
  %185 = and i8 %36, 1
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %239, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  %189 = load i32, ptr %3, align 8, !tbaa !138
  %190 = load i32, ptr %188, align 4, !tbaa !217
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %193 unwind label %56

193:                                              ; preds = %192, %187
  %194 = load ptr, ptr %17, align 8, !tbaa !139
  %195 = load i32, ptr %3, align 8, !tbaa !138
  %196 = add i32 %195, 1
  store i32 %196, ptr %3, align 8, !tbaa !138
  %197 = zext i32 %195 to i64
  %198 = getelementptr inbounds i16, ptr %194, i64 %197
  store i16 32, ptr %198, align 2, !tbaa !140
  br label %239

199:                                              ; preds = %168
  %200 = load i16, ptr %6, align 2
  %201 = icmp eq i16 %200, 32
  br i1 %201, label %213, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr %22, align 8, !tbaa !115
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %203, i64 0, i32 28
  %205 = load ptr, ptr %204, align 8, !tbaa !154
  %206 = zext i16 %200 to i64
  %207 = getelementptr inbounds i8, ptr %205, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !155
  %209 = icmp slt i8 %208, 0
  %210 = load i8, ptr %8, align 1, !range !103
  %211 = icmp eq i8 %210, 0
  %212 = select i1 %209, i1 %211, i1 false
  br i1 %212, label %213, label %239

213:                                              ; preds = %202, %199
  %214 = load i8, ptr %32, align 2, !tbaa !216, !range !103, !noundef !104
  %215 = icmp eq i8 %214, 0
  %216 = load i8, ptr %33, align 8, !range !103
  %217 = icmp eq i8 %216, 0
  %218 = select i1 %215, i1 true, i1 %217
  %219 = or i1 %218, %31
  br i1 %219, label %238, label %220

220:                                              ; preds = %213
  %221 = and i8 %36, 1
  %222 = icmp eq i8 %221, 0
  %223 = icmp ne i16 %200, 32
  %224 = or i1 %222, %223
  br i1 %224, label %235, label %225

225:                                              ; preds = %220
  %226 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %19)
          to label %227 unwind label %53

227:                                              ; preds = %225
  %228 = load ptr, ptr %22, align 8, !tbaa !115
  %229 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %228, i64 0, i32 28
  %230 = load ptr, ptr %229, align 8, !tbaa !154
  %231 = zext i16 %226 to i64
  %232 = getelementptr inbounds i8, ptr %230, i64 %231
  %233 = load i8, ptr %232, align 1, !tbaa !155
  %234 = icmp slt i8 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %227, %220
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %237 = load ptr, ptr %236, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %237, i32 noundef 83, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %238 unwind label %53

238:                                              ; preds = %235, %227, %213, %176
  br label %38, !llvm.loop !215

239:                                              ; preds = %202, %153, %193, %184, %150, %167
  %240 = phi i32 [ %35, %150 ], [ %35, %167 ], [ 1, %193 ], [ 1, %184 ], [ %35, %153 ], [ 1, %202 ]
  %241 = phi i8 [ %36, %150 ], [ %36, %167 ], [ 1, %193 ], [ 1, %184 ], [ %36, %153 ], [ 1, %202 ]
  %242 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 1
  %243 = load i16, ptr %6, align 2, !tbaa !140
  %244 = load i32, ptr %3, align 8, !tbaa !138
  %245 = load i32, ptr %242, align 4, !tbaa !217
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %248 unwind label %56

248:                                              ; preds = %247, %239
  %249 = load ptr, ptr %17, align 8, !tbaa !139
  %250 = load i32, ptr %3, align 8, !tbaa !138
  %251 = add i32 %250, 1
  store i32 %251, ptr %3, align 8, !tbaa !138
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds i16, ptr %249, i64 %252
  store i16 %243, ptr %253, align 2, !tbaa !140
  %254 = load i16, ptr %7, align 2, !tbaa !140
  %255 = icmp eq i16 %254, 0
  br i1 %255, label %137, label %256

256:                                              ; preds = %248
  %257 = load i32, ptr %242, align 4, !tbaa !217
  %258 = icmp eq i32 %251, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1)
          to label %260 unwind label %56

260:                                              ; preds = %259, %256
  %261 = load ptr, ptr %17, align 8, !tbaa !139
  %262 = load i32, ptr %3, align 8, !tbaa !138
  %263 = add i32 %262, 1
  store i32 %263, ptr %3, align 8, !tbaa !138
  %264 = zext i32 %262 to i64
  %265 = getelementptr inbounds i16, ptr %261, i64 %264
  store i16 %254, ptr %265, align 2, !tbaa !140
  store i16 0, ptr %7, align 2, !tbaa !140
  br label %137

266:                                              ; preds = %74, %67
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  br label %268

267:                                              ; preds = %127
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  resume { ptr, i32 } %130

268:                                              ; preds = %15, %266
  %269 = phi i1 [ %71, %266 ], [ false, %15 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  ret i1 %269

270:                                              ; preds = %50
  unreachable
}

declare void @_ZN11xercesc_2_77XMLAttrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !219

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !220
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !156
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !87
  ret ptr %18
}

declare void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner11updateNSMapEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !45 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %80, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !140
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %80, label %9

9:                                                ; preds = %6
  %10 = icmp eq ptr %2, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = load i16, ptr %2, align 2, !tbaa !140
  %13 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
  %14 = icmp eq i16 %12, %13
  br i1 %14, label %18, label %29

15:                                               ; preds = %9
  %16 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %68, label %29

18:                                               ; preds = %11, %23
  %19 = phi i16 [ %26, %23 ], [ %12, %11 ]
  %20 = phi ptr [ %25, %23 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %11 ]
  %21 = phi ptr [ %24, %23 ], [ %2, %11 ]
  %22 = icmp eq i16 %19, 0
  br i1 %22, label %68, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds i16, ptr %21, i64 1
  %25 = getelementptr inbounds i16, ptr %20, i64 1
  %26 = load i16, ptr %24, align 2, !tbaa !140
  %27 = load i16, ptr %25, align 2, !tbaa !140
  %28 = icmp eq i16 %26, %27
  br i1 %28, label %18, label %29, !llvm.loop !149

29:                                               ; preds = %23, %11, %15
  br i1 %10, label %34, label %30

30:                                               ; preds = %29
  %31 = load i16, ptr %2, align 2, !tbaa !140
  %32 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %33 = icmp eq i16 %31, %32
  br i1 %33, label %37, label %70

34:                                               ; preds = %29
  %35 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %48, label %70

37:                                               ; preds = %30, %42
  %38 = phi i16 [ %45, %42 ], [ %31, %30 ]
  %39 = phi ptr [ %44, %42 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %30 ]
  %40 = phi ptr [ %43, %42 ], [ %2, %30 ]
  %41 = icmp eq i16 %38, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds i16, ptr %40, i64 1
  %44 = getelementptr inbounds i16, ptr %39, i64 1
  %45 = load i16, ptr %43, align 2, !tbaa !140
  %46 = load i16, ptr %44, align 2, !tbaa !140
  %47 = icmp eq i16 %45, %46
  br i1 %47, label %37, label %70, !llvm.loop !149

48:                                               ; preds = %37, %34
  %49 = icmp eq ptr %3, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %48
  %51 = load i16, ptr %3, align 2, !tbaa !140
  %52 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !140
  %53 = icmp eq i16 %51, %52
  br i1 %53, label %57, label %68

54:                                               ; preds = %48
  %55 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !140
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %70, label %68

57:                                               ; preds = %50, %62
  %58 = phi i16 [ %65, %62 ], [ %51, %50 ]
  %59 = phi ptr [ %64, %62 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %50 ]
  %60 = phi ptr [ %63, %62 ], [ %3, %50 ]
  %61 = icmp eq i16 %58, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i16, ptr %60, i64 1
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = load i16, ptr %63, align 2, !tbaa !140
  %66 = load i16, ptr %64, align 2, !tbaa !140
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !149

68:                                               ; preds = %18, %62, %54, %50, %15
  %69 = phi i32 [ 301, %15 ], [ 303, %50 ], [ 303, %54 ], [ 303, %62 ], [ 301, %18 ]
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %69)
  br label %70

70:                                               ; preds = %42, %57, %68, %30, %54, %34
  %71 = icmp eq ptr %3, null
  br i1 %71, label %79, label %72

72:                                               ; preds = %70
  %73 = load i16, ptr %3, align 2, !tbaa !140
  %74 = icmp eq i16 %73, 0
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %76 = load i32, ptr %75, align 8
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %70
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 300, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %80

80:                                               ; preds = %79, %72, %6, %4
  %81 = icmp eq ptr %3, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %80
  %83 = load i16, ptr %3, align 2, !tbaa !140
  %84 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !140
  %85 = icmp eq i16 %83, %84
  br i1 %85, label %89, label %100

86:                                               ; preds = %80
  %87 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !140
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %139, label %100

89:                                               ; preds = %82, %94
  %90 = phi i16 [ %97, %94 ], [ %83, %82 ]
  %91 = phi ptr [ %96, %94 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %82 ]
  %92 = phi ptr [ %95, %94 ], [ %3, %82 ]
  %93 = icmp eq i16 %90, 0
  br i1 %93, label %139, label %94

94:                                               ; preds = %89
  %95 = getelementptr inbounds i16, ptr %92, i64 1
  %96 = getelementptr inbounds i16, ptr %91, i64 1
  %97 = load i16, ptr %95, align 2, !tbaa !140
  %98 = load i16, ptr %96, align 2, !tbaa !140
  %99 = icmp eq i16 %97, %98
  br i1 %99, label %89, label %100, !llvm.loop !149

100:                                              ; preds = %94, %82, %86
  br i1 %81, label %105, label %101

101:                                              ; preds = %100
  %102 = load i16, ptr %3, align 2, !tbaa !140
  %103 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !140
  %104 = icmp eq i16 %102, %103
  br i1 %104, label %108, label %141

105:                                              ; preds = %100
  %106 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, align 2, !tbaa !140
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %119, label %141

108:                                              ; preds = %101, %113
  %109 = phi i16 [ %116, %113 ], [ %102, %101 ]
  %110 = phi ptr [ %115, %113 ], [ @_ZN11xercesc_2_76XMLUni12fgXMLURINameE, %101 ]
  %111 = phi ptr [ %114, %113 ], [ %3, %101 ]
  %112 = icmp eq i16 %109, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds i16, ptr %111, i64 1
  %115 = getelementptr inbounds i16, ptr %110, i64 1
  %116 = load i16, ptr %114, align 2, !tbaa !140
  %117 = load i16, ptr %115, align 2, !tbaa !140
  %118 = icmp eq i16 %116, %117
  br i1 %118, label %108, label %141, !llvm.loop !149

119:                                              ; preds = %108, %105
  %120 = icmp eq ptr %2, null
  br i1 %120, label %125, label %121

121:                                              ; preds = %119
  %122 = load i16, ptr %2, align 2, !tbaa !140
  %123 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %124 = icmp eq i16 %122, %123
  br i1 %124, label %128, label %139

125:                                              ; preds = %119
  %126 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %141, label %139

128:                                              ; preds = %121, %133
  %129 = phi i16 [ %136, %133 ], [ %122, %121 ]
  %130 = phi ptr [ %135, %133 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %121 ]
  %131 = phi ptr [ %134, %133 ], [ %2, %121 ]
  %132 = icmp eq i16 %129, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds i16, ptr %131, i64 1
  %135 = getelementptr inbounds i16, ptr %130, i64 1
  %136 = load i16, ptr %134, align 2, !tbaa !140
  %137 = load i16, ptr %135, align 2, !tbaa !140
  %138 = icmp eq i16 %136, %137
  br i1 %138, label %128, label %139, !llvm.loop !149

139:                                              ; preds = %89, %133, %125, %121, %86
  %140 = phi i32 [ 302, %86 ], [ 304, %121 ], [ 304, %125 ], [ 304, %133 ], [ 302, %89 ]
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %140)
  br label %141

141:                                              ; preds = %113, %128, %139, %101, %125, %105
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %144 = load ptr, ptr %143, align 8, !tbaa !221
  %145 = load ptr, ptr %144, align 8, !tbaa !47
  %146 = getelementptr inbounds ptr, ptr %145, i64 5
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef i32 %147(ptr noundef nonnull align 8 dereferenceable(40) %144, ptr noundef %3)
  tail call void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104) %142, ptr noundef %2, i32 noundef %148)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 !prof !222 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = load ptr, ptr %0, align 8, !tbaa !79
  %8 = load ptr, ptr %4, align 8, !tbaa !47
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !223
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !224

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !86
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !225
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !227
  br i1 %25, label %30, label %26, !prof !228

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !229, !llvm.loop !230

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !231

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !232
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 !prof !233 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !85
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !234

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = load i32, ptr %4, align 8, !tbaa !83
  %16 = load ptr, ptr %0, align 8, !tbaa !79
  %17 = load ptr, ptr %14, align 8, !tbaa !47
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !235
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !82
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !87
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !236

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !86
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !225
  %31 = load ptr, ptr %28, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !237
  br i1 %34, label %39, label %35, !prof !238

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !87
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !239, !llvm.loop !230

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !234

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !81, !range !103, !noundef !104
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !232
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #19
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !232
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !225
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !79
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !240
  %58 = load ptr, ptr %20, align 8, !tbaa !82
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !87
  store ptr %2, ptr %57, align 8, !tbaa !232
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !241
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !225
  store ptr %57, ptr %59, align 8, !tbaa !87
  %63 = load i32, ptr %8, align 8, !tbaa !85
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !85
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_77XMLAttr8getQNameEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 !prof !242 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !86
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !83
  %7 = load ptr, ptr %0, align 8, !tbaa !79
  %8 = load ptr, ptr %4, align 8, !tbaa !47
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !243
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !87
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38, !prof !244

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !86
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !225
  %21 = load ptr, ptr %18, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20), !prof !237
  br i1 %24, label %38, label %25, !prof !245

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !87
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !prof !238, !llvm.loop !246

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !86
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !225
  %34 = load ptr, ptr %31, align 8, !tbaa !47
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33), !prof !237
  br i1 %37, label %38, label %25, !prof !238, !llvm.loop !246

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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

declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner25scanAttrListforNameSpacesEPNS_11RefVectorOfINS_7XMLAttrEEEiPNS_14XMLElementDeclE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #4 align 2 !prof !45 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %2, ptr %6, align 4, !tbaa !114
  %8 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %21, %4
  %14 = phi ptr [ %9, %4 ], [ %32, %21 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %14, i64 0, i32 1
  store i32 0, ptr %15, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !tbaa !106
  call void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %16 = load i32, ptr %6, align 4, !tbaa !114
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  br label %37

21:                                               ; preds = %4, %21
  %22 = phi ptr [ %32, %21 ], [ %9, %4 ]
  %23 = phi i32 [ %31, %21 ], [ 0, %4 ]
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %22, i32 noundef %23)
  %25 = load ptr, ptr %24, align 8, !tbaa !87
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %25, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !164
  %28 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %27, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !136
  %30 = tail call noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %29, i32 noundef 0)
  tail call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %25, i32 noundef %30)
  %31 = add nuw i32 %23, 1
  %32 = load ptr, ptr %8, align 8, !tbaa !50
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !77
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %21, label %13, !llvm.loop !247

36:                                               ; preds = %118, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  ret void

37:                                               ; preds = %18, %118
  %38 = phi i32 [ 0, %18 ], [ %119, %118 ]
  %39 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %38)
  %40 = load i8, ptr %7, align 1, !tbaa !106, !range !103, !noundef !104
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %94

42:                                               ; preds = %37
  %43 = icmp eq i32 %38, 0
  br i1 %43, label %118, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %39, i64 0, i32 6
  br label %46

46:                                               ; preds = %44, %91
  %47 = phi i32 [ 0, %44 ], [ %92, %91 ]
  %48 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %47)
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %48, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !164
  %51 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %50, i64 0, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !248
  %53 = load ptr, ptr %45, align 8, !tbaa !164
  %54 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %53, i64 0, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !248
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %91

57:                                               ; preds = %46
  %58 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %50, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !168
  %60 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %53, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !168
  %62 = icmp eq ptr %59, null
  %63 = icmp eq ptr %61, null
  %64 = or i1 %62, %63
  br i1 %64, label %69, label %65

65:                                               ; preds = %57
  %66 = load i16, ptr %59, align 2, !tbaa !140
  %67 = load i16, ptr %61, align 2, !tbaa !140
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %77, label %91

69:                                               ; preds = %57
  br i1 %62, label %73, label %70

70:                                               ; preds = %69
  %71 = load i16, ptr %59, align 2, !tbaa !140
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %70, %69
  br i1 %63, label %88, label %74

74:                                               ; preds = %73
  %75 = load i16, ptr %61, align 2, !tbaa !140
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %88, label %91

77:                                               ; preds = %65, %82
  %78 = phi i16 [ %85, %82 ], [ %66, %65 ]
  %79 = phi ptr [ %84, %82 ], [ %61, %65 ]
  %80 = phi ptr [ %83, %82 ], [ %59, %65 ]
  %81 = icmp eq i16 %78, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds i16, ptr %80, i64 1
  %84 = getelementptr inbounds i16, ptr %79, i64 1
  %85 = load i16, ptr %83, align 2, !tbaa !140
  %86 = load i16, ptr %84, align 2, !tbaa !140
  %87 = icmp eq i16 %85, %86
  br i1 %87, label %77, label %91, !llvm.loop !149

88:                                               ; preds = %77, %74, %73
  %89 = load ptr, ptr %20, align 8, !tbaa !111
  %90 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %89)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %61, ptr noundef %90, ptr noundef null, ptr noundef null)
  br label %91

91:                                               ; preds = %82, %65, %74, %70, %46, %88
  %92 = add nuw nsw i32 %47, 1
  %93 = icmp eq i32 %92, %38
  br i1 %93, label %118, label %46, !llvm.loop !249

94:                                               ; preds = %37
  %95 = load ptr, ptr %19, align 8, !tbaa !250
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %39, i64 0, i32 6
  %97 = load ptr, ptr %96, align 8, !tbaa !164
  %98 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %97, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !168
  %100 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %97, i64 0, i32 4
  %101 = load i32, ptr %100, align 4, !tbaa !248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %102 = call noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %95, ptr noundef %99, i32 noundef %101, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %103 = icmp eq ptr %102, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br i1 %103, label %111, label %104

104:                                              ; preds = %94
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %3, i64 0, i32 2
  %106 = load ptr, ptr %96, align 8, !tbaa !164
  %107 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %106, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !168
  %109 = load ptr, ptr %105, align 8, !tbaa !111
  %110 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %109)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %108, ptr noundef %110, ptr noundef null, ptr noundef null)
  br label %111

111:                                              ; preds = %104, %94
  %112 = load ptr, ptr %19, align 8, !tbaa !250
  %113 = load ptr, ptr %96, align 8, !tbaa !164
  %114 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %113, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !168
  %116 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %113, i64 0, i32 4
  %117 = load i32, ptr %116, align 4, !tbaa !248
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %112, ptr noundef %115, i32 noundef %117, ptr noundef nonnull %39)
  br label %118

118:                                              ; preds = %91, %42, %111
  %119 = add nuw nsw i32 %38, 1
  %120 = load i32, ptr %6, align 4, !tbaa !114
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %37, label %36, !llvm.loop !251
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #12 comdat align 2 !prof !252 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !85
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !253

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !83
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !254

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !85
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !82
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !255

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !241
  %23 = load i8, ptr %11, align 8, !tbaa !81, !range !103, !noundef !104
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !234

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !232
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #19
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !79
  %31 = load ptr, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !256
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !234, !llvm.loop !257

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !82
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !87
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !83
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !258, !llvm.loop !259

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner12buildAttListEjPNS_14XMLElementDeclERNS_11RefVectorOfINS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(832) %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = load ptr, ptr %2, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(33) %2)
  %9 = icmp ne i32 %1, 0
  %10 = or i1 %9, %8
  br i1 %10, label %11, label %205

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %3, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !151
  br i1 %8, label %14, label %205

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(16) ptr %17(ptr noundef nonnull align 8 dereferenceable(33) %2)
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 13
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(16) %18)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %205, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %26 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 5
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %2, i64 0, i32 2
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  br label %37

37:                                               ; preds = %24, %197
  %38 = phi i32 [ %1, %24 ], [ %198, %197 ]
  %39 = phi i32 [ 0, %24 ], [ %199, %197 ]
  %40 = load ptr, ptr %18, align 8, !tbaa !47
  %41 = getelementptr inbounds ptr, ptr %40, i64 14
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef nonnull align 8 dereferenceable(56) ptr %42(ptr noundef nonnull align 8 dereferenceable(16) %18, i32 noundef %39)
  %44 = load ptr, ptr %25, align 8, !tbaa !73
  %45 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull %43)
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %37
  %48 = load i32, ptr %45, align 4, !tbaa !114
  %49 = load i32, ptr %26, align 8, !tbaa !153
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %197

51:                                               ; preds = %47, %37
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !260
  %54 = load i8, ptr %27, align 8, !tbaa !102, !range !103, !noundef !104
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %51
  %57 = icmp eq i32 %53, 2
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load ptr, ptr %31, align 8, !tbaa !91
  %60 = load ptr, ptr %43, align 8, !tbaa !47
  %61 = getelementptr inbounds ptr, ptr %60, i64 5
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(56) %43)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %59, i32 noundef 6, ptr noundef %63, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %81

64:                                               ; preds = %56
  %65 = icmp ult i32 %53, 2
  %66 = load i8, ptr %28, align 2, !range !103
  %67 = icmp ne i8 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 5
  %70 = load i8, ptr %69, align 1, !range !103
  %71 = icmp ne i8 %70, 0
  %72 = select i1 %68, i1 %71, i1 false
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load ptr, ptr %29, align 8, !tbaa !91
  %75 = load ptr, ptr %43, align 8, !tbaa !47
  %76 = getelementptr inbounds ptr, ptr %75, i64 5
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(56) %43)
  %79 = load ptr, ptr %30, align 8, !tbaa !111
  %80 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %79)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef 82, ptr noundef %78, ptr noundef %80, ptr noundef null, ptr noundef null)
  br label %81

81:                                               ; preds = %51, %58, %73, %64
  %82 = icmp ult i32 %53, 2
  br i1 %82, label %83, label %197

83:                                               ; preds = %81
  %84 = load i8, ptr %27, align 8, !tbaa !102, !range !103, !noundef !104
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %32, align 8, !tbaa !91
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 7
  %89 = load ptr, ptr %88, align 8, !tbaa !261
  %90 = load ptr, ptr %87, align 8, !tbaa !47
  %91 = getelementptr inbounds ptr, ptr %90, i64 8
  %92 = load ptr, ptr %91, align 8
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(40) %87, ptr noundef nonnull %43, ptr noundef %89, i1 noundef zeroext false, ptr noundef nonnull %2)
  br label %93

93:                                               ; preds = %86, %83
  %94 = icmp ult i32 %38, %13
  br i1 %94, label %144, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %97 = load i8, ptr %96, align 2, !tbaa !126, !range !103, !noundef !104
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %102 = load ptr, ptr %100, align 8, !tbaa !75
  %103 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %102)
  %104 = load i32, ptr %101, align 4, !tbaa !142
  %105 = load ptr, ptr %43, align 8, !tbaa !47
  %106 = getelementptr inbounds ptr, ptr %105, i64 5
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(56) %43)
          to label %109 unwind label %115

109:                                              ; preds = %99
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 7
  %111 = load ptr, ptr %110, align 8, !tbaa !261
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !160
  %114 = load ptr, ptr %100, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %103, i32 noundef %104, ptr noundef %108, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %111, i32 noundef %113, i1 noundef zeroext false, ptr noundef %114, ptr noundef null, i1 noundef zeroext false)
          to label %133 unwind label %115

115:                                              ; preds = %109, %99
  %116 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %103, ptr noundef %102) #16
  br label %195

117:                                              ; preds = %95
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %119)
  %121 = load ptr, ptr %43, align 8, !tbaa !47
  %122 = getelementptr inbounds ptr, ptr %121, i64 5
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(56) %43)
          to label %125 unwind label %131

125:                                              ; preds = %117
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !261
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !160
  %130 = load ptr, ptr %118, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %120, i32 noundef 0, ptr noundef %124, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %127, i32 noundef %129, i1 noundef zeroext false, ptr noundef %130, ptr noundef null, i1 noundef zeroext false)
          to label %133 unwind label %131

131:                                              ; preds = %125, %117
  %132 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %120, ptr noundef %119) #16
  br label %195

133:                                              ; preds = %125, %109
  %134 = phi ptr [ %103, %109 ], [ %120, %125 ]
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %136 = load ptr, ptr %135, align 8, !tbaa !150
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %136, i32 noundef 1)
  %137 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %136, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !156
  %139 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %136, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !151
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds ptr, ptr %138, i64 %141
  store ptr %134, ptr %142, align 8, !tbaa !87
  %143 = add i32 %140, 1
  store i32 %143, ptr %139, align 4, !tbaa !151
  br label %178

144:                                              ; preds = %93
  %145 = load ptr, ptr %33, align 8, !tbaa !150
  %146 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %145, i32 noundef %38)
  %147 = load i8, ptr %34, align 2, !tbaa !126, !range !103, !noundef !104
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %161, label %149

149:                                              ; preds = %144
  %150 = load i32, ptr %35, align 4, !tbaa !142
  %151 = load ptr, ptr %43, align 8, !tbaa !47
  %152 = getelementptr inbounds ptr, ptr %151, i64 5
  %153 = load ptr, ptr %152, align 8
  %154 = tail call noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(56) %43)
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !261
  %157 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !160
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %146, i64 0, i32 6
  %160 = load ptr, ptr %159, align 8, !tbaa !164
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %160, ptr noundef %154, i32 noundef %150)
  br label %172

161:                                              ; preds = %144
  %162 = load ptr, ptr %43, align 8, !tbaa !47
  %163 = getelementptr inbounds ptr, ptr %162, i64 5
  %164 = load ptr, ptr %163, align 8
  %165 = tail call noundef ptr %164(ptr noundef nonnull align 8 dereferenceable(56) %43)
  %166 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 7
  %167 = load ptr, ptr %166, align 8, !tbaa !261
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %43, i64 0, i32 2
  %169 = load i32, ptr %168, align 4, !tbaa !160
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %146, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !164
  tail call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %171, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %165, i32 noundef 0)
  br label %172

172:                                              ; preds = %161, %149
  %173 = phi ptr [ %167, %161 ], [ %156, %149 ]
  %174 = phi i32 [ %169, %161 ], [ %158, %149 ]
  tail call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %146, ptr noundef %173)
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %146, i64 0, i32 2
  store i32 %174, ptr %175, align 4, !tbaa !165
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %146, i64 0, i32 9
  store i8 0, ptr %176, align 8, !tbaa !166
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %146, i64 0, i32 8
  store ptr null, ptr %177, align 8, !tbaa !167
  store i8 0, ptr %146, align 8, !tbaa !157
  br label %178

178:                                              ; preds = %172, %133
  %179 = phi ptr [ %134, %133 ], [ %146, %172 ]
  %180 = load i8, ptr %36, align 2, !tbaa !126, !range !103, !noundef !104
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %179, i64 0, i32 6
  %184 = load ptr, ptr %183, align 8, !tbaa !164
  %185 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %184, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !136
  %187 = icmp eq ptr %186, null
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = load i16, ptr %186, align 2, !tbaa !140
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %188
  %192 = tail call noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull %186, i32 noundef 0)
  tail call void @_ZN11xercesc_2_77XMLAttr8setURIIdEj(ptr noundef nonnull align 8 dereferenceable(49) %179, i32 noundef %192)
  br label %193

193:                                              ; preds = %182, %188, %191, %178
  %194 = add i32 %38, 1
  br label %197

195:                                              ; preds = %131, %115
  %196 = phi { ptr, i32 } [ %116, %115 ], [ %132, %131 ]
  resume { ptr, i32 } %196

197:                                              ; preds = %193, %81, %47
  %198 = phi i32 [ %38, %47 ], [ %194, %193 ], [ %38, %81 ]
  %199 = add nuw i32 %39, 1
  %200 = load ptr, ptr %18, align 8, !tbaa !47
  %201 = getelementptr inbounds ptr, ptr %200, i64 13
  %202 = load ptr, ptr %201, align 8
  %203 = tail call noundef i32 %202(ptr noundef nonnull align 8 dereferenceable(16) %18)
  %204 = icmp ult i32 %199, %203
  br i1 %204, label %37, label %205, !llvm.loop !262

205:                                              ; preds = %197, %14, %11, %4
  %206 = phi i32 [ 0, %4 ], [ %1, %11 ], [ %1, %14 ], [ %198, %197 ]
  ret i32 %206
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !45 {
  %4 = alloca i8, align 1
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i16, ptr %1, align 2, !tbaa !140
  %8 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %27

10:                                               ; preds = %3
  %11 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
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
  %21 = load i16, ptr %19, align 2, !tbaa !140
  %22 = load i16, ptr %20, align 2, !tbaa !140
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %27, !llvm.loop !149

24:                                               ; preds = %13, %10
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %26 = load i32, ptr %25, align 8, !tbaa !170
  br label %56

27:                                               ; preds = %18, %6, %10
  br i1 %5, label %32, label %28

28:                                               ; preds = %27
  %29 = load i16, ptr %1, align 2, !tbaa !140
  %30 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %35, label %49

32:                                               ; preds = %27
  %33 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
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
  %43 = load i16, ptr %41, align 2, !tbaa !140
  %44 = load i16, ptr %42, align 2, !tbaa !140
  %45 = icmp eq i16 %43, %44
  br i1 %45, label %35, label %49, !llvm.loop !149

46:                                               ; preds = %35, %32
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %48 = load i32, ptr %47, align 4, !tbaa !169
  br label %56

49:                                               ; preds = %40, %28, %32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #16
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %51 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %50, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %52 = load i8, ptr %4, align 1, !tbaa !106, !range !103, !noundef !104
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %55

55:                                               ; preds = %54, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %56

56:                                               ; preds = %55, %46, %24
  %57 = phi i32 [ %26, %24 ], [ %48, %46 ], [ %51, %55 ]
  ret i32 %57
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #4 align 2 !prof !45 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  store i32 %8, ptr %4, align 4, !tbaa !114
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !tbaa !106
  store i32 0, ptr %2, align 8, !tbaa !138
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !139
  store i16 0, ptr %12, align 2, !tbaa !140
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %14 = sext i16 %3 to i32
  %15 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %77

16:                                               ; preds = %5
  store i32 0, ptr %2, align 8, !tbaa !138
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %8)
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !139
  %19 = load i32, ptr %2, align 8, !tbaa !138
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i16, ptr %18, i64 %20
  store i16 0, ptr %21, align 2, !tbaa !140
  %22 = icmp eq ptr %18, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i16, ptr %18, align 2, !tbaa !140
  %25 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
  %26 = icmp eq i16 %24, %25
  br i1 %26, label %30, label %47

27:                                               ; preds = %16
  %28 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !140
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
  %38 = load i16, ptr %36, align 2, !tbaa !140
  %39 = load i16, ptr %37, align 2, !tbaa !140
  %40 = icmp eq i16 %38, %39
  br i1 %40, label %30, label %47, !llvm.loop !149

41:                                               ; preds = %30, %27
  %42 = icmp eq i16 %3, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %44

44:                                               ; preds = %43, %41
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %46 = load i32, ptr %45, align 8, !tbaa !170
  br label %77

47:                                               ; preds = %35, %23, %27
  br i1 %22, label %52, label %48

48:                                               ; preds = %47
  %49 = load i16, ptr %18, align 2, !tbaa !140
  %50 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %55, label %69

52:                                               ; preds = %47
  %53 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !140
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
  %63 = load i16, ptr %61, align 2, !tbaa !140
  %64 = load i16, ptr %62, align 2, !tbaa !140
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %55, label %69, !llvm.loop !149

66:                                               ; preds = %55, %52
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %68 = load i32, ptr %67, align 4, !tbaa !169
  br label %77

69:                                               ; preds = %60, %48, %52
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !tbaa !106
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %71 = sext i16 %3 to i32
  %72 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %70, ptr noundef %18, i32 noundef %71, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %73 = load i8, ptr %7, align 1, !tbaa !106, !range !103, !noundef !104
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %76

76:                                               ; preds = %75, %69
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %77

77:                                               ; preds = %44, %66, %76, %10
  %78 = phi i32 [ %15, %10 ], [ %46, %44 ], [ %68, %66 ], [ %72, %76 ]
  ret i32 %78
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !183
  invoke void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false)
          to label %8 unwind label %17

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !183
  %10 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %9, i64 0, i32 1
  store i8 0, ptr %10, align 1, !tbaa !263
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %11, align 8, !tbaa !147
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %13 = load i32, ptr %12, align 8, !tbaa !177
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %52

15:                                               ; preds = %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %16, align 8, !tbaa !102
  br label %52

17:                                               ; preds = %58, %4
  %18 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #16
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17, %31
  %24 = tail call ptr @__cxa_begin_catch(ptr %19) #16
  tail call void @__cxa_end_catch() #16
  br label %25

25:                                               ; preds = %23, %102, %58, %52
  %26 = phi ptr [ null, %52 ], [ %59, %58 ], [ null, %102 ], [ null, %23 ]
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %30 unwind label %27

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #17
  unreachable

30:                                               ; preds = %25
  ret ptr %26

31:                                               ; preds = %17
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #16
  %33 = icmp eq i32 %20, %32
  br i1 %33, label %23, label %34

34:                                               ; preds = %31
  %35 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #16
  %36 = icmp eq i32 %20, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = tail call ptr @__cxa_begin_catch(ptr %19) #16
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %39, align 1, !tbaa !98
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !99
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %74

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !105
  br label %93

47:                                               ; preds = %34
  %48 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %49 = icmp eq i32 %20, %48
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = tail call ptr @__cxa_begin_catch(ptr %19) #16
  invoke void @__cxa_rethrow() #18
          to label %131 unwind label %60

52:                                               ; preds = %15, %8
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %53, align 1, !tbaa !98
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %54, align 2, !tbaa !216
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %55, align 8, !tbaa !264
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %56, align 1, !tbaa !179
  %57 = icmp eq i16 %2, 0
  br i1 %57, label %58, label %25

58:                                               ; preds = %52
  %59 = invoke noundef ptr @_ZN11xercesc_2_712DGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3)
          to label %25 unwind label %17

60:                                               ; preds = %50
  %61 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %62 unwind label %128

62:                                               ; preds = %60
  %63 = extractvalue { ptr, i32 } %61, 1
  %64 = extractvalue { ptr, i32 } %61, 0
  br label %112

65:                                               ; preds = %93, %88, %83
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %67 = extractvalue { ptr, i32 } %66, 0
  %68 = extractvalue { ptr, i32 } %66, 1
  %69 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %107

71:                                               ; preds = %65
  %72 = tail call ptr @__cxa_begin_catch(ptr %67) #16
  invoke void @__cxa_rethrow() #18
          to label %73 unwind label %97

73:                                               ; preds = %71
  unreachable

74:                                               ; preds = %37
  %75 = add i32 %41, -5
  %76 = icmp ult i32 %75, 397
  %77 = and i32 %41, -2
  %78 = icmp ne i32 %77, 402
  %79 = or i1 %76, %78
  %80 = load ptr, ptr %38, align 8, !tbaa !47
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  br i1 %79, label %83, label %88

83:                                               ; preds = %74
  %84 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %85 unwind label %65

85:                                               ; preds = %83
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !105
  br label %93

88:                                               ; preds = %74
  %89 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(48) %38)
          to label %90 unwind label %65

90:                                               ; preds = %88
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !105
  br label %93

93:                                               ; preds = %44, %85, %90
  %94 = phi i32 [ 157, %90 ], [ 292, %85 ], [ 156, %44 ]
  %95 = phi ptr [ %89, %90 ], [ %84, %85 ], [ %46, %44 ]
  %96 = phi ptr [ %92, %90 ], [ %87, %85 ], [ null, %44 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %94, ptr noundef %95, ptr noundef %96, ptr noundef null, ptr noundef null)
          to label %102 unwind label %65

97:                                               ; preds = %71
  %98 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %99 unwind label %128

99:                                               ; preds = %97
  %100 = extractvalue { ptr, i32 } %98, 1
  %101 = extractvalue { ptr, i32 } %98, 0
  br label %107

102:                                              ; preds = %93
  invoke void @__cxa_end_catch()
          to label %25 unwind label %103

103:                                              ; preds = %102
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = extractvalue { ptr, i32 } %104, 0
  %106 = extractvalue { ptr, i32 } %104, 1
  br label %112

107:                                              ; preds = %99, %65
  %108 = phi i64 [ 0, %99 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %65 ]
  %109 = phi ptr [ null, %99 ], [ %5, %65 ]
  %110 = phi i32 [ %100, %99 ], [ %68, %65 ]
  %111 = phi ptr [ %101, %99 ], [ %67, %65 ]
  invoke void @__cxa_end_catch()
          to label %112 unwind label %128

112:                                              ; preds = %107, %103, %62, %47
  %113 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %103 ], [ 0, %62 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %47 ], [ %108, %107 ]
  %114 = phi ptr [ %5, %103 ], [ null, %62 ], [ %5, %47 ], [ %109, %107 ]
  %115 = phi i32 [ %106, %103 ], [ %63, %62 ], [ %20, %47 ], [ %110, %107 ]
  %116 = phi ptr [ %105, %103 ], [ %64, %62 ], [ %19, %47 ], [ %111, %107 ]
  %117 = icmp eq ptr %114, null
  %118 = icmp eq i64 %113, 0
  %119 = or i1 %118, %117
  br i1 %119, label %125, label %120

120:                                              ; preds = %112
  %121 = inttoptr i64 %113 to ptr
  invoke void %121(ptr noundef nonnull align 8 dereferenceable(80) %114)
          to label %125 unwind label %122

122:                                              ; preds = %120
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  tail call void @__clang_call_terminate(ptr %124) #17
  unreachable

125:                                              ; preds = %112, %120
  %126 = insertvalue { ptr, i32 } poison, ptr %116, 0
  %127 = insertvalue { ptr, i32 } %126, i32 %115, 1
  resume { ptr, i32 } %127

128:                                              ; preds = %107, %97, %60
  %129 = landingpad { ptr, i32 }
          catch ptr null
  %130 = extractvalue { ptr, i32 } %129, 0
  tail call void @__clang_call_terminate(ptr %130) #17
  unreachable

131:                                              ; preds = %50
  unreachable
}

declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = alloca [4 x i16], align 8
  %5 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %12 = load i8, ptr %11, align 1, !tbaa !265, !range !103, !noundef !104
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %16 = load ptr, ptr %15, align 8, !tbaa !91
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(40) %16)
  br label %20

20:                                               ; preds = %14, %3
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %22)
  %24 = load ptr, ptr %21, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %23, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  store ptr %23, ptr %26, align 8, !tbaa !184
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %28 = load ptr, ptr %27, align 8, !tbaa !183
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr noundef nonnull %23)
  %29 = load ptr, ptr %26, align 8, !tbaa !184
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %29, ptr %30, align 8, !tbaa !92
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %32 = load ptr, ptr %31, align 8, !tbaa !91
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds ptr, ptr %33, i64 11
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(40) %32, ptr noundef %29)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %37 = load ptr, ptr %36, align 8, !tbaa !97
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %25
  %40 = load ptr, ptr %37, align 8, !tbaa !47
  %41 = getelementptr inbounds ptr, ptr %40, i64 9
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(8) %37)
  br label %45

43:                                               ; preds = %20
  %44 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #16
  br label %269

45:                                               ; preds = %39, %25
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %47 = load ptr, ptr %46, align 8, !tbaa !266
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %47, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %47)
  br label %53

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %55 = load ptr, ptr %54, align 8, !tbaa !267
  %56 = icmp eq ptr %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %55, align 8, !tbaa !47
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(8) %55)
  br label %61

61:                                               ; preds = %57, %53
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %63 = load ptr, ptr %62, align 8, !tbaa !268
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = getelementptr inbounds ptr, ptr %64, i64 4
  %66 = load ptr, ptr %65, align 8
  tail call void %66(ptr noundef nonnull align 8 dereferenceable(16) %63)
  %67 = load ptr, ptr %62, align 8, !tbaa !268
  %68 = load ptr, ptr %67, align 8, !tbaa !47
  %69 = getelementptr inbounds ptr, ptr %68, i64 9
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(16) %67, ptr noundef null)
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %72, align 8, !tbaa !269
  br i1 %2, label %73, label %104

73:                                               ; preds = %61
  %74 = load ptr, ptr %27, align 8, !tbaa !183
  %75 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !189
  %77 = load ptr, ptr %1, align 8, !tbaa !47
  %78 = getelementptr inbounds ptr, ptr %77, i64 5
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %81 = load ptr, ptr %76, align 8, !tbaa !47
  %82 = getelementptr inbounds ptr, ptr %81, i64 5
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef i32 %83(ptr noundef nonnull align 8 dereferenceable(40) %76, ptr noundef %80)
  %85 = load ptr, ptr %27, align 8, !tbaa !183
  %86 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !189
  %88 = load ptr, ptr %87, align 8, !tbaa !47
  %89 = getelementptr inbounds ptr, ptr %88, i64 10
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(40) %87, i32 noundef %84)
  %92 = load ptr, ptr %27, align 8, !tbaa !183
  %93 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %92, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE)
  %94 = load ptr, ptr %30, align 8, !tbaa !92
  %95 = load ptr, ptr %94, align 8, !tbaa !47
  %96 = getelementptr inbounds ptr, ptr %95, i64 22
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %94)
  %99 = load ptr, ptr %98, align 8, !tbaa !47
  %100 = getelementptr inbounds ptr, ptr %99, i64 10
  %101 = load ptr, ptr %100, align 8
  tail call void %101(ptr noundef nonnull align 8 dereferenceable(16) %98, ptr noundef %91)
  %102 = load ptr, ptr %27, align 8, !tbaa !183
  %103 = load ptr, ptr %30, align 8, !tbaa !92
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %102, ptr noundef %103)
  br label %104

104:                                              ; preds = %73, %61
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !186, !range !103, !noundef !104
  %108 = icmp ne i8 %107, 0
  %109 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %105, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %108)
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %136

111:                                              ; preds = %104
  %112 = load ptr, ptr %1, align 8, !tbaa !47
  %113 = getelementptr inbounds ptr, ptr %112, i64 6
  %114 = load ptr, ptr %113, align 8
  %115 = tail call noundef zeroext i1 %114(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %116 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %117 = load ptr, ptr %1, align 8, !tbaa !47
  %118 = getelementptr inbounds ptr, ptr %117, i64 5
  %119 = load ptr, ptr %118, align 8
  br i1 %115, label %120, label %128

120:                                              ; preds = %111
  %121 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %122 unwind label %126

122:                                              ; preds = %120
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %124 = load ptr, ptr %123, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef nonnull @.str, i32 noundef 1768, i32 noundef 76, ptr noundef %121, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %124)
          to label %125 unwind label %126

125:                                              ; preds = %122
  tail call void @__cxa_throw(ptr nonnull %116, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

126:                                              ; preds = %122, %120
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %116) #16
  br label %269

128:                                              ; preds = %111
  %129 = invoke noundef ptr %119(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %130 unwind label %134

130:                                              ; preds = %128
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %132 = load ptr, ptr %131, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %116, ptr noundef nonnull @.str, i32 noundef 1770, i32 noundef 2, ptr noundef %129, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %132)
          to label %133 unwind label %134

133:                                              ; preds = %130
  tail call void @__cxa_throw(ptr nonnull %116, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

134:                                              ; preds = %130, %128
  %135 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %116) #16
  br label %269

136:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 292063281220, ptr %4, align 8
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %138 = load ptr, ptr %137, align 8, !tbaa !75
  %139 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %138)
  %140 = load ptr, ptr %137, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %139, ptr noundef nonnull %4, ptr noundef %140)
          to label %141 unwind label %218

141:                                              ; preds = %136
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %139, align 8, !tbaa !47
  %142 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %139, i64 0, i32 1
  store i8 0, ptr %142, align 8, !tbaa !191
  %143 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %139, i64 0, i32 2
  store i8 0, ptr %143, align 1, !tbaa !194
  %144 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %139, i64 0, i32 3
  store i8 0, ptr %144, align 2, !tbaa !195
  %145 = load ptr, ptr %1, align 8, !tbaa !47
  %146 = getelementptr inbounds ptr, ptr %145, i64 5
  %147 = load ptr, ptr %146, align 8
  %148 = call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %139, i64 0, i32 7
  %150 = load ptr, ptr %149, align 8, !tbaa !196
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %141
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %139, i64 0, i32 9
  %154 = load ptr, ptr %153, align 8, !tbaa !197
  %155 = load ptr, ptr %154, align 8, !tbaa !47
  %156 = getelementptr inbounds ptr, ptr %155, i64 3
  %157 = load ptr, ptr %156, align 8
  call void %157(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef nonnull %150)
  br label %158

158:                                              ; preds = %152, %141
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %139, i64 0, i32 9
  %160 = load ptr, ptr %159, align 8, !tbaa !197
  %161 = icmp eq ptr %148, null
  br i1 %161, label %182, label %162

162:                                              ; preds = %158
  %163 = load i16, ptr %148, align 2, !tbaa !140
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %162, %165
  %166 = phi ptr [ %167, %165 ], [ %148, %162 ]
  %167 = getelementptr inbounds i16, ptr %166, i64 1
  %168 = load i16, ptr %167, align 2, !tbaa !140
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %170, label %165, !llvm.loop !173

170:                                              ; preds = %165
  %171 = ptrtoint ptr %167 to i64
  %172 = ptrtoint ptr %148 to i64
  %173 = sub i64 %171, %172
  %174 = add i64 %173, 2
  %175 = and i64 %174, 8589934590
  br label %176

176:                                              ; preds = %170, %162
  %177 = phi i64 [ %175, %170 ], [ 2, %162 ]
  %178 = load ptr, ptr %160, align 8, !tbaa !47
  %179 = getelementptr inbounds ptr, ptr %178, i64 2
  %180 = load ptr, ptr %179, align 8
  %181 = call noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %160, i64 noundef %177)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %181, ptr nonnull align 2 %148, i64 %177, i1 false)
  br label %182

182:                                              ; preds = %158, %176
  %183 = phi ptr [ %181, %176 ], [ null, %158 ]
  store ptr %183, ptr %149, align 8, !tbaa !196
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %109, i64 0, i32 25
  store i8 1, ptr %184, align 1, !tbaa !198
  %185 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %105, ptr noundef nonnull %109, ptr noundef nonnull %139)
          to label %186 unwind label %220

186:                                              ; preds = %182
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %188 = load ptr, ptr %187, align 8, !tbaa !172
  %189 = icmp eq ptr %188, null
  br i1 %189, label %231, label %190

190:                                              ; preds = %186
  %191 = load ptr, ptr %21, align 8, !tbaa !178
  %192 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %191)
          to label %193 unwind label %222

193:                                              ; preds = %190
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %195 = load i32, ptr %194, align 4, !tbaa !142
  %196 = load ptr, ptr %21, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %192, ptr noundef nonnull %4, i32 noundef %195, i32 noundef 1, ptr noundef %196)
          to label %197 unwind label %224

197:                                              ; preds = %193
  %198 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %192, i64 0, i32 3
  store i32 4, ptr %198, align 8, !tbaa !146
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %192, i64 0, i32 5
  store i8 1, ptr %199, align 8, !tbaa !175
  %200 = load ptr, ptr %187, align 8, !tbaa !172
  %201 = load ptr, ptr %1, align 8, !tbaa !47
  %202 = getelementptr inbounds ptr, ptr %201, i64 4
  %203 = load ptr, ptr %202, align 8
  %204 = invoke noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %205 unwind label %226

205:                                              ; preds = %197
  %206 = load ptr, ptr %1, align 8, !tbaa !47
  %207 = getelementptr inbounds ptr, ptr %206, i64 5
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef ptr %208(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %210 unwind label %226

210:                                              ; preds = %205
  %211 = load ptr, ptr %200, align 8, !tbaa !47
  %212 = getelementptr inbounds ptr, ptr %211, i64 4
  %213 = load ptr, ptr %212, align 8
  invoke void %213(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef nonnull align 8 dereferenceable(80) %192, ptr noundef %204, ptr noundef %209, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %214 unwind label %226

214:                                              ; preds = %210
  %215 = load ptr, ptr %192, align 8, !tbaa !47
  %216 = getelementptr inbounds ptr, ptr %215, i64 1
  %217 = load ptr, ptr %216, align 8
  call void %217(ptr noundef nonnull align 8 dereferenceable(80) %192) #16
  br label %231

218:                                              ; preds = %136
  %219 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %139, ptr noundef %138) #16
  br label %267

220:                                              ; preds = %182
  %221 = landingpad { ptr, i32 }
          cleanup
  br label %262

222:                                              ; preds = %190
  %223 = landingpad { ptr, i32 }
          cleanup
  br label %262

224:                                              ; preds = %193
  %225 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %192, ptr noundef %191) #16
  br label %262

226:                                              ; preds = %210, %205, %197
  %227 = landingpad { ptr, i32 }
          cleanup
  %228 = load ptr, ptr %192, align 8, !tbaa !47
  %229 = getelementptr inbounds ptr, ptr %228, i64 1
  %230 = load ptr, ptr %229, align 8
  call void %230(ptr noundef nonnull align 8 dereferenceable(80) %192) #16
  br label %262

231:                                              ; preds = %214, %186
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #16
  %232 = load ptr, ptr %30, align 8, !tbaa !92
  %233 = load ptr, ptr %187, align 8, !tbaa !172
  %234 = load ptr, ptr %21, align 8, !tbaa !178
  %235 = load ptr, ptr %137, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %232, ptr noundef %233, ptr noundef %234, ptr noundef %235)
          to label %236 unwind label %248

236:                                              ; preds = %231
  %237 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %0, ptr noundef nonnull %105, ptr noundef nonnull %237)
          to label %238 unwind label %250

238:                                              ; preds = %236
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %5, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %239 unwind label %250

239:                                              ; preds = %238
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %241 = load i8, ptr %240, align 8, !tbaa !102, !range !103, !noundef !104
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %252, label %243

243:                                              ; preds = %239
  %244 = load ptr, ptr %31, align 8, !tbaa !91
  %245 = load ptr, ptr %244, align 8, !tbaa !47
  %246 = getelementptr inbounds ptr, ptr %245, i64 4
  %247 = load ptr, ptr %246, align 8
  invoke void %247(ptr noundef nonnull align 8 dereferenceable(40) %244, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %252 unwind label %250

248:                                              ; preds = %231
  %249 = landingpad { ptr, i32 }
          cleanup
  br label %260

250:                                              ; preds = %253, %243, %238, %236
  %251 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #16
  br label %260

252:                                              ; preds = %243, %239
  br i1 %2, label %253, label %255

253:                                              ; preds = %252
  %254 = load ptr, ptr %27, align 8, !tbaa !183
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %254)
          to label %255 unwind label %250

255:                                              ; preds = %253, %252
  %256 = load ptr, ptr %26, align 8, !tbaa !184
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #16
  %257 = load ptr, ptr %139, align 8, !tbaa !47
  %258 = getelementptr inbounds ptr, ptr %257, i64 1
  %259 = load ptr, ptr %258, align 8
  call void %259(ptr noundef nonnull align 8 dereferenceable(75) %139) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %256

260:                                              ; preds = %250, %248
  %261 = phi { ptr, i32 } [ %251, %250 ], [ %249, %248 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #16
  br label %262

262:                                              ; preds = %220, %260, %226, %224, %222
  %263 = phi { ptr, i32 } [ %261, %260 ], [ %221, %220 ], [ %227, %226 ], [ %225, %224 ], [ %223, %222 ]
  %264 = load ptr, ptr %139, align 8, !tbaa !47
  %265 = getelementptr inbounds ptr, ptr %264, i64 1
  %266 = load ptr, ptr %265, align 8
  call void %266(ptr noundef nonnull align 8 dereferenceable(75) %139) #16
  br label %267

267:                                              ; preds = %262, %218
  %268 = phi { ptr, i32 } [ %263, %262 ], [ %219, %218 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %269

269:                                              ; preds = %126, %134, %267, %43
  %270 = phi { ptr, i32 } [ %44, %43 ], [ %268, %267 ], [ %127, %126 ], [ %135, %134 ]
  resume { ptr, i32 } %270
}

declare void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  store ptr %3, ptr %0, align 8, !tbaa !201
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !207
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !206
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !271
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !272

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 68, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !273
  store ptr %22, ptr %5, align 8, !tbaa !204
  %23 = load i32, ptr %8, align 8, !tbaa !271
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !224

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !207
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !272

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !204
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !87
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !274, !llvm.loop !275

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !207
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !201
  %40 = load i32, ptr %6, align 8, !tbaa !207
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !273
  store ptr %46, ptr %38, align 8, !tbaa !209
  store ptr null, ptr %46, align 8, !tbaa !87
  ret void
}

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !201
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !209
  %5 = load ptr, ptr %2, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !276

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !277

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !201
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !204
  %13 = load ptr, ptr %10, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !276

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !183
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 1, !tbaa !188, !range !103, !noundef !104
  %7 = icmp ne i8 %6, 0
  tail call void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext %7)
  %8 = load ptr, ptr %3, align 8, !tbaa !183
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %10 = load i8, ptr %9, align 2, !tbaa !174, !range !103, !noundef !104
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %8, i64 0, i32 1
  store i8 %10, ptr %11, align 1, !tbaa !263
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %13 = load ptr, ptr %12, align 8, !tbaa !178
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %13)
  %15 = load ptr, ptr %12, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %14, ptr noundef %15)
          to label %16 unwind label %39

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  store ptr %14, ptr %17, align 8, !tbaa !184
  %18 = load ptr, ptr %3, align 8, !tbaa !183
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull %14)
  %19 = load ptr, ptr %17, align 8, !tbaa !184
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %19, ptr %20, align 8, !tbaa !92
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %21, align 8, !tbaa !147
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef %19)
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %28 = load i32, ptr %27, align 8, !tbaa !177
  %29 = icmp eq i32 %28, 1
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %31 = zext i1 %29 to i8
  store i8 %31, ptr %30, align 8, !tbaa !102
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %16
  %36 = load ptr, ptr %33, align 8, !tbaa !47
  %37 = getelementptr inbounds ptr, ptr %36, i64 9
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33)
  br label %41

39:                                               ; preds = %2
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #16
  br label %158

41:                                               ; preds = %35, %16
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %43 = load ptr, ptr %42, align 8, !tbaa !266
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !47
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(8) %43)
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %51 = load ptr, ptr %50, align 8, !tbaa !267
  %52 = icmp eq ptr %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %51, align 8, !tbaa !47
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  tail call void %56(ptr noundef nonnull align 8 dereferenceable(8) %51)
  br label %57

57:                                               ; preds = %53, %49
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %59 = load ptr, ptr %58, align 8, !tbaa !268
  %60 = load ptr, ptr %59, align 8, !tbaa !47
  %61 = getelementptr inbounds ptr, ptr %60, i64 4
  %62 = load ptr, ptr %61, align 8
  tail call void %62(ptr noundef nonnull align 8 dereferenceable(16) %59)
  %63 = load ptr, ptr %58, align 8, !tbaa !268
  %64 = load ptr, ptr %63, align 8, !tbaa !47
  %65 = getelementptr inbounds ptr, ptr %64, i64 9
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(16) %63, ptr noundef null)
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %68, align 8, !tbaa !269
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = load ptr, ptr %69, align 8, !tbaa !75
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %72 = load ptr, ptr %71, align 8, !tbaa !148
  %73 = load ptr, ptr %70, align 8, !tbaa !47
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  tail call void %75(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %72)
  store ptr null, ptr %71, align 8, !tbaa !148
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %78 = load i32, ptr %77, align 4, !tbaa !142
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %80 = load i32, ptr %79, align 8, !tbaa !278
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %82 = load i32, ptr %81, align 4, !tbaa !169
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %84 = load i32, ptr %83, align 8, !tbaa !170
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %76, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84)
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %85, align 1, !tbaa !98
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %86, align 2, !tbaa !216
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %87, align 8, !tbaa !264
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %88, align 1, !tbaa !179
  %89 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !71
  %91 = load ptr, ptr %90, align 8, !tbaa !47
  %92 = getelementptr inbounds ptr, ptr %91, i64 6
  %93 = load ptr, ptr %92, align 8
  tail call void %93(ptr noundef nonnull align 8 dereferenceable(48) %90)
  %94 = load ptr, ptr %89, align 8, !tbaa !71
  %95 = load ptr, ptr %50, align 8, !tbaa !267
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %94, i64 0, i32 2
  store ptr %95, ptr %96, align 8, !tbaa !279
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %98 = load i8, ptr %97, align 1, !tbaa !265, !range !103, !noundef !104
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %57
  %101 = load ptr, ptr %22, align 8, !tbaa !91
  %102 = load ptr, ptr %101, align 8, !tbaa !47
  %103 = getelementptr inbounds ptr, ptr %102, i64 6
  %104 = load ptr, ptr %103, align 8
  tail call void %104(ptr noundef nonnull align 8 dereferenceable(40) %101)
  br label %105

105:                                              ; preds = %100, %57
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !186, !range !103, !noundef !104
  %109 = icmp ne i8 %108, 0
  %110 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %106, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %109)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %105
  %113 = load ptr, ptr %1, align 8, !tbaa !47
  %114 = getelementptr inbounds ptr, ptr %113, i64 6
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %117 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %118 = load ptr, ptr %1, align 8, !tbaa !47
  %119 = getelementptr inbounds ptr, ptr %118, i64 5
  %120 = load ptr, ptr %119, align 8
  br i1 %116, label %121, label %128

121:                                              ; preds = %112
  %122 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %123 unwind label %126

123:                                              ; preds = %121
  %124 = load ptr, ptr %69, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %117, ptr noundef nonnull @.str, i32 noundef 2148, i32 noundef 76, ptr noundef %122, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %124)
          to label %125 unwind label %126

125:                                              ; preds = %123
  tail call void @__cxa_throw(ptr nonnull %117, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

126:                                              ; preds = %123, %121
  %127 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %117) #16
  br label %158

128:                                              ; preds = %112
  %129 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %130 unwind label %133

130:                                              ; preds = %128
  %131 = load ptr, ptr %69, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %117, ptr noundef nonnull @.str, i32 noundef 2150, i32 noundef 2, ptr noundef %129, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %131)
          to label %132 unwind label %133

132:                                              ; preds = %130
  tail call void @__cxa_throw(ptr nonnull %117, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

133:                                              ; preds = %130, %128
  %134 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %117) #16
  br label %158

135:                                              ; preds = %105
  %136 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %106, ptr noundef nonnull %110, ptr noundef null)
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %138 = load ptr, ptr %137, align 8, !tbaa !281
  %139 = icmp eq ptr %138, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = load ptr, ptr %138, align 8, !tbaa !47
  %142 = getelementptr inbounds ptr, ptr %141, i64 3
  %143 = load ptr, ptr %142, align 8
  %144 = tail call noundef i32 %143(ptr noundef nonnull align 8 dereferenceable(12) %138)
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %144, ptr %145, align 4, !tbaa !282
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %146, align 8, !tbaa !283
  br label %147

147:                                              ; preds = %140, %135
  %148 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %149 = load i32, ptr %148, align 8, !tbaa !284
  %150 = icmp ugt i32 %149, 31
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 6
  %153 = load ptr, ptr %152, align 8, !tbaa !73
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %153)
  tail call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %155

154:                                              ; preds = %147
  tail call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %155

155:                                              ; preds = %154, %151
  %156 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 7
  %157 = load ptr, ptr %156, align 8, !tbaa !74
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %157)
  ret void

158:                                              ; preds = %126, %133, %39
  %159 = phi { ptr, i32 } [ %40, %39 ], [ %127, %126 ], [ %134, %133 ]
  resume { ptr, i32 } %159
}

declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr nocapture noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 align 2 !prof !45 {
  %3 = load i32, ptr %1, align 8, !tbaa !138
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %74, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 8, !tbaa !102, !range !103, !noundef !104
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = zext i32 %3 to i64
  %13 = getelementptr inbounds i16, ptr %11, i64 %12
  store i16 0, ptr %13, align 2, !tbaa !140
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %15 = tail call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %14)
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(33) %16)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %9
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef 22)
  br label %71

25:                                               ; preds = %9
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !115
  %28 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %27, ptr noundef %11, i32 noundef %3)
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  switch i32 %20, label %71 [
    i32 1, label %30
    i32 2, label %38
  ]

30:                                               ; preds = %29
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %32 = load ptr, ptr %31, align 8, !tbaa !97
  %33 = icmp eq ptr %32, null
  br i1 %33, label %71, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !47
  %36 = getelementptr inbounds ptr, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %71

38:                                               ; preds = %29
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %40 = load ptr, ptr %39, align 8, !tbaa !97
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !47
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %71

46:                                               ; preds = %25
  %47 = icmp eq i32 %20, 2
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %50 = load ptr, ptr %49, align 8, !tbaa !97
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr %50, align 8, !tbaa !47
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  tail call void %55(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %11, i32 noundef %3, i1 noundef zeroext false)
  br label %71

56:                                               ; preds = %46
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %58 = load ptr, ptr %57, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %58, i32 noundef 22)
  br label %71

59:                                               ; preds = %5
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %61 = load ptr, ptr %60, align 8, !tbaa !97
  %62 = icmp eq ptr %61, null
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !139
  %66 = zext i32 %3 to i64
  %67 = getelementptr inbounds i16, ptr %65, i64 %66
  store i16 0, ptr %67, align 2, !tbaa !140
  %68 = load ptr, ptr %61, align 8, !tbaa !47
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(8) %61, ptr noundef %65, i32 noundef %3, i1 noundef zeroext false)
  br label %71

71:                                               ; preds = %22, %56, %52, %48, %34, %30, %38, %42, %29, %59, %63
  store i32 0, ptr %1, align 8, !tbaa !138
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !139
  store i16 0, ptr %73, align 2, !tbaa !140
  br label %74

74:                                               ; preds = %2, %71
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79ElemStack9addPrefixEPKtj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 206, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !70
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  ret ptr %17
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21setAttrDupChkRegistryERKjRb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 !prof !285 {
  %4 = load i32, ptr %1, align 4, !tbaa !114
  %5 = icmp ugt i32 %4, 100
  br i1 %5, label %6, label %35, !prof !286

6:                                                ; preds = %3
  store i8 1, ptr %2, align 1, !tbaa !106
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8, !tbaa !250
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12)
  %14 = load i32, ptr %1, align 4, !tbaa !114
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
  store ptr %21, ptr %13, align 8, !tbaa !287
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 1
  store i8 0, ptr %22, align 8, !tbaa !289
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !290
  %24 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 3
  store i32 %16, ptr %24, align 8, !tbaa !291
  %25 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 4
  store i32 0, ptr %25, align 4, !tbaa !292
  %26 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %13, i64 0, i32 5
  store ptr null, ptr %26, align 8, !tbaa !293
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %16)
          to label %27 unwind label %28

27:                                               ; preds = %20
  store ptr %18, ptr %26, align 8, !tbaa !293
  store ptr %13, ptr %7, align 8, !tbaa !250
  br label %35

28:                                               ; preds = %20, %10
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %19
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #16
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %29, %28 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #16
  resume { ptr, i32 } %33

34:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %8)
  br label %35

35:                                               ; preds = %27, %34, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !291
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !292
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !289, !range !103, !noundef !104
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !294
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %21)
          to label %27 unwind label %24

24:                                               ; preds = %23
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #17
  unreachable

27:                                               ; preds = %23
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #16
  br label %28

28:                                               ; preds = %20, %27, %16
  store ptr %3, ptr %14, align 8, !tbaa !294
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %29, align 8, !tbaa !296
  %30 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %30, align 8, !tbaa !297
  br label %48

31:                                               ; preds = %13
  %32 = load ptr, ptr %0, align 8, !tbaa !287
  %33 = load ptr, ptr %32, align 8, !tbaa !47
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef 32)
  %37 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !290
  %39 = load i32, ptr %5, align 4, !tbaa !114
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !87
  store ptr %3, ptr %36, align 8, !tbaa !294
  %43 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  store ptr %42, ptr %43, align 8, !tbaa !298
  %44 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  store ptr %1, ptr %44, align 8, !tbaa !296
  %45 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 3
  store i32 %2, ptr %45, align 8, !tbaa !297
  store ptr %36, ptr %41, align 8, !tbaa !87
  %46 = load i32, ptr %9, align 4, !tbaa !292
  %47 = add i32 %46, 1
  store i32 %47, ptr %9, align 4, !tbaa !292
  br label %48

48:                                               ; preds = %31, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %4 = alloca i16, align 2
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %7 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %8 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 -1, ptr %4, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %11 unwind label %29

11:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !139
  %14 = load i32, ptr %10, align 8, !tbaa !138
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i16, ptr %13, i64 %15
  store i16 0, ptr %16, align 2, !tbaa !140
  %17 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %18 unwind label %31

18:                                               ; preds = %11
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %20 = load ptr, ptr %19, align 8, !tbaa !266
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %20, align 8, !tbaa !47
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %27 unwind label %33

27:                                               ; preds = %22
  br i1 %26, label %35, label %28

28:                                               ; preds = %27
  store i32 0, ptr %17, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %13)
          to label %35 unwind label %33

29:                                               ; preds = %3
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  br label %179

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %179

33:                                               ; preds = %61, %28, %22
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %174

35:                                               ; preds = %28, %27
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %36, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %37 unwind label %55

37:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #16
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !139
  %40 = load i32, ptr %17, align 8, !tbaa !138
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %39, i64 %41
  store i16 0, ptr %42, align 2, !tbaa !140
  %43 = load ptr, ptr %5, align 8, !tbaa !299
  store i32 4, ptr %6, align 8, !tbaa !301
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 1
  store ptr %2, ptr %44, align 8, !tbaa !304
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 2
  store ptr %39, ptr %45, align 8, !tbaa !305
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 3
  store ptr %43, ptr %46, align 8, !tbaa !306
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 4
  store ptr null, ptr %47, align 8, !tbaa !307
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 5
  store ptr %36, ptr %48, align 8, !tbaa !308
  %49 = load ptr, ptr %19, align 8, !tbaa !266
  %50 = load ptr, ptr %49, align 8, !tbaa !47
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull %6)
          to label %54 unwind label %57

54:                                               ; preds = %37
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %62

55:                                               ; preds = %35
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %59

57:                                               ; preds = %37
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #16
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %174

61:                                               ; preds = %18
  store i32 0, ptr %17, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %17, ptr noundef %13)
          to label %62 unwind label %33

62:                                               ; preds = %61, %54
  %63 = phi ptr [ %53, %54 ], [ null, %61 ]
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %164

65:                                               ; preds = %62
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %67 = load i8, ptr %66, align 1, !tbaa !187, !range !103, !noundef !104
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %164

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #16
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %70, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %71 unwind label %112

71:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %8) #16
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %73 = load ptr, ptr %72, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %73)
          to label %74 unwind label %114

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 8, !tbaa !299
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !139
  %78 = load i32, ptr %17, align 8, !tbaa !138
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %77, i64 %79
  store i16 0, ptr %80, align 2, !tbaa !140
  %81 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %75, ptr noundef %77, ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %82 unwind label %116

82:                                               ; preds = %74
  br i1 %81, label %83, label %86

83:                                               ; preds = %82
  %84 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %85 unwind label %116

85:                                               ; preds = %83
  br i1 %84, label %86, label %134

86:                                               ; preds = %85, %82
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %88 = load i8, ptr %87, align 8, !tbaa !309, !range !103, !noundef !104
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %129

90:                                               ; preds = %86
  %91 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %92 unwind label %118

92:                                               ; preds = %90
  %93 = load ptr, ptr %76, align 8, !tbaa !139
  %94 = load i32, ptr %17, align 8, !tbaa !138
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i16, ptr %93, i64 %95
  store i16 0, ptr %96, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %93, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %97 unwind label %120

97:                                               ; preds = %92
  %98 = load ptr, ptr %72, align 8, !tbaa !75
  %99 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %98)
          to label %100 unwind label %120

100:                                              ; preds = %97
  %101 = load ptr, ptr %7, align 8, !tbaa !299
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %91, i64 0, i32 6
  %103 = load ptr, ptr %102, align 8, !tbaa !139
  %104 = load i32, ptr %91, align 8, !tbaa !138
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i16, ptr %103, i64 %105
  store i16 0, ptr %106, align 2, !tbaa !140
  %107 = load ptr, ptr %72, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %99, ptr noundef %101, ptr noundef %103, ptr noundef %107)
          to label %108 unwind label %122

108:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %156 unwind label %109

109:                                              ; preds = %108
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #17
  unreachable

112:                                              ; preds = %69
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %162

114:                                              ; preds = %71
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %160

116:                                              ; preds = %144, %149, %138, %83, %74
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %158

118:                                              ; preds = %90
  %119 = landingpad { ptr, i32 }
          cleanup
  br label %158

120:                                              ; preds = %97, %92
  %121 = landingpad { ptr, i32 }
          cleanup
  br label %124

122:                                              ; preds = %100
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %99, ptr noundef %98) #16
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi { ptr, i32 } [ %123, %122 ], [ %121, %120 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %91)
          to label %158 unwind label %126

126:                                              ; preds = %124
  %127 = landingpad { ptr, i32 }
          catch ptr null
  %128 = extractvalue { ptr, i32 } %127, 0
  call void @__clang_call_terminate(ptr %128) #17
  unreachable

129:                                              ; preds = %86
  %130 = call ptr @__cxa_allocate_exception(i64 48) #16
  %131 = load ptr, ptr %72, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %130, ptr noundef nonnull @.str, i32 noundef 2424, i32 noundef 99, ptr noundef %131)
          to label %144 unwind label %132

132:                                              ; preds = %129
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %130) #16
  br label %158

134:                                              ; preds = %85
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %136 = load i8, ptr %135, align 8, !tbaa !309, !range !103, !noundef !104
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %134
  %139 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %8)
          to label %140 unwind label %116

140:                                              ; preds = %138
  br i1 %139, label %141, label %149

141:                                              ; preds = %140
  %142 = call ptr @__cxa_allocate_exception(i64 48) #16
  %143 = load ptr, ptr %72, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %142, ptr noundef nonnull @.str, i32 noundef 2429, i32 noundef 99, ptr noundef %143)
          to label %144 unwind label %147

144:                                              ; preds = %141, %129
  %145 = phi ptr [ %130, %129 ], [ %142, %141 ]
  invoke void @__cxa_throw(ptr nonnull %145, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %146 unwind label %116

146:                                              ; preds = %144
  unreachable

147:                                              ; preds = %141
  %148 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %142) #16
  br label %158

149:                                              ; preds = %140, %134
  %150 = load ptr, ptr %72, align 8, !tbaa !75
  %151 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %150)
          to label %152 unwind label %116

152:                                              ; preds = %149
  %153 = load ptr, ptr %72, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %151, ptr noundef nonnull align 8 dereferenceable(81) %8, ptr noundef %153)
          to label %156 unwind label %154

154:                                              ; preds = %152
  %155 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %151, ptr noundef %150) #16
  br label %158

156:                                              ; preds = %108, %152
  %157 = phi ptr [ %151, %152 ], [ %99, %108 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %8) #16
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %164

158:                                              ; preds = %118, %124, %154, %147, %132, %116
  %159 = phi { ptr, i32 } [ %117, %116 ], [ %133, %132 ], [ %148, %147 ], [ %155, %154 ], [ %119, %118 ], [ %125, %124 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %8) #16
  br label %160

160:                                              ; preds = %158, %114
  %161 = phi { ptr, i32 } [ %159, %158 ], [ %115, %114 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %8) #16
  br label %162

162:                                              ; preds = %160, %112
  %163 = phi { ptr, i32 } [ %161, %160 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #16
  br label %174

164:                                              ; preds = %62, %156, %65
  %165 = phi ptr [ null, %65 ], [ %63, %62 ], [ %157, %156 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %169 unwind label %166

166:                                              ; preds = %164
  %167 = landingpad { ptr, i32 }
          catch ptr null
  %168 = extractvalue { ptr, i32 } %167, 0
  call void @__clang_call_terminate(ptr %168) #17
  unreachable

169:                                              ; preds = %164
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %173 unwind label %170

170:                                              ; preds = %169
  %171 = landingpad { ptr, i32 }
          catch ptr null
  %172 = extractvalue { ptr, i32 } %171, 0
  call void @__clang_call_terminate(ptr %172) #17
  unreachable

173:                                              ; preds = %169
  ret ptr %165

174:                                              ; preds = %162, %59, %33
  %175 = phi { ptr, i32 } [ %163, %162 ], [ %60, %59 ], [ %34, %33 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %179 unwind label %176

176:                                              ; preds = %174
  %177 = landingpad { ptr, i32 }
          catch ptr null
  %178 = extractvalue { ptr, i32 } %177, 0
  call void @__clang_call_terminate(ptr %178) #17
  unreachable

179:                                              ; preds = %31, %174, %29
  %180 = phi { ptr, i32 } [ %30, %29 ], [ %32, %31 ], [ %175, %174 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %184 unwind label %181

181:                                              ; preds = %179
  %182 = landingpad { ptr, i32 }
          catch ptr null
  %183 = extractvalue { ptr, i32 } %182, 0
  call void @__clang_call_terminate(ptr %183) #17
  unreachable

184:                                              ; preds = %179
  resume { ptr, i32 } %180
}

declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 261)
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 91)
  br i1 %7, label %8, label %155

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %10 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %9)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %12 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %11)
          to label %13 unwind label %46

13:                                               ; preds = %8
  %14 = load ptr, ptr %12, align 8, !tbaa !109
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(33) %14)
          to label %19 unwind label %48

19:                                               ; preds = %13
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %23 = icmp eq i32 %18, 1
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  %30 = icmp ne i32 %18, 2
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %10, i64 0, i32 6
  br label %34

34:                                               ; preds = %19, %147
  %35 = phi i8 [ %148, %147 ], [ 0, %19 ]
  %36 = phi i8 [ %149, %147 ], [ 0, %19 ]
  %37 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %38 unwind label %50

38:                                               ; preds = %34
  %39 = icmp eq i16 %37, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 264)
          to label %41 unwind label %52

41:                                               ; preds = %40
  %42 = call ptr @__cxa_allocate_exception(i64 48) #16
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef nonnull @.str, i32 noundef 2706, i32 noundef 47, ptr noundef %44)
          to label %45 unwind label %54

45:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %42, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %162 unwind label %52

46:                                               ; preds = %8
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %156

48:                                               ; preds = %13
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %156

50:                                               ; preds = %116, %34, %76, %88, %93, %98, %114, %81, %140
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %156

52:                                               ; preds = %40, %45
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %156

54:                                               ; preds = %41
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %42) #16
  br label %156

56:                                               ; preds = %38
  %57 = load i8, ptr %20, align 8, !tbaa !102, !range !103, !noundef !104
  %58 = icmp eq i8 %57, 0
  %59 = load i8, ptr %21, align 2, !range !103
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 true, i1 %60
  br i1 %61, label %78, label %62

62:                                               ; preds = %56
  %63 = load ptr, ptr %22, align 8, !tbaa !115
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %63, i64 0, i32 28
  %65 = load ptr, ptr %64, align 8, !tbaa !154
  %66 = zext i16 %37 to i64
  %67 = getelementptr inbounds i8, ptr %65, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !155
  %69 = icmp slt i8 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load ptr, ptr %12, align 8, !tbaa !109
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %71, i64 0, i32 5
  %73 = load i8, ptr %72, align 8, !tbaa !175, !range !103, !noundef !104
  %74 = icmp ne i8 %73, 0
  %75 = and i1 %23, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load ptr, ptr %24, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %77, i32 noundef 84)
          to label %78 unwind label %50

78:                                               ; preds = %76, %70, %62, %56
  %79 = zext i16 %37 to i32
  %80 = icmp eq i16 %37, 93
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load ptr, ptr %25, align 8, !tbaa !115
  %83 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %82, ptr noundef nonnull @_ZZN11xercesc_2_712DGXMLScanner13scanCDSectionEvE10CDataClose)
          to label %84 unwind label %50

84:                                               ; preds = %81
  br i1 %83, label %85, label %106

85:                                               ; preds = %84
  %86 = and i8 %35, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %89 unwind label %50

89:                                               ; preds = %88, %85
  %90 = load i8, ptr %20, align 8, !tbaa !102, !range !103, !noundef !104
  %91 = icmp ne i8 %90, 0
  %92 = and i1 %30, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load ptr, ptr %31, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %94, i32 noundef 22)
          to label %95 unwind label %50

95:                                               ; preds = %93, %89
  %96 = load ptr, ptr %32, align 8, !tbaa !97
  %97 = icmp eq ptr %96, null
  br i1 %97, label %147, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %33, align 8, !tbaa !139
  %100 = load i32, ptr %10, align 8, !tbaa !138
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i16, ptr %99, i64 %101
  store i16 0, ptr %102, align 2, !tbaa !140
  %103 = load ptr, ptr %96, align 8, !tbaa !47
  %104 = getelementptr inbounds ptr, ptr %103, i64 2
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(8) %96, ptr noundef %99, i32 noundef %100, i1 noundef zeroext true)
          to label %147 unwind label %50

106:                                              ; preds = %84, %78
  %107 = and i8 %36, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  %110 = and i16 %37, -1024
  %111 = and i8 %35, 1
  %112 = icmp eq i8 %111, 0
  switch i16 %110, label %118 [
    i16 -10240, label %113
    i16 -9216, label %115
  ]

113:                                              ; preds = %109
  br i1 %112, label %134, label %114

114:                                              ; preds = %113
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %134 unwind label %50

115:                                              ; preds = %109
  br i1 %112, label %116, label %134

116:                                              ; preds = %118, %115
  %117 = phi i32 [ 282, %115 ], [ 249, %118 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %117)
          to label %134 unwind label %50

118:                                              ; preds = %109
  br i1 %112, label %119, label %116

119:                                              ; preds = %118
  %120 = load ptr, ptr %26, align 8, !tbaa !115
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %120, i64 0, i32 28
  %122 = load ptr, ptr %121, align 8, !tbaa !154
  %123 = zext i16 %37 to i64
  %124 = getelementptr inbounds i8, ptr %122, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !155
  %126 = and i8 %125, 64
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %119
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #16
  %129 = load ptr, ptr %27, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %79, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %129)
          to label %130 unwind label %132

130:                                              ; preds = %128
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %131 unwind label %132

131:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #16
  br label %134

132:                                              ; preds = %130, %128
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #16
  br label %156

134:                                              ; preds = %116, %114, %115, %119, %131, %113, %106
  %135 = phi i8 [ %35, %106 ], [ 1, %113 ], [ 0, %131 ], [ 0, %119 ], [ 0, %115 ], [ %35, %114 ], [ 0, %116 ]
  %136 = phi i8 [ %36, %106 ], [ %36, %113 ], [ 1, %131 ], [ %36, %119 ], [ %36, %115 ], [ %36, %114 ], [ %36, %116 ]
  %137 = load i32, ptr %10, align 8, !tbaa !138
  %138 = load i32, ptr %28, align 4, !tbaa !217
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 1)
          to label %141 unwind label %50

141:                                              ; preds = %140, %134
  %142 = load ptr, ptr %29, align 8, !tbaa !139
  %143 = load i32, ptr %10, align 8, !tbaa !138
  %144 = add i32 %143, 1
  store i32 %144, ptr %10, align 8, !tbaa !138
  %145 = zext i32 %143 to i64
  %146 = getelementptr inbounds i16, ptr %142, i64 %145
  store i16 %37, ptr %146, align 2, !tbaa !140
  br label %147

147:                                              ; preds = %98, %95, %141
  %148 = phi i8 [ %135, %141 ], [ %35, %95 ], [ %35, %98 ]
  %149 = phi i8 [ %136, %141 ], [ %36, %95 ], [ %36, %98 ]
  %150 = phi i1 [ true, %141 ], [ false, %95 ], [ false, %98 ]
  br i1 %150, label %34, label %151

151:                                              ; preds = %147
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %155 unwind label %152

152:                                              ; preds = %151
  %153 = landingpad { ptr, i32 }
          catch ptr null
  %154 = extractvalue { ptr, i32 } %153, 0
  call void @__clang_call_terminate(ptr %154) #17
  unreachable

155:                                              ; preds = %151, %5
  ret void

156:                                              ; preds = %50, %52, %48, %132, %54, %46
  %157 = phi { ptr, i32 } [ %47, %46 ], [ %49, %48 ], [ %133, %132 ], [ %55, %54 ], [ %51, %50 ], [ %53, %52 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %161 unwind label %158

158:                                              ; preds = %156
  %159 = landingpad { ptr, i32 }
          catch ptr null
  %160 = extractvalue { ptr, i32 } %159, 0
  call void @__clang_call_terminate(ptr %160) #17
  unreachable

161:                                              ; preds = %156
  resume { ptr, i32 } %157

162:                                              ; preds = %45
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i8, align 1
  %6 = alloca [9 x i16], align 16
  store i32 0, ptr %1, align 8, !tbaa !138
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !139
  store i16 0, ptr %8, align 2, !tbaa !140
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 7
  %10 = load i8, ptr %9, align 8, !tbaa !310, !range !103, !noundef !104
  store i8 1, ptr %9, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  store i16 0, ptr %4, align 2, !tbaa !140
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  store i8 0, ptr %5, align 1, !tbaa !106
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %16

16:                                               ; preds = %2, %206
  %17 = phi i32 [ 0, %2 ], [ %209, %206 ]
  %18 = phi i8 [ 0, %2 ], [ %208, %206 ]
  %19 = phi i8 [ 1, %2 ], [ %207, %206 ]
  br label %20

20:                                               ; preds = %202, %16
  %21 = phi i8 [ %18, %16 ], [ %165, %202 ]
  %22 = phi i32 [ %17, %16 ], [ %178, %202 ]
  %23 = icmp eq i32 %22, 0
  br label %24

24:                                               ; preds = %20, %113
  %25 = phi i8 [ %115, %113 ], [ %21, %20 ]
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %23, i1 %27, i1 false
  br i1 %28, label %29, label %70

29:                                               ; preds = %24
  %30 = load ptr, ptr %11, align 8, !tbaa !115
  %31 = load i32, ptr %30, align 8, !tbaa !311
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !312
  %34 = icmp ult i32 %31, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 28
  %37 = load ptr, ptr %36, align 8, !tbaa !154
  br label %38

38:                                               ; preds = %35, %48
  %39 = phi i32 [ %31, %35 ], [ %49, %48 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 1, i64 %40
  %42 = load i16, ptr %41, align 2, !tbaa !140
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds i8, ptr %37, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !155
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %38
  %49 = add nuw i32 %39, 1
  store i32 %49, ptr %30, align 8, !tbaa !311
  %50 = icmp eq i32 %49, %33
  br i1 %50, label %51, label %38, !llvm.loop !313

51:                                               ; preds = %48, %38, %29
  %52 = phi i32 [ %31, %29 ], [ %33, %48 ], [ %39, %38 ]
  %53 = icmp eq i32 %31, %52
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = sub i32 %52, %31
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 5
  %58 = load i64, ptr %57, align 8, !tbaa !314
  %59 = add nsw i64 %58, %56
  store i64 %59, ptr %57, align 8, !tbaa !314
  %60 = zext i32 %31 to i64
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %30, i64 0, i32 1, i64 %60
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %61, i32 noundef %55)
          to label %70 unwind label %62

62:                                               ; preds = %97, %80, %54, %103
  %63 = phi i32 [ %22, %103 ], [ 0, %54 ], [ %22, %80 ], [ %22, %97 ]
  %64 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %143

65:                                               ; preds = %195, %183, %176, %125, %123, %121
  %66 = phi i32 [ 2, %176 ], [ %22, %121 ], [ %22, %123 ], [ %22, %125 ], [ %178, %183 ], [ %178, %195 ]
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %143

68:                                               ; preds = %99
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %143

70:                                               ; preds = %51, %54, %24
  %71 = load ptr, ptr %12, align 8, !tbaa !115
  %72 = load i32, ptr %71, align 8, !tbaa !311
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 2
  %74 = load i32, ptr %73, align 4, !tbaa !312
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 10
  %78 = load i8, ptr %77, align 1, !tbaa !315, !range !103, !noundef !104
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %76
  %81 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %71)
          to label %82 unwind label %62

82:                                               ; preds = %80
  br i1 %81, label %83, label %98

83:                                               ; preds = %82, %70
  %84 = load i32, ptr %71, align 8, !tbaa !311
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 1, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !140
  %88 = icmp eq i16 %87, 60
  br i1 %88, label %98, label %89

89:                                               ; preds = %83
  %90 = add i32 %84, 1
  store i32 %90, ptr %71, align 8, !tbaa !311
  store i16 %87, ptr %3, align 2, !tbaa !140
  %91 = and i16 %87, -8368
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %71, i64 0, i32 5
  %95 = load i64, ptr %94, align 8, !tbaa !314
  %96 = add nsw i64 %95, 1
  store i64 %96, ptr %94, align 8, !tbaa !314
  br label %100

97:                                               ; preds = %89
  invoke void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %71, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext false)
          to label %100 unwind label %62

98:                                               ; preds = %83, %82, %76
  br i1 %27, label %206, label %99

99:                                               ; preds = %98
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %206 unwind label %68

100:                                              ; preds = %97, %93
  store i8 0, ptr %5, align 1, !tbaa !106
  %101 = load i16, ptr %3, align 2
  %102 = icmp eq i16 %101, 38
  br i1 %102, label %103, label %118

103:                                              ; preds = %100
  %104 = load ptr, ptr %0, align 8, !tbaa !47
  %105 = getelementptr inbounds ptr, ptr %104, i64 16
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %107 unwind label %62

107:                                              ; preds = %103
  %108 = load i8, ptr %9, align 8, !tbaa !310, !range !103, !noundef !104
  store i8 0, ptr %9, align 8, !tbaa !310
  %109 = load ptr, ptr %0, align 8, !tbaa !47
  %110 = getelementptr inbounds ptr, ptr %109, i64 13
  %111 = load ptr, ptr %110, align 8
  %112 = invoke noundef i32 %111(ptr noundef nonnull align 8 dereferenceable(832) %0, i1 noundef zeroext false, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr noundef nonnull align 2 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %113 unwind label %116

113:                                              ; preds = %107
  %114 = icmp eq i32 %112, 1
  %115 = select i1 %114, i8 %25, i8 0
  store i8 %108, ptr %9, align 8, !tbaa !310
  br i1 %114, label %164, label %24

116:                                              ; preds = %107
  %117 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  store i8 %108, ptr %9, align 8, !tbaa !310
  br label %143

118:                                              ; preds = %100
  %119 = and i16 %101, -1024
  switch i16 %119, label %124 [
    i16 -10240, label %120
    i16 -9216, label %122
  ]

120:                                              ; preds = %118
  br i1 %27, label %164, label %121

121:                                              ; preds = %120
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %164 unwind label %65

122:                                              ; preds = %118
  br i1 %27, label %123, label %164

123:                                              ; preds = %122
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 282)
          to label %164 unwind label %65

124:                                              ; preds = %118
  br i1 %27, label %126, label %125

125:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %126 unwind label %65

126:                                              ; preds = %125, %124
  %127 = load ptr, ptr %13, align 8, !tbaa !115
  %128 = load i16, ptr %3, align 2, !tbaa !140
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %127, i64 0, i32 28
  %130 = load ptr, ptr %129, align 8, !tbaa !154
  %131 = zext i16 %128 to i64
  %132 = getelementptr inbounds i8, ptr %130, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !155
  %134 = and i8 %133, 64
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %164

136:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %6) #16
  %137 = zext i16 %128 to i32
  %138 = load ptr, ptr %14, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %137, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %138)
          to label %139 unwind label %141

139:                                              ; preds = %136
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %140 unwind label %141

140:                                              ; preds = %139
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #16
  br label %164

141:                                              ; preds = %139, %136
  %142 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %6) #16
  br label %143

143:                                              ; preds = %68, %65, %62, %141, %116
  %144 = phi { ptr, i32 } [ %117, %116 ], [ %142, %141 ], [ %69, %68 ], [ %64, %62 ], [ %67, %65 ]
  %145 = phi i32 [ %22, %116 ], [ %22, %141 ], [ %22, %68 ], [ %63, %62 ], [ %66, %65 ]
  %146 = extractvalue { ptr, i32 } %144, 1
  %147 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #16
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %262

149:                                              ; preds = %143
  %150 = extractvalue { ptr, i32 } %144, 0
  %151 = call ptr @__cxa_begin_catch(ptr %150) #16
  %152 = load ptr, ptr %0, align 8, !tbaa !47
  %153 = getelementptr inbounds ptr, ptr %152, i64 16
  %154 = load ptr, ptr %153, align 8
  invoke void %154(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %155 unwind label %203

155:                                              ; preds = %149
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %157 = load ptr, ptr %156, align 8, !tbaa !97
  %158 = icmp eq ptr %157, null
  br i1 %158, label %205, label %159

159:                                              ; preds = %155
  %160 = load ptr, ptr %151, align 8, !tbaa !122
  %161 = load ptr, ptr %157, align 8, !tbaa !47
  %162 = getelementptr inbounds ptr, ptr %161, i64 7
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef nonnull align 8 dereferenceable(72) %160)
          to label %205 unwind label %203

164:                                              ; preds = %113, %123, %121, %122, %140, %126, %120
  %165 = phi i8 [ 1, %120 ], [ 0, %126 ], [ 0, %140 ], [ 0, %122 ], [ %25, %121 ], [ 0, %123 ], [ %115, %113 ]
  %166 = load i8, ptr %5, align 1, !tbaa !106, !range !103, !noundef !104
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load i16, ptr %3, align 2, !tbaa !140
  switch i16 %169, label %177 [
    i16 93, label %170
    i16 62, label %174
  ]

170:                                              ; preds = %168
  br i1 %23, label %177, label %171

171:                                              ; preds = %170
  %172 = icmp eq i32 %22, 1
  %173 = select i1 %172, i32 2, i32 %22
  br label %177

174:                                              ; preds = %168
  %175 = icmp eq i32 %22, 2
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 262)
          to label %177 unwind label %65

177:                                              ; preds = %176, %164, %168, %174, %170, %171
  %178 = phi i32 [ %173, %171 ], [ 1, %170 ], [ 0, %174 ], [ 0, %168 ], [ 0, %164 ], [ 0, %176 ]
  %179 = load i16, ptr %3, align 2, !tbaa !140
  %180 = load i32, ptr %1, align 8, !tbaa !138
  %181 = load i32, ptr %15, align 4, !tbaa !217
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %184 unwind label %65

184:                                              ; preds = %183, %177
  %185 = load ptr, ptr %7, align 8, !tbaa !139
  %186 = load i32, ptr %1, align 8, !tbaa !138
  %187 = add i32 %186, 1
  store i32 %187, ptr %1, align 8, !tbaa !138
  %188 = zext i32 %186 to i64
  %189 = getelementptr inbounds i16, ptr %185, i64 %188
  store i16 %179, ptr %189, align 2, !tbaa !140
  %190 = load i16, ptr %4, align 2, !tbaa !140
  %191 = icmp eq i16 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %184
  %193 = load i32, ptr %15, align 4, !tbaa !217
  %194 = icmp eq i32 %187, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
          to label %196 unwind label %65

196:                                              ; preds = %195, %192
  %197 = load ptr, ptr %7, align 8, !tbaa !139
  %198 = load i32, ptr %1, align 8, !tbaa !138
  %199 = add i32 %198, 1
  store i32 %199, ptr %1, align 8, !tbaa !138
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds i16, ptr %197, i64 %200
  store i16 %190, ptr %201, align 2, !tbaa !140
  store i16 0, ptr %4, align 2, !tbaa !140
  br label %202

202:                                              ; preds = %196, %184
  br label %20, !llvm.loop !316

203:                                              ; preds = %159, %149
  %204 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %262 unwind label %264

205:                                              ; preds = %159, %155
  invoke void @__cxa_end_catch()
          to label %206 unwind label %212

206:                                              ; preds = %205, %98, %99
  %207 = phi i8 [ 0, %99 ], [ 0, %98 ], [ %19, %205 ]
  %208 = phi i8 [ %25, %99 ], [ %25, %98 ], [ 0, %205 ]
  %209 = phi i32 [ %22, %99 ], [ %22, %98 ], [ %145, %205 ]
  %210 = and i8 %207, 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %214, label %16, !llvm.loop !317

212:                                              ; preds = %205
  %213 = landingpad { ptr, i32 }
          cleanup
  br label %262

214:                                              ; preds = %206
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %216 = load i8, ptr %215, align 8, !tbaa !102, !range !103, !noundef !104
  %217 = icmp eq i8 %216, 0
  %218 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %219 = load i8, ptr %218, align 2, !range !103
  %220 = icmp eq i8 %219, 0
  %221 = select i1 %217, i1 true, i1 %220
  br i1 %221, label %255, label %222

222:                                              ; preds = %214
  %223 = load ptr, ptr %7, align 8, !tbaa !139
  %224 = load i32, ptr %1, align 8, !tbaa !138
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i16, ptr %223, i64 %225
  store i16 0, ptr %226, align 2, !tbaa !140
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !115
  %229 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992) %228, ptr noundef %223, i32 noundef %224)
          to label %230 unwind label %249

230:                                              ; preds = %222
  br i1 %229, label %231, label %255

231:                                              ; preds = %230
  %232 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %233 = invoke noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %232)
          to label %234 unwind label %251

234:                                              ; preds = %231
  %235 = load ptr, ptr %233, align 8, !tbaa !109
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %235, i64 0, i32 5
  %237 = load i8, ptr %236, align 8, !tbaa !175, !range !103, !noundef !104
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %255, label %239

239:                                              ; preds = %234
  %240 = load ptr, ptr %235, align 8, !tbaa !47
  %241 = getelementptr inbounds ptr, ptr %240, i64 7
  %242 = load ptr, ptr %241, align 8
  %243 = invoke noundef i32 %242(ptr noundef nonnull align 8 dereferenceable(33) %235)
          to label %244 unwind label %253

244:                                              ; preds = %239
  %245 = icmp eq i32 %243, 1
  br i1 %245, label %246, label %255

246:                                              ; preds = %244
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %248 = load ptr, ptr %247, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %248, i32 noundef 84)
          to label %255 unwind label %253

249:                                              ; preds = %222
  %250 = landingpad { ptr, i32 }
          cleanup
  br label %262

251:                                              ; preds = %231
  %252 = landingpad { ptr, i32 }
          cleanup
  br label %262

253:                                              ; preds = %246, %239
  %254 = landingpad { ptr, i32 }
          cleanup
  br label %262

255:                                              ; preds = %230, %244, %246, %234, %214
  %256 = load ptr, ptr %0, align 8, !tbaa !47
  %257 = getelementptr inbounds ptr, ptr %256, i64 16
  %258 = load ptr, ptr %257, align 8
  invoke void %258(ptr noundef nonnull align 8 dereferenceable(832) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %259 unwind label %260

259:                                              ; preds = %255
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  store i8 %10, ptr %9, align 8, !tbaa !310
  ret void

260:                                              ; preds = %255
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %262

262:                                              ; preds = %143, %203, %249, %253, %251, %212, %260
  %263 = phi { ptr, i32 } [ %261, %260 ], [ %213, %212 ], [ %250, %249 ], [ %254, %253 ], [ %252, %251 ], [ %204, %203 ], [ %144, %143 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #16
  store i8 %10, ptr %9, align 8, !tbaa !310
  resume { ptr, i32 } %263

264:                                              ; preds = %203
  %265 = landingpad { ptr, i32 }
          catch ptr null
  %266 = extractvalue { ptr, i32 } %265, 0
  call void @__clang_call_terminate(ptr %266) #17
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(832) %0, i1 noundef zeroext %1, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca [16 x i16], align 16
  %11 = alloca [16 x i16], align 16
  store i16 0, ptr %3, align 2, !tbaa !140
  store i8 0, ptr %4, align 1, !tbaa !106
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %14, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !116
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 35)
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %19, label %20, label %313

20:                                               ; preds = %18
  store i8 1, ptr %4, align 1, !tbaa !106
  %21 = load ptr, ptr %13, align 8, !tbaa !115
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %21, i64 0, i32 15
  %23 = load i32, ptr %22, align 8, !tbaa !116
  %24 = icmp eq i32 %16, %23
  br i1 %24, label %313, label %25

25:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
  br label %313

26:                                               ; preds = %5
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %28 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %30 = load i8, ptr %29, align 2, !tbaa !126, !range !103, !noundef !104
  %31 = icmp eq i8 %30, 0
  store i32 0, ptr %28, align 8, !tbaa !138
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !139
  store i16 0, ptr %33, align 2, !tbaa !140
  %34 = load ptr, ptr %13, align 8, !tbaa !115
  br i1 %31, label %37, label %35

35:                                               ; preds = %26
  %36 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull align 8 dereferenceable(40) %28, ptr noundef nonnull %8)
          to label %39 unwind label %45

37:                                               ; preds = %26
  %38 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull align 8 dereferenceable(40) %28, i1 noundef zeroext false)
          to label %39 unwind label %45

39:                                               ; preds = %37, %35
  %40 = phi i1 [ %36, %35 ], [ %38, %37 ]
  br i1 %40, label %52, label %41

41:                                               ; preds = %39
  %42 = load i32, ptr %28, align 8, !tbaa !138
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 226)
          to label %302 unwind label %45

45:                                               ; preds = %37, %35, %66, %55, %52, %47, %44
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %307

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !139
  %50 = zext i32 %42 to i64
  %51 = getelementptr inbounds i16, ptr %49, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 310, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %45

52:                                               ; preds = %39
  %53 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %12, i16 noundef zeroext 59)
          to label %54 unwind label %45

54:                                               ; preds = %52
  br i1 %53, label %61, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !139
  %58 = load i32, ptr %28, align 8, !tbaa !138
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 229, ptr noundef %57, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %61 unwind label %45

61:                                               ; preds = %55, %54
  %62 = load ptr, ptr %13, align 8, !tbaa !115
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %62, i64 0, i32 15
  %64 = load i32, ptr %63, align 8, !tbaa !116
  %65 = icmp eq i32 %16, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %67 unwind label %45

67:                                               ; preds = %66, %61
  %68 = getelementptr inbounds %"class.xercesc_2_7::DGXMLScanner", ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !184
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %28, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !139
  %72 = load i32, ptr %28, align 8, !tbaa !138
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i16, ptr %71, i64 %73
  store i16 0, ptr %74, align 2, !tbaa !140
  %75 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %76 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %75, ptr noundef %71, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %77 unwind label %105

77:                                               ; preds = %67
  %78 = icmp eq ptr %76, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = load ptr, ptr %76, align 8, !tbaa !318
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi ptr [ %80, %79 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %69, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %87 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %86, ptr noundef %71, ptr noundef nonnull align 4 dereferenceable(4) %6)
          to label %88 unwind label %105

88:                                               ; preds = %84
  %89 = icmp eq ptr %87, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %87, align 8, !tbaa !318
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi ptr [ %91, %90 ], [ null, %88 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %94

94:                                               ; preds = %92, %81
  %95 = phi ptr [ %93, %92 ], [ %82, %81 ]
  %96 = icmp eq ptr %95, null
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %98 = load i8, ptr %97, align 2, !tbaa !216, !range !103, !noundef !104
  %99 = icmp eq i8 %98, 0
  br i1 %96, label %100, label %118

100:                                              ; preds = %94
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  %102 = load i8, ptr %101, align 1, !range !103
  %103 = icmp eq i8 %102, 0
  %104 = select i1 %99, i1 %103, i1 false
  br i1 %104, label %107, label %142

105:                                              ; preds = %142, %84, %67, %240, %149, %125, %119, %111
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %307

107:                                              ; preds = %100
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %109 = load i8, ptr %108, align 8, !tbaa !102, !range !103, !noundef !104
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %302, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %113 = load ptr, ptr %112, align 8, !tbaa !91
  %114 = load ptr, ptr %70, align 8, !tbaa !139
  %115 = load i32, ptr %28, align 8, !tbaa !138
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i16, ptr %114, i64 %116
  store i16 0, ptr %117, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %113, i32 noundef 85, ptr noundef %114, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %105

118:                                              ; preds = %94
  br i1 %99, label %130, label %119

119:                                              ; preds = %118
  %120 = load ptr, ptr %95, align 8, !tbaa !47
  %121 = getelementptr inbounds ptr, ptr %120, i64 5
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef zeroext i1 %122(ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %124 unwind label %105

124:                                              ; preds = %119
  br i1 %123, label %130, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr %70, align 8, !tbaa !139
  %127 = load i32, ptr %28, align 8, !tbaa !138
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i16, ptr %126, i64 %128
  store i16 0, ptr %129, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 298, ptr noundef %126, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %130 unwind label %105

130:                                              ; preds = %125, %124, %118
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 6
  %132 = load ptr, ptr %131, align 8, !tbaa !320
  %133 = icmp ne ptr %132, null
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 7
  %135 = load ptr, ptr %134, align 8
  %136 = icmp ne ptr %135, null
  %137 = select i1 %133, i1 true, i1 %136
  br i1 %137, label %138, label %240

138:                                              ; preds = %130
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !321
  %141 = icmp eq ptr %140, null
  br i1 %141, label %148, label %142

142:                                              ; preds = %138, %100
  %143 = phi i32 [ 227, %100 ], [ 228, %138 ]
  %144 = load ptr, ptr %70, align 8, !tbaa !139
  %145 = load i32, ptr %28, align 8, !tbaa !138
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds i16, ptr %144, i64 %146
  store i16 0, ptr %147, align 2, !tbaa !140
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %143, ptr noundef %144, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %302 unwind label %105

148:                                              ; preds = %138
  br i1 %1, label %149, label %150

149:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 270)
          to label %150 unwind label %105

150:                                              ; preds = %149, %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %151 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 8
  %152 = load ptr, ptr %151, align 8, !tbaa !322
  %153 = load ptr, ptr %134, align 8, !tbaa !196
  %154 = load ptr, ptr %131, align 8, !tbaa !320
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %156 = load i8, ptr %155, align 1, !tbaa !186, !range !103, !noundef !104
  %157 = icmp ne i8 %156, 0
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %159 = load i8, ptr %158, align 1, !tbaa !187, !range !103, !noundef !104
  %160 = icmp ne i8 %159, 0
  %161 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %152, ptr noundef %153, ptr noundef %154, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, i1 noundef zeroext %157, i1 noundef zeroext %160)
          to label %162 unwind label %181

162:                                              ; preds = %150
  %163 = load ptr, ptr %9, align 8, !tbaa !87
  %164 = icmp eq ptr %161, null
  br i1 %164, label %165, label %187

165:                                              ; preds = %162
  %166 = call ptr @__cxa_allocate_exception(i64 48) #16
  %167 = load ptr, ptr %9, align 8, !tbaa !87
  %168 = icmp eq ptr %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %167, align 8, !tbaa !47
  %171 = getelementptr inbounds ptr, ptr %170, i64 5
  %172 = load ptr, ptr %171, align 8
  %173 = invoke noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(41) %167)
          to label %176 unwind label %183

174:                                              ; preds = %165
  %175 = load ptr, ptr %134, align 8, !tbaa !196
  br label %176

176:                                              ; preds = %169, %174
  %177 = phi ptr [ %175, %174 ], [ %173, %169 ]
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %179 = load ptr, ptr %178, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr noundef nonnull @.str, i32 noundef 3147, i32 noundef 46, ptr noundef %177, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %179)
          to label %180 unwind label %183

180:                                              ; preds = %176
  invoke void @__cxa_throw(ptr nonnull %166, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %315 unwind label %185

181:                                              ; preds = %150
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %238

183:                                              ; preds = %176, %169
  %184 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %166) #16
  br label %231

185:                                              ; preds = %223, %220, %216, %190, %187, %180
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %231

187:                                              ; preds = %162
  %188 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull %161, ptr noundef nonnull %95)
          to label %189 unwind label %185

189:                                              ; preds = %187
  br i1 %188, label %193, label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 4
  %192 = load ptr, ptr %191, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %192, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %224 unwind label %185

193:                                              ; preds = %189
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %195 = load ptr, ptr %194, align 8, !tbaa !281
  %196 = icmp eq ptr %195, null
  br i1 %196, label %211, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %199 = load i32, ptr %198, align 8, !tbaa !283
  %200 = add i32 %199, 1
  store i32 %200, ptr %198, align 8, !tbaa !283
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %202 = load i32, ptr %201, align 4, !tbaa !282
  %203 = icmp ugt i32 %200, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %197
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #16
  %205 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %206 = load ptr, ptr %205, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %202, ptr noundef nonnull %10, i32 noundef 15, i32 noundef 10, ptr noundef %206)
          to label %207 unwind label %209

207:                                              ; preds = %204
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %208 unwind label %209

208:                                              ; preds = %207
  store i32 0, ptr %198, align 8, !tbaa !283
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  br label %211

209:                                              ; preds = %207, %204
  %210 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #16
  br label %231

211:                                              ; preds = %208, %197, %193
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %213 = load ptr, ptr %212, align 8, !tbaa !97
  %214 = icmp eq ptr %213, null
  %215 = or i1 %214, %1
  br i1 %215, label %220, label %216

216:                                              ; preds = %211
  %217 = load ptr, ptr %213, align 8, !tbaa !47
  %218 = getelementptr inbounds ptr, ptr %217, i64 12
  %219 = load ptr, ptr %218, align 8
  invoke void %219(ptr noundef nonnull align 8 dereferenceable(8) %213, ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %220 unwind label %185

220:                                              ; preds = %216, %211
  %221 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %222 unwind label %185

222:                                              ; preds = %220
  br i1 %221, label %223, label %224

223:                                              ; preds = %222
  invoke void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 0)
          to label %224 unwind label %185

224:                                              ; preds = %223, %222, %190
  %225 = icmp eq ptr %163, null
  br i1 %225, label %230, label %226

226:                                              ; preds = %224
  %227 = load ptr, ptr %163, align 8, !tbaa !47
  %228 = getelementptr inbounds ptr, ptr %227, i64 1
  %229 = load ptr, ptr %228, align 8
  call void %229(ptr noundef nonnull align 8 dereferenceable(41) %163) #16
  br label %230

230:                                              ; preds = %224, %226
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br i1 %188, label %301, label %302

231:                                              ; preds = %209, %185, %183
  %232 = phi { ptr, i32 } [ %186, %185 ], [ %210, %209 ], [ %184, %183 ]
  %233 = icmp eq ptr %163, null
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = load ptr, ptr %163, align 8, !tbaa !47
  %236 = getelementptr inbounds ptr, ptr %235, i64 1
  %237 = load ptr, ptr %236, align 8
  call void %237(ptr noundef nonnull align 8 dereferenceable(41) %163) #16
  br label %238

238:                                              ; preds = %234, %231, %181
  %239 = phi { ptr, i32 } [ %182, %181 ], [ %232, %231 ], [ %232, %234 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  br label %307

240:                                              ; preds = %130
  %241 = load ptr, ptr %95, align 8, !tbaa !47
  %242 = getelementptr inbounds ptr, ptr %241, i64 7
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef zeroext i1 %243(ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %245 unwind label %105

245:                                              ; preds = %240
  br i1 %244, label %246, label %250

246:                                              ; preds = %245
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !324
  %249 = load i16, ptr %248, align 2, !tbaa !140
  store i16 %249, ptr %2, align 2, !tbaa !140
  store i8 1, ptr %4, align 1, !tbaa !106
  br label %302

250:                                              ; preds = %245
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 4
  %252 = load ptr, ptr %251, align 8, !tbaa !323
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !324
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %95, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !325
  %257 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %252, i32 noundef 1, i32 noundef 1, ptr noundef %254, i32 noundef %256, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %258 unwind label %265

258:                                              ; preds = %250
  %259 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef %257, ptr noundef nonnull %95)
          to label %260 unwind label %265

260:                                              ; preds = %258
  br i1 %259, label %267, label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr %251, align 8, !tbaa !323
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 230, ptr noundef %262, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %267 unwind label %265

263:                                              ; preds = %298
  %264 = landingpad { ptr, i32 }
          cleanup
  br label %307

265:                                              ; preds = %250, %258, %261, %290, %294, %297
  %266 = landingpad { ptr, i32 }
          cleanup
  br label %307

267:                                              ; preds = %261, %260
  %268 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %269 = load ptr, ptr %268, align 8, !tbaa !281
  %270 = icmp eq ptr %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  %273 = load i32, ptr %272, align 8, !tbaa !283
  %274 = add i32 %273, 1
  store i32 %274, ptr %272, align 8, !tbaa !283
  %275 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  %276 = load i32, ptr %275, align 4, !tbaa !282
  %277 = icmp ugt i32 %274, %276
  br i1 %277, label %278, label %285

278:                                              ; preds = %271
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #16
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %280 = load ptr, ptr %279, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %276, ptr noundef nonnull %11, i32 noundef 15, i32 noundef 10, ptr noundef %280)
          to label %281 unwind label %283

281:                                              ; preds = %278
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 172, ptr noundef nonnull %11, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %282 unwind label %283

282:                                              ; preds = %281
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %285

283:                                              ; preds = %281, %278
  %284 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #16
  br label %307

285:                                              ; preds = %267, %282, %271
  %286 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %287 = load ptr, ptr %286, align 8, !tbaa !97
  %288 = icmp eq ptr %287, null
  %289 = or i1 %288, %1
  br i1 %289, label %294, label %290

290:                                              ; preds = %285
  %291 = load ptr, ptr %287, align 8, !tbaa !47
  %292 = getelementptr inbounds ptr, ptr %291, i64 12
  %293 = load ptr, ptr %292, align 8
  invoke void %293(ptr noundef nonnull align 8 dereferenceable(8) %287, ptr noundef nonnull align 8 dereferenceable(72) %95)
          to label %294 unwind label %265

294:                                              ; preds = %290, %285
  %295 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %296 unwind label %265

296:                                              ; preds = %294
  br i1 %295, label %297, label %301

297:                                              ; preds = %296
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 220)
          to label %298 unwind label %265

298:                                              ; preds = %297, %300
  %299 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %12)
          to label %300 unwind label %263

300:                                              ; preds = %298
  switch i16 %299, label %298 [
    i16 62, label %301
    i16 0, label %301
  ]

301:                                              ; preds = %300, %300, %296, %230
  br label %302

302:                                              ; preds = %142, %111, %44, %246, %301, %230, %107, %47
  %303 = phi i32 [ 2, %47 ], [ 0, %301 ], [ 2, %230 ], [ 1, %246 ], [ 2, %107 ], [ 2, %44 ], [ 2, %111 ], [ 2, %142 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(40) %28)
          to label %313 unwind label %304

304:                                              ; preds = %302
  %305 = landingpad { ptr, i32 }
          catch ptr null
  %306 = extractvalue { ptr, i32 } %305, 0
  call void @__clang_call_terminate(ptr %306) #17
  unreachable

307:                                              ; preds = %263, %265, %105, %238, %283, %45
  %308 = phi { ptr, i32 } [ %46, %45 ], [ %106, %105 ], [ %239, %238 ], [ %284, %283 ], [ %264, %263 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(40) %28)
          to label %312 unwind label %309

309:                                              ; preds = %307
  %310 = landingpad { ptr, i32 }
          catch ptr null
  %311 = extractvalue { ptr, i32 } %310, 0
  call void @__clang_call_terminate(ptr %311) #17
  unreachable

312:                                              ; preds = %307
  resume { ptr, i32 } %308

313:                                              ; preds = %302, %20, %25, %18
  %314 = phi i32 [ 2, %18 ], [ 1, %25 ], [ 1, %20 ], [ %303, %302 ]
  ret i32 %314

315:                                              ; preds = %180
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !191, !range !103, !noundef !104
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !194, !range !103, !noundef !104
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !195, !range !103, !noundef !104
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 comdat align 2 !prof !45 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712DGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #3 comdat align 2 !prof !45 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712DGXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(832) %0) unnamed_addr #3 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgDGXMLScannerE
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #12 comdat align 2 !prof !327 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !328

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !138
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !217
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !329

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !139
  %15 = load i32, ptr %0, align 8, !tbaa !138
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !330
  %20 = load i32, ptr %0, align 8, !tbaa !138
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !138
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #12 comdat align 2 !prof !331 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !332

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !140
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !333

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !140
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !334, !llvm.loop !335

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !138
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !217
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !336

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = load i32, ptr %0, align 8, !tbaa !138
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !337
  %28 = load i32, ptr %0, align 8, !tbaa !138
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !138
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !292
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !291
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %39, %5
  store i32 0, ptr %2, align 4, !tbaa !292
  br label %46

13:                                               ; preds = %9, %39
  %14 = phi i64 [ 0, %9 ], [ %42, %39 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !290
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %13, %33
  %20 = phi ptr [ %22, %33 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !298
  %23 = load i8, ptr %11, align 8, !tbaa !289, !range !103, !noundef !104
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !294
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %26)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #17
  unreachable

32:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #16
  br label %33

33:                                               ; preds = %25, %32, %19
  %34 = load ptr, ptr %0, align 8, !tbaa !287
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %20)
  %38 = icmp eq ptr %22, null
  br i1 %38, label %39, label %19, !llvm.loop !338

39:                                               ; preds = %33, %13
  %40 = load ptr, ptr %10, align 8, !tbaa !290
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !87
  %42 = add nuw nsw i64 %14, 1
  %43 = load i32, ptr %6, align 8, !tbaa !291
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %13, label %12, !llvm.loop !339

46:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !287
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 93, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #16
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !287
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !291
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !47
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !290
  %21 = load i32, ptr %12, align 8, !tbaa !291
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !290
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !87
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !340
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !46 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !341
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !343

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !140
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !343

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !140
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !344

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !140
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !345, !llvm.loop !346

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !114
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.3", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !347
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38, !prof !348

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !318
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !323
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !140
  %47 = load i16, ptr %42, align 2, !tbaa !140
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !140
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !140
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %72, label %68

57:                                               ; preds = %45, %62
  %58 = phi i16 [ %65, %62 ], [ %46, %45 ]
  %59 = phi ptr [ %64, %62 ], [ %42, %45 ]
  %60 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %61 = icmp eq i16 %58, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i16, ptr %60, i64 1
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = load i16, ptr %63, align 2, !tbaa !140
  %66 = load i16, ptr %64, align 2, !tbaa !140
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !149

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !87
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !prof !348, !llvm.loop !349

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #12 comdat align 2 !prof !350 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !271
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !351

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !140
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !351

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !140
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !352

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !140
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !353, !llvm.loop !346

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !114
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !204
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !87
  %37 = icmp eq ptr %36, null
  br i1 %37, label %73, label %38, !prof !354

38:                                               ; preds = %30, %69
  %39 = phi ptr [ %71, %69 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !143
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !111
  %43 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %42)
  %44 = icmp eq ptr %43, null
  %45 = or i1 %6, %44
  br i1 %45, label %50, label %46, !prof !355

46:                                               ; preds = %38
  %47 = load i16, ptr %1, align 2, !tbaa !140
  %48 = load i16, ptr %43, align 2, !tbaa !140
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %58, label %69, !prof !356

50:                                               ; preds = %38
  br i1 %6, label %54, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %1, align 2, !tbaa !140
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51, %50
  br i1 %44, label %73, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %43, align 2, !tbaa !140
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %73, label %69

58:                                               ; preds = %46, %63
  %59 = phi i16 [ %66, %63 ], [ %47, %46 ]
  %60 = phi ptr [ %65, %63 ], [ %43, %46 ]
  %61 = phi ptr [ %64, %63 ], [ %1, %46 ]
  %62 = icmp eq i16 %59, 0
  br i1 %62, label %73, label %63, !prof !357

63:                                               ; preds = %58
  %64 = getelementptr inbounds i16, ptr %61, i64 1
  %65 = getelementptr inbounds i16, ptr %60, i64 1
  %66 = load i16, ptr %64, align 2, !tbaa !140
  %67 = load i16, ptr %65, align 2, !tbaa !140
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %58, label %69, !prof !358, !llvm.loop !149

69:                                               ; preds = %63, %46, %55, %51
  %70 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %39, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !87
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %38, !prof !359, !llvm.loop !360

73:                                               ; preds = %69, %54, %55, %58, %30
  %74 = phi ptr [ null, %30 ], [ %39, %58 ], [ %39, %55 ], [ %39, %54 ], [ null, %69 ]
  ret ptr %74
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !361 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !151
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !362
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !363

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !220
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !151
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !87
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !156
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !87
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !87
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !364

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !220
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !156
  %52 = load ptr, ptr %49, align 8, !tbaa !47
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !156
  store i32 %12, ptr %6, align 8, !tbaa !362
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 !prof !45 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !326
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !77
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !68
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !77
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !68
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = load ptr, ptr %28, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !70
  store i32 %13, ptr %6, align 8, !tbaa !78
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !70
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !87
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !87
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !365

42:                                               ; preds = %2, %27
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.6", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !79
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %13 = load ptr, ptr %0, align 8, !tbaa !79
  store ptr %12, ptr %2, align 8, !tbaa !366
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.6", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !368
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !83
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = load ptr, ptr %2, align 8, !tbaa !366
  store ptr null, ptr %2, align 8, !tbaa !366
  store ptr %23, ptr %21, align 8, !tbaa !82
  store i32 %5, ptr %3, align 8, !tbaa !83
  %24 = load ptr, ptr %0, align 8, !tbaa !79
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !82
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !87
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !241
  %38 = load ptr, ptr %19, align 8, !tbaa !86
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !225
  %41 = load ptr, ptr %0, align 8, !tbaa !79
  %42 = load ptr, ptr %38, align 8, !tbaa !47
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !87
  store ptr %48, ptr %36, align 8, !tbaa !241
  store ptr %35, ptr %47, align 8, !tbaa !87
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !369

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !83
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !370

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = load ptr, ptr %0, align 8, !tbaa !366
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.6", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !368
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #19
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !371 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !271
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !372

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !206
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !204
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !87
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !373

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !205
  %19 = load ptr, ptr %16, align 8, !tbaa !143
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !208

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !47
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(80) %19) #16, !prof !374
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !201
  %27 = load ptr, ptr %26, align 8, !tbaa !47
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16), !prof !375
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !200, !llvm.loop !376

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !204
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !87
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !271
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !377, !llvm.loop !378
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !270 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !79
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !82
  %5 = load ptr, ptr %2, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !276
  store ptr null, ptr %3, align 8, !tbaa !82
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !272

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !47
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !379
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !45 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !291
  %9 = load ptr, ptr %0, align 8, !tbaa !287
  %10 = load ptr, ptr %6, align 8, !tbaa !47
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !114
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !290
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = load ptr, ptr %5, align 8, !tbaa !293
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !296
  %24 = load ptr, ptr %21, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %1, ptr noundef %23)
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !297
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %36, label %32

32:                                               ; preds = %28, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !380

36:                                               ; preds = %28, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %28 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.7", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !291
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !287
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %14 = load ptr, ptr %0, align 8, !tbaa !287
  store ptr %13, ptr %2, align 8, !tbaa !381
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !383
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !291
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !290
  %24 = load ptr, ptr %2, align 8, !tbaa !381
  store ptr null, ptr %2, align 8, !tbaa !381
  store ptr %24, ptr %22, align 8, !tbaa !290
  store i32 %6, ptr %3, align 8, !tbaa !291
  %25 = load ptr, ptr %0, align 8, !tbaa !287
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !290
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !87
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !298
  %39 = load ptr, ptr %20, align 8, !tbaa !293
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !296
  %42 = load ptr, ptr %0, align 8, !tbaa !287
  %43 = load ptr, ptr %39, align 8, !tbaa !47
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !87
  store ptr %49, ptr %37, align 8, !tbaa !298
  store ptr %36, ptr %48, align 8, !tbaa !87
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !384

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !291
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !385

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 !prof !45 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !293
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !291
  %9 = load ptr, ptr %0, align 8, !tbaa !287
  %10 = load ptr, ptr %6, align 8, !tbaa !47
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9)
  store i32 %12, ptr %3, align 4, !tbaa !114
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !290
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !297
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !293
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !296
  %28 = load ptr, ptr %25, align 8, !tbaa !47
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27)
  br i1 %31, label %36, label %32

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !87
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !llvm.loop !386

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = load ptr, ptr %0, align 8, !tbaa !381
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.7", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !383
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #19
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, i64 5}
!36 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!37 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 47}
!38 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!39 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!40 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!41 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!42 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 2038}
!43 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 6}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!"function_entry_count", i64 5}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !58, i64 776}
!51 = !{!"_ZTSN11xercesc_2_712DGXMLScannerE", !52, i64 0, !58, i64 776, !58, i64 784, !58, i64 792, !58, i64 800, !57, i64 808, !58, i64 816, !58, i64 824}
!52 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !53, i64 0, !54, i64 8, !56, i64 16, !56, i64 17, !56, i64 18, !56, i64 19, !56, i64 20, !56, i64 21, !56, i64 22, !56, i64 23, !56, i64 24, !56, i64 25, !56, i64 26, !56, i64 27, !56, i64 28, !56, i64 29, !56, i64 30, !56, i64 31, !56, i64 32, !56, i64 33, !56, i64 34, !56, i64 35, !56, i64 36, !56, i64 37, !56, i64 38, !57, i64 40, !57, i64 44, !57, i64 48, !57, i64 52, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !58, i64 72, !57, i64 80, !57, i64 84, !57, i64 88, !57, i64 92, !57, i64 96, !58, i64 104, !58, i64 112, !58, i64 120, !58, i64 128, !58, i64 136, !58, i64 144, !58, i64 152, !58, i64 160, !58, i64 168, !56, i64 176, !59, i64 184, !58, i64 264, !62, i64 272, !58, i64 280, !58, i64 288, !58, i64 296, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !58, i64 336, !58, i64 344, !61, i64 352, !58, i64 360, !63, i64 368, !64, i64 392, !64, i64 432, !64, i64 472, !64, i64 512, !64, i64 552, !64, i64 592, !64, i64 632, !65, i64 672}
!53 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!54 = !{!"long", !55, i64 0}
!55 = !{!"omnipotent char", !49, i64 0}
!56 = !{!"bool", !55, i64 0}
!57 = !{!"int", !55, i64 0}
!58 = !{!"any pointer", !55, i64 0}
!59 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !60, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !57, i64 40, !58, i64 48, !56, i64 56, !61, i64 60, !56, i64 64, !58, i64 72}
!60 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!61 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !55, i64 0}
!62 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !55, i64 0}
!63 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !57, i64 0, !58, i64 8, !58, i64 16}
!64 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !57, i64 0, !57, i64 4, !57, i64 8, !56, i64 12, !58, i64 16, !58, i64 24, !58, i64 32}
!65 = !{!"_ZTSN11xercesc_2_79ElemStackE", !57, i64 0, !57, i64 4, !66, i64 8, !58, i64 48, !57, i64 56, !57, i64 60, !57, i64 64, !57, i64 68, !57, i64 72, !57, i64 76, !57, i64 80, !58, i64 88, !58, i64 96}
!66 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !67, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !57, i64 32, !57, i64 36}
!67 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!68 = !{!69, !58, i64 24}
!69 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_7XMLAttrEEE", !56, i64 0, !57, i64 4, !57, i64 8, !58, i64 16, !58, i64 24}
!70 = !{!69, !58, i64 16}
!71 = !{!51, !58, i64 784}
!72 = !{!51, !58, i64 800}
!73 = !{!51, !58, i64 816}
!74 = !{!51, !58, i64 824}
!75 = !{!52, !58, i64 360}
!76 = !{!69, !56, i64 0}
!77 = !{!69, !57, i64 4}
!78 = !{!69, !57, i64 8}
!79 = !{!80, !58, i64 0}
!80 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !58, i64 0, !56, i64 8, !58, i64 16, !57, i64 24, !57, i64 28, !57, i64 32, !58, i64 40}
!81 = !{!80, !56, i64 8}
!82 = !{!80, !58, i64 16}
!83 = !{!80, !57, i64 24}
!84 = !{!80, !57, i64 28}
!85 = !{!80, !57, i64 32}
!86 = !{!80, !58, i64 40}
!87 = !{!58, !58, i64 0}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!52, !58, i64 264}
!92 = !{!52, !58, i64 296}
!93 = !{!94, !58, i64 32}
!94 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !95, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !57, i64 56, !56, i64 60}
!95 = !{!"_ZTSN11xercesc_2_77GrammarE", !67, i64 0}
!96 = !{!52, !57, i64 96}
!97 = !{!52, !58, i64 120}
!98 = !{!52, !56, i64 21}
!99 = !{!100, !101, i64 8}
!100 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !101, i64 8, !58, i64 16, !57, i64 24, !58, i64 32, !58, i64 40}
!101 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!102 = !{!52, !56, i64 24}
!103 = !{i8 0, i8 2}
!104 = !{}
!105 = !{!100, !58, i64 32}
!106 = !{!56, !56, i64 0}
!107 = distinct !{!107, !89, !90}
!108 = !{!65, !57, i64 60}
!109 = !{!110, !58, i64 0}
!110 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !58, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !58, i64 24, !58, i64 32, !57, i64 40, !57, i64 44, !56, i64 48, !56, i64 49, !56, i64 50, !57, i64 52, !58, i64 56, !57, i64 64, !58, i64 72, !57, i64 80, !57, i64 84}
!111 = !{!112, !58, i64 16}
!112 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !67, i64 0, !58, i64 8, !58, i64 16, !113, i64 24, !57, i64 28, !56, i64 32}
!113 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !55, i64 0}
!114 = !{!57, !57, i64 0}
!115 = !{!59, !58, i64 16}
!116 = !{!117, !57, i64 163904}
!117 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !57, i64 0, !55, i64 4, !57, i64 32772, !55, i64 32776, !55, i64 49160, !54, i64 114696, !54, i64 114704, !118, i64 114712, !58, i64 114720, !56, i64 114728, !56, i64 114729, !58, i64 114736, !57, i64 114744, !55, i64 114748, !57, i64 163900, !57, i64 163904, !119, i64 163908, !56, i64 163912, !120, i64 163916, !57, i64 163920, !56, i64 163924, !56, i64 163925, !58, i64 163928, !58, i64 163936, !56, i64 163944, !56, i64 163945, !58, i64 163952, !121, i64 163960, !58, i64 163968, !56, i64 163976, !61, i64 163980, !58, i64 163984}
!118 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !55, i64 0}
!119 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !55, i64 0}
!120 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !55, i64 0}
!121 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !55, i64 0}
!122 = !{!123, !58, i64 0}
!123 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !58, i64 0, !57, i64 8}
!124 = distinct !{!124, !89, !90}
!125 = distinct !{!125, !89, !90}
!126 = !{!52, !56, i64 18}
!127 = !{!65, !58, i64 48}
!128 = !{!110, !57, i64 8}
!129 = !{!110, !56, i64 49}
!130 = !{!131, !132, i64 36}
!131 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !112, i64 0, !132, i64 36, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72}
!132 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !55, i64 0}
!133 = !{!110, !56, i64 50}
!134 = !{!110, !58, i64 24}
!135 = !{!110, !57, i64 16}
!136 = !{!137, !58, i64 24}
!137 = !{!"_ZTSN11xercesc_2_75QNameE", !67, i64 0, !57, i64 8, !57, i64 12, !57, i64 16, !57, i64 20, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48}
!138 = !{!64, !57, i64 0}
!139 = !{!64, !58, i64 32}
!140 = !{!141, !141, i64 0}
!141 = !{!"short", !55, i64 0}
!142 = !{!52, !57, i64 52}
!143 = !{!144, !58, i64 0}
!144 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !58, i64 0, !58, i64 8}
!145 = !{!112, !57, i64 28}
!146 = !{!112, !113, i64 24}
!147 = !{!52, !58, i64 304}
!148 = !{!52, !58, i64 320}
!149 = distinct !{!149, !89, !90}
!150 = !{!52, !58, i64 104}
!151 = !{!152, !57, i64 12}
!152 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !56, i64 8, !57, i64 12, !57, i64 16, !58, i64 24, !58, i64 32}
!153 = !{!51, !57, i64 808}
!154 = !{!117, !58, i64 163968}
!155 = !{!55, !55, i64 0}
!156 = !{!152, !58, i64 24}
!157 = !{!158, !56, i64 0}
!158 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !56, i64 0, !159, i64 4, !57, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !56, i64 48}
!159 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !55, i64 0}
!160 = !{!161, !159, i64 12}
!161 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !67, i64 0, !162, i64 8, !159, i64 12, !163, i64 16, !56, i64 20, !56, i64 21, !57, i64 24, !58, i64 32, !58, i64 40, !58, i64 48}
!162 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !55, i64 0}
!163 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !55, i64 0}
!164 = !{!158, !58, i64 24}
!165 = !{!158, !159, i64 4}
!166 = !{!158, !56, i64 48}
!167 = !{!158, !58, i64 40}
!168 = !{!137, !58, i64 32}
!169 = !{!52, !57, i64 60}
!170 = !{!52, !57, i64 64}
!171 = distinct !{!171, !89, !90}
!172 = !{!52, !58, i64 128}
!173 = distinct !{!173, !89, !90}
!174 = !{!52, !56, i64 30}
!175 = !{!112, !56, i64 32}
!176 = !{!94, !57, i64 56}
!177 = !{!52, !62, i64 272}
!178 = !{!52, !58, i64 288}
!179 = !{!52, !56, i64 23}
!180 = !{!181, !58, i64 0}
!181 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !58, i64 0, !58, i64 8}
!182 = !{!181, !58, i64 8}
!183 = !{!52, !58, i64 280}
!184 = !{!51, !58, i64 792}
!185 = !{!52, !56, i64 31}
!186 = !{!52, !56, i64 17}
!187 = !{!52, !56, i64 37}
!188 = !{!52, !56, i64 29}
!189 = !{!190, !58, i64 8}
!190 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !56, i64 0, !56, i64 1, !56, i64 2, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72}
!191 = !{!192, !56, i64 72}
!192 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !193, i64 0, !56, i64 72, !56, i64 73, !56, i64 74}
!193 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !67, i64 0, !57, i64 8, !57, i64 12, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !58, i64 48, !58, i64 56, !58, i64 64}
!194 = !{!192, !56, i64 73}
!195 = !{!192, !56, i64 74}
!196 = !{!193, !58, i64 48}
!197 = !{!193, !58, i64 64}
!198 = !{!117, !56, i64 163945}
!199 = !{!"function_entry_count", i64 47}
!200 = !{!"branch_weights", i32 47, i32 0}
!201 = !{!202, !58, i64 0}
!202 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !58, i64 0, !58, i64 8, !58, i64 16, !57, i64 24, !57, i64 28, !57, i64 32}
!203 = !{!"VP", i32 0, i64 47, i64 8345045103670217670, i64 47}
!204 = !{!202, !58, i64 8}
!205 = !{!144, !58, i64 8}
!206 = !{!202, !57, i64 28}
!207 = !{!202, !57, i64 24}
!208 = !{!"branch_weights", i32 0, i32 47}
!209 = !{!202, !58, i64 16}
!210 = !{!"function_entry_count", i64 243874}
!211 = !{!"branch_weights", i32 191815, i32 52059}
!212 = !{!"branch_weights", i32 0, i32 52059}
!213 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!214 = !{!161, !56, i64 21}
!215 = distinct !{!215, !89, !90}
!216 = !{!52, !56, i64 22}
!217 = !{!64, !57, i64 4}
!218 = !{!"function_entry_count", i64 201935}
!219 = !{!"branch_weights", i32 201935, i32 0}
!220 = !{!152, !58, i64 32}
!221 = !{!52, !58, i64 312}
!222 = !{!"function_entry_count", i64 392072}
!223 = !{!"VP", i32 0, i64 392072, i64 4592451362407133634, i64 392072}
!224 = !{!"branch_weights", i32 1, i32 191}
!225 = !{!226, !58, i64 16}
!226 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !58, i64 0, !58, i64 8, !58, i64 16}
!227 = !{!"VP", i32 0, i64 392048, i64 2119983950972065349, i64 392048}
!228 = !{!"branch_weights", i32 392048, i32 0}
!229 = !{!"branch_weights", i32 191, i32 3136193}
!230 = distinct !{!230, !89, !90}
!231 = !{!"branch_weights", i32 24, i32 392048}
!232 = !{!226, !58, i64 0}
!233 = !{!"function_entry_count", i64 885}
!234 = !{!"branch_weights", i32 885, i32 0}
!235 = !{!"VP", i32 0, i64 885, i64 3024540859536234746, i64 872, i64 4592451362407133634, i64 13}
!236 = !{!"branch_weights", i32 856, i32 29}
!237 = !{!"VP", i32 0, i64 29, i64 -1309333655503989351, i64 29}
!238 = !{!"branch_weights", i32 0, i32 29}
!239 = !{!"branch_weights", i32 29, i32 0}
!240 = !{!"VP", i32 0, i64 885, i64 8345045103670217670, i64 885}
!241 = !{!226, !58, i64 8}
!242 = !{!"function_entry_count", i64 872}
!243 = !{!"VP", i32 0, i64 872, i64 3024540859536234746, i64 872}
!244 = !{!"branch_weights", i32 29, i32 843}
!245 = !{!"branch_weights", i32 0, i32 1}
!246 = distinct !{!246, !89, !90}
!247 = distinct !{!247, !89, !90}
!248 = !{!137, !57, i64 20}
!249 = distinct !{!249, !89, !90}
!250 = !{!52, !58, i64 112}
!251 = distinct !{!251, !89, !90}
!252 = !{!"function_entry_count", i64 190248}
!253 = !{!"branch_weights", i32 189544, i32 704}
!254 = !{!"branch_weights", i32 1, i32 703}
!255 = !{!"branch_weights", i32 4167, i32 885}
!256 = !{!"VP", i32 0, i64 885, i64 -7405368087501025645, i64 885}
!257 = distinct !{!257, !89, !90}
!258 = !{!"branch_weights", i32 4349, i32 703}
!259 = distinct !{!259, !89, !90}
!260 = !{!161, !162, i64 8}
!261 = !{!161, !58, i64 32}
!262 = distinct !{!262, !89, !90}
!263 = !{!190, !56, i64 1}
!264 = !{!52, !57, i64 40}
!265 = !{!52, !56, i64 25}
!266 = !{!52, !58, i64 136}
!267 = !{!52, !58, i64 144}
!268 = !{!52, !58, i64 168}
!269 = !{!52, !56, i64 176}
!270 = !{!"function_entry_count", i64 6}
!271 = !{!202, !57, i64 32}
!272 = !{!"branch_weights", i32 0, i32 6}
!273 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!274 = !{!"branch_weights", i32 191, i32 13057}
!275 = distinct !{!275, !89, !90}
!276 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!277 = !{!"branch_weights", i32 6, i32 0}
!278 = !{!52, !57, i64 56}
!279 = !{!280, !58, i64 16}
!280 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32}
!281 = !{!52, !58, i64 344}
!282 = !{!52, !57, i64 44}
!283 = !{!52, !57, i64 48}
!284 = !{!52, !57, i64 88}
!285 = !{!"function_entry_count", i64 514}
!286 = !{!"branch_weights", i32 0, i32 514}
!287 = !{!288, !58, i64 0}
!288 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !58, i64 0, !56, i64 8, !58, i64 16, !57, i64 24, !57, i64 28, !58, i64 32}
!289 = !{!288, !56, i64 8}
!290 = !{!288, !58, i64 16}
!291 = !{!288, !57, i64 24}
!292 = !{!288, !57, i64 28}
!293 = !{!288, !58, i64 32}
!294 = !{!295, !58, i64 0}
!295 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !58, i64 0, !58, i64 8, !58, i64 16, !57, i64 24}
!296 = !{!295, !58, i64 16}
!297 = !{!295, !57, i64 24}
!298 = !{!295, !58, i64 8}
!299 = !{!300, !58, i64 0}
!300 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !58, i64 0, !58, i64 8, !54, i64 16, !54, i64 24}
!301 = !{!302, !303, i64 0}
!302 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !303, i64 0, !58, i64 8, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40}
!303 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !55, i64 0}
!304 = !{!302, !58, i64 8}
!305 = !{!302, !58, i64 16}
!306 = !{!302, !58, i64 24}
!307 = !{!302, !58, i64 32}
!308 = !{!302, !58, i64 40}
!309 = !{!52, !56, i64 16}
!310 = !{!59, !56, i64 56}
!311 = !{!117, !57, i64 0}
!312 = !{!117, !57, i64 32772}
!313 = distinct !{!313, !89, !90}
!314 = !{!117, !54, i64 114696}
!315 = !{!117, !56, i64 114729}
!316 = distinct !{!316, !89, !90}
!317 = distinct !{!317, !89, !90}
!318 = !{!319, !58, i64 0}
!319 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !58, i64 0, !58, i64 8}
!320 = !{!193, !58, i64 40}
!321 = !{!193, !58, i64 32}
!322 = !{!193, !58, i64 56}
!323 = !{!193, !58, i64 24}
!324 = !{!193, !58, i64 16}
!325 = !{!193, !57, i64 12}
!326 = !{!100, !58, i64 40}
!327 = !{!"function_entry_count", i64 2718768}
!328 = !{!"branch_weights", i32 0, i32 2718768}
!329 = !{!"branch_weights", i32 2718764, i32 4}
!330 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!331 = !{!"function_entry_count", i64 789922}
!332 = !{!"branch_weights", i32 0, i32 789922}
!333 = !{!"branch_weights", i32 284, i32 789638}
!334 = !{!"branch_weights", i32 789638, i32 41628303}
!335 = distinct !{!335, !89, !90}
!336 = !{!"branch_weights", i32 789636, i32 2}
!337 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!338 = distinct !{!338, !89, !90}
!339 = distinct !{!339, !89, !90}
!340 = distinct !{!340, !89, !90}
!341 = !{!342, !57, i64 32}
!342 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !58, i64 0, !58, i64 8, !58, i64 16, !57, i64 24, !57, i64 28, !57, i64 32}
!343 = !{!"branch_weights", i32 0, i32 5}
!344 = !{!"branch_weights", i32 1, i32 159}
!345 = !{!"branch_weights", i32 159, i32 161}
!346 = distinct !{!346, !89, !90}
!347 = !{!342, !58, i64 8}
!348 = !{!"branch_weights", i32 1, i32 0}
!349 = distinct !{!349, !89, !90}
!350 = !{!"function_entry_count", i64 1927}
!351 = !{!"branch_weights", i32 0, i32 1927}
!352 = !{!"branch_weights", i32 1, i32 1926}
!353 = !{!"branch_weights", i32 1926, i32 12567}
!354 = !{!"branch_weights", i32 1, i32 1033}
!355 = !{!"branch_weights", i32 0, i32 1283}
!356 = !{!"branch_weights", i32 389, i32 1}
!357 = !{!"branch_weights", i32 893, i32 7885}
!358 = !{!"branch_weights", i32 8389, i32 389}
!359 = !{!"branch_weights", i32 1033, i32 250}
!360 = distinct !{!360, !89, !90}
!361 = !{!"function_entry_count", i64 10}
!362 = !{!152, !57, i64 16}
!363 = !{!"branch_weights", i32 0, i32 10}
!364 = distinct !{!364, !89, !90}
!365 = distinct !{!365, !89, !90}
!366 = !{!367, !58, i64 0}
!367 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !58, i64 0, !58, i64 8}
!368 = !{!367, !58, i64 8}
!369 = distinct !{!369, !89, !90}
!370 = distinct !{!370, !89, !90}
!371 = !{!"function_entry_count", i64 9}
!372 = !{!"branch_weights", i32 1, i32 143}
!373 = !{!"branch_weights", i32 454, i32 47}
!374 = !{!"VP", i32 0, i64 47, i64 6620649524856465861, i64 47}
!375 = !{!"VP", i32 0, i64 47, i64 -7405368087501025645, i64 47}
!376 = distinct !{!376, !89, !90}
!377 = !{!"branch_weights", i32 7873, i32 143}
!378 = distinct !{!378, !89, !90}
!379 = !{!"VP", i32 0, i64 6, i64 -1480571424701097013, i64 3, i64 -5147776714887549805, i64 3}
!380 = distinct !{!380, !89, !90}
!381 = !{!382, !58, i64 0}
!382 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_7XMLAttrEEEEE", !58, i64 0, !58, i64 8}
!383 = !{!382, !58, i64 8}
!384 = distinct !{!384, !89, !90}
!385 = distinct !{!385, !89, !90}
!386 = distinct !{!386, !89, !90}
