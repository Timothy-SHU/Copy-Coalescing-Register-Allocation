; ModuleID = 'IGXMLScanner.cpp'
source_filename = "IGXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::IGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
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
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::PSVIAttributeList" = type <{ ptr, ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.1" }
%"class.xercesc_2_7::ValueVectorOf.1" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::ValueStackOf.9" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf.10" }
%"class.xercesc_2_7::ValueVectorOf.10" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DTDElementDecl" = type { %"class.xercesc_2_7::XMLElementDecl.base", i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLAttDef" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i8, i8, i32, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.5" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLAttr" = type <{ i8, [3 x i8], i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDScanner" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::ArrayJanitor.11" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ValueStackOfIbE3popEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712IGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_712IGXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj = comdat any

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

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = comdat any

@_ZTVN11xercesc_2_712IGXMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712IGXMLScannerE, ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712IGXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712IGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_712IGXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712IGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712IGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712IGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712IGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712IGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712IGXMLScanner15resolveSystemIdEPKtS2_] }, align 8
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
@.str = private unnamed_addr constant [17 x i8] c"IGXMLScanner.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList = internal constant [6 x i16] [i16 39, i16 34, i16 62, i16 60, i16 47, i16 0], align 2
@_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList_0 = internal constant [4 x i16] [i16 62, i16 60, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTSN11xercesc_2_712IGXMLScannerE = dso_local constant [30 x i8] c"N11xercesc_2_712IGXMLScannerE\00", align 1
@_ZTIN11xercesc_2_710XMLScannerE = external constant ptr
@_ZTIN11xercesc_2_712IGXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712IGXMLScannerE, ptr @_ZTIN11xercesc_2_710XMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
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
@_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.4 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_711RefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv] }, comdat, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1

@_ZN11xercesc_2_712IGXMLScannerC1EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712IGXMLScannerC1EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE
@_ZN11xercesc_2_712IGXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !160 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !161 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712IGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !166
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %6, align 4, !tbaa !186
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %7, align 8, !tbaa !187
  %8 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !188
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %9, align 8, !tbaa !189
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 1
  store i32 1023, ptr %10, align 4, !tbaa !190
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 2
  store i32 0, ptr %11, align 8, !tbaa !191
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 3
  store i8 0, ptr %12, align 4, !tbaa !192
  %13 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 4
  store ptr %3, ptr %13, align 8, !tbaa !193
  %14 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 5
  %15 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %3, align 8, !tbaa !163
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %20 unwind label %25, !prof !194

20:                                               ; preds = %4
  store ptr %19, ptr %15, align 8, !tbaa !195
  store i16 0, ptr %19, align 2, !tbaa !196
  %21 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  store ptr null, ptr %21, align 8, !tbaa !198
  %22 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  store i32 32, ptr %22, align 8, !tbaa !199
  %23 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %24 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %23, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, i8 0, i64 56, i1 false)
  invoke void @_ZN11xercesc_2_712IGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %42 unwind label %29, !prof !200

25:                                               ; preds = %4
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  br label %63

29:                                               ; preds = %20
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = tail call ptr @__cxa_begin_catch(ptr %31) #16
  invoke void @__cxa_rethrow() #18
          to label %71 unwind label %37

37:                                               ; preds = %35
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %68

39:                                               ; preds = %37
  %40 = extractvalue { ptr, i32 } %38, 1
  %41 = extractvalue { ptr, i32 } %38, 0
  br label %43

42:                                               ; preds = %20
  ret void

43:                                               ; preds = %39, %29
  %44 = phi ptr [ null, %39 ], [ @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, %29 ]
  %45 = phi ptr [ null, %39 ], [ %0, %29 ]
  %46 = phi i32 [ %40, %39 ], [ %32, %29 ]
  %47 = phi ptr [ %41, %39 ], [ %31, %29 ]
  %48 = icmp eq ptr %45, null
  %49 = or i1 %34, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %43
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(1024) %45)
          to label %54 unwind label %51

51:                                               ; preds = %50
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #17
  unreachable

54:                                               ; preds = %43, %50
  %55 = load ptr, ptr %13, align 8, !tbaa !193
  %56 = load ptr, ptr %15, align 8, !tbaa !195
  %57 = load ptr, ptr %55, align 8, !tbaa !163
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56)
          to label %63 unwind label %60

60:                                               ; preds = %54
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #17
  unreachable

63:                                               ; preds = %54, %25
  %64 = phi i32 [ %28, %25 ], [ %46, %54 ]
  %65 = phi ptr [ %27, %25 ], [ %47, %54 ]
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  %66 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %67 = insertvalue { ptr, i32 } %66, i32 %64, 1
  resume { ptr, i32 } %67

68:                                               ; preds = %37
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  tail call void @__clang_call_terminate(ptr %70) #17
  unreachable

71:                                               ; preds = %35
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = load ptr, ptr %3, align 8, !tbaa !163
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5), !prof !202
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12, !prof !203

12:                                               ; preds = %1
  %13 = load ptr, ptr %10, align 8, !tbaa !163
  %14 = getelementptr inbounds ptr, ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(40) %10) #16, !prof !204
  br label %16

16:                                               ; preds = %12, %1
  %17 = load ptr, ptr %2, align 8, !tbaa !201
  %18 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !205
  %20 = load ptr, ptr %17, align 8, !tbaa !163
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19), !prof !202
  %23 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !206
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26, !prof !203

26:                                               ; preds = %16
  %27 = load ptr, ptr %24, align 8, !tbaa !163
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(48) %24) #16, !prof !207
  br label %30

30:                                               ; preds = %26, %16
  %31 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !208
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34, !prof !203

34:                                               ; preds = %30
  %35 = load ptr, ptr %32, align 8, !tbaa !163
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(186) %32) #16, !prof !209
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %40 = load ptr, ptr %39, align 8, !tbaa !210
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42, !prof !203

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !163
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(48) %40) #16, !prof !211
  br label %46

46:                                               ; preds = %42, %38
  %47 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  %48 = load ptr, ptr %47, align 8, !tbaa !212
  %49 = icmp eq ptr %48, null
  br i1 %49, label %62, label %50, !prof !203

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %48, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !213
  %53 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %48, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !215
  %55 = load ptr, ptr %52, align 8, !tbaa !163
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %54)
          to label %61 unwind label %58, !prof !202

58:                                               ; preds = %50
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  tail call void @__clang_call_terminate(ptr %60) #17
  unreachable

61:                                               ; preds = %50
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %48) #16
  br label %62

62:                                               ; preds = %61, %46
  %63 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %64 = load ptr, ptr %63, align 8, !tbaa !216
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66, !prof !203

66:                                               ; preds = %62
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %64) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %64) #16
  br label %67

67:                                               ; preds = %66, %62
  %68 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  %69 = load ptr, ptr %68, align 8, !tbaa !217
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71, !prof !203

71:                                               ; preds = %67
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %69) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %69) #16
  br label %72

72:                                               ; preds = %71, %67
  %73 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %74 = load ptr, ptr %73, align 8, !tbaa !218
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76, !prof !203

76:                                               ; preds = %72
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %74)
          to label %80 unwind label %77, !prof !200

77:                                               ; preds = %76
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  tail call void @__clang_call_terminate(ptr %79) #17
  unreachable

80:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %74) #16
  br label %81

81:                                               ; preds = %80, %72
  %82 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %83 = load ptr, ptr %82, align 8, !tbaa !219
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85, !prof !203

85:                                               ; preds = %81
  invoke void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %83)
          to label %89 unwind label %86, !prof !200

86:                                               ; preds = %85
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  tail call void @__clang_call_terminate(ptr %88) #17
  unreachable

89:                                               ; preds = %85
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %83) #16
  br label %90

90:                                               ; preds = %89, %81
  %91 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %92 = load ptr, ptr %91, align 8, !tbaa !220
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94, !prof !203

94:                                               ; preds = %90
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %92) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %92) #16
  br label %95

95:                                               ; preds = %94, %90
  %96 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %97 = load ptr, ptr %96, align 8, !tbaa !221
  %98 = icmp eq ptr %97, null
  br i1 %98, label %124, label %99, !prof !203

99:                                               ; preds = %95
  %100 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %97, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !222
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103, !prof !203

103:                                              ; preds = %99
  %104 = load ptr, ptr %101, align 8, !tbaa !163
  %105 = getelementptr inbounds ptr, ptr %104, i64 1
  %106 = load ptr, ptr %105, align 8
  tail call void %106(ptr noundef nonnull align 8 dereferenceable(40) %101) #16, !prof !224
  br label %107

107:                                              ; preds = %103, %99
  %108 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %97, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !225
  %110 = icmp eq ptr %109, null
  br i1 %110, label %115, label %111, !prof !203

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 8, !tbaa !163
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8
  tail call void %114(ptr noundef nonnull align 8 dereferenceable(40) %109) #16, !prof !226
  br label %115

115:                                              ; preds = %111, %107
  %116 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %97, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !227
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119, !prof !203

119:                                              ; preds = %115
  %120 = load ptr, ptr %117, align 8, !tbaa !163
  %121 = getelementptr inbounds ptr, ptr %120, i64 1
  %122 = load ptr, ptr %121, align 8
  tail call void %122(ptr noundef nonnull align 8 dereferenceable(40) %117) #16, !prof !226
  br label %123

123:                                              ; preds = %115, %119
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %97) #16
  br label %124

124:                                              ; preds = %123, %95
  %125 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %126 = load ptr, ptr %125, align 8, !tbaa !228
  %127 = icmp eq ptr %126, null
  br i1 %127, label %132, label %128, !prof !203

128:                                              ; preds = %124
  %129 = load ptr, ptr %126, align 8, !tbaa !163
  %130 = getelementptr inbounds ptr, ptr %129, i64 1
  %131 = load ptr, ptr %130, align 8
  tail call void %131(ptr noundef nonnull align 8 dereferenceable(104) %126) #16, !prof !229
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %134 = load ptr, ptr %133, align 8, !tbaa !230
  %135 = icmp eq ptr %134, null
  br i1 %135, label %148, label %136, !prof !203

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %134, i64 0, i32 1, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !231
  %139 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %134, i64 0, i32 1, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !233
  %141 = load ptr, ptr %138, align 8, !tbaa !163
  %142 = getelementptr inbounds ptr, ptr %141, i64 3
  %143 = load ptr, ptr %142, align 8
  invoke void %143(ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef %140)
          to label %147 unwind label %144, !prof !202

144:                                              ; preds = %136
  %145 = landingpad { ptr, i32 }
          catch ptr null
  %146 = extractvalue { ptr, i32 } %145, 0
  tail call void @__clang_call_terminate(ptr %146) #17
  unreachable

147:                                              ; preds = %136
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %134) #16
  br label %148

148:                                              ; preds = %147, %132
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = load ptr, ptr %3, align 8, !tbaa !163
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %7), !prof !194
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  store ptr %11, ptr %12, align 8, !tbaa !188
  %13 = load ptr, ptr %2, align 8, !tbaa !201
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %13)
  %15 = load ptr, ptr %2, align 8, !tbaa !201
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %14, align 8, !tbaa !163
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 1
  store i8 1, ptr %16, align 8, !tbaa !234
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 2
  store i32 0, ptr %17, align 4, !tbaa !236
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 3
  store i32 32, ptr %18, align 8, !tbaa !237
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 4
  store ptr null, ptr %19, align 8, !tbaa !238
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 5
  store ptr %15, ptr %20, align 8, !tbaa !239
  %21 = load ptr, ptr %15, align 8, !tbaa !163
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 256)
          to label %25 unwind label %183, !prof !194

25:                                               ; preds = %1
  store ptr %24, ptr %19, align 8, !tbaa !238
  br label %26

26:                                               ; preds = %25, %26
  %27 = phi i64 [ 0, %25 ], [ %30, %26 ]
  %28 = load ptr, ptr %19, align 8, !tbaa !238
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !240
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %26, !prof !241, !llvm.loop !242

32:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %14, align 8, !tbaa !163
  %33 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  store ptr %14, ptr %33, align 8, !tbaa !198
  %34 = load ptr, ptr %2, align 8, !tbaa !201
  %35 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !199
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 2
  %39 = load ptr, ptr %34, align 8, !tbaa !163
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %38), !prof !194
  %43 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  store ptr %42, ptr %43, align 8, !tbaa !205
  %44 = load ptr, ptr %2, align 8, !tbaa !201
  %45 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %44)
  invoke void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef null)
          to label %46 unwind label %185, !prof !200

46:                                               ; preds = %32
  %47 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  store ptr %45, ptr %47, align 8, !tbaa !206
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %45)
  %48 = load ptr, ptr %2, align 8, !tbaa !201
  %49 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 192, ptr noundef %48)
  %50 = load ptr, ptr %2, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186) %49, ptr noundef null, ptr noundef %50)
          to label %51 unwind label %187, !prof !200

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  store ptr %49, ptr %52, align 8, !tbaa !208
  tail call void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull %49)
  %53 = load ptr, ptr %2, align 8, !tbaa !201
  %54 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %53)
  %55 = load ptr, ptr %2, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull %0, ptr noundef %55)
          to label %56 unwind label %189, !prof !200

56:                                               ; preds = %51
  %57 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  store ptr %54, ptr %57, align 8, !tbaa !210
  %58 = load ptr, ptr %2, align 8, !tbaa !201
  %59 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %58)
  %60 = load ptr, ptr %2, align 8, !tbaa !201
  store i8 0, ptr %59, align 8, !tbaa !245
  %61 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %59, i64 0, i32 1
  store i32 0, ptr %61, align 4, !tbaa !246
  %62 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %59, i64 0, i32 2
  store i32 8, ptr %62, align 8, !tbaa !247
  %63 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %59, i64 0, i32 3
  store ptr null, ptr %63, align 8, !tbaa !215
  %64 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %59, i64 0, i32 4
  store ptr %60, ptr %64, align 8, !tbaa !213
  %65 = load ptr, ptr %60, align 8, !tbaa !163
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %60, i64 noundef 64)
          to label %69 unwind label %191, !prof !194

69:                                               ; preds = %56
  store ptr %68, ptr %63, align 8, !tbaa !215
  %70 = load i32, ptr %62, align 8, !tbaa !247
  %71 = zext i32 %70 to i64
  %72 = shl nuw nsw i64 %71, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %68, i8 0, i64 %72, i1 false), !prof !248
  %73 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  store ptr %59, ptr %73, align 8, !tbaa !212
  %74 = load ptr, ptr %2, align 8, !tbaa !201
  %75 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %74)
  %76 = load ptr, ptr %2, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %75, i32 noundef 29, i32 noundef 128, ptr noundef %76)
          to label %77 unwind label %193, !prof !200

77:                                               ; preds = %69
  %78 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  store ptr %75, ptr %78, align 8, !tbaa !216
  %79 = load ptr, ptr %2, align 8, !tbaa !201
  %80 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %79)
  %81 = load ptr, ptr %2, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %80, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %81)
          to label %82 unwind label %195, !prof !200

82:                                               ; preds = %77
  %83 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  store ptr %80, ptr %83, align 8, !tbaa !217
  %84 = load ptr, ptr %2, align 8, !tbaa !201
  %85 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %84)
  %86 = load ptr, ptr %2, align 8, !tbaa !201
  %87 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %86)
          to label %88 unwind label %197, !prof !200

88:                                               ; preds = %82
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %89 unwind label %199, !prof !200

89:                                               ; preds = %88
  %90 = load ptr, ptr %2, align 8, !tbaa !201
  store ptr %90, ptr %85, align 8, !tbaa !249
  %91 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %85, i64 0, i32 1
  store i8 0, ptr %91, align 8, !tbaa !251
  %92 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %85, i64 0, i32 2
  store ptr null, ptr %92, align 8, !tbaa !252
  %93 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %85, i64 0, i32 3
  store i32 131, ptr %93, align 8, !tbaa !253
  %94 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %85, i64 0, i32 4
  store i32 131, ptr %94, align 4, !tbaa !254
  %95 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %85, i64 0, i32 5
  store i32 0, ptr %95, align 8, !tbaa !255
  %96 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %85, i64 0, i32 6
  store ptr null, ptr %96, align 8, !tbaa !256
  %97 = load ptr, ptr %90, align 8, !tbaa !163
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = invoke noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %90, i64 noundef 1048)
          to label %101 unwind label %197, !prof !194

101:                                              ; preds = %89
  store ptr %100, ptr %92, align 8, !tbaa !252
  %102 = load i32, ptr %93, align 8, !tbaa !253
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104, !prof !257

104:                                              ; preds = %101
  %105 = zext i32 %102 to i64
  br label %106

106:                                              ; preds = %104, %106
  %107 = phi i64 [ 0, %104 ], [ %110, %106 ]
  %108 = load ptr, ptr %92, align 8, !tbaa !252
  %109 = getelementptr inbounds ptr, ptr %108, i64 %107
  store ptr null, ptr %109, align 8, !tbaa !240
  %110 = add nuw nsw i64 %107, 1
  %111 = icmp eq i64 %110, %105
  br i1 %111, label %112, label %106, !prof !258, !llvm.loop !259

112:                                              ; preds = %106, %101
  store ptr %87, ptr %96, align 8, !tbaa !256
  %113 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  store ptr %85, ptr %113, align 8, !tbaa !218
  %114 = load ptr, ptr %2, align 8, !tbaa !201
  %115 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %114)
  %116 = load ptr, ptr %2, align 8, !tbaa !201
  %117 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %116)
          to label %118 unwind label %203, !prof !200

118:                                              ; preds = %112
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %117)
          to label %119 unwind label %205, !prof !200

119:                                              ; preds = %118
  %120 = load ptr, ptr %2, align 8, !tbaa !201
  store ptr %120, ptr %115, align 8, !tbaa !249
  %121 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %115, i64 0, i32 1
  store i8 0, ptr %121, align 8, !tbaa !251
  %122 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %115, i64 0, i32 2
  store ptr null, ptr %122, align 8, !tbaa !252
  %123 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %115, i64 0, i32 3
  store i32 7, ptr %123, align 8, !tbaa !253
  %124 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %115, i64 0, i32 4
  store i32 7, ptr %124, align 4, !tbaa !254
  %125 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %115, i64 0, i32 5
  store i32 0, ptr %125, align 8, !tbaa !255
  %126 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %115, i64 0, i32 6
  store ptr null, ptr %126, align 8, !tbaa !256
  %127 = load ptr, ptr %120, align 8, !tbaa !163
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %120, i64 noundef 56)
          to label %131 unwind label %203, !prof !194

131:                                              ; preds = %119
  store ptr %130, ptr %122, align 8, !tbaa !252
  %132 = load i32, ptr %123, align 8, !tbaa !253
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134, !prof !257

134:                                              ; preds = %131
  %135 = zext i32 %132 to i64
  br label %136

136:                                              ; preds = %134, %136
  %137 = phi i64 [ 0, %134 ], [ %140, %136 ]
  %138 = load ptr, ptr %122, align 8, !tbaa !252
  %139 = getelementptr inbounds ptr, ptr %138, i64 %137
  store ptr null, ptr %139, align 8, !tbaa !240
  %140 = add nuw nsw i64 %137, 1
  %141 = icmp eq i64 %140, %135
  br i1 %141, label %142, label %136, !prof !260, !llvm.loop !259

142:                                              ; preds = %136, %131
  store ptr %117, ptr %126, align 8, !tbaa !256
  %143 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  store ptr %115, ptr %143, align 8, !tbaa !219
  %144 = load ptr, ptr %2, align 8, !tbaa !201
  %145 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %144)
  %146 = load ptr, ptr %2, align 8, !tbaa !201
  %147 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %146)
          to label %148 unwind label %209, !prof !200

148:                                              ; preds = %142
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %147)
          to label %149 unwind label %211, !prof !200

149:                                              ; preds = %148
  %150 = load ptr, ptr %2, align 8, !tbaa !201
  store ptr %150, ptr %145, align 8, !tbaa !261
  %151 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %145, i64 0, i32 1
  store i8 0, ptr %151, align 8, !tbaa !263
  %152 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %145, i64 0, i32 2
  store ptr null, ptr %152, align 8, !tbaa !264
  %153 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %145, i64 0, i32 3
  store i32 7, ptr %153, align 8, !tbaa !265
  %154 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %145, i64 0, i32 4
  store i32 0, ptr %154, align 4, !tbaa !266
  %155 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %145, i64 0, i32 5
  store ptr null, ptr %155, align 8, !tbaa !267
  %156 = load ptr, ptr %150, align 8, !tbaa !163
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %150, i64 noundef 56)
          to label %160 unwind label %209, !prof !194

160:                                              ; preds = %149
  store ptr %159, ptr %152, align 8, !tbaa !264
  %161 = load i32, ptr %153, align 8, !tbaa !265
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %171, label %163, !prof !257

163:                                              ; preds = %160
  %164 = zext i32 %161 to i64
  br label %165

165:                                              ; preds = %163, %165
  %166 = phi i64 [ 0, %163 ], [ %169, %165 ]
  %167 = load ptr, ptr %152, align 8, !tbaa !264
  %168 = getelementptr inbounds ptr, ptr %167, i64 %166
  store ptr null, ptr %168, align 8, !tbaa !240
  %169 = add nuw nsw i64 %166, 1
  %170 = icmp eq i64 %169, %164
  br i1 %170, label %171, label %165, !prof !260, !llvm.loop !268

171:                                              ; preds = %165, %160
  store ptr %147, ptr %155, align 8, !tbaa !267
  %172 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  store ptr %145, ptr %172, align 8, !tbaa !220
  %173 = load ptr, ptr %2, align 8, !tbaa !201
  %174 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %173)
  %175 = load ptr, ptr %2, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %174, ptr noundef %175)
          to label %176 unwind label %215, !prof !200

176:                                              ; preds = %171
  %177 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  store ptr %174, ptr %177, align 8, !tbaa !221
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %179 = load ptr, ptr %178, align 8, !tbaa !269
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %217, !prof !200

181:                                              ; preds = %176
  %182 = load ptr, ptr %47, align 8, !tbaa !206
  store ptr %182, ptr %178, align 8, !tbaa !269
  br label %217

183:                                              ; preds = %1
  %184 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %14, ptr noundef %13) #16
  br label %218

185:                                              ; preds = %32
  %186 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %45, ptr noundef %44) #16
  br label %218

187:                                              ; preds = %46
  %188 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %49, ptr noundef %48) #16
  br label %218

189:                                              ; preds = %51
  %190 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %54, ptr noundef %53) #16
  br label %218

191:                                              ; preds = %56
  %192 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %59, ptr noundef %58) #16
  br label %218

193:                                              ; preds = %69
  %194 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %75, ptr noundef %74) #16
  br label %218

195:                                              ; preds = %77
  %196 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #16
  br label %218

197:                                              ; preds = %89, %82
  %198 = landingpad { ptr, i32 }
          cleanup
  br label %201

199:                                              ; preds = %88
  %200 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %87, ptr noundef %86) #16
  br label %201

201:                                              ; preds = %199, %197
  %202 = phi { ptr, i32 } [ %198, %197 ], [ %200, %199 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %85, ptr noundef %84) #16
  br label %218

203:                                              ; preds = %119, %112
  %204 = landingpad { ptr, i32 }
          cleanup
  br label %207

205:                                              ; preds = %118
  %206 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %117, ptr noundef %116) #16
  br label %207

207:                                              ; preds = %205, %203
  %208 = phi { ptr, i32 } [ %204, %203 ], [ %206, %205 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %115, ptr noundef %114) #16
  br label %218

209:                                              ; preds = %149, %142
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %213

211:                                              ; preds = %148
  %212 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %147, ptr noundef %146) #16
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi { ptr, i32 } [ %210, %209 ], [ %212, %211 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %145, ptr noundef %144) #16
  br label %218

215:                                              ; preds = %171
  %216 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %174, ptr noundef %173) #16
  br label %218

217:                                              ; preds = %181, %176
  ret void

218:                                              ; preds = %215, %213, %207, %201, %195, %193, %191, %189, %187, %185, %183
  %219 = phi { ptr, i32 } [ %216, %215 ], [ %214, %213 ], [ %208, %207 ], [ %202, %201 ], [ %196, %195 ], [ %194, %193 ], [ %192, %191 ], [ %190, %189 ], [ %188, %187 ], [ %186, %185 ], [ %184, %183 ]
  resume { ptr, i32 } %219
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712IGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
  %9 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !166
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 2, ptr %10, align 4, !tbaa !186
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  store i32 16, ptr %11, align 8, !tbaa !187
  %12 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !188
  %13 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %13, align 8, !tbaa !189
  %14 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 1
  store i32 1023, ptr %14, align 4, !tbaa !190
  %15 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 2
  store i32 0, ptr %15, align 8, !tbaa !191
  %16 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 3
  store i8 0, ptr %16, align 4, !tbaa !192
  %17 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 4
  store ptr %7, ptr %17, align 8, !tbaa !193
  %18 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 5
  %19 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %7, align 8, !tbaa !163
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %24 unwind label %29

24:                                               ; preds = %8
  store ptr %23, ptr %19, align 8, !tbaa !195
  store i16 0, ptr %23, align 2, !tbaa !196
  %25 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  store ptr null, ptr %25, align 8, !tbaa !198
  %26 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  store i32 32, ptr %26, align 8, !tbaa !199
  %27 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %28 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %27, i8 0, i64 68, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %28, i8 0, i64 56, i1 false)
  invoke void @_ZN11xercesc_2_712IGXMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %46 unwind label %33

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  br label %67

33:                                               ; preds = %24
  %34 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %35 = extractvalue { ptr, i32 } %34, 0
  %36 = extractvalue { ptr, i32 } %34, 1
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = tail call ptr @__cxa_begin_catch(ptr %35) #16
  invoke void @__cxa_rethrow() #18
          to label %75 unwind label %41

41:                                               ; preds = %39
  %42 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %43 unwind label %72

43:                                               ; preds = %41
  %44 = extractvalue { ptr, i32 } %42, 1
  %45 = extractvalue { ptr, i32 } %42, 0
  br label %47

46:                                               ; preds = %24
  ret void

47:                                               ; preds = %43, %33
  %48 = phi ptr [ null, %43 ], [ @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, %33 ]
  %49 = phi ptr [ null, %43 ], [ %0, %33 ]
  %50 = phi i32 [ %44, %43 ], [ %36, %33 ]
  %51 = phi ptr [ %45, %43 ], [ %35, %33 ]
  %52 = icmp eq ptr %49, null
  %53 = or i1 %38, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(1024) %49)
          to label %58 unwind label %55

55:                                               ; preds = %54
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #17
  unreachable

58:                                               ; preds = %47, %54
  %59 = load ptr, ptr %17, align 8, !tbaa !193
  %60 = load ptr, ptr %19, align 8, !tbaa !195
  %61 = load ptr, ptr %59, align 8, !tbaa !163
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %60)
          to label %67 unwind label %64

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %58, %29
  %68 = phi i32 [ %32, %29 ], [ %50, %58 ]
  %69 = phi ptr [ %31, %29 ], [ %51, %58 ]
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  %70 = insertvalue { ptr, i32 } poison, ptr %69, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %68, 1
  resume { ptr, i32 } %71

72:                                               ; preds = %41
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #17
  unreachable

75:                                               ; preds = %39
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_712IGXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
  invoke void @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %2 unwind label %14, !prof !200

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !193
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !195
  %7 = load ptr, ptr %4, align 8, !tbaa !163
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6)
          to label %13 unwind label %10, !prof !202

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable

13:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) #16
  ret void

14:                                               ; preds = %1
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #8 align 2 !prof !162 {
  tail call void @_ZN11xercesc_2_712IGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1024) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0) unnamed_addr #9 align 2 !prof !270 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !272

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !273
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_712IGXMLScanner17getEntityDeclPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0) unnamed_addr #9 align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !271
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !273
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %4 = load i32, ptr %3, align 8, !tbaa !276
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 8, !tbaa !276
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %7 = load ptr, ptr %0, align 8, !tbaa !163
  %8 = getelementptr inbounds ptr, ptr %7, i64 15
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %10 unwind label %18, !prof !277

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %12 = load ptr, ptr %11, align 8, !tbaa !278
  %13 = icmp eq ptr %12, null
  br i1 %13, label %54, label %14, !prof !203

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !163
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %54 unwind label %18, !prof !279

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
          to label %30 unwind label %27, !prof !200

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
  store i8 1, ptr %39, align 1, !tbaa !280
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %38, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !281
  %42 = add i32 %41, -1
  %43 = icmp ult i32 %42, 4
  br i1 %43, label %44, label %91

44:                                               ; preds = %37
  %45 = load ptr, ptr %38, align 8, !tbaa !163
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
          to label %55 unwind label %18, !prof !200

55:                                               ; preds = %54
  %56 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %57 unwind label %18, !prof !200

57:                                               ; preds = %55
  br i1 %56, label %58, label %59, !prof !203

58:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279)
          to label %70 unwind label %18

59:                                               ; preds = %57
  %60 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %61 unwind label %18, !prof !200

61:                                               ; preds = %59
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %63 = load i8, ptr %62, align 8, !tbaa !284, !range !285, !noundef !286
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %66, label %65, !prof !287

65:                                               ; preds = %61
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %66 unwind label %18, !prof !288

66:                                               ; preds = %65, %61
  %67 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %68 unwind label %18, !prof !200

68:                                               ; preds = %66
  br i1 %67, label %70, label %69, !prof !203

69:                                               ; preds = %68
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %70 unwind label %18, !prof !200

70:                                               ; preds = %69, %68, %58
  %71 = load ptr, ptr %11, align 8, !tbaa !278
  %72 = icmp eq ptr %71, null
  br i1 %72, label %26, label %73, !prof !203

73:                                               ; preds = %70
  %74 = load ptr, ptr %71, align 8, !tbaa !163
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %71)
          to label %26 unwind label %18, !prof !289

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
  %97 = load ptr, ptr %38, align 8, !tbaa !163
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
  %108 = load ptr, ptr %107, align 8, !tbaa !290
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

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner11scanContentEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !291 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #16
  store i8 1, ptr %2, align 1, !tbaa !292
  br label %4

4:                                                ; preds = %1, %95
  %5 = load i8, ptr %2, align 1, !tbaa !292, !range !285, !noundef !286
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %95, label %7, !prof !257

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  br label %11

11:                                               ; preds = %7, %70
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %12 = invoke noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %13 unwind label %22, !prof !293

13:                                               ; preds = %11
  switch i32 %12, label %14 [
    i32 1, label %16
    i32 4, label %25
    i32 0, label %41
    i32 2, label %50
    i32 3, label %51
    i32 5, label %52
    i32 6, label %53
  ], !prof !294

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %60

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !163
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %70 unwind label %22, !prof !295, !llvm.loop !296

20:                                               ; preds = %60
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %73

22:                                               ; preds = %11, %16, %45, %46, %50, %51, %52, %56, %58, %69
  %23 = phi i1 [ false, %11 ], [ true, %45 ], [ true, %46 ], [ true, %50 ], [ true, %51 ], [ true, %52 ], [ true, %58 ], [ true, %56 ], [ true, %69 ], [ false, %16 ]
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %73

25:                                               ; preds = %13
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !297
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %31 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %30)
          to label %32 unwind label %38

32:                                               ; preds = %29
  %33 = load ptr, ptr %31, align 8, !tbaa !298
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !300
  %36 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %35)
          to label %37 unwind label %38

37:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 274, ptr noundef %36, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %40 unwind label %38

38:                                               ; preds = %32, %37, %29
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %73

40:                                               ; preds = %37, %25
  store i8 0, ptr %2, align 1, !tbaa !292
  br label %70, !llvm.loop !296

41:                                               ; preds = %13
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !297
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 280)
          to label %46 unwind label %22

46:                                               ; preds = %45, %41
  %47 = load ptr, ptr %0, align 8, !tbaa !163
  %48 = getelementptr inbounds ptr, ptr %47, i64 11
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %63 unwind label %22

50:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %63 unwind label %22

51:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %63 unwind label %22, !prof !303

52:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %63 unwind label %22

53:                                               ; preds = %13
  %54 = load i8, ptr %8, align 2, !tbaa !304, !range !285, !noundef !286
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56, !prof !305

56:                                               ; preds = %53
  %57 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %63 unwind label %22, !prof !306

58:                                               ; preds = %53
  %59 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %63 unwind label %22, !prof !307

60:                                               ; preds = %14, %62
  %61 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %15)
          to label %62 unwind label %20

62:                                               ; preds = %60
  switch i16 %61, label %60 [
    i16 60, label %63
    i16 0, label %63
  ]

63:                                               ; preds = %62, %62, %58, %56, %52, %51, %50, %46
  %64 = load i32, ptr %3, align 4, !tbaa !308
  %65 = load ptr, ptr %10, align 8, !tbaa !309
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %65, i64 0, i32 15
  %67 = load i32, ptr %66, align 8, !tbaa !310
  %68 = icmp eq i32 %64, %67
  br i1 %68, label %70, label %69, !prof !316

69:                                               ; preds = %63
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %70 unwind label %22

70:                                               ; preds = %16, %63, %69, %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %71 = load i8, ptr %2, align 1, !tbaa !292, !range !285, !noundef !286
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %95, label %11, !prof !317

73:                                               ; preds = %20, %22, %38
  %74 = phi { ptr, i32 } [ %39, %38 ], [ %21, %20 ], [ %24, %22 ]
  %75 = phi i1 [ false, %38 ], [ true, %20 ], [ %23, %22 ]
  %76 = extractvalue { ptr, i32 } %74, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %77 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #16
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = extractvalue { ptr, i32 } %74, 0
  %81 = call ptr @__cxa_begin_catch(ptr %80) #16
  br i1 %75, label %82, label %85

82:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %85 unwind label %83

83:                                               ; preds = %89, %82
  %84 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %99 unwind label %101

85:                                               ; preds = %82, %79
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %87 = load ptr, ptr %86, align 8, !tbaa !278
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr %81, align 8, !tbaa !318
  %91 = load ptr, ptr %87, align 8, !tbaa !163
  %92 = getelementptr inbounds ptr, ptr %91, i64 7
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef nonnull align 8 dereferenceable(72) %90)
          to label %94 unwind label %83

94:                                               ; preds = %85, %89
  call void @__cxa_end_catch()
  br label %95

95:                                               ; preds = %70, %4, %94
  %96 = load i8, ptr %2, align 1, !tbaa !292, !range !285, !noundef !286
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %4, !prof !320, !llvm.loop !321

98:                                               ; preds = %95
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  ret i1 true

99:                                               ; preds = %73, %83
  %100 = phi { ptr, i32 } [ %84, %83 ], [ %74, %73 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #16
  resume { ptr, i32 } %100

101:                                              ; preds = %83
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #17
  unreachable
}

declare void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 307, i32 noundef 78, ptr noundef %9)
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
  br label %229

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
  %29 = load ptr, ptr %27, align 8, !tbaa !278
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %28, align 8, !tbaa !318
  %33 = load ptr, ptr %29, align 8, !tbaa !163
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
          to label %41 unwind label %234

38:                                               ; preds = %31, %26
  invoke void @__cxa_end_catch()
          to label %17 unwind label %39, !llvm.loop !322

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
  %47 = load ptr, ptr %0, align 8, !tbaa !163
  %48 = getelementptr inbounds ptr, ptr %47, i64 12
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %46)
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
  %56 = load i32, ptr %55, align 4, !tbaa !297
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %92, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %60 = invoke noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %59)
          to label %61 unwind label %67

61:                                               ; preds = %58
  %62 = load ptr, ptr %60, align 8, !tbaa !298
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !300
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
  store i8 1, ptr %4, align 1, !tbaa !292
  switch i32 %18, label %134 [
    i32 0, label %72
    i32 2, label %123
    i32 3, label %124
    i32 5, label %125
    i32 6, label %126
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %74 = load i32, ptr %73, align 4, !tbaa !297
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

79:                                               ; preds = %76, %119, %123, %124, %125, %130, %132, %144, %152, %153, %158
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

92:                                               ; preds = %200, %54, %66, %45, %162, %90, %97
  %93 = phi i1 [ true, %45 ], [ false, %90 ], [ false, %97 ], [ true, %162 ], [ false, %66 ], [ false, %54 ], [ false, %200 ]
  br i1 %93, label %214, label %210

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
  store i8 1, ptr %104, align 1, !tbaa !280
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !281
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %177

109:                                              ; preds = %102
  %110 = load ptr, ptr %103, align 8, !tbaa !163
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %190 unwind label %168

114:                                              ; preds = %99
  %115 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %116 = icmp eq i32 %86, %115
  br i1 %116, label %117, label %215

117:                                              ; preds = %114
  %118 = call ptr @__cxa_begin_catch(ptr %87) #16
  invoke void @__cxa_rethrow() #18
          to label %237 unwind label %163

119:                                              ; preds = %76, %72
  %120 = load ptr, ptr %0, align 8, !tbaa !163
  %121 = getelementptr inbounds ptr, ptr %120, i64 11
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(1024) %0)
          to label %137 unwind label %79

123:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %137 unwind label %79

124:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

125:                                              ; preds = %71
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %137 unwind label %79

126:                                              ; preds = %71
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %128 = load i8, ptr %127, align 2, !tbaa !304, !range !285, !noundef !286
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %137 unwind label %79

132:                                              ; preds = %126
  %133 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 1 dereferenceable(1) %4)
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
  %138 = load i32, ptr %3, align 4, !tbaa !308
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !309
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %140, i64 0, i32 15
  %142 = load i32, ptr %141, align 8, !tbaa !310
  %143 = icmp eq i32 %138, %142
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 231)
          to label %145 unwind label %79

145:                                              ; preds = %144, %137
  %146 = load i8, ptr %4, align 1, !tbaa !292, !range !285, !noundef !286
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %150 = load i8, ptr %149, align 8, !tbaa !284, !range !285, !noundef !286
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %153 unwind label %79

153:                                              ; preds = %152, %148
  invoke void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %154 unwind label %79

154:                                              ; preds = %153
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %156 = load ptr, ptr %155, align 8, !tbaa !278
  %157 = icmp eq ptr %156, null
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %156, align 8, !tbaa !163
  %160 = getelementptr inbounds ptr, ptr %159, i64 5
  %161 = load ptr, ptr %160, align 8
  invoke void %161(ptr noundef nonnull align 8 dereferenceable(8) %156)
          to label %162 unwind label %79

162:                                              ; preds = %158, %154, %145
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #16
  br label %92

163:                                              ; preds = %117
  %164 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %165 unwind label %234

165:                                              ; preds = %163
  %166 = extractvalue { ptr, i32 } %164, 1
  %167 = extractvalue { ptr, i32 } %164, 0
  br label %215

168:                                              ; preds = %190, %188, %186, %109
  %169 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %170 = extractvalue { ptr, i32 } %169, 0
  %171 = extractvalue { ptr, i32 } %169, 1
  %172 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %205

174:                                              ; preds = %168
  %175 = call ptr @__cxa_begin_catch(ptr %170) #16
  invoke void @__cxa_rethrow() #18
          to label %176 unwind label %195

176:                                              ; preds = %174
  unreachable

177:                                              ; preds = %102
  %178 = add i32 %106, -5
  %179 = icmp ult i32 %178, 397
  %180 = and i32 %106, -2
  %181 = icmp ne i32 %180, 402
  %182 = or i1 %179, %181
  %183 = load ptr, ptr %103, align 8, !tbaa !163
  %184 = getelementptr inbounds ptr, ptr %183, i64 2
  %185 = load ptr, ptr %184, align 8
  br i1 %182, label %186, label %188

186:                                              ; preds = %177
  %187 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %190 unwind label %168

188:                                              ; preds = %177
  %189 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %190 unwind label %168

190:                                              ; preds = %188, %186, %109
  %191 = phi i32 [ 7, %109 ], [ 292, %186 ], [ 157, %188 ]
  %192 = phi ptr [ %113, %109 ], [ %187, %186 ], [ %189, %188 ]
  %193 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !290
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %191, ptr noundef %192, ptr noundef %194, ptr noundef null, ptr noundef null)
          to label %200 unwind label %168

195:                                              ; preds = %174
  %196 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %197 unwind label %234

197:                                              ; preds = %195
  %198 = extractvalue { ptr, i32 } %196, 1
  %199 = extractvalue { ptr, i32 } %196, 0
  br label %205

200:                                              ; preds = %190
  invoke void @__cxa_end_catch()
          to label %92 unwind label %201

201:                                              ; preds = %200
  %202 = landingpad { ptr, i32 }
          cleanup
  %203 = extractvalue { ptr, i32 } %202, 0
  %204 = extractvalue { ptr, i32 } %202, 1
  br label %215

205:                                              ; preds = %168, %197
  %206 = phi i64 [ 0, %197 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %168 ]
  %207 = phi ptr [ null, %197 ], [ %16, %168 ]
  %208 = phi i32 [ %198, %197 ], [ %171, %168 ]
  %209 = phi ptr [ %199, %197 ], [ %170, %168 ]
  invoke void @__cxa_end_catch()
          to label %215 unwind label %234

210:                                              ; preds = %92
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %16)
          to label %214 unwind label %211

211:                                              ; preds = %210
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  call void @__clang_call_terminate(ptr %213) #17
  unreachable

214:                                              ; preds = %92, %210
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i1 %93

215:                                              ; preds = %205, %201, %165, %114
  %216 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %201 ], [ 0, %165 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %114 ], [ %206, %205 ]
  %217 = phi ptr [ %16, %201 ], [ null, %165 ], [ %16, %114 ], [ %207, %205 ]
  %218 = phi i32 [ %204, %201 ], [ %166, %165 ], [ %86, %114 ], [ %208, %205 ]
  %219 = phi ptr [ %203, %201 ], [ %167, %165 ], [ %87, %114 ], [ %209, %205 ]
  %220 = icmp eq ptr %217, null
  %221 = icmp eq i64 %216, 0
  %222 = or i1 %221, %220
  br i1 %222, label %228, label %223

223:                                              ; preds = %215
  %224 = inttoptr i64 %216 to ptr
  invoke void %224(ptr noundef nonnull align 8 dereferenceable(80) %217)
          to label %228 unwind label %225

225:                                              ; preds = %223
  %226 = landingpad { ptr, i32 }
          catch ptr null
  %227 = extractvalue { ptr, i32 } %226, 0
  call void @__clang_call_terminate(ptr %227) #17
  unreachable

228:                                              ; preds = %215, %223
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %229

229:                                              ; preds = %228, %11
  %230 = phi i32 [ %218, %228 ], [ %14, %11 ]
  %231 = phi ptr [ %219, %228 ], [ %13, %11 ]
  %232 = insertvalue { ptr, i32 } poison, ptr %231, 0
  %233 = insertvalue { ptr, i32 } %232, i32 %230, 1
  resume { ptr, i32 } %233

234:                                              ; preds = %205, %195, %163, %36
  %235 = landingpad { ptr, i32 }
          catch ptr null
  %236 = extractvalue { ptr, i32 } %235, 0
  call void @__clang_call_terminate(ptr %236) #17
  unreachable

237:                                              ; preds = %117
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !323 {
  store i8 1, ptr %1, align 1, !tbaa !292
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !297
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18, !prof !324

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
  %14 = load ptr, ptr %13, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 939, i32 noundef 77, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %498

18:                                               ; preds = %2
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !304, !range !285, !noundef !286
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %30, label %22, !prof !325

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !326
  %25 = add i32 %5, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %24, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  %29 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %28, i64 0, i32 13
  br label %32

30:                                               ; preds = %18
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi ptr [ %29, %22 ], [ %31, %30 ]
  %34 = load i32, ptr %33, align 4, !tbaa !308
  %35 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !186
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %48, !prof !327

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !326
  %41 = add i32 %5, -1
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !240
  %45 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %44, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !328
  %47 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  br label %54

48:                                               ; preds = %32
  %49 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %3)
  %50 = load ptr, ptr %49, align 8, !tbaa !298
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !300
  %53 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %52)
  br label %54

54:                                               ; preds = %48, %38
  %55 = phi ptr [ %47, %38 ], [ %49, %48 ]
  %56 = phi ptr [ %46, %38 ], [ %53, %48 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !309
  %60 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %59, ptr noundef %56)
  br i1 %60, label %64, label %61, !prof !303

61:                                               ; preds = %54
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %56, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %62

62:                                               ; preds = %62, %61
  %63 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %57)
  switch i16 %63, label %62 [
    i16 62, label %497
    i16 0, label %497
  ]

64:                                               ; preds = %54
  %65 = load i32, ptr %4, align 4, !tbaa !297
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !329
  %69 = load ptr, ptr %58, align 8, !tbaa !309
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %69, i64 0, i32 15
  %71 = load i32, ptr %70, align 8, !tbaa !310
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %74, label %73, !prof !303

73:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278)
  br label %74

74:                                               ; preds = %73, %64
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %57, i1 noundef zeroext false)
  %76 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %57, i16 noundef zeroext 62)
  br i1 %76, label %82, label %77, !prof !303

77:                                               ; preds = %74
  %78 = load ptr, ptr %55, align 8, !tbaa !298
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !300
  %81 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %80)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %81, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %82

82:                                               ; preds = %77, %74
  %83 = load i32, ptr %35, align 4, !tbaa !186
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %155, !prof !327

85:                                               ; preds = %82
  %86 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %87 = load ptr, ptr %86, align 8, !tbaa !230
  %88 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %87)
  %89 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %90 = zext i1 %88 to i8
  store i8 %90, ptr %89, align 1, !tbaa !330
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %92 = load i8, ptr %91, align 8, !tbaa !284, !range !285, !noundef !286
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %153, label %94, !prof !331

94:                                               ; preds = %85
  %95 = load ptr, ptr %55, align 8, !tbaa !298
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %95, i64 0, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !332
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %153, !prof !333

99:                                               ; preds = %94
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %101 = load ptr, ptr %100, align 8, !tbaa !269
  %102 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %101, i64 0, i32 14
  %103 = load ptr, ptr %102, align 8, !tbaa !334
  %104 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %103, i64 0, i32 1, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !338
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107, !prof !331

107:                                              ; preds = %99
  %108 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %103)
  %109 = load ptr, ptr %108, align 8, !tbaa !240
  br label %110

110:                                              ; preds = %99, %107
  %111 = phi ptr [ %109, %107 ], [ null, %99 ]
  %112 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 6
  store ptr %111, ptr %112, align 8, !tbaa !340
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %118, !prof !341

114:                                              ; preds = %110
  %115 = load ptr, ptr %100, align 8, !tbaa !269
  %116 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %115, i64 0, i32 7
  %117 = load ptr, ptr %116, align 8, !tbaa !342
  br label %118

118:                                              ; preds = %110, %114
  %119 = phi ptr [ %117, %114 ], [ null, %110 ]
  %120 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  store ptr %119, ptr %120, align 8, !tbaa !343
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %122 = load ptr, ptr %121, align 8, !tbaa !344
  %123 = icmp eq ptr %122, null
  br i1 %123, label %155, label %124, !prof !333

124:                                              ; preds = %118
  %125 = load ptr, ptr %100, align 8, !tbaa !269
  %126 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %125, i64 0, i32 9
  %127 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %125, i64 0, i32 9, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !195
  %129 = load i32, ptr %126, align 8, !tbaa !189
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i16, ptr %128, i64 %130
  store i16 0, ptr %131, align 2, !tbaa !196
  %132 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %128, ptr %132, align 8, !tbaa !345
  %133 = icmp eq ptr %128, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %124
  %135 = load i16, ptr %128, align 2, !tbaa !196
  %136 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !196
  %137 = icmp eq i16 %135, %136
  br i1 %137, label %141, label %155

138:                                              ; preds = %124
  %139 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !196
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %152, label %155

141:                                              ; preds = %134, %146
  %142 = phi i16 [ %149, %146 ], [ %135, %134 ]
  %143 = phi ptr [ %148, %146 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %134 ]
  %144 = phi ptr [ %147, %146 ], [ %128, %134 ]
  %145 = icmp eq i16 %142, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = getelementptr inbounds i16, ptr %144, i64 1
  %148 = getelementptr inbounds i16, ptr %143, i64 1
  %149 = load i16, ptr %147, align 2, !tbaa !196
  %150 = load i16, ptr %148, align 2, !tbaa !196
  %151 = icmp eq i16 %149, %150
  br i1 %151, label %141, label %155, !llvm.loop !346

152:                                              ; preds = %141, %138
  store ptr null, ptr %132, align 8, !tbaa !345
  br label %155

153:                                              ; preds = %94, %85
  %154 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %154, i8 0, i64 24, i1 false)
  br label %155

155:                                              ; preds = %146, %134, %153, %138, %152, %118, %82
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %157 = load i8, ptr %156, align 8, !tbaa !284, !range !285, !noundef !286
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %298, label %159, !prof !347

159:                                              ; preds = %155
  %160 = load i32, ptr %35, align 4, !tbaa !186
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %177, !prof !331

162:                                              ; preds = %159
  %163 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 9
  %164 = load i8, ptr %163, align 1, !tbaa !348, !range !285, !noundef !286
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %177, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr %55, align 8, !tbaa !298
  %168 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %167, i64 0, i32 1
  %169 = load i32, ptr %168, align 4, !tbaa !349
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %166
  %172 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %173 = load ptr, ptr %172, align 8, !tbaa !269
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %167, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !300
  %176 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %175)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %173, i32 noundef 110, ptr noundef %176, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %177

177:                                              ; preds = %171, %166, %162, %159
  %178 = load i32, ptr %35, align 4, !tbaa !186
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %195, !prof !331

180:                                              ; preds = %177
  %181 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 10
  %182 = load i8, ptr %181, align 2, !tbaa !352, !range !285, !noundef !286
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %55, align 8, !tbaa !298
  %186 = getelementptr inbounds %"class.xercesc_2_7::DTDElementDecl", ptr %185, i64 0, i32 1
  %187 = load i32, ptr %186, align 4, !tbaa !349
  %188 = icmp eq i32 %187, 3
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %191 = load ptr, ptr %190, align 8, !tbaa !269
  %192 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %185, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !300
  %194 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %193)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %191, i32 noundef 113, ptr noundef %194, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %195

195:                                              ; preds = %189, %184, %180, %177
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %197 = load ptr, ptr %196, align 8, !tbaa !269
  %198 = load ptr, ptr %55, align 8, !tbaa !298
  %199 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 4
  %200 = load ptr, ptr %199, align 8, !tbaa !353
  %201 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 3
  %202 = load i32, ptr %201, align 8, !tbaa !354
  %203 = load ptr, ptr %197, align 8, !tbaa !163
  %204 = getelementptr inbounds ptr, ptr %203, i64 2
  %205 = load ptr, ptr %204, align 8
  %206 = tail call noundef i32 %205(ptr noundef nonnull align 8 dereferenceable(40) %197, ptr noundef %198, ptr noundef %200, i32 noundef %202), !prof !355
  %207 = icmp sgt i32 %206, -1
  br i1 %207, label %208, label %238, !prof !331

208:                                              ; preds = %195
  %209 = load i32, ptr %201, align 8, !tbaa !354
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load ptr, ptr %196, align 8, !tbaa !269
  %213 = load ptr, ptr %55, align 8, !tbaa !298
  %214 = load ptr, ptr %213, align 8, !tbaa !163
  %215 = getelementptr inbounds ptr, ptr %214, i64 15
  %216 = load ptr, ptr %215, align 8
  %217 = tail call noundef ptr %216(ptr noundef nonnull align 8 dereferenceable(33) %213)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %212, i32 noundef 16, ptr noundef %217, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %238

218:                                              ; preds = %208
  %219 = icmp ult i32 %206, %209
  %220 = load ptr, ptr %196, align 8, !tbaa !269
  br i1 %219, label %227, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr %55, align 8, !tbaa !298
  %223 = load ptr, ptr %222, align 8, !tbaa !163
  %224 = getelementptr inbounds ptr, ptr %223, i64 15
  %225 = load ptr, ptr %224, align 8
  %226 = tail call noundef ptr %225(ptr noundef nonnull align 8 dereferenceable(33) %222)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %220, i32 noundef 21, ptr noundef %226, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %238

227:                                              ; preds = %218
  %228 = load ptr, ptr %199, align 8, !tbaa !353
  %229 = zext nneg i32 %206 to i64
  %230 = getelementptr inbounds ptr, ptr %228, i64 %229
  %231 = load ptr, ptr %230, align 8, !tbaa !240
  %232 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %231)
  %233 = load ptr, ptr %55, align 8, !tbaa !298
  %234 = load ptr, ptr %233, align 8, !tbaa !163
  %235 = getelementptr inbounds ptr, ptr %234, i64 15
  %236 = load ptr, ptr %235, align 8
  %237 = tail call noundef ptr %236(ptr noundef nonnull align 8 dereferenceable(33) %233)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %220, i32 noundef 7, ptr noundef %232, ptr noundef %237, ptr noundef null, ptr noundef null)
  br label %238

238:                                              ; preds = %211, %227, %221, %195
  %239 = load i32, ptr %35, align 4, !tbaa !186
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %241, label %298, !prof !333

241:                                              ; preds = %238
  %242 = load ptr, ptr %196, align 8, !tbaa !269
  %243 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %242, i64 0, i32 16
  %244 = load i8, ptr %243, align 8, !tbaa !356, !range !285, !noundef !286
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %248, label %246, !prof !333

246:                                              ; preds = %241
  %247 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 1, ptr %247, align 1, !tbaa !330
  br label %263

248:                                              ; preds = %241
  %249 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %250 = load ptr, ptr %249, align 8, !tbaa !343
  %251 = icmp eq ptr %250, null
  br i1 %251, label %263, label %252, !prof !357

252:                                              ; preds = %248
  %253 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %250, i64 0, i32 9
  %254 = load i32, ptr %253, align 4, !tbaa !358
  %255 = icmp eq i32 %254, 25
  br i1 %255, label %256, label %263, !prof !362

256:                                              ; preds = %252
  %257 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %258 = load ptr, ptr %257, align 8, !tbaa !363
  %259 = load ptr, ptr %258, align 8, !tbaa !163
  %260 = getelementptr inbounds ptr, ptr %259, i64 11
  %261 = load ptr, ptr %260, align 8
  %262 = tail call noundef ptr %261(ptr noundef nonnull align 8 dereferenceable(16) %258)
  br label %263

263:                                              ; preds = %248, %252, %256, %246
  %264 = phi ptr [ null, %246 ], [ %262, %256 ], [ null, %252 ], [ null, %248 ]
  %265 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %266 = load ptr, ptr %265, align 8, !tbaa !344
  %267 = icmp eq ptr %266, null
  br i1 %267, label %279, label %268, !prof !333

268:                                              ; preds = %263
  %269 = load ptr, ptr %196, align 8, !tbaa !269
  %270 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %269, i64 0, i32 17
  %271 = load i8, ptr %270, align 1, !tbaa !364, !range !285, !noundef !286
  %272 = icmp eq i8 %271, 0
  %273 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  store i8 %271, ptr %273, align 8, !tbaa !365
  br i1 %272, label %279, label %274

274:                                              ; preds = %268
  %275 = load ptr, ptr %55, align 8, !tbaa !298
  %276 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %275, i64 0, i32 11
  %277 = load ptr, ptr %276, align 8, !tbaa !366
  %278 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %277, ptr %278, align 8, !tbaa !345
  br label %279

279:                                              ; preds = %268, %274, %263
  %280 = load i8, ptr %156, align 8, !tbaa !284, !range !285, !noundef !286
  %281 = icmp ne i8 %280, 0
  %282 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %283 = load i8, ptr %282, align 4, !range !285
  %284 = icmp ne i8 %283, 0
  %285 = select i1 %281, i1 %284, i1 false, !prof !333
  %286 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %287 = load ptr, ptr %286, align 8
  %288 = icmp ne ptr %287, null
  %289 = select i1 %285, i1 %288, i1 false, !prof !333
  br i1 %289, label %290, label %298, !prof !333

290:                                              ; preds = %279
  %291 = load ptr, ptr %55, align 8, !tbaa !298
  %292 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  %293 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !195
  %295 = load i32, ptr %292, align 8, !tbaa !189
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds i16, ptr %294, i64 %296
  store i16 0, ptr %297, align 2, !tbaa !196
  tail call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %287, ptr noundef %291, ptr noundef %294)
  br label %298

298:                                              ; preds = %279, %238, %290, %155
  %299 = phi ptr [ null, %155 ], [ %264, %290 ], [ null, %238 ], [ %264, %279 ]
  %300 = load i32, ptr %35, align 4, !tbaa !186
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %302, label %314, !prof !327

302:                                              ; preds = %298
  %303 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %304 = load ptr, ptr %303, align 8, !tbaa !344
  %305 = icmp eq ptr %304, null
  br i1 %305, label %308, label %306, !prof !333

306:                                              ; preds = %302
  %307 = load ptr, ptr %55, align 8, !tbaa !298
  tail call void @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %307, ptr noundef %299)
  br label %308

308:                                              ; preds = %306, %302
  %309 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %310 = load ptr, ptr %309, align 8, !tbaa !269
  %311 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %310, i64 0, i32 9
  store i32 0, ptr %311, align 8, !tbaa !189
  %312 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %310, i64 0, i32 9, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !195
  store i16 0, ptr %313, align 2, !tbaa !196
  br label %314

314:                                              ; preds = %308, %298
  %315 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %316 = load ptr, ptr %315, align 8, !tbaa !278
  %317 = icmp eq ptr %316, null
  br i1 %317, label %349, label %318, !prof !324

318:                                              ; preds = %314
  %319 = load i32, ptr %35, align 4, !tbaa !186
  %320 = icmp eq i32 %319, 1
  br i1 %320, label %321, label %330, !prof !327

321:                                              ; preds = %318
  %322 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %55, i64 0, i32 16
  %323 = load i32, ptr %322, align 4, !tbaa !372
  %324 = icmp eq i32 %323, -1
  %325 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  store i32 0, ptr %325, align 8, !tbaa !189
  br i1 %324, label %327, label %326, !prof !333

326:                                              ; preds = %321
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %325, ptr noundef %56, i32 noundef %323)
  br label %337

327:                                              ; preds = %321
  %328 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %329 = load ptr, ptr %328, align 8, !tbaa !195
  store i16 0, ptr %329, align 2, !tbaa !196
  br label %337

330:                                              ; preds = %318
  %331 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %332 = load ptr, ptr %55, align 8, !tbaa !298
  %333 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %332, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !300
  %335 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %334, i64 0, i32 5
  %336 = load ptr, ptr %335, align 8, !tbaa !373
  store i32 0, ptr %331, align 8, !tbaa !189
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %331, ptr noundef %336)
  br label %337

337:                                              ; preds = %326, %327, %330
  %338 = load ptr, ptr %315, align 8, !tbaa !278
  %339 = load ptr, ptr %55, align 8, !tbaa !298
  %340 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %341 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %342 = load ptr, ptr %341, align 8, !tbaa !195
  %343 = load i32, ptr %340, align 8, !tbaa !189
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds i16, ptr %342, i64 %344
  store i16 0, ptr %345, align 2, !tbaa !196
  %346 = load ptr, ptr %338, align 8, !tbaa !163
  %347 = getelementptr inbounds ptr, ptr %346, i64 6
  %348 = load ptr, ptr %347, align 8
  tail call void %348(ptr noundef nonnull align 8 dereferenceable(8) %338, ptr noundef nonnull align 8 dereferenceable(33) %339, i32 noundef %34, i1 noundef zeroext %66, ptr noundef %342), !prof !375
  br label %349

349:                                              ; preds = %337, %314
  %350 = load i32, ptr %35, align 4, !tbaa !186
  %351 = icmp ne i32 %350, 1
  %352 = or i1 %66, %351
  br i1 %352, label %411, label %353, !prof !376

353:                                              ; preds = %349
  %354 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %355 = load ptr, ptr %354, align 8, !tbaa !230
  %356 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 1
  %357 = load i32, ptr %356, align 4, !tbaa !377
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %361, label %359, !prof !378

359:                                              ; preds = %353
  %360 = tail call noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %355)
  br i1 %360, label %364, label %361, !prof !378

361:                                              ; preds = %359, %353
  %362 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %363 = load i8, ptr %362, align 1, !tbaa !330, !range !285, !noundef !286
  br label %364

364:                                              ; preds = %361, %359
  %365 = phi i8 [ 1, %359 ], [ %363, %361 ]
  %366 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 1
  %367 = load i32, ptr %366, align 4, !tbaa !377
  %368 = add i32 %367, 1
  %369 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 2
  %370 = load i32, ptr %369, align 8, !tbaa !379
  %371 = icmp ugt i32 %368, %370
  br i1 %371, label %372, label %404, !prof !380

372:                                              ; preds = %364
  %373 = uitofp i32 %367 to double
  %374 = fmul double %373, 1.250000e+00
  %375 = fptoui double %374 to i32
  %376 = tail call i32 @llvm.umax.i32(i32 %368, i32 %375)
  %377 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 4
  %378 = load ptr, ptr %377, align 8, !tbaa !231
  %379 = zext i32 %376 to i64
  %380 = load ptr, ptr %378, align 8, !tbaa !163
  %381 = getelementptr inbounds ptr, ptr %380, i64 2
  %382 = load ptr, ptr %381, align 8
  %383 = tail call noundef ptr %382(ptr noundef nonnull align 8 dereferenceable(8) %378, i64 noundef %379), !prof !381
  %384 = load i32, ptr %366, align 4, !tbaa !377
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %390, label %386, !prof !382

386:                                              ; preds = %372
  %387 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !233
  %389 = zext i32 %384 to i64
  br label %397

390:                                              ; preds = %397, %372
  %391 = load ptr, ptr %377, align 8, !tbaa !231
  %392 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 3
  %393 = load ptr, ptr %392, align 8, !tbaa !233
  %394 = load ptr, ptr %391, align 8, !tbaa !163
  %395 = getelementptr inbounds ptr, ptr %394, i64 3
  %396 = load ptr, ptr %395, align 8
  tail call void %396(ptr noundef nonnull align 8 dereferenceable(8) %391, ptr noundef %393), !prof !383
  store ptr %383, ptr %392, align 8, !tbaa !233
  store i32 %376, ptr %369, align 8, !tbaa !379
  br label %404

397:                                              ; preds = %397, %386
  %398 = phi i64 [ 0, %386 ], [ %402, %397 ]
  %399 = getelementptr inbounds i8, ptr %388, i64 %398
  %400 = load i8, ptr %399, align 1, !tbaa !292, !range !285, !noundef !286
  %401 = getelementptr inbounds i8, ptr %383, i64 %398
  store i8 %400, ptr %401, align 1, !tbaa !292
  %402 = add nuw nsw i64 %398, 1
  %403 = icmp eq i64 %402, %389
  br i1 %403, label %390, label %397, !prof !384, !llvm.loop !385

404:                                              ; preds = %364, %390
  %405 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %355, i64 0, i32 1, i32 3
  %406 = load ptr, ptr %405, align 8, !tbaa !233
  %407 = load i32, ptr %356, align 4, !tbaa !377
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds i8, ptr %406, i64 %408
  store i8 %365, ptr %409, align 1, !tbaa !292
  %410 = add i32 %407, 1
  store i32 %410, ptr %356, align 4, !tbaa !377
  br label %411

411:                                              ; preds = %349, %404
  %412 = xor i1 %66, true
  %413 = zext i1 %412 to i8
  store i8 %413, ptr %1, align 1, !tbaa !292
  br i1 %66, label %497, label %414, !prof !386

414:                                              ; preds = %411
  %415 = load i8, ptr %19, align 2, !tbaa !304, !range !285, !noundef !286
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %487, label %417, !prof !387

417:                                              ; preds = %414
  %418 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %419 = load ptr, ptr %418, align 8, !tbaa !326
  %420 = load i32, ptr %4, align 4, !tbaa !297
  %421 = add i32 %420, -1
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds ptr, ptr %419, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !240
  %425 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %424, i64 0, i32 12
  %426 = load ptr, ptr %425, align 8, !tbaa !388
  %427 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %426, ptr %427, align 8, !tbaa !389
  %428 = load ptr, ptr %426, align 8, !tbaa !163
  %429 = getelementptr inbounds ptr, ptr %428, i64 5
  %430 = load ptr, ptr %429, align 8
  %431 = tail call noundef i32 %430(ptr noundef nonnull align 8 dereferenceable(8) %426), !prof !390
  store i32 %431, ptr %35, align 4, !tbaa !186
  %432 = icmp eq i32 %431, 1
  br i1 %432, label %433, label %453, !prof !391

433:                                              ; preds = %417
  %434 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %435 = load ptr, ptr %434, align 8, !tbaa !269
  %436 = load ptr, ptr %435, align 8, !tbaa !163
  %437 = getelementptr inbounds ptr, ptr %436, i64 13
  %438 = load ptr, ptr %437, align 8
  %439 = tail call noundef zeroext i1 %438(ptr noundef nonnull align 8 dereferenceable(40) %435), !prof !392
  br i1 %439, label %453, label %440, !prof !393

440:                                              ; preds = %433
  %441 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %442 = load i8, ptr %441, align 1, !tbaa !394, !range !285, !noundef !286
  %443 = icmp eq i8 %442, 0
  br i1 %443, label %451, label %444

444:                                              ; preds = %440
  %445 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %446 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %447 = load ptr, ptr %446, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %445, ptr noundef nonnull @.str, i32 noundef 1198, i32 noundef 158, ptr noundef %447)
          to label %448 unwind label %449

448:                                              ; preds = %444
  tail call void @__cxa_throw(ptr nonnull %445, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

449:                                              ; preds = %444
  %450 = landingpad { ptr, i32 }
          cleanup
  br label %498

451:                                              ; preds = %440
  %452 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  br label %476

453:                                              ; preds = %433, %417
  %454 = load i32, ptr %35, align 4, !tbaa !186
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %480, !prof !395

456:                                              ; preds = %453
  %457 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %458 = load ptr, ptr %457, align 8, !tbaa !269
  %459 = load ptr, ptr %458, align 8, !tbaa !163
  %460 = getelementptr inbounds ptr, ptr %459, i64 12
  %461 = load ptr, ptr %460, align 8
  %462 = tail call noundef zeroext i1 %461(ptr noundef nonnull align 8 dereferenceable(40) %458), !prof !396
  br i1 %462, label %480, label %463, !prof !397

463:                                              ; preds = %456
  %464 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %465 = load i8, ptr %464, align 1, !tbaa !394, !range !285, !noundef !286
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %474, label %467

467:                                              ; preds = %463
  %468 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %469 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %470 = load ptr, ptr %469, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %468, ptr noundef nonnull @.str, i32 noundef 1205, i32 noundef 44, ptr noundef %470)
          to label %471 unwind label %472

471:                                              ; preds = %467
  tail call void @__cxa_throw(ptr nonnull %468, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

472:                                              ; preds = %467
  %473 = landingpad { ptr, i32 }
          cleanup
  br label %498

474:                                              ; preds = %463
  %475 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  br label %476

476:                                              ; preds = %451, %474
  %477 = phi ptr [ %475, %474 ], [ %452, %451 ]
  %478 = phi ptr [ %457, %474 ], [ %434, %451 ]
  %479 = load ptr, ptr %477, align 8, !tbaa !240
  store ptr %479, ptr %478, align 8, !tbaa !269
  br label %480

480:                                              ; preds = %476, %453, %456
  %481 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %482 = load ptr, ptr %481, align 8, !tbaa !269
  %483 = load ptr, ptr %427, align 8, !tbaa !389
  %484 = load ptr, ptr %482, align 8, !tbaa !163
  %485 = getelementptr inbounds ptr, ptr %484, i64 11
  %486 = load ptr, ptr %485, align 8
  tail call void %486(ptr noundef nonnull align 8 dereferenceable(40) %482, ptr noundef %483), !prof !398
  br label %487

487:                                              ; preds = %480, %414
  %488 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !326
  %490 = load i32, ptr %4, align 4, !tbaa !297
  %491 = add i32 %490, -1
  %492 = zext i32 %491 to i64
  %493 = getelementptr inbounds ptr, ptr %489, i64 %492
  %494 = load ptr, ptr %493, align 8, !tbaa !240
  %495 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %494, i64 0, i32 8
  %496 = load i8, ptr %495, align 8, !tbaa !399, !range !285, !noundef !286
  store i8 %496, ptr %156, align 8, !tbaa !284
  br label %497

497:                                              ; preds = %62, %62, %411, %487
  ret void

498:                                              ; preds = %449, %472, %16
  %499 = phi ptr [ %445, %449 ], [ %468, %472 ], [ %12, %16 ]
  %500 = phi { ptr, i32 } [ %450, %449 ], [ %473, %472 ], [ %17, %16 ]
  tail call void @__cxa_free_exception(ptr %499) #16
  resume { ptr, i32 } %500
}

declare void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !400 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %"class.xercesc_2_7::QName", align 8
  %8 = alloca [2 x i16], align 4
  %9 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  store i8 1, ptr %1, align 1, !tbaa !292
  %10 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !189
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !195
  store i16 0, ptr %12, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %14, align 8, !tbaa !189
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !195
  store i16 0, ptr %16, align 2, !tbaa !196
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  %19 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %18, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull %5)
  br i1 %19, label %31, label %20, !prof !306

20:                                               ; preds = %2
  %21 = load i32, ptr %14, align 8, !tbaa !189
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %28

24:                                               ; preds = %20
  %25 = load ptr, ptr %15, align 8, !tbaa !195
  %26 = zext i32 %21 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  store i16 0, ptr %27, align 2, !tbaa !196
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %25, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %28

28:                                               ; preds = %24, %23
  br label %29

29:                                               ; preds = %28, %29
  %30 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %13)
  switch i16 %30, label %29 [
    i16 60, label %1350
    i16 0, label %1350
  ]

31:                                               ; preds = %2
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %34 = load i32, ptr %33, align 4, !tbaa !297
  %35 = icmp eq i32 %34, 0
  %36 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %13, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  %37 = load ptr, ptr %15, align 8, !tbaa !195
  %38 = load i32, ptr %14, align 8, !tbaa !189
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i16, ptr %37, i64 %39
  store i16 0, ptr %40, align 2, !tbaa !196
  %41 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !198
  %43 = call noundef i32 @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef nonnull align 1 dereferenceable(1) %6)
  %44 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = icmp ne i32 %45, 1
  %47 = select i1 %35, i1 true, i1 %46, !prof !401
  br i1 %47, label %108, label %48, !prof !402

48:                                               ; preds = %31
  %49 = call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %32)
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %51 = load i8, ptr %50, align 8, !tbaa !284, !range !285, !noundef !286
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %70, label %53, !prof !403

53:                                               ; preds = %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %55 = load ptr, ptr %54, align 8, !tbaa !269
  %56 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %55, i64 0, i32 14
  %57 = load ptr, ptr %56, align 8, !tbaa !334
  %58 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %57, i64 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !338
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61, !prof !403

61:                                               ; preds = %53
  %62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %57)
  %63 = load ptr, ptr %62, align 8, !tbaa !240
  br label %64

64:                                               ; preds = %53, %61
  %65 = phi ptr [ %63, %61 ], [ null, %53 ]
  %66 = icmp eq ptr %65, null
  br i1 %66, label %79, label %67, !prof !403

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %65, i64 0, i32 10
  %69 = load i32, ptr %68, align 8, !tbaa !404
  br label %79

70:                                               ; preds = %48
  %71 = load ptr, ptr %49, align 8, !tbaa !298
  %72 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %71, i64 0, i32 12
  %73 = load ptr, ptr %72, align 8, !tbaa !406
  %74 = icmp eq ptr %73, null
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %71, i64 0, i32 2
  %76 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %73, i64 0, i32 10
  %77 = select i1 %74, ptr %75, ptr %76
  %78 = load i32, ptr %77, align 4, !tbaa !407
  br label %79

79:                                               ; preds = %64, %67, %70
  %80 = phi ptr [ %65, %67 ], [ %73, %70 ], [ null, %64 ]
  %81 = phi i32 [ %69, %67 ], [ %78, %70 ], [ 1, %64 ]
  switch i32 %81, label %108 [
    i32 4, label %82
    i32 3, label %82
    i32 2, label %82
    i32 1, label %107
  ], !prof !408

82:                                               ; preds = %79, %79, %79
  %83 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %80, i64 0, i32 25
  %84 = load ptr, ptr %83, align 8, !tbaa !409
  %85 = icmp ne ptr %84, null
  %86 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %80, i64 0, i32 20
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  %89 = select i1 %85, i1 true, i1 %88, !prof !410
  br i1 %89, label %92, label %90, !prof !410

90:                                               ; preds = %82
  %91 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %80, i1 noundef zeroext false)
  store ptr %91, ptr %83, align 8, !tbaa !409
  br label %92

92:                                               ; preds = %82, %90
  %93 = load ptr, ptr %83, align 8, !tbaa !409
  %94 = load ptr, ptr %93, align 8, !tbaa !163
  %95 = getelementptr inbounds ptr, ptr %94, i64 5
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %93), !prof !411
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !326
  %100 = load i32, ptr %33, align 4, !tbaa !297
  %101 = add i32 %100, -1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds ptr, ptr %99, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !240
  %105 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %104, i64 0, i32 11
  %106 = load i32, ptr %105, align 4, !tbaa !412
  br label %108

107:                                              ; preds = %79
  br label %108

108:                                              ; preds = %92, %107, %79, %31
  %109 = phi i8 [ 0, %31 ], [ 0, %92 ], [ 1, %107 ], [ 0, %79 ]
  %110 = phi i32 [ -2, %31 ], [ %106, %92 ], [ -2, %107 ], [ -2, %79 ]
  %111 = phi ptr [ null, %31 ], [ %93, %92 ], [ null, %107 ], [ null, %79 ]
  %112 = phi ptr [ null, %31 ], [ %97, %92 ], [ null, %107 ], [ null, %79 ]
  %113 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %32)
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %115 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !326
  %118 = load i32, ptr %33, align 4, !tbaa !297
  %119 = add i32 %118, -1
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds ptr, ptr %117, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !240
  %123 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %122, i64 0, i32 8
  store i8 %115, ptr %123, align 8, !tbaa !399
  %124 = load i32, ptr %5, align 4, !tbaa !308
  %125 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %122, i64 0, i32 16
  store i32 %124, ptr %125, align 4, !tbaa !372
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  %127 = load i8, ptr %126, align 2, !range !285
  %128 = icmp ne i8 %127, 0
  %129 = select i1 %35, i1 %128, i1 false, !prof !401
  br i1 %129, label %130, label %144, !prof !413

130:                                              ; preds = %108
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %132 = load ptr, ptr %131, align 8, !tbaa !414
  %133 = icmp eq ptr %132, null
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %135 = load ptr, ptr %134, align 8
  %136 = icmp eq ptr %135, null
  %137 = select i1 %133, i1 %136, i1 false, !prof !288
  br i1 %137, label %144, label %138, !prof !288

138:                                              ; preds = %130
  br i1 %133, label %140, label %139

139:                                              ; preds = %138
  call void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %132)
  br label %140

140:                                              ; preds = %139, %138
  %141 = load ptr, ptr %134, align 8, !tbaa !415
  %142 = icmp eq ptr %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %140
  call void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %141, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  br label %144

144:                                              ; preds = %130, %140, %143, %108
  %145 = icmp eq i32 %43, 0
  br i1 %145, label %147, label %146, !prof !416

146:                                              ; preds = %144
  call void @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1024) %0, i32 noundef %43)
  br label %147

147:                                              ; preds = %146, %144
  %148 = load ptr, ptr %15, align 8, !tbaa !195
  %149 = load i32, ptr %14, align 8, !tbaa !189
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i16, ptr %148, i64 %150
  store i16 0, ptr %151, align 2, !tbaa !196
  %152 = load i32, ptr %44, align 4, !tbaa !186
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %241, !prof !417

154:                                              ; preds = %147
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 24
  %156 = load i8, ptr %155, align 2, !tbaa !418, !range !285, !noundef !286
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %229, !prof !419

158:                                              ; preds = %154
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %160 = load ptr, ptr %159, align 8, !tbaa !389
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %162 = load i32, ptr %161, align 4, !tbaa !420
  %163 = load ptr, ptr %160, align 8, !tbaa !163
  %164 = getelementptr inbounds ptr, ptr %163, i64 11
  %165 = load ptr, ptr %164, align 8
  %166 = call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %160, i32 noundef %162, ptr noundef null, ptr noundef %148, i32 noundef -2), !prof !421
  %167 = icmp eq ptr %166, null
  br i1 %167, label %229, label %168, !prof !419

168:                                              ; preds = %158
  %169 = load ptr, ptr %166, align 8, !tbaa !163
  %170 = getelementptr inbounds ptr, ptr %169, i64 8
  %171 = load ptr, ptr %170, align 8
  %172 = call noundef zeroext i1 %171(ptr noundef nonnull align 8 dereferenceable(33) %166)
  br i1 %172, label %173, label %229

173:                                              ; preds = %168
  %174 = load ptr, ptr %166, align 8, !tbaa !163
  %175 = getelementptr inbounds ptr, ptr %174, i64 6
  %176 = load ptr, ptr %175, align 8
  %177 = call noundef nonnull align 8 dereferenceable(16) ptr %176(ptr noundef nonnull align 8 dereferenceable(33) %166)
  %178 = load ptr, ptr %177, align 8, !tbaa !163
  %179 = getelementptr inbounds ptr, ptr %178, i64 13
  %180 = load ptr, ptr %179, align 8
  %181 = call noundef i32 %180(ptr noundef nonnull align 8 dereferenceable(16) %177)
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %229, label %183

183:                                              ; preds = %173, %222
  %184 = phi i32 [ %223, %222 ], [ 0, %173 ]
  %185 = load ptr, ptr %177, align 8, !tbaa !163
  %186 = getelementptr inbounds ptr, ptr %185, i64 14
  %187 = load ptr, ptr %186, align 8
  %188 = call noundef nonnull align 8 dereferenceable(56) ptr %187(ptr noundef nonnull align 8 dereferenceable(16) %177, i32 noundef %184)
  %189 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %188, i64 0, i32 1
  %190 = load i32, ptr %189, align 8, !tbaa !422
  %191 = icmp ult i32 %190, 2
  br i1 %191, label %192, label %222

192:                                              ; preds = %183
  %193 = load ptr, ptr %188, align 8, !tbaa !163
  %194 = getelementptr inbounds ptr, ptr %193, i64 5
  %195 = load ptr, ptr %194, align 8
  %196 = call noundef ptr %195(ptr noundef nonnull align 8 dereferenceable(56) %188)
  %197 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %196, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6)
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %219, label %199

199:                                              ; preds = %192
  %200 = icmp eq ptr %196, null
  br i1 %200, label %205, label %201

201:                                              ; preds = %199
  %202 = load i16, ptr %196, align 2, !tbaa !196
  %203 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !196
  %204 = icmp eq i16 %202, %203
  br i1 %204, label %208, label %222

205:                                              ; preds = %199
  %206 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !196
  %207 = icmp eq i16 %206, 0
  br i1 %207, label %219, label %222

208:                                              ; preds = %201, %213
  %209 = phi i16 [ %216, %213 ], [ %202, %201 ]
  %210 = phi ptr [ %215, %213 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %201 ]
  %211 = phi ptr [ %214, %213 ], [ %196, %201 ]
  %212 = icmp eq i16 %209, 0
  br i1 %212, label %219, label %213

213:                                              ; preds = %208
  %214 = getelementptr inbounds i16, ptr %211, i64 1
  %215 = getelementptr inbounds i16, ptr %210, i64 1
  %216 = load i16, ptr %214, align 2, !tbaa !196
  %217 = load i16, ptr %215, align 2, !tbaa !196
  %218 = icmp eq i16 %216, %217
  br i1 %218, label %208, label %222, !llvm.loop !346

219:                                              ; preds = %208, %205, %192
  %220 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %188, i64 0, i32 7
  %221 = load ptr, ptr %220, align 8, !tbaa !427
  call void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %196, ptr noundef %221)
  br label %222

222:                                              ; preds = %213, %201, %205, %219, %183
  %223 = add nuw i32 %184, 1
  %224 = load ptr, ptr %177, align 8, !tbaa !163
  %225 = getelementptr inbounds ptr, ptr %224, i64 13
  %226 = load ptr, ptr %225, align 8
  %227 = call noundef i32 %226(ptr noundef nonnull align 8 dereferenceable(16) %177)
  %228 = icmp ult i32 %223, %227
  br i1 %228, label %183, label %229, !llvm.loop !428

229:                                              ; preds = %222, %173, %158, %168, %154
  %230 = phi ptr [ null, %154 ], [ %166, %168 ], [ null, %158 ], [ %166, %173 ], [ %166, %222 ]
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %241, !prof !419

232:                                              ; preds = %229
  %233 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %234 = load ptr, ptr %233, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %235 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %234, ptr noundef %148, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237, !prof !429

237:                                              ; preds = %232
  %238 = load ptr, ptr %235, align 8, !tbaa !430
  br label %239

239:                                              ; preds = %232, %237
  %240 = phi ptr [ %238, %237 ], [ null, %232 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %241

241:                                              ; preds = %229, %239, %147
  %242 = phi ptr [ %230, %229 ], [ %240, %239 ], [ null, %147 ]
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %244 = load i32, ptr %5, align 4, !tbaa !308
  %245 = call noundef i32 @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %148, ptr noundef nonnull align 8 dereferenceable(40) %243, i16 noundef signext 1, i32 noundef %244)
  %246 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %247 = icmp eq i8 %246, 0
  %248 = icmp eq ptr %112, null
  br i1 %248, label %267, label %249, !prof !306

249:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #16
  %250 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %251 = load ptr, ptr %250, align 8, !tbaa !195
  %252 = load i32, ptr %243, align 8, !tbaa !189
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds i16, ptr %251, i64 %253
  store i16 0, ptr %254, align 2, !tbaa !196
  %255 = load i32, ptr %5, align 4, !tbaa !308
  %256 = sext i32 %255 to i64
  %257 = getelementptr i16, ptr %148, i64 %256
  %258 = getelementptr i16, ptr %257, i64 1
  %259 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %260 = load ptr, ptr %259, align 8, !tbaa !201
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %251, ptr noundef %258, i32 noundef %245, ptr noundef %260)
  %261 = add i32 %113, -1
  %262 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull %7, ptr noundef nonnull %112, ptr noundef %111, i32 noundef %261)
          to label %263 unwind label %265

263:                                              ; preds = %249
  %264 = zext i1 %262 to i8
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %267

265:                                              ; preds = %249
  %266 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #16
  br label %1348

267:                                              ; preds = %263, %241
  %268 = phi i8 [ %264, %263 ], [ %109, %241 ]
  %269 = load i32, ptr %5, align 4, !tbaa !308
  %270 = sext i32 %269 to i64
  %271 = getelementptr i16, ptr %148, i64 %270
  %272 = getelementptr i16, ptr %271, i64 1
  %273 = load i8, ptr %126, align 2, !tbaa !432, !range !285, !noundef !286
  %274 = icmp eq i8 %273, 0
  br i1 %274, label %394, label %275, !prof !417

275:                                              ; preds = %267
  %276 = load i32, ptr %44, align 4, !tbaa !186
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %285, !prof !433

278:                                              ; preds = %275
  %279 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %245)
  %280 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %279)
  br i1 %280, label %285, label %281

281:                                              ; preds = %278
  %282 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %283 = load ptr, ptr %282, align 8, !tbaa !269
  %284 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %245)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %283, i32 noundef 72, ptr noundef %284, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %285

285:                                              ; preds = %278, %281, %275
  %286 = load i32, ptr %44, align 4, !tbaa !186
  %287 = icmp eq i32 %286, 1
  br i1 %287, label %288, label %394, !prof !434

288:                                              ; preds = %285
  %289 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %290 = load ptr, ptr %289, align 8, !tbaa !389
  %291 = load ptr, ptr %290, align 8, !tbaa !163
  %292 = getelementptr inbounds ptr, ptr %291, i64 11
  %293 = load ptr, ptr %292, align 8
  %294 = call noundef ptr %293(ptr noundef nonnull align 8 dereferenceable(8) %290, i32 noundef %245, ptr noundef %272, ptr noundef %148, i32 noundef %110), !prof !435
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %394, !prof !436

296:                                              ; preds = %288
  %297 = icmp ne i32 %110, -2
  %298 = load ptr, ptr %289, align 8, !tbaa !389
  %299 = load ptr, ptr %298, align 8, !tbaa !163
  %300 = getelementptr inbounds ptr, ptr %299, i64 6
  %301 = load ptr, ptr %300, align 8
  %302 = call noundef ptr %301(ptr noundef nonnull align 8 dereferenceable(8) %298), !prof !437
  %303 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %304 = load ptr, ptr %303, align 8, !tbaa !438
  %305 = load ptr, ptr %304, align 8, !tbaa !163
  %306 = getelementptr inbounds ptr, ptr %305, i64 9
  %307 = load ptr, ptr %306, align 8
  %308 = call noundef i32 %307(ptr noundef nonnull align 8 dereferenceable(40) %304, ptr noundef %302), !prof !439
  %309 = icmp eq i32 %308, %245
  br i1 %309, label %317, label %310, !prof !440

310:                                              ; preds = %296
  %311 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %245)
  %312 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %311)
  br i1 %312, label %318, label %313

313:                                              ; preds = %310
  %314 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %315 = load ptr, ptr %314, align 8, !tbaa !269
  %316 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %245)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %315, i32 noundef 72, ptr noundef %316, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %324

317:                                              ; preds = %296
  br i1 %297, label %318, label %324, !prof !440

318:                                              ; preds = %310, %317
  %319 = load ptr, ptr %289, align 8, !tbaa !389
  %320 = load ptr, ptr %319, align 8, !tbaa !163
  %321 = getelementptr inbounds ptr, ptr %320, i64 11
  %322 = load ptr, ptr %321, align 8
  %323 = call noundef ptr %322(ptr noundef nonnull align 8 dereferenceable(8) %319, i32 noundef %245, ptr noundef %272, ptr noundef %148, i32 noundef -2), !prof !441
  br label %324

324:                                              ; preds = %313, %318, %317
  %325 = phi ptr [ %323, %318 ], [ null, %317 ], [ null, %313 ]
  %326 = icmp eq ptr %325, null
  %327 = and i1 %297, %326
  br i1 %327, label %328, label %379, !prof !442

328:                                              ; preds = %324
  %329 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %330 = load i32, ptr %329, align 4, !tbaa !420
  %331 = icmp eq i32 %245, %330
  br i1 %309, label %332, label %353

332:                                              ; preds = %328
  br i1 %331, label %379, label %333

333:                                              ; preds = %332
  %334 = load ptr, ptr %289, align 8, !tbaa !389
  %335 = load ptr, ptr %334, align 8, !tbaa !163
  %336 = getelementptr inbounds ptr, ptr %335, i64 11
  %337 = load ptr, ptr %336, align 8
  %338 = call noundef ptr %337(ptr noundef nonnull align 8 dereferenceable(8) %334, i32 noundef %330, ptr noundef %272, ptr noundef %148, i32 noundef %110)
  %339 = icmp eq ptr %338, null
  br i1 %339, label %379, label %340

340:                                              ; preds = %333
  %341 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %338, i64 0, i32 3
  %342 = load i32, ptr %341, align 8, !tbaa !332
  %343 = icmp eq i32 %342, 5
  %344 = load i8, ptr %114, align 8, !range !285
  %345 = icmp eq i8 %344, 0
  %346 = select i1 %343, i1 true, i1 %345
  br i1 %346, label %379, label %347

347:                                              ; preds = %340
  %348 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %349 = load ptr, ptr %348, align 8, !tbaa !269
  %350 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %338, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !300
  %352 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %351)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %349, i32 noundef 80, ptr noundef %352, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %379

353:                                              ; preds = %328
  br i1 %331, label %354, label %379

354:                                              ; preds = %353
  %355 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %302)
  br i1 %355, label %356, label %376

356:                                              ; preds = %354
  %357 = load ptr, ptr %289, align 8, !tbaa !389
  %358 = load ptr, ptr %357, align 8, !tbaa !163
  %359 = getelementptr inbounds ptr, ptr %358, i64 11
  %360 = load ptr, ptr %359, align 8
  %361 = call noundef ptr %360(ptr noundef nonnull align 8 dereferenceable(8) %357, i32 noundef %308, ptr noundef %272, ptr noundef %148, i32 noundef %110)
  %362 = icmp eq ptr %361, null
  br i1 %362, label %379, label %363

363:                                              ; preds = %356
  %364 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %361, i64 0, i32 3
  %365 = load i32, ptr %364, align 8, !tbaa !332
  %366 = icmp eq i32 %365, 5
  %367 = load i8, ptr %114, align 8, !range !285
  %368 = icmp eq i8 %367, 0
  %369 = select i1 %366, i1 true, i1 %368
  br i1 %369, label %379, label %370

370:                                              ; preds = %363
  %371 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %372 = load ptr, ptr %371, align 8, !tbaa !269
  %373 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %361, i64 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !300
  %375 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %374)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %372, i32 noundef 79, ptr noundef %375, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %379

376:                                              ; preds = %354
  %377 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %378 = load ptr, ptr %377, align 8, !tbaa !269
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %378, i32 noundef 72, ptr noundef %302, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %379

379:                                              ; preds = %333, %340, %347, %332, %376, %370, %363, %356, %353, %324
  %380 = phi ptr [ %338, %347 ], [ %338, %340 ], [ null, %333 ], [ null, %332 ], [ %361, %370 ], [ %361, %363 ], [ null, %356 ], [ null, %376 ], [ null, %353 ], [ %325, %324 ]
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %394, !prof !442

382:                                              ; preds = %379
  br i1 %309, label %385, label %383

383:                                              ; preds = %382
  %384 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %302)
  br label %385

385:                                              ; preds = %383, %382
  %386 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  %387 = load ptr, ptr %386, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %388 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %387, ptr noundef %272, i32 noundef %245, i32 noundef -2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %389 = icmp eq ptr %388, null
  br i1 %389, label %392, label %390

390:                                              ; preds = %385
  %391 = load ptr, ptr %388, align 8, !tbaa !443
  br label %392

392:                                              ; preds = %385, %390
  %393 = phi ptr [ %391, %390 ], [ null, %385 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %394

394:                                              ; preds = %379, %392, %285, %288, %267
  %395 = phi ptr [ %294, %288 ], [ %242, %285 ], [ %242, %267 ], [ %380, %379 ], [ %393, %392 ]
  %396 = icmp eq ptr %395, null
  br i1 %396, label %397, label %434, !prof !445

397:                                              ; preds = %394
  %398 = load i32, ptr %44, align 4, !tbaa !186
  switch i32 %398, label %434 [
    i32 0, label %399
    i32 1, label %410
  ], !prof !446

399:                                              ; preds = %397
  %400 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %401 = load ptr, ptr %400, align 8, !tbaa !201
  %402 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %401)
  %403 = load ptr, ptr %400, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %402, ptr noundef %148, i32 noundef %245, i32 noundef 1, ptr noundef %403)
          to label %404 unwind label %408, !prof !447

404:                                              ; preds = %399
  %405 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %406 = load ptr, ptr %405, align 8, !tbaa !216
  %407 = call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %406, ptr noundef nonnull %402)
  br label %430

408:                                              ; preds = %399
  %409 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %402, ptr noundef %401) #16
  br label %1348

410:                                              ; preds = %397
  %411 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %412 = load ptr, ptr %411, align 8, !tbaa !201
  %413 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %412)
  %414 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %415 = load ptr, ptr %414, align 8, !tbaa !195
  %416 = load i32, ptr %243, align 8, !tbaa !189
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds i16, ptr %415, i64 %417
  store i16 0, ptr %418, align 2, !tbaa !196
  %419 = load ptr, ptr %411, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %413, ptr noundef %415, ptr noundef %272, i32 noundef %245, i32 noundef 1, i32 noundef -2, ptr noundef %419)
          to label %420 unwind label %428

420:                                              ; preds = %410
  %421 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 15
  %422 = load ptr, ptr %421, align 8, !tbaa !217
  %423 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %413, i64 0, i32 2
  %424 = load ptr, ptr %423, align 8, !tbaa !300
  %425 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %424, i64 0, i32 6
  %426 = load ptr, ptr %425, align 8, !tbaa !448
  %427 = call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %422, ptr noundef %426, i32 noundef %245, i32 noundef -2, ptr noundef nonnull %413)
  br label %430

428:                                              ; preds = %410
  %429 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %413, ptr noundef %412) #16
  br label %1348

430:                                              ; preds = %420, %404
  %431 = phi ptr [ %402, %404 ], [ %413, %420 ]
  %432 = phi i32 [ %407, %404 ], [ %427, %420 ]
  %433 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %431, i64 0, i32 4
  store i32 %432, ptr %433, align 4, !tbaa !449
  br label %434

434:                                              ; preds = %430, %397, %394
  %435 = phi ptr [ %395, %394 ], [ null, %397 ], [ %431, %430 ]
  %436 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  %437 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 0, ptr %437, align 1, !tbaa !330
  br i1 %396, label %438, label %462, !prof !445

438:                                              ; preds = %434
  %439 = and i8 %268, 1
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %449, label %441, !prof !447

441:                                              ; preds = %438
  store i8 0, ptr %114, align 8, !tbaa !284
  %442 = load ptr, ptr %116, align 8, !tbaa !326
  %443 = load i32, ptr %33, align 4, !tbaa !297
  %444 = add i32 %443, -1
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds ptr, ptr %442, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !240
  %448 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %447, i64 0, i32 8
  store i8 0, ptr %448, align 8, !tbaa !399
  br label %492

449:                                              ; preds = %438
  %450 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %492, label %452, !prof !447

452:                                              ; preds = %449
  %453 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 3
  store i32 5, ptr %453, align 8, !tbaa !332
  %454 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %455 = load ptr, ptr %454, align 8, !tbaa !269
  %456 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !300
  %458 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %457)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %455, i32 noundef 2, ptr noundef %458, ptr noundef null, ptr noundef null, ptr noundef null)
  %459 = load i32, ptr %44, align 4, !tbaa !186
  %460 = icmp eq i32 %459, 1
  br i1 %460, label %461, label %492

461:                                              ; preds = %452
  store i8 1, ptr %437, align 1, !tbaa !330
  br label %492

462:                                              ; preds = %434
  %463 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 3
  %464 = load i32, ptr %463, align 8, !tbaa !332
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %492, label %466, !prof !450

466:                                              ; preds = %462
  %467 = icmp eq i32 %464, 0
  %468 = load i32, ptr %44, align 4
  %469 = icmp eq i32 %468, 1
  %470 = select i1 %467, i1 %469, i1 false, !prof !451
  br i1 %470, label %471, label %472, !prof !452

471:                                              ; preds = %466
  store i8 1, ptr %437, align 1, !tbaa !330
  br label %472

472:                                              ; preds = %471, %466
  %473 = and i8 %268, 1
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %483, label %475, !prof !451

475:                                              ; preds = %472
  store i8 0, ptr %114, align 8, !tbaa !284
  %476 = load ptr, ptr %116, align 8, !tbaa !326
  %477 = load i32, ptr %33, align 4, !tbaa !297
  %478 = add i32 %477, -1
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds ptr, ptr %476, i64 %479
  %481 = load ptr, ptr %480, align 8, !tbaa !240
  %482 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %481, i64 0, i32 8
  store i8 0, ptr %482, align 8, !tbaa !399
  br label %492

483:                                              ; preds = %472
  %484 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %485 = icmp eq i8 %484, 0
  br i1 %485, label %492, label %486, !prof !451

486:                                              ; preds = %483
  %487 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %488 = load ptr, ptr %487, align 8, !tbaa !269
  %489 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !300
  %491 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %490)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %488, i32 noundef 2, ptr noundef %491, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %492

492:                                              ; preds = %462, %483, %486, %475, %441, %452, %461, %449
  %493 = load ptr, ptr %17, align 8, !tbaa !309
  %494 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %493, i64 0, i32 15
  %495 = load i32, ptr %494, align 8, !tbaa !310
  call void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %32, ptr noundef %435, i32 noundef %495)
  %496 = load ptr, ptr %116, align 8, !tbaa !326
  %497 = load i32, ptr %33, align 4, !tbaa !297
  %498 = add i32 %497, -1
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds ptr, ptr %496, i64 %499
  %501 = load ptr, ptr %500, align 8, !tbaa !240
  %502 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %501, i64 0, i32 13
  store i32 %245, ptr %502, align 8, !tbaa !453
  br i1 %35, label %503, label %539, !prof !401

503:                                              ; preds = %492
  %504 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %505 = load ptr, ptr %504, align 8, !tbaa !389
  %506 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %505, ptr %506, align 8, !tbaa !454
  %507 = load i32, ptr %44, align 4, !tbaa !186
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %539, !prof !455

509:                                              ; preds = %503
  %510 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %511 = load ptr, ptr %510, align 8, !tbaa !456
  %512 = icmp eq ptr %511, null
  br i1 %512, label %513, label %539, !prof !288

513:                                              ; preds = %509
  %514 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %515 = load ptr, ptr %514, align 8, !tbaa !201
  %516 = icmp eq ptr %148, null
  br i1 %516, label %537, label %517, !prof !272

517:                                              ; preds = %513
  %518 = load i16, ptr %148, align 2, !tbaa !196
  %519 = icmp eq i16 %518, 0
  br i1 %519, label %531, label %520, !prof !272

520:                                              ; preds = %517, %520
  %521 = phi ptr [ %522, %520 ], [ %148, %517 ]
  %522 = getelementptr inbounds i16, ptr %521, i64 1
  %523 = load i16, ptr %522, align 2, !tbaa !196
  %524 = icmp eq i16 %523, 0
  br i1 %524, label %525, label %520, !prof !457, !llvm.loop !458

525:                                              ; preds = %520
  %526 = ptrtoint ptr %522 to i64
  %527 = ptrtoint ptr %148 to i64
  %528 = sub i64 %526, %527
  %529 = add i64 %528, 2
  %530 = and i64 %529, 8589934590
  br label %531

531:                                              ; preds = %525, %517
  %532 = phi i64 [ %530, %525 ], [ 2, %517 ]
  %533 = load ptr, ptr %515, align 8, !tbaa !163
  %534 = getelementptr inbounds ptr, ptr %533, i64 2
  %535 = load ptr, ptr %534, align 8
  %536 = call noundef ptr %535(ptr noundef nonnull align 8 dereferenceable(8) %515, i64 noundef %532), !prof !459
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %536, ptr nonnull align 2 %148, i64 %532, i1 false), !prof !460
  br label %537

537:                                              ; preds = %513, %531
  %538 = phi ptr [ %536, %531 ], [ null, %513 ]
  store ptr %538, ptr %510, align 8, !tbaa !456
  br label %539

539:                                              ; preds = %503, %509, %537, %492
  %540 = load i32, ptr %44, align 4, !tbaa !186
  %541 = icmp ne i32 %540, 1
  %542 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %543 = load ptr, ptr %542, align 8
  %544 = icmp eq ptr %543, null
  %545 = select i1 %541, i1 true, i1 %544, !prof !417
  br i1 %545, label %557, label %546, !prof !306

546:                                              ; preds = %539
  %547 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 2
  %548 = load i32, ptr %547, align 4, !tbaa !461
  %549 = add nsw i32 %548, 1
  store i32 %549, ptr %547, align 4, !tbaa !461
  %550 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 3
  %551 = load i32, ptr %550, align 8, !tbaa !332
  %552 = icmp eq i32 %551, 1
  br i1 %552, label %553, label %555

553:                                              ; preds = %546
  %554 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 4
  store i32 %549, ptr %554, align 4, !tbaa !462
  br label %557

555:                                              ; preds = %546
  %556 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 3
  store i32 %549, ptr %556, align 8, !tbaa !463
  br label %557

557:                                              ; preds = %553, %555, %539
  %558 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %559 = icmp eq i8 %558, 0
  br i1 %559, label %577, label %560, !prof !417

560:                                              ; preds = %557
  %561 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %562 = load ptr, ptr %561, align 8, !tbaa !269
  %563 = load ptr, ptr %562, align 8, !tbaa !163
  %564 = getelementptr inbounds ptr, ptr %563, i64 9
  %565 = load ptr, ptr %564, align 8
  call void %565(ptr noundef nonnull align 8 dereferenceable(40) %562, ptr noundef %435), !prof !464
  %566 = load ptr, ptr %561, align 8, !tbaa !269
  %567 = load ptr, ptr %566, align 8, !tbaa !163
  %568 = getelementptr inbounds ptr, ptr %567, i64 13
  %569 = load ptr, ptr %568, align 8
  %570 = call noundef zeroext i1 %569(ptr noundef nonnull align 8 dereferenceable(40) %566), !prof !465
  br i1 %570, label %571, label %577, !prof !434

571:                                              ; preds = %560
  %572 = load ptr, ptr %561, align 8, !tbaa !269
  %573 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %572, i64 0, i32 16
  %574 = load i8, ptr %573, align 8, !tbaa !356, !range !285, !noundef !286
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %577, label %576, !prof !434

576:                                              ; preds = %571
  store i8 1, ptr %437, align 1, !tbaa !330
  br label %577

577:                                              ; preds = %560, %576, %571, %557
  %578 = load i32, ptr %44, align 4, !tbaa !186
  %579 = icmp eq i32 %578, 1
  br i1 %579, label %580, label %771, !prof !466

580:                                              ; preds = %577
  %581 = load ptr, ptr %15, align 8, !tbaa !195
  %582 = load i32, ptr %14, align 8, !tbaa !189
  %583 = zext i32 %582 to i64
  %584 = getelementptr inbounds i16, ptr %581, i64 %583
  store i16 0, ptr %584, align 2, !tbaa !196
  %585 = icmp eq ptr %581, null
  br i1 %585, label %600, label %586, !prof !433

586:                                              ; preds = %580
  %587 = load i16, ptr %581, align 2, !tbaa !196
  %588 = icmp eq i16 %587, 0
  br i1 %588, label %600, label %589, !prof !433

589:                                              ; preds = %586, %589
  %590 = phi ptr [ %591, %589 ], [ %581, %586 ]
  %591 = getelementptr inbounds i16, ptr %590, i64 1
  %592 = load i16, ptr %591, align 2, !tbaa !196
  %593 = icmp eq i16 %592, 0
  br i1 %593, label %594, label %589, !prof !467, !llvm.loop !458

594:                                              ; preds = %589
  %595 = ptrtoint ptr %591 to i64
  %596 = ptrtoint ptr %581 to i64
  %597 = sub i64 %595, %596
  %598 = lshr exact i64 %597, 1
  %599 = trunc i64 %598 to i32
  br label %600

600:                                              ; preds = %594, %586, %580
  %601 = phi i32 [ %599, %594 ], [ 0, %586 ], [ 0, %580 ]
  %602 = load i32, ptr %33, align 4, !tbaa !297
  %603 = add i32 %602, -1
  %604 = load ptr, ptr %116, align 8, !tbaa !326
  %605 = zext i32 %603 to i64
  %606 = getelementptr inbounds ptr, ptr %604, i64 %605
  %607 = load ptr, ptr %606, align 8, !tbaa !240
  %608 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %607, i64 0, i32 15
  %609 = load i32, ptr %608, align 8, !tbaa !468
  %610 = icmp ugt i32 %609, %601
  br i1 %610, label %631, label %611, !prof !469

611:                                              ; preds = %600
  %612 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %607, i64 0, i32 14
  %613 = load ptr, ptr %612, align 8, !tbaa !328
  %614 = shl i32 %601, 1
  store i32 %614, ptr %608, align 8, !tbaa !468
  %615 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 12
  %616 = load ptr, ptr %615, align 8, !tbaa !470
  %617 = zext i32 %614 to i64
  %618 = shl nuw nsw i64 %617, 1
  %619 = load ptr, ptr %616, align 8, !tbaa !163
  %620 = getelementptr inbounds ptr, ptr %619, i64 2
  %621 = load ptr, ptr %620, align 8
  %622 = call noundef ptr %621(ptr noundef nonnull align 8 dereferenceable(8) %616, i64 noundef %618), !prof !471
  %623 = load ptr, ptr %116, align 8, !tbaa !326
  %624 = getelementptr inbounds ptr, ptr %623, i64 %605
  %625 = load ptr, ptr %624, align 8, !tbaa !240
  %626 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %625, i64 0, i32 14
  store ptr %622, ptr %626, align 8, !tbaa !328
  %627 = load ptr, ptr %615, align 8, !tbaa !470
  %628 = load ptr, ptr %627, align 8, !tbaa !163
  %629 = getelementptr inbounds ptr, ptr %628, i64 3
  %630 = load ptr, ptr %629, align 8
  call void %630(ptr noundef nonnull align 8 dereferenceable(8) %627, ptr noundef %613), !prof !472
  br label %631

631:                                              ; preds = %600, %611
  %632 = load ptr, ptr %116, align 8, !tbaa !326
  %633 = getelementptr inbounds ptr, ptr %632, i64 %605
  %634 = load ptr, ptr %633, align 8, !tbaa !240
  %635 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %634, i64 0, i32 14
  %636 = load ptr, ptr %635, align 8, !tbaa !328
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %636, ptr noundef %581)
  %637 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %638 = icmp eq i8 %637, 0
  br i1 %638, label %650, label %639, !prof !433

639:                                              ; preds = %631
  %640 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %641 = load ptr, ptr %640, align 8, !tbaa !269
  %642 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %641, i64 0, i32 14
  %643 = load ptr, ptr %642, align 8, !tbaa !334
  %644 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %643, i64 0, i32 1, i32 1
  %645 = load i32, ptr %644, align 4, !tbaa !338
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %653, label %647, !prof !433

647:                                              ; preds = %639
  %648 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %643)
  %649 = load ptr, ptr %648, align 8, !tbaa !240
  br label %653

650:                                              ; preds = %631
  %651 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %435, i64 0, i32 12
  %652 = load ptr, ptr %651, align 8, !tbaa !406
  br label %653

653:                                              ; preds = %647, %639, %650
  %654 = phi ptr [ %652, %650 ], [ %649, %647 ], [ null, %639 ]
  %655 = icmp eq ptr %654, null
  br i1 %655, label %753, label %656, !prof !473

656:                                              ; preds = %653
  %657 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %654, i64 0, i32 9
  %658 = load i32, ptr %657, align 4, !tbaa !474
  %659 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %654, i64 0, i32 14
  %660 = load ptr, ptr %659, align 8, !tbaa !475
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 35, ptr %8, align 4
  br label %661

661:                                              ; preds = %661, %656
  %662 = phi ptr [ %8, %656 ], [ %663, %661 ]
  %663 = getelementptr inbounds i16, ptr %662, i64 1
  %664 = load i16, ptr %663, align 2, !tbaa !196
  %665 = icmp eq i16 %664, 0
  br i1 %665, label %666, label %661, !prof !476, !llvm.loop !458

666:                                              ; preds = %661
  %667 = ptrtoint ptr %663 to i64
  %668 = ptrtoint ptr %8 to i64
  %669 = sub i64 %667, %668
  %670 = lshr exact i64 %669, 1
  %671 = trunc i64 %670 to i32
  %672 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %660, ptr noundef nonnull %8, i32 noundef %671)
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %752, label %674, !prof !477

674:                                              ; preds = %666
  %675 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %660, i16 noundef zeroext 44)
  %676 = icmp sgt i32 %675, 0
  br i1 %676, label %677, label %752, !prof !476

677:                                              ; preds = %674
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #16
  %678 = add nuw nsw i32 %675, 1
  %679 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %680 = load ptr, ptr %679, align 8, !tbaa !201
  store i32 0, ptr %9, align 8, !tbaa !189
  %681 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 1
  store i32 %678, ptr %681, align 4, !tbaa !190
  %682 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 2
  store i32 0, ptr %682, align 8, !tbaa !191
  %683 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 3
  store i8 0, ptr %683, align 4, !tbaa !192
  %684 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 4
  store ptr %680, ptr %684, align 8, !tbaa !193
  %685 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 5
  %686 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %687 = add nuw i32 %675, 2
  %688 = zext i32 %687 to i64
  %689 = shl nuw nsw i64 %688, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %685, i8 0, i64 16, i1 false)
  %690 = load ptr, ptr %680, align 8, !tbaa !163
  %691 = getelementptr inbounds ptr, ptr %690, i64 2
  %692 = load ptr, ptr %691, align 8
  %693 = call noundef ptr %692(ptr noundef nonnull align 8 dereferenceable(8) %680, i64 noundef %689), !prof !478
  store ptr %693, ptr %686, align 8, !tbaa !195
  store i16 0, ptr %693, align 2, !tbaa !196
  %694 = load i32, ptr %9, align 8, !tbaa !189
  %695 = add i32 %694, %675
  %696 = load i32, ptr %681, align 4, !tbaa !190
  %697 = icmp ult i32 %695, %696
  br i1 %697, label %699, label %698, !prof !479

698:                                              ; preds = %677
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef %675)
          to label %699 unwind label %727

699:                                              ; preds = %698, %677
  %700 = load ptr, ptr %686, align 8, !tbaa !195
  %701 = load i32, ptr %9, align 8, !tbaa !189
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds i16, ptr %700, i64 %702
  %704 = shl nuw i32 %675, 1
  %705 = zext i32 %704 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %703, ptr align 2 %660, i64 %705, i1 false), !prof !480
  %706 = load i32, ptr %9, align 8, !tbaa !189
  %707 = add i32 %706, %675
  store i32 %707, ptr %9, align 8, !tbaa !189
  %708 = load ptr, ptr %686, align 8, !tbaa !195
  %709 = zext i32 %707 to i64
  %710 = getelementptr inbounds i16, ptr %708, i64 %709
  store i16 0, ptr %710, align 2, !tbaa !196
  %711 = invoke noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %708)
          to label %712 unwind label %729, !prof !476

712:                                              ; preds = %699
  %713 = load i8, ptr %114, align 8, !range !285
  %714 = icmp ne i8 %713, 0
  %715 = xor i1 %711, true
  %716 = select i1 %715, i1 %714, i1 false, !prof !477
  %717 = and i8 %268, 1
  %718 = icmp eq i8 %717, 0
  %719 = and i1 %718, %716
  br i1 %719, label %720, label %731, !prof !477

720:                                              ; preds = %712
  %721 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %722 = load ptr, ptr %721, align 8, !tbaa !269
  %723 = load ptr, ptr %686, align 8, !tbaa !195
  %724 = load i32, ptr %9, align 8, !tbaa !189
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds i16, ptr %723, i64 %725
  store i16 0, ptr %726, align 2, !tbaa !196
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %722, i32 noundef 72, ptr noundef %723, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %731 unwind label %729

727:                                              ; preds = %698
  %728 = landingpad { ptr, i32 }
          cleanup
  br label %741

729:                                              ; preds = %720, %699
  %730 = landingpad { ptr, i32 }
          cleanup
  br label %741

731:                                              ; preds = %720, %712
  %732 = load ptr, ptr %684, align 8, !tbaa !193
  %733 = load ptr, ptr %686, align 8, !tbaa !195
  %734 = load ptr, ptr %732, align 8, !tbaa !163
  %735 = getelementptr inbounds ptr, ptr %734, i64 3
  %736 = load ptr, ptr %735, align 8
  invoke void %736(ptr noundef nonnull align 8 dereferenceable(8) %732, ptr noundef %733)
          to label %740 unwind label %737, !prof !481

737:                                              ; preds = %731
  %738 = landingpad { ptr, i32 }
          catch ptr null
  %739 = extractvalue { ptr, i32 } %738, 0
  call void @__clang_call_terminate(ptr %739) #17
  unreachable

740:                                              ; preds = %731
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  br label %752

741:                                              ; preds = %729, %727
  %742 = phi { ptr, i32 } [ %730, %729 ], [ %728, %727 ]
  %743 = load ptr, ptr %684, align 8, !tbaa !193
  %744 = load ptr, ptr %686, align 8, !tbaa !195
  %745 = load ptr, ptr %743, align 8, !tbaa !163
  %746 = getelementptr inbounds ptr, ptr %745, i64 3
  %747 = load ptr, ptr %746, align 8
  invoke void %747(ptr noundef nonnull align 8 dereferenceable(8) %743, ptr noundef %744)
          to label %751 unwind label %748

748:                                              ; preds = %741
  %749 = landingpad { ptr, i32 }
          catch ptr null
  %750 = extractvalue { ptr, i32 } %749, 0
  call void @__clang_call_terminate(ptr %750) #17
  unreachable

751:                                              ; preds = %741
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %1348

752:                                              ; preds = %674, %740, %666
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  br label %753

753:                                              ; preds = %752, %653
  %754 = phi i32 [ %658, %752 ], [ %110, %653 ]
  %755 = load ptr, ptr %116, align 8, !tbaa !326
  %756 = load i32, ptr %33, align 4, !tbaa !297
  %757 = add i32 %756, -1
  %758 = zext i32 %757 to i64
  %759 = getelementptr inbounds ptr, ptr %755, i64 %758
  %760 = load ptr, ptr %759, align 8, !tbaa !240
  %761 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %760, i64 0, i32 11
  store i32 %754, ptr %761, align 4, !tbaa !412
  %762 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  %763 = load i32, ptr %762, align 8, !tbaa !187
  %764 = icmp ult i32 %113, %763
  br i1 %764, label %766, label %765, !prof !434

765:                                              ; preds = %753
  call void @_ZN11xercesc_2_712IGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  br label %766

766:                                              ; preds = %765, %753
  %767 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %768 = load ptr, ptr %767, align 8, !tbaa !188
  %769 = zext i32 %113 to i64
  %770 = getelementptr inbounds i32, ptr %768, i64 %769
  store i32 0, ptr %770, align 4, !tbaa !308
  br label %771

771:                                              ; preds = %766, %577
  %772 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %773 = load ptr, ptr %772, align 8, !tbaa !389
  %774 = load ptr, ptr %116, align 8, !tbaa !326
  %775 = load i32, ptr %33, align 4, !tbaa !297
  %776 = add i32 %775, -1
  %777 = zext i32 %776 to i64
  %778 = getelementptr inbounds ptr, ptr %774, i64 %777
  %779 = load ptr, ptr %778, align 8, !tbaa !240
  %780 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %779, i64 0, i32 12
  store ptr %773, ptr %780, align 8, !tbaa !388
  br i1 %35, label %781, label %811, !prof !401

781:                                              ; preds = %771
  %782 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %816, label %784, !prof !455

784:                                              ; preds = %781
  %785 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %786 = load ptr, ptr %785, align 8, !tbaa !456
  %787 = icmp eq ptr %786, null
  br i1 %787, label %816, label %788, !prof !272

788:                                              ; preds = %784
  %789 = icmp eq ptr %148, null
  br i1 %789, label %794, label %790, !prof !272

790:                                              ; preds = %788
  %791 = load i16, ptr %148, align 2, !tbaa !196
  %792 = load i16, ptr %786, align 2, !tbaa !196
  %793 = icmp eq i16 %791, %792
  br i1 %793, label %797, label %808, !prof !288

794:                                              ; preds = %788
  %795 = load i16, ptr %786, align 2, !tbaa !196
  %796 = icmp eq i16 %795, 0
  br i1 %796, label %816, label %808

797:                                              ; preds = %790, %802
  %798 = phi i16 [ %805, %802 ], [ %791, %790 ]
  %799 = phi ptr [ %804, %802 ], [ %786, %790 ]
  %800 = phi ptr [ %803, %802 ], [ %148, %790 ]
  %801 = icmp eq i16 %798, 0
  br i1 %801, label %816, label %802, !prof !482

802:                                              ; preds = %797
  %803 = getelementptr inbounds i16, ptr %800, i64 1
  %804 = getelementptr inbounds i16, ptr %799, i64 1
  %805 = load i16, ptr %803, align 2, !tbaa !196
  %806 = load i16, ptr %804, align 2, !tbaa !196
  %807 = icmp eq i16 %805, %806
  br i1 %807, label %797, label %808, !prof !483, !llvm.loop !346

808:                                              ; preds = %802, %790, %794
  %809 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %810 = load ptr, ptr %809, align 8, !tbaa !269
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %810, i32 noundef 5)
  br label %816

811:                                              ; preds = %771
  br i1 %247, label %816, label %812, !prof !484

812:                                              ; preds = %811
  %813 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 2
  %814 = load ptr, ptr %813, align 8, !tbaa !300
  %815 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %32, ptr noundef %814, i1 noundef zeroext true)
  br label %816

816:                                              ; preds = %797, %784, %794, %808, %811, %812, %781
  %817 = load ptr, ptr %542, align 8, !tbaa !344
  %818 = icmp ne ptr %817, null
  %819 = load i32, ptr %44, align 4
  %820 = icmp eq i32 %819, 1
  %821 = select i1 %818, i1 %820, i1 false, !prof !485
  br i1 %821, label %822, label %826, !prof !485

822:                                              ; preds = %816
  %823 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %824 = load ptr, ptr %823, align 8, !tbaa !221
  %825 = getelementptr inbounds %"class.xercesc_2_7::PSVIAttributeList", ptr %824, i64 0, i32 4
  store i32 0, ptr %825, align 8, !tbaa !486
  br label %826

826:                                              ; preds = %822, %816
  %827 = load ptr, ptr %41, align 8, !tbaa !198
  %828 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %829 = load ptr, ptr %828, align 8, !tbaa !487
  %830 = call noundef i32 @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(40) %827, i32 noundef %43, ptr noundef %435, ptr noundef nonnull align 8 dereferenceable(40) %829)
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %918, label %832, !prof !416

832:                                              ; preds = %826
  %833 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %834 = load ptr, ptr %833, align 8, !tbaa !219
  %835 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %834, i64 0, i32 5
  %836 = load i32, ptr %835, align 8, !tbaa !255
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %875, label %838, !prof !488

838:                                              ; preds = %832
  %839 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %834, i64 0, i32 3
  %840 = load i32, ptr %839, align 8, !tbaa !253
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %845, label %842, !prof !489

842:                                              ; preds = %838
  %843 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %834, i64 0, i32 2
  %844 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %834, i64 0, i32 1
  br label %846

845:                                              ; preds = %868, %838
  store i32 0, ptr %835, align 8, !tbaa !255
  br label %875

846:                                              ; preds = %868, %842
  %847 = phi i64 [ 0, %842 ], [ %871, %868 ]
  %848 = load ptr, ptr %843, align 8, !tbaa !252
  %849 = getelementptr inbounds ptr, ptr %848, i64 %847
  %850 = load ptr, ptr %849, align 8, !tbaa !240
  %851 = icmp eq ptr %850, null
  br i1 %851, label %868, label %852, !prof !490

852:                                              ; preds = %846, %862
  %853 = phi ptr [ %855, %862 ], [ %850, %846 ]
  %854 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %853, i64 0, i32 1
  %855 = load ptr, ptr %854, align 8, !tbaa !491
  %856 = load i8, ptr %844, align 8, !tbaa !251, !range !285, !noundef !286
  %857 = icmp eq i8 %856, 0
  br i1 %857, label %862, label %858, !prof !493

858:                                              ; preds = %852
  %859 = load ptr, ptr %853, align 8, !tbaa !494
  %860 = icmp eq ptr %859, null
  br i1 %860, label %862, label %861

861:                                              ; preds = %858
  call void @_ZdlPv(ptr noundef %859) #19
  br label %862

862:                                              ; preds = %861, %858, %852
  %863 = load ptr, ptr %834, align 8, !tbaa !249
  %864 = load ptr, ptr %863, align 8, !tbaa !163
  %865 = getelementptr inbounds ptr, ptr %864, i64 3
  %866 = load ptr, ptr %865, align 8
  call void %866(ptr noundef nonnull align 8 dereferenceable(8) %863, ptr noundef nonnull %853), !prof !495
  %867 = icmp eq ptr %855, null
  br i1 %867, label %868, label %852, !prof !493, !llvm.loop !496

868:                                              ; preds = %862, %846
  %869 = load ptr, ptr %843, align 8, !tbaa !252
  %870 = getelementptr inbounds ptr, ptr %869, i64 %847
  store ptr null, ptr %870, align 8, !tbaa !240
  %871 = add nuw nsw i64 %847, 1
  %872 = load i32, ptr %839, align 8, !tbaa !253
  %873 = zext i32 %872 to i64
  %874 = icmp ult i64 %871, %873
  br i1 %874, label %846, label %845, !prof !497, !llvm.loop !498

875:                                              ; preds = %832, %845
  %876 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 19
  %877 = load ptr, ptr %876, align 8, !tbaa !220
  %878 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %877, i64 0, i32 4
  %879 = load i32, ptr %878, align 4, !tbaa !266
  %880 = icmp eq i32 %879, 0
  br i1 %880, label %918, label %881, !prof !499

881:                                              ; preds = %875
  %882 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %877, i64 0, i32 3
  %883 = load i32, ptr %882, align 8, !tbaa !265
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %888, label %885

885:                                              ; preds = %881
  %886 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %877, i64 0, i32 2
  %887 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %877, i64 0, i32 1
  br label %889

888:                                              ; preds = %911, %881
  store i32 0, ptr %878, align 4, !tbaa !266
  br label %918

889:                                              ; preds = %911, %885
  %890 = phi i64 [ 0, %885 ], [ %914, %911 ]
  %891 = load ptr, ptr %886, align 8, !tbaa !264
  %892 = getelementptr inbounds ptr, ptr %891, i64 %890
  %893 = load ptr, ptr %892, align 8, !tbaa !240
  %894 = icmp eq ptr %893, null
  br i1 %894, label %911, label %895

895:                                              ; preds = %889, %905
  %896 = phi ptr [ %898, %905 ], [ %893, %889 ]
  %897 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %896, i64 0, i32 1
  %898 = load ptr, ptr %897, align 8, !tbaa !500
  %899 = load i8, ptr %887, align 8, !tbaa !263, !range !285, !noundef !286
  %900 = icmp eq i8 %899, 0
  br i1 %900, label %905, label %901

901:                                              ; preds = %895
  %902 = load ptr, ptr %896, align 8, !tbaa !502
  %903 = icmp eq ptr %902, null
  br i1 %903, label %905, label %904

904:                                              ; preds = %901
  call void @_ZdlPv(ptr noundef %902) #19
  br label %905

905:                                              ; preds = %904, %901, %895
  %906 = load ptr, ptr %877, align 8, !tbaa !261
  %907 = load ptr, ptr %906, align 8, !tbaa !163
  %908 = getelementptr inbounds ptr, ptr %907, i64 3
  %909 = load ptr, ptr %908, align 8
  call void %909(ptr noundef nonnull align 8 dereferenceable(8) %906, ptr noundef nonnull %896)
  %910 = icmp eq ptr %898, null
  br i1 %910, label %911, label %895, !llvm.loop !503

911:                                              ; preds = %905, %889
  %912 = load ptr, ptr %886, align 8, !tbaa !264
  %913 = getelementptr inbounds ptr, ptr %912, i64 %890
  store ptr null, ptr %913, align 8, !tbaa !240
  %914 = add nuw nsw i64 %890, 1
  %915 = load i32, ptr %882, align 8, !tbaa !265
  %916 = zext i32 %915 to i64
  %917 = icmp ult i64 %914, %916
  br i1 %917, label %889, label %888, !llvm.loop !504

918:                                              ; preds = %888, %875, %826
  %919 = load ptr, ptr %772, align 8, !tbaa !389
  %920 = icmp ne ptr %919, null
  %921 = load i32, ptr %44, align 4
  %922 = icmp eq i32 %921, 1
  %923 = select i1 %920, i1 %922, i1 false, !prof !306
  br i1 %923, label %924, label %942, !prof !466

924:                                              ; preds = %918
  %925 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %926 = icmp ne i8 %925, 0
  %927 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %928 = load i8, ptr %927, align 4, !range !285
  %929 = icmp ne i8 %928, 0
  %930 = select i1 %926, i1 %929, i1 false, !prof !434
  %931 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %932 = load ptr, ptr %931, align 8
  %933 = icmp ne ptr %932, null
  %934 = select i1 %930, i1 %933, i1 false, !prof !434
  br i1 %934, label %935, label %942, !prof !434

935:                                              ; preds = %924
  %936 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %937 = load ptr, ptr %936, align 8, !tbaa !195
  %938 = load i32, ptr %243, align 8, !tbaa !189
  %939 = zext i32 %938 to i64
  %940 = getelementptr inbounds i16, ptr %937, i64 %939
  store i16 0, ptr %940, align 2, !tbaa !196
  %941 = load ptr, ptr %828, align 8, !tbaa !487
  call void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48) %932, ptr noundef %435, i32 noundef %113, i32 noundef %245, ptr noundef %937, ptr noundef nonnull align 8 dereferenceable(40) %941, i32 noundef %830)
  br label %942

942:                                              ; preds = %924, %935, %918
  %943 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %944 = load ptr, ptr %943, align 8, !tbaa !278
  %945 = icmp eq ptr %944, null
  br i1 %945, label %956, label %946, !prof !485

946:                                              ; preds = %942
  %947 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %948 = load ptr, ptr %947, align 8, !tbaa !195
  %949 = load i32, ptr %243, align 8, !tbaa !189
  %950 = zext i32 %949 to i64
  %951 = getelementptr inbounds i16, ptr %948, i64 %950
  store i16 0, ptr %951, align 2, !tbaa !196
  %952 = load ptr, ptr %828, align 8, !tbaa !487
  %953 = load ptr, ptr %944, align 8, !tbaa !163
  %954 = getelementptr inbounds ptr, ptr %953, i64 11
  %955 = load ptr, ptr %954, align 8
  call void %955(ptr noundef nonnull align 8 dereferenceable(8) %944, ptr noundef nonnull align 8 dereferenceable(33) %435, i32 noundef %245, ptr noundef %948, ptr noundef nonnull align 8 dereferenceable(40) %952, i32 noundef %830, i1 noundef zeroext false, i1 noundef zeroext %35), !prof !505
  br label %956

956:                                              ; preds = %946, %942
  %957 = load ptr, ptr %542, align 8, !tbaa !344
  %958 = icmp ne ptr %957, null
  %959 = load i32, ptr %44, align 4
  %960 = icmp eq i32 %959, 1
  %961 = select i1 %958, i1 %960, i1 false, !prof !485
  br i1 %961, label %962, label %980, !prof !485

962:                                              ; preds = %956
  %963 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 2
  %964 = load ptr, ptr %963, align 8, !tbaa !300
  %965 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %964, i64 0, i32 6
  %966 = load ptr, ptr %965, align 8, !tbaa !448
  %967 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %968 = load ptr, ptr %967, align 8, !tbaa !438
  %969 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %964, i64 0, i32 4
  %970 = load i32, ptr %969, align 4, !tbaa !506
  %971 = load ptr, ptr %968, align 8, !tbaa !163
  %972 = getelementptr inbounds ptr, ptr %971, i64 10
  %973 = load ptr, ptr %972, align 8
  %974 = call noundef ptr %973(ptr noundef nonnull align 8 dereferenceable(40) %968, i32 noundef %970)
  %975 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 20
  %976 = load ptr, ptr %975, align 8, !tbaa !221
  %977 = load ptr, ptr %957, align 8, !tbaa !163
  %978 = getelementptr inbounds ptr, ptr %977, i64 4
  %979 = load ptr, ptr %978, align 8
  call void %979(ptr noundef nonnull align 8 dereferenceable(8) %957, ptr noundef %966, ptr noundef %974, ptr noundef %976)
  br label %980

980:                                              ; preds = %962, %956
  %981 = load i8, ptr %6, align 1, !tbaa !292, !range !285, !noundef !286
  %982 = icmp eq i8 %981, 0
  br i1 %982, label %1219, label %983, !prof !507

983:                                              ; preds = %980
  %984 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %32)
  %985 = load i32, ptr %44, align 4, !tbaa !186
  %986 = icmp eq i32 %985, 1
  br i1 %986, label %987, label %1049, !prof !508

987:                                              ; preds = %983
  %988 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %989 = icmp eq i8 %988, 0
  br i1 %989, label %1047, label %990, !prof !509

990:                                              ; preds = %987
  %991 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 3
  %992 = load i32, ptr %991, align 8, !tbaa !332
  %993 = icmp eq i32 %992, 1
  br i1 %993, label %994, label %1047, !prof !510

994:                                              ; preds = %990
  %995 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %996 = load ptr, ptr %995, align 8, !tbaa !269
  %997 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %996, i64 0, i32 14
  %998 = load ptr, ptr %997, align 8, !tbaa !334
  %999 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %998, i64 0, i32 1, i32 1
  %1000 = load i32, ptr %999, align 4, !tbaa !338
  %1001 = icmp eq i32 %1000, 0
  br i1 %1001, label %1005, label %1002, !prof !509

1002:                                             ; preds = %994
  %1003 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %998)
  %1004 = load ptr, ptr %1003, align 8, !tbaa !240
  br label %1005

1005:                                             ; preds = %994, %1002
  %1006 = phi ptr [ %1004, %1002 ], [ null, %994 ]
  %1007 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 6
  store ptr %1006, ptr %1007, align 8, !tbaa !340
  %1008 = icmp eq ptr %1006, null
  br i1 %1008, label %1009, label %1013, !prof !509

1009:                                             ; preds = %1005
  %1010 = load ptr, ptr %995, align 8, !tbaa !269
  %1011 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1010, i64 0, i32 7
  %1012 = load ptr, ptr %1011, align 8, !tbaa !342
  br label %1013

1013:                                             ; preds = %1005, %1009
  %1014 = phi ptr [ %1012, %1009 ], [ null, %1005 ]
  %1015 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  store ptr %1014, ptr %1015, align 8, !tbaa !343
  %1016 = load ptr, ptr %542, align 8, !tbaa !344
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1049, label %1018, !prof !510

1018:                                             ; preds = %1013
  %1019 = load ptr, ptr %995, align 8, !tbaa !269
  %1020 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1019, i64 0, i32 9
  %1021 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1019, i64 0, i32 9, i32 6
  %1022 = load ptr, ptr %1021, align 8, !tbaa !195
  %1023 = load i32, ptr %1020, align 8, !tbaa !189
  %1024 = zext i32 %1023 to i64
  %1025 = getelementptr inbounds i16, ptr %1022, i64 %1024
  store i16 0, ptr %1025, align 2, !tbaa !196
  %1026 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %1022, ptr %1026, align 8, !tbaa !345
  %1027 = icmp eq ptr %1022, null
  br i1 %1027, label %1032, label %1028

1028:                                             ; preds = %1018
  %1029 = load i16, ptr %1022, align 2, !tbaa !196
  %1030 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !196
  %1031 = icmp eq i16 %1029, %1030
  br i1 %1031, label %1035, label %1049

1032:                                             ; preds = %1018
  %1033 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !196
  %1034 = icmp eq i16 %1033, 0
  br i1 %1034, label %1046, label %1049

1035:                                             ; preds = %1028, %1040
  %1036 = phi i16 [ %1043, %1040 ], [ %1029, %1028 ]
  %1037 = phi ptr [ %1042, %1040 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1028 ]
  %1038 = phi ptr [ %1041, %1040 ], [ %1022, %1028 ]
  %1039 = icmp eq i16 %1036, 0
  br i1 %1039, label %1046, label %1040

1040:                                             ; preds = %1035
  %1041 = getelementptr inbounds i16, ptr %1038, i64 1
  %1042 = getelementptr inbounds i16, ptr %1037, i64 1
  %1043 = load i16, ptr %1041, align 2, !tbaa !196
  %1044 = load i16, ptr %1042, align 2, !tbaa !196
  %1045 = icmp eq i16 %1043, %1044
  br i1 %1045, label %1035, label %1049, !llvm.loop !346

1046:                                             ; preds = %1035, %1032
  store ptr null, ptr %1026, align 8, !tbaa !345
  br label %1049

1047:                                             ; preds = %990, %987
  %1048 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1048, i8 0, i64 24, i1 false)
  br label %1049

1049:                                             ; preds = %1040, %1028, %1047, %1032, %1046, %1013, %983
  %1050 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %1051 = icmp eq i8 %1050, 0
  br i1 %1051, label %1121, label %1052, !prof !511

1052:                                             ; preds = %1049
  %1053 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1054 = load ptr, ptr %1053, align 8, !tbaa !269
  %1055 = load ptr, ptr %1054, align 8, !tbaa !163
  %1056 = getelementptr inbounds ptr, ptr %1055, i64 2
  %1057 = load ptr, ptr %1056, align 8
  %1058 = call noundef i32 %1057(ptr noundef nonnull align 8 dereferenceable(40) %1054, ptr noundef %435, ptr noundef null, i32 noundef 0), !prof !512
  %1059 = icmp sgt i32 %1058, -1
  br i1 %1059, label %1060, label %1069, !prof !509

1060:                                             ; preds = %1052
  %1061 = load ptr, ptr %1053, align 8, !tbaa !269
  %1062 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 2
  %1063 = load ptr, ptr %1062, align 8, !tbaa !300
  %1064 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %1063)
  %1065 = load ptr, ptr %435, align 8, !tbaa !163
  %1066 = getelementptr inbounds ptr, ptr %1065, i64 15
  %1067 = load ptr, ptr %1066, align 8
  %1068 = call noundef ptr %1067(ptr noundef nonnull align 8 dereferenceable(33) %435)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %1061, i32 noundef 7, ptr noundef %1064, ptr noundef %1068, ptr noundef null, ptr noundef null)
  br label %1069

1069:                                             ; preds = %1060, %1052
  %1070 = load i32, ptr %44, align 4, !tbaa !186
  %1071 = icmp eq i32 %1070, 1
  br i1 %1071, label %1072, label %1121, !prof !510

1072:                                             ; preds = %1069
  %1073 = load ptr, ptr %1053, align 8, !tbaa !269
  %1074 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1073, i64 0, i32 16
  %1075 = load i8, ptr %1074, align 8, !tbaa !356, !range !285, !noundef !286
  %1076 = icmp eq i8 %1075, 0
  br i1 %1076, label %1078, label %1077, !prof !510

1077:                                             ; preds = %1072
  store i8 1, ptr %437, align 1, !tbaa !330
  br label %1104

1078:                                             ; preds = %1072
  %1079 = load ptr, ptr %542, align 8, !tbaa !344
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1089, label %1081, !prof !510

1081:                                             ; preds = %1078
  %1082 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1073, i64 0, i32 17
  %1083 = load i8, ptr %1082, align 1, !tbaa !364, !range !285, !noundef !286
  %1084 = icmp eq i8 %1083, 0
  store i8 %1083, ptr %436, align 8, !tbaa !365
  br i1 %1084, label %1089, label %1085

1085:                                             ; preds = %1081
  %1086 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %435, i64 0, i32 11
  %1087 = load ptr, ptr %1086, align 8, !tbaa !366
  %1088 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  store ptr %1087, ptr %1088, align 8, !tbaa !345
  br label %1089

1089:                                             ; preds = %1081, %1085, %1078
  %1090 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %1091 = load ptr, ptr %1090, align 8, !tbaa !343
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1104, label %1093, !prof !510

1093:                                             ; preds = %1089
  %1094 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1091, i64 0, i32 9
  %1095 = load i32, ptr %1094, align 4, !tbaa !358
  %1096 = icmp eq i32 %1095, 25
  br i1 %1096, label %1097, label %1104

1097:                                             ; preds = %1093
  %1098 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %1099 = load ptr, ptr %1098, align 8, !tbaa !363
  %1100 = load ptr, ptr %1099, align 8, !tbaa !163
  %1101 = getelementptr inbounds ptr, ptr %1100, i64 11
  %1102 = load ptr, ptr %1101, align 8
  %1103 = call noundef ptr %1102(ptr noundef nonnull align 8 dereferenceable(16) %1099)
  br label %1104

1104:                                             ; preds = %1089, %1093, %1097, %1077
  %1105 = phi ptr [ null, %1077 ], [ %1103, %1097 ], [ null, %1093 ], [ null, %1089 ]
  %1106 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %1107 = icmp ne i8 %1106, 0
  %1108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  %1109 = load i8, ptr %1108, align 4, !range !285
  %1110 = icmp ne i8 %1109, 0
  %1111 = select i1 %1107, i1 %1110, i1 false, !prof !510
  %1112 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 12
  %1113 = load ptr, ptr %1112, align 8
  %1114 = icmp ne ptr %1113, null
  %1115 = select i1 %1111, i1 %1114, i1 false, !prof !510
  br i1 %1115, label %1116, label %1121, !prof !510

1116:                                             ; preds = %1104
  %1117 = load ptr, ptr %11, align 8, !tbaa !195
  %1118 = load i32, ptr %10, align 8, !tbaa !189
  %1119 = zext i32 %1118 to i64
  %1120 = getelementptr inbounds i16, ptr %1117, i64 %1119
  store i16 0, ptr %1120, align 2, !tbaa !196
  call void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48) %1113, ptr noundef %435, ptr noundef %1117)
  br label %1121

1121:                                             ; preds = %1104, %1069, %1116, %1049
  %1122 = phi ptr [ null, %1049 ], [ %1105, %1116 ], [ null, %1069 ], [ %1105, %1104 ]
  %1123 = load i32, ptr %44, align 4, !tbaa !186
  %1124 = icmp ne i32 %1123, 1
  %1125 = load ptr, ptr %542, align 8
  %1126 = icmp eq ptr %1125, null
  %1127 = select i1 %1124, i1 true, i1 %1126, !prof !511
  br i1 %1127, label %1129, label %1128, !prof !513

1128:                                             ; preds = %1121
  call void @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %435, ptr noundef %1122)
  br label %1129

1129:                                             ; preds = %1128, %1121
  %1130 = load ptr, ptr %943, align 8, !tbaa !278
  %1131 = icmp eq ptr %1130, null
  br i1 %1131, label %1141, label %1132, !prof !514

1132:                                             ; preds = %1129
  %1133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %1134 = load ptr, ptr %1133, align 8, !tbaa !195
  %1135 = load i32, ptr %243, align 8, !tbaa !189
  %1136 = zext i32 %1135 to i64
  %1137 = getelementptr inbounds i16, ptr %1134, i64 %1136
  store i16 0, ptr %1137, align 2, !tbaa !196
  %1138 = load ptr, ptr %1130, align 8, !tbaa !163
  %1139 = getelementptr inbounds ptr, ptr %1138, i64 6
  %1140 = load ptr, ptr %1139, align 8
  call void %1140(ptr noundef nonnull align 8 dereferenceable(8) %1130, ptr noundef nonnull align 8 dereferenceable(33) %435, i32 noundef %245, i1 noundef zeroext %35, ptr noundef %1134), !prof !515
  br label %1141

1141:                                             ; preds = %1132, %1129
  br i1 %35, label %1142, label %1143, !prof !514

1142:                                             ; preds = %1141
  store i8 0, ptr %1, align 1, !tbaa !292
  br label %1347

1143:                                             ; preds = %1141
  %1144 = load ptr, ptr %116, align 8, !tbaa !326
  %1145 = load i32, ptr %33, align 4, !tbaa !297
  %1146 = add i32 %1145, -1
  %1147 = zext i32 %1146 to i64
  %1148 = getelementptr inbounds ptr, ptr %1144, i64 %1147
  %1149 = load ptr, ptr %1148, align 8, !tbaa !240
  %1150 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %1149, i64 0, i32 12
  %1151 = load ptr, ptr %1150, align 8, !tbaa !388
  store ptr %1151, ptr %772, align 8, !tbaa !389
  %1152 = load ptr, ptr %1151, align 8, !tbaa !163
  %1153 = getelementptr inbounds ptr, ptr %1152, i64 5
  %1154 = load ptr, ptr %1153, align 8
  %1155 = call noundef i32 %1154(ptr noundef nonnull align 8 dereferenceable(8) %1151), !prof !516
  store i32 %1155, ptr %44, align 4, !tbaa !186
  %1156 = icmp eq i32 %1155, 1
  br i1 %1156, label %1157, label %1177, !prof !508

1157:                                             ; preds = %1143
  %1158 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1159 = load ptr, ptr %1158, align 8, !tbaa !269
  %1160 = load ptr, ptr %1159, align 8, !tbaa !163
  %1161 = getelementptr inbounds ptr, ptr %1160, i64 13
  %1162 = load ptr, ptr %1161, align 8
  %1163 = call noundef zeroext i1 %1162(ptr noundef nonnull align 8 dereferenceable(40) %1159), !prof !517
  br i1 %1163, label %1177, label %1164, !prof !510

1164:                                             ; preds = %1157
  %1165 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %1166 = load i8, ptr %1165, align 1, !tbaa !394, !range !285, !noundef !286
  %1167 = icmp eq i8 %1166, 0
  br i1 %1167, label %1175, label %1168

1168:                                             ; preds = %1164
  %1169 = call ptr @__cxa_allocate_exception(i64 48) #16
  %1170 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %1171 = load ptr, ptr %1170, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %1169, ptr noundef nonnull @.str, i32 noundef 2756, i32 noundef 158, ptr noundef %1171)
          to label %1172 unwind label %1173

1172:                                             ; preds = %1168
  call void @__cxa_throw(ptr nonnull %1169, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

1173:                                             ; preds = %1168
  %1174 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %1169) #16
  br label %1348

1175:                                             ; preds = %1164
  %1176 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 10
  br label %1200

1177:                                             ; preds = %1157, %1143
  %1178 = load i32, ptr %44, align 4, !tbaa !186
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1180, label %1204, !prof !511

1180:                                             ; preds = %1177
  %1181 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1182 = load ptr, ptr %1181, align 8, !tbaa !269
  %1183 = load ptr, ptr %1182, align 8, !tbaa !163
  %1184 = getelementptr inbounds ptr, ptr %1183, i64 12
  %1185 = load ptr, ptr %1184, align 8
  %1186 = call noundef zeroext i1 %1185(ptr noundef nonnull align 8 dereferenceable(40) %1182), !prof !518
  br i1 %1186, label %1204, label %1187, !prof !519

1187:                                             ; preds = %1180
  %1188 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %1189 = load i8, ptr %1188, align 1, !tbaa !394, !range !285, !noundef !286
  %1190 = icmp eq i8 %1189, 0
  br i1 %1190, label %1198, label %1191

1191:                                             ; preds = %1187
  %1192 = call ptr @__cxa_allocate_exception(i64 48) #16
  %1193 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %1194 = load ptr, ptr %1193, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %1192, ptr noundef nonnull @.str, i32 noundef 2763, i32 noundef 44, ptr noundef %1194)
          to label %1195 unwind label %1196

1195:                                             ; preds = %1191
  call void @__cxa_throw(ptr nonnull %1192, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

1196:                                             ; preds = %1191
  %1197 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %1192) #16
  br label %1348

1198:                                             ; preds = %1187
  %1199 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  br label %1200

1200:                                             ; preds = %1175, %1198
  %1201 = phi ptr [ %1199, %1198 ], [ %1176, %1175 ]
  %1202 = phi ptr [ %1181, %1198 ], [ %1158, %1175 ]
  %1203 = load ptr, ptr %1201, align 8, !tbaa !240
  store ptr %1203, ptr %1202, align 8, !tbaa !269
  br label %1204

1204:                                             ; preds = %1200, %1177, %1180
  %1205 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1206 = load ptr, ptr %1205, align 8, !tbaa !269
  %1207 = load ptr, ptr %772, align 8, !tbaa !389
  %1208 = load ptr, ptr %1206, align 8, !tbaa !163
  %1209 = getelementptr inbounds ptr, ptr %1208, i64 11
  %1210 = load ptr, ptr %1209, align 8
  call void %1210(ptr noundef nonnull align 8 dereferenceable(40) %1206, ptr noundef %1207), !prof !520
  %1211 = load ptr, ptr %116, align 8, !tbaa !326
  %1212 = load i32, ptr %33, align 4, !tbaa !297
  %1213 = add i32 %1212, -1
  %1214 = zext i32 %1213 to i64
  %1215 = getelementptr inbounds ptr, ptr %1211, i64 %1214
  %1216 = load ptr, ptr %1215, align 8, !tbaa !240
  %1217 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %1216, i64 0, i32 8
  %1218 = load i8, ptr %1217, align 8, !tbaa !399, !range !285, !noundef !286
  store i8 %1218, ptr %114, align 8, !tbaa !284
  br label %1347

1219:                                             ; preds = %980
  %1220 = load i32, ptr %44, align 4, !tbaa !186
  %1221 = icmp eq i32 %1220, 1
  br i1 %1221, label %1222, label %1347, !prof !521

1222:                                             ; preds = %1219
  %1223 = load ptr, ptr %542, align 8, !tbaa !344
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1297, label %1225, !prof !333

1225:                                             ; preds = %1222
  %1226 = load i8, ptr %114, align 8, !tbaa !284, !range !285, !noundef !286
  %1227 = icmp eq i8 %1226, 0
  br i1 %1227, label %1256, label %1228

1228:                                             ; preds = %1225
  %1229 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 3
  %1230 = load i32, ptr %1229, align 8, !tbaa !332
  %1231 = icmp eq i32 %1230, 1
  br i1 %1231, label %1232, label %1256

1232:                                             ; preds = %1228
  %1233 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1234 = load ptr, ptr %1233, align 8, !tbaa !269
  %1235 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1234, i64 0, i32 14
  %1236 = load ptr, ptr %1235, align 8, !tbaa !334
  %1237 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %1236, i64 0, i32 1, i32 1
  %1238 = load i32, ptr %1237, align 4, !tbaa !338
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1243, label %1240

1240:                                             ; preds = %1232
  %1241 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %1236)
  %1242 = load ptr, ptr %1241, align 8, !tbaa !240
  br label %1243

1243:                                             ; preds = %1232, %1240
  %1244 = phi ptr [ %1242, %1240 ], [ null, %1232 ]
  %1245 = icmp eq ptr %1244, null
  br i1 %1245, label %1246, label %1251

1246:                                             ; preds = %1243
  %1247 = load ptr, ptr %1233, align 8, !tbaa !269
  %1248 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1247, i64 0, i32 7
  %1249 = load ptr, ptr %1248, align 8, !tbaa !342
  %1250 = icmp eq ptr %1249, null
  br i1 %1250, label %1256, label %1251

1251:                                             ; preds = %1246, %1243
  %1252 = phi ptr [ %1244, %1243 ], [ %1249, %1246 ]
  %1253 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %1254 = load ptr, ptr %1253, align 8, !tbaa !522
  %1255 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1254, ptr noundef nonnull %1252)
  br label %1256

1256:                                             ; preds = %1251, %1246, %1228, %1225
  %1257 = phi ptr [ null, %1246 ], [ null, %1228 ], [ null, %1225 ], [ %1255, %1251 ]
  %1258 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %1259 = load ptr, ptr %1258, align 8, !tbaa !228
  %1260 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %1261 = load ptr, ptr %1260, align 8, !tbaa !456
  %1262 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %1263 = load ptr, ptr %1262, align 8, !tbaa !269
  %1264 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %1263, i64 0, i32 17
  %1265 = load i8, ptr %1264, align 1, !tbaa !364, !range !285, !noundef !286
  %1266 = icmp ne i8 %1265, 0
  %1267 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 3
  %1268 = load i32, ptr %1267, align 8, !tbaa !332
  %1269 = icmp eq i32 %1268, 1
  br i1 %1269, label %1270, label %1274

1270:                                             ; preds = %1256
  %1271 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %1272 = load ptr, ptr %1271, align 8, !tbaa !522
  %1273 = call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %1272, ptr noundef nonnull %435)
  br label %1274

1274:                                             ; preds = %1256, %1270
  %1275 = phi ptr [ %1273, %1270 ], [ null, %1256 ]
  %1276 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %1277 = load ptr, ptr %1276, align 8, !tbaa !522
  %1278 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %435, i64 0, i32 11
  %1279 = load ptr, ptr %1278, align 8, !tbaa !366
  call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %1259, i32 noundef 0, i32 noundef 0, ptr noundef %1261, i1 noundef zeroext %1266, ptr noundef %1275, ptr noundef %1257, ptr noundef null, ptr noundef %1277, ptr noundef %1279, ptr noundef null, ptr noundef null, ptr noundef null)
  %1280 = load ptr, ptr %542, align 8, !tbaa !344
  %1281 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %435, i64 0, i32 2
  %1282 = load ptr, ptr %1281, align 8, !tbaa !300
  %1283 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1282, i64 0, i32 6
  %1284 = load ptr, ptr %1283, align 8, !tbaa !448
  %1285 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %1286 = load ptr, ptr %1285, align 8, !tbaa !438
  %1287 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %1282, i64 0, i32 4
  %1288 = load i32, ptr %1287, align 4, !tbaa !506
  %1289 = load ptr, ptr %1286, align 8, !tbaa !163
  %1290 = getelementptr inbounds ptr, ptr %1289, i64 10
  %1291 = load ptr, ptr %1290, align 8
  %1292 = call noundef ptr %1291(ptr noundef nonnull align 8 dereferenceable(40) %1286, i32 noundef %1288)
  %1293 = load ptr, ptr %1258, align 8, !tbaa !228
  %1294 = load ptr, ptr %1280, align 8, !tbaa !163
  %1295 = getelementptr inbounds ptr, ptr %1294, i64 3
  %1296 = load ptr, ptr %1295, align 8
  call void %1296(ptr noundef nonnull align 8 dereferenceable(8) %1280, ptr noundef %1284, ptr noundef %1292, ptr noundef %1293)
  br label %1297

1297:                                             ; preds = %1274, %1222
  %1298 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 23
  %1299 = load ptr, ptr %1298, align 8, !tbaa !230
  %1300 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 1
  %1301 = load i32, ptr %1300, align 4, !tbaa !377
  %1302 = add i32 %1301, 1
  %1303 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 2
  %1304 = load i32, ptr %1303, align 8, !tbaa !379
  %1305 = icmp ugt i32 %1302, %1304
  br i1 %1305, label %1306, label %1338, !prof !380

1306:                                             ; preds = %1297
  %1307 = uitofp i32 %1301 to double
  %1308 = fmul double %1307, 1.250000e+00
  %1309 = fptoui double %1308 to i32
  %1310 = call i32 @llvm.umax.i32(i32 %1302, i32 %1309)
  %1311 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 4
  %1312 = load ptr, ptr %1311, align 8, !tbaa !231
  %1313 = zext i32 %1310 to i64
  %1314 = load ptr, ptr %1312, align 8, !tbaa !163
  %1315 = getelementptr inbounds ptr, ptr %1314, i64 2
  %1316 = load ptr, ptr %1315, align 8
  %1317 = call noundef ptr %1316(ptr noundef nonnull align 8 dereferenceable(8) %1312, i64 noundef %1313), !prof !381
  %1318 = load i32, ptr %1300, align 4, !tbaa !377
  %1319 = icmp eq i32 %1318, 0
  br i1 %1319, label %1324, label %1320, !prof !382

1320:                                             ; preds = %1306
  %1321 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 3
  %1322 = load ptr, ptr %1321, align 8, !tbaa !233
  %1323 = zext i32 %1318 to i64
  br label %1331

1324:                                             ; preds = %1331, %1306
  %1325 = load ptr, ptr %1311, align 8, !tbaa !231
  %1326 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 3
  %1327 = load ptr, ptr %1326, align 8, !tbaa !233
  %1328 = load ptr, ptr %1325, align 8, !tbaa !163
  %1329 = getelementptr inbounds ptr, ptr %1328, i64 3
  %1330 = load ptr, ptr %1329, align 8
  call void %1330(ptr noundef nonnull align 8 dereferenceable(8) %1325, ptr noundef %1327), !prof !383
  store ptr %1317, ptr %1326, align 8, !tbaa !233
  store i32 %1310, ptr %1303, align 8, !tbaa !379
  br label %1338

1331:                                             ; preds = %1331, %1320
  %1332 = phi i64 [ 0, %1320 ], [ %1336, %1331 ]
  %1333 = getelementptr inbounds i8, ptr %1322, i64 %1332
  %1334 = load i8, ptr %1333, align 1, !tbaa !292, !range !285, !noundef !286
  %1335 = getelementptr inbounds i8, ptr %1317, i64 %1332
  store i8 %1334, ptr %1335, align 1, !tbaa !292
  %1336 = add nuw nsw i64 %1332, 1
  %1337 = icmp eq i64 %1336, %1323
  br i1 %1337, label %1324, label %1331, !prof !384, !llvm.loop !385

1338:                                             ; preds = %1297, %1324
  %1339 = load i8, ptr %437, align 1, !tbaa !292, !range !285, !noundef !286
  %1340 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 3
  %1341 = load ptr, ptr %1340, align 8, !tbaa !233
  %1342 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %1299, i64 0, i32 1, i32 1
  %1343 = load i32, ptr %1342, align 4, !tbaa !377
  %1344 = zext i32 %1343 to i64
  %1345 = getelementptr inbounds i8, ptr %1341, i64 %1344
  store i8 %1339, ptr %1345, align 1, !tbaa !292
  %1346 = add i32 %1343, 1
  store i32 %1346, ptr %1342, align 4, !tbaa !377
  br label %1347

1347:                                             ; preds = %1142, %1204, %1219, %1338
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %1350

1348:                                             ; preds = %408, %428, %751, %1196, %1173, %265
  %1349 = phi { ptr, i32 } [ %266, %265 ], [ %742, %751 ], [ %409, %408 ], [ %429, %428 ], [ %1197, %1196 ], [ %1174, %1173 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  resume { ptr, i32 } %1349

1350:                                             ; preds = %29, %29, %1347
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret i1 %19
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !523 {
  %3 = alloca i32, align 4
  store i8 1, ptr %1, align 1, !tbaa !292
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %5, align 8, !tbaa !189
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !195
  store i16 0, ptr %7, align 2, !tbaa !196
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !309
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %9, ptr noundef nonnull align 8 dereferenceable(40) %5, i1 noundef zeroext false)
  br i1 %10, label %14, label %11, !prof !307

11:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %12

12:                                               ; preds = %12, %11
  %13 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  switch i16 %13, label %12 [
    i16 60, label %558
    i16 0, label %558
  ]

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !tbaa !195
  %16 = load i32, ptr %5, align 8, !tbaa !189
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i16, ptr %15, i64 %17
  store i16 0, ptr %18, align 2, !tbaa !196
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %20 = load ptr, ptr %19, align 8, !tbaa !389
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %22 = load i32, ptr %21, align 4, !tbaa !420
  %23 = load ptr, ptr %20, align 8, !tbaa !163
  %24 = getelementptr inbounds ptr, ptr %23, i64 11
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %22, ptr noundef null, ptr noundef %15, i32 noundef -2), !prof !524
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %37, !prof !307

28:                                               ; preds = %14
  %29 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %30 = load ptr, ptr %29, align 8, !tbaa !216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %31 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef %15, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !525

33:                                               ; preds = %28
  %34 = load ptr, ptr %31, align 8, !tbaa !430
  br label %35

35:                                               ; preds = %28, %33
  %36 = phi ptr [ %34, %33 ], [ null, %28 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  br label %37

37:                                               ; preds = %35, %14
  %38 = phi ptr [ %26, %14 ], [ %36, %35 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %53, !prof !525

40:                                               ; preds = %37
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %42 = load ptr, ptr %41, align 8, !tbaa !201
  %43 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %42)
  %44 = load i32, ptr %21, align 4, !tbaa !420
  %45 = load ptr, ptr %41, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %43, ptr noundef %15, i32 noundef %44, i32 noundef 1, ptr noundef %45)
          to label %46 unwind label %51, !prof !526

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %48 = load ptr, ptr %47, align 8, !tbaa !216
  %49 = call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %48, ptr noundef nonnull %43)
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %43, i64 0, i32 4
  store i32 %49, ptr %50, align 4, !tbaa !449
  br label %53

51:                                               ; preds = %40
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %42) #16
  br label %556

53:                                               ; preds = %46, %37
  %54 = phi ptr [ %38, %37 ], [ %43, %46 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %56 = load i8, ptr %55, align 8, !tbaa !284, !range !285, !noundef !286
  %57 = icmp eq i8 %56, 0
  br i1 %39, label %58, label %61, !prof !525

58:                                               ; preds = %53
  br i1 %57, label %72, label %59, !prof !526

59:                                               ; preds = %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 3
  store i32 5, ptr %60, align 8, !tbaa !332
  br label %66

61:                                               ; preds = %53
  br i1 %57, label %72, label %62, !prof !527

62:                                               ; preds = %61
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !332
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %59
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %68 = load ptr, ptr %67, align 8, !tbaa !269
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !300
  %71 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %70)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %68, i32 noundef 2, ptr noundef %71, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %72

72:                                               ; preds = %66, %61, %62, %58
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !297
  %76 = icmp eq i32 %75, 0
  %77 = load ptr, ptr %8, align 8, !tbaa !309
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %77, i64 0, i32 15
  %79 = load i32, ptr %78, align 8, !tbaa !310
  %80 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %73, ptr noundef nonnull %54, i32 noundef %79)
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %82 = load i8, ptr %81, align 8, !tbaa !284, !range !285, !noundef !286
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !326
  %85 = load i32, ptr %74, align 4, !tbaa !297
  %86 = add i32 %85, -1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds ptr, ptr %84, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !240
  %90 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %89, i64 0, i32 8
  store i8 %82, ptr %90, align 8, !tbaa !399
  %91 = icmp eq i8 %82, 0
  br i1 %91, label %98, label %92, !prof !307

92:                                               ; preds = %72
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %94 = load ptr, ptr %93, align 8, !tbaa !269
  %95 = load ptr, ptr %94, align 8, !tbaa !163
  %96 = getelementptr inbounds ptr, ptr %95, i64 9
  %97 = load ptr, ptr %96, align 8
  call void %97(ptr noundef nonnull align 8 dereferenceable(40) %94, ptr noundef nonnull %54)
  br label %98

98:                                               ; preds = %92, %72
  br i1 %76, label %99, label %135, !prof !528

99:                                               ; preds = %98
  %100 = load ptr, ptr %19, align 8, !tbaa !389
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %100, ptr %101, align 8, !tbaa !454
  %102 = load i8, ptr %81, align 8, !tbaa !284, !range !285, !noundef !286
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %139, label %104, !prof !288

104:                                              ; preds = %99
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %106 = load ptr, ptr %105, align 8, !tbaa !456
  %107 = icmp eq ptr %106, null
  br i1 %107, label %139, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %6, align 8, !tbaa !195
  %110 = load i32, ptr %5, align 8, !tbaa !189
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !196
  %113 = icmp eq ptr %109, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %108
  %115 = load i16, ptr %109, align 2, !tbaa !196
  %116 = load i16, ptr %106, align 2, !tbaa !196
  %117 = icmp eq i16 %115, %116
  br i1 %117, label %121, label %132

118:                                              ; preds = %108
  %119 = load i16, ptr %106, align 2, !tbaa !196
  %120 = icmp eq i16 %119, 0
  br i1 %120, label %139, label %132

121:                                              ; preds = %114, %126
  %122 = phi i16 [ %129, %126 ], [ %115, %114 ]
  %123 = phi ptr [ %128, %126 ], [ %106, %114 ]
  %124 = phi ptr [ %127, %126 ], [ %109, %114 ]
  %125 = icmp eq i16 %122, 0
  br i1 %125, label %139, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds i16, ptr %124, i64 1
  %128 = getelementptr inbounds i16, ptr %123, i64 1
  %129 = load i16, ptr %127, align 2, !tbaa !196
  %130 = load i16, ptr %128, align 2, !tbaa !196
  %131 = icmp eq i16 %129, %130
  br i1 %131, label %121, label %132, !llvm.loop !346

132:                                              ; preds = %126, %114, %118
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %134 = load ptr, ptr %133, align 8, !tbaa !269
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesE(ptr noundef nonnull align 8 dereferenceable(40) %134, i32 noundef 5)
  br label %139

135:                                              ; preds = %98
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !300
  %138 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %73, ptr noundef %137, i1 noundef zeroext true)
  br label %139

139:                                              ; preds = %121, %104, %132, %118, %99, %135
  %140 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %142 = load ptr, ptr %141, align 8, !tbaa !487
  %143 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %142, i64 0, i32 2
  %144 = load i32, ptr %143, align 4, !tbaa !529
  %145 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 16
  %146 = load i32, ptr %145, align 8, !tbaa !531
  %147 = add i32 %146, 1
  store i32 %147, ptr %145, align 8, !tbaa !531
  br label %148

148:                                              ; preds = %369, %139
  %149 = phi i32 [ 0, %139 ], [ %367, %369 ]
  %150 = phi i8 [ 0, %139 ], [ %368, %369 ]
  %151 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  %152 = icmp eq i32 %149, 0
  br i1 %152, label %166, label %153, !prof !532

153:                                              ; preds = %148
  switch i16 %151, label %154 [
    i16 62, label %166
    i16 47, label %166
  ], !prof !533

154:                                              ; preds = %153
  %155 = load ptr, ptr %8, align 8, !tbaa !309
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %155, i64 0, i32 28
  %157 = load ptr, ptr %156, align 8, !tbaa !534
  %158 = zext i16 %151 to i64
  %159 = getelementptr inbounds i8, ptr %157, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !407
  %161 = icmp slt i8 %160, 0
  br i1 %161, label %162, label %165, !prof !535

162:                                              ; preds = %154
  %163 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  %164 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  br label %166

165:                                              ; preds = %154
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %166

166:                                              ; preds = %153, %153, %165, %162, %148
  %167 = phi i16 [ %164, %162 ], [ %151, %165 ], [ %151, %148 ], [ %151, %153 ], [ %151, %153 ]
  %168 = load ptr, ptr %8, align 8, !tbaa !309
  %169 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %168, i64 0, i32 28
  %170 = load ptr, ptr %169, align 8, !tbaa !534
  %171 = zext i16 %167 to i64
  %172 = getelementptr inbounds i8, ptr %170, i64 %171
  %173 = load i8, ptr %172, align 1, !tbaa !407
  %174 = and i8 %173, 16
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %341, !prof !536

176:                                              ; preds = %166
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  store i32 0, ptr %177, align 8, !tbaa !189
  %179 = load ptr, ptr %178, align 8, !tbaa !195
  store i16 0, ptr %179, align 2, !tbaa !196
  %180 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %168, ptr noundef nonnull align 8 dereferenceable(40) %177, i1 noundef zeroext false)
  br i1 %180, label %184, label %181, !prof !537

181:                                              ; preds = %176
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  br label %182

182:                                              ; preds = %182, %181
  %183 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  switch i16 %183, label %182 [
    i16 62, label %365
    i16 0, label %365
  ]

184:                                              ; preds = %176
  %185 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false)
  br i1 %185, label %206, label %186, !prof !537

186:                                              ; preds = %184
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
  %187 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList)
  switch i16 %187, label %188 [
    i16 62, label %203
    i16 47, label %203
    i16 39, label %202
    i16 34, label %202
  ]

188:                                              ; preds = %186
  %189 = load ptr, ptr %8, align 8, !tbaa !309
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %189, i64 0, i32 28
  %191 = load ptr, ptr %190, align 8, !tbaa !534
  %192 = zext i16 %187 to i64
  %193 = getelementptr inbounds i8, ptr %191, i64 %192
  %194 = load i8, ptr %193, align 1, !tbaa !407
  %195 = icmp slt i8 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %188
  %197 = icmp eq i16 %187, 60
  br i1 %197, label %198, label %203

198:                                              ; preds = %196
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !300
  %201 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %200)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %201, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %203

202:                                              ; preds = %186, %186
  br label %203

203:                                              ; preds = %186, %186, %202, %188, %196, %198
  %204 = phi i1 [ false, %198 ], [ false, %186 ], [ false, %196 ], [ true, %188 ], [ true, %202 ], [ false, %186 ]
  %205 = phi i32 [ 1, %198 ], [ 2, %186 ], [ 1, %196 ], [ 0, %188 ], [ 0, %202 ], [ 2, %186 ]
  br i1 %204, label %206, label %365

206:                                              ; preds = %203, %184
  %207 = load ptr, ptr %178, align 8, !tbaa !195
  %208 = load i32, ptr %177, align 8, !tbaa !189
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i16, ptr %207, i64 %209
  store i16 0, ptr %210, align 2, !tbaa !196
  %211 = call noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80) %54, ptr noundef %207)
  %212 = icmp ult i32 %149, %144
  %213 = icmp eq ptr %211, null
  br i1 %212, label %235, label %214, !prof !538

214:                                              ; preds = %206
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %216 = load ptr, ptr %215, align 8, !tbaa !201
  %217 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %216)
  br i1 %213, label %221, label %218, !prof !200

218:                                              ; preds = %214
  %219 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %211, i64 0, i32 2
  %220 = load i32, ptr %219, align 4, !tbaa !539
  br label %221

221:                                              ; preds = %214, %218
  %222 = phi i32 [ %220, %218 ], [ 0, %214 ]
  %223 = load ptr, ptr %215, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %217, i32 noundef 0, ptr noundef %207, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %222, i1 noundef zeroext true, ptr noundef %223, ptr noundef null, i1 noundef zeroext false)
          to label %224 unwind label %233, !prof !200

224:                                              ; preds = %221
  %225 = load ptr, ptr %141, align 8, !tbaa !487
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %225, i32 noundef 1)
  %226 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %225, i64 0, i32 4
  %227 = load ptr, ptr %226, align 8, !tbaa !540
  %228 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %225, i64 0, i32 2
  %229 = load i32, ptr %228, align 4, !tbaa !529
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %227, i64 %230
  store ptr %217, ptr %231, align 8, !tbaa !240
  %232 = add i32 %229, 1
  store i32 %232, ptr %228, align 4, !tbaa !529
  br label %248

233:                                              ; preds = %221
  %234 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %217, ptr noundef %216) #16
  br label %556

235:                                              ; preds = %206
  %236 = load ptr, ptr %141, align 8, !tbaa !487
  %237 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %236, i32 noundef %149)
  br i1 %213, label %241, label %238, !prof !541

238:                                              ; preds = %235
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %211, i64 0, i32 2
  %240 = load i32, ptr %239, align 4, !tbaa !539
  br label %241

241:                                              ; preds = %235, %238
  %242 = phi i32 [ %240, %238 ], [ 0, %235 ]
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %237, i64 0, i32 6
  %244 = load ptr, ptr %243, align 8, !tbaa !542
  call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %244, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %207, i32 noundef 0)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %237, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  %245 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %237, i64 0, i32 2
  store i32 %242, ptr %245, align 4, !tbaa !544
  %246 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %237, i64 0, i32 9
  store i8 0, ptr %246, align 8, !tbaa !545
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %237, i64 0, i32 8
  store ptr null, ptr %247, align 8, !tbaa !546
  store i8 1, ptr %237, align 8, !tbaa !547
  br label %248

248:                                              ; preds = %241, %224
  %249 = phi ptr [ %217, %224 ], [ %237, %241 ]
  %250 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %251 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %249, i64 0, i32 6
  %252 = load ptr, ptr %251, align 8, !tbaa !542
  %253 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %252, i64 0, i32 6
  %254 = load ptr, ptr %253, align 8, !tbaa !448
  %255 = icmp eq ptr %211, null
  br i1 %255, label %256, label %279, !prof !537

256:                                              ; preds = %248
  %257 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %258 = load i8, ptr %81, align 8, !tbaa !284, !range !285, !noundef !286
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %270, label %260, !prof !537

260:                                              ; preds = %256
  %261 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %262 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %263 = load ptr, ptr %261, align 8, !tbaa !269
  %264 = load ptr, ptr %178, align 8, !tbaa !195
  %265 = load i32, ptr %177, align 8, !tbaa !189
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds i16, ptr %264, i64 %266
  store i16 0, ptr %267, align 2, !tbaa !196
  %268 = load ptr, ptr %262, align 8, !tbaa !300
  %269 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %268)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %263, i32 noundef 17, ptr noundef %264, ptr noundef %269, ptr noundef null, ptr noundef null)
  br label %270

270:                                              ; preds = %260, %256
  %271 = load ptr, ptr %257, align 8, !tbaa !219
  %272 = call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %271, ptr noundef %254)
  br i1 %272, label %275, label %273, !prof !548

273:                                              ; preds = %270
  %274 = load ptr, ptr %257, align 8, !tbaa !219
  call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %274, ptr noundef %254, ptr noundef null)
  br label %301

275:                                              ; preds = %270
  %276 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !300
  %278 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %277)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %254, ptr noundef %278, ptr noundef null, ptr noundef null)
  br label %301

279:                                              ; preds = %248
  %280 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %281 = load ptr, ptr %280, align 8, !tbaa !218
  %282 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %281, ptr noundef nonnull %211)
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %288

284:                                              ; preds = %279
  %285 = call noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  %286 = load i32, ptr %145, align 8, !tbaa !531
  store i32 %286, ptr %285, align 4, !tbaa !308
  %287 = load ptr, ptr %280, align 8, !tbaa !218
  call void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %287, ptr noundef nonnull %211, ptr noundef nonnull %285)
  br label %301

288:                                              ; preds = %279
  %289 = load i32, ptr %282, align 4, !tbaa !308
  %290 = load i32, ptr %145, align 8, !tbaa !531
  %291 = icmp ult i32 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  store i32 %290, ptr %282, align 4, !tbaa !308
  br label %301

293:                                              ; preds = %288
  %294 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %295 = load ptr, ptr %211, align 8, !tbaa !163
  %296 = getelementptr inbounds ptr, ptr %295, i64 5
  %297 = load ptr, ptr %296, align 8
  %298 = call noundef ptr %297(ptr noundef nonnull align 8 dereferenceable(56) %211)
  %299 = load ptr, ptr %294, align 8, !tbaa !300
  %300 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %299)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 247, ptr noundef %298, ptr noundef %300, ptr noundef null, ptr noundef null)
  br label %301

301:                                              ; preds = %284, %293, %292, %273, %275
  %302 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  %303 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %211, ptr noundef %254, ptr noundef nonnull align 8 dereferenceable(40) %250)
  br i1 %303, label %320, label %304, !prof !537

304:                                              ; preds = %301
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199)
  %305 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner12scanStartTagERbE7tmpList_0)
  switch i16 %305, label %306 [
    i16 62, label %320
    i16 47, label %320
  ]

306:                                              ; preds = %304
  %307 = load ptr, ptr %8, align 8, !tbaa !309
  %308 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %307, i64 0, i32 28
  %309 = load ptr, ptr %308, align 8, !tbaa !534
  %310 = zext i16 %305 to i64
  %311 = getelementptr inbounds i8, ptr %309, i64 %310
  %312 = load i8, ptr %311, align 1, !tbaa !407
  %313 = icmp slt i8 %312, 0
  br i1 %313, label %320, label %314

314:                                              ; preds = %306
  %315 = icmp eq i16 %305, 60
  br i1 %315, label %316, label %365

316:                                              ; preds = %314
  %317 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !300
  %319 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %318)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %319, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %365

320:                                              ; preds = %304, %304, %306, %301
  %321 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %322 = load ptr, ptr %321, align 8, !tbaa !195
  %323 = load i32, ptr %250, align 8, !tbaa !189
  %324 = zext i32 %323 to i64
  %325 = getelementptr inbounds i16, ptr %322, i64 %324
  store i16 0, ptr %325, align 2, !tbaa !196
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %249, ptr noundef %322)
  %326 = load i8, ptr %81, align 8, !range !285
  %327 = icmp eq i8 %326, 0
  %328 = select i1 %255, i1 true, i1 %327, !prof !537
  br i1 %328, label %339, label %329, !prof !537

329:                                              ; preds = %320
  %330 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %331 = load ptr, ptr %330, align 8, !tbaa !269
  %332 = load ptr, ptr %321, align 8, !tbaa !195
  %333 = load i32, ptr %250, align 8, !tbaa !189
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds i16, ptr %332, i64 %334
  store i16 0, ptr %335, align 2, !tbaa !196
  %336 = load ptr, ptr %331, align 8, !tbaa !163
  %337 = getelementptr inbounds ptr, ptr %336, i64 8
  %338 = load ptr, ptr %337, align 8
  call void %338(ptr noundef nonnull align 8 dereferenceable(40) %331, ptr noundef nonnull %211, ptr noundef %332, i1 noundef zeroext false, ptr noundef nonnull %54)
  br label %339

339:                                              ; preds = %329, %320
  %340 = add i32 %149, 1
  br label %365, !llvm.loop !549

341:                                              ; preds = %166
  switch i16 %167, label %365 [
    i16 0, label %342
    i16 47, label %349
    i16 62, label %356
    i16 60, label %358
    i16 39, label %362
    i16 34, label %362
  ], !prof !550

342:                                              ; preds = %341
  %343 = call ptr @__cxa_allocate_exception(i64 48) #16
  %344 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %345 = load ptr, ptr %344, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %343, ptr noundef nonnull @.str, i32 noundef 1913, i32 noundef 47, ptr noundef %345)
          to label %346 unwind label %347

346:                                              ; preds = %342
  call void @__cxa_throw(ptr nonnull %343, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

347:                                              ; preds = %342
  %348 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %343) #16
  br label %556

349:                                              ; preds = %341
  %350 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  %351 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext 62)
  br i1 %351, label %365, label %352, !prof !551

352:                                              ; preds = %349
  %353 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !300
  %355 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %354)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %355, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %365

356:                                              ; preds = %341
  %357 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  br label %365

358:                                              ; preds = %341
  %359 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %360 = load ptr, ptr %359, align 8, !tbaa !300
  %361 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %360)
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %361, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %365

362:                                              ; preds = %341, %341
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  %363 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %4, i16 noundef zeroext %167)
  %364 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
  br label %365, !llvm.loop !549

365:                                              ; preds = %182, %182, %341, %349, %352, %339, %314, %316, %203, %362, %358, %356
  %366 = phi i32 [ 3, %356 ], [ 3, %358 ], [ 2, %362 ], [ %205, %203 ], [ 2, %339 ], [ 1, %314 ], [ 1, %316 ], [ 3, %352 ], [ 3, %349 ], [ 0, %341 ], [ 1, %182 ], [ 1, %182 ]
  %367 = phi i32 [ %149, %356 ], [ %149, %358 ], [ %149, %362 ], [ %149, %203 ], [ %340, %339 ], [ %149, %314 ], [ %149, %316 ], [ %149, %352 ], [ %149, %349 ], [ %149, %341 ], [ %149, %182 ], [ %149, %182 ]
  %368 = phi i8 [ %150, %356 ], [ %150, %358 ], [ %150, %362 ], [ %150, %203 ], [ %150, %339 ], [ %150, %314 ], [ %150, %316 ], [ 1, %352 ], [ 1, %349 ], [ %150, %341 ], [ %150, %182 ], [ %150, %182 ]
  switch i32 %366, label %558 [
    i32 0, label %369
    i32 2, label %369
    i32 3, label %370
  ], !prof !552

369:                                              ; preds = %365, %365
  br label %148, !llvm.loop !549

370:                                              ; preds = %365
  %371 = icmp eq i32 %367, 0
  br i1 %371, label %375, label %372, !prof !553

372:                                              ; preds = %370
  %373 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 18
  %374 = load ptr, ptr %373, align 8, !tbaa !219
  call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %374)
  br label %375

375:                                              ; preds = %372, %370
  %376 = load ptr, ptr %54, align 8, !tbaa !163
  %377 = getelementptr inbounds ptr, ptr %376, i64 8
  %378 = load ptr, ptr %377, align 8
  %379 = call noundef zeroext i1 %378(ptr noundef nonnull align 8 dereferenceable(33) %54), !prof !554
  br i1 %379, label %380, label %510, !prof !555

380:                                              ; preds = %375
  %381 = load ptr, ptr %54, align 8, !tbaa !163
  %382 = getelementptr inbounds ptr, ptr %381, i64 6
  %383 = load ptr, ptr %382, align 8
  %384 = call noundef nonnull align 8 dereferenceable(16) ptr %383(ptr noundef nonnull align 8 dereferenceable(33) %54)
  %385 = load ptr, ptr %384, align 8, !tbaa !163
  %386 = getelementptr inbounds ptr, ptr %385, i64 13
  %387 = load ptr, ptr %386, align 8
  %388 = call noundef i32 %387(ptr noundef nonnull align 8 dereferenceable(16) %384)
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %510, label %390

390:                                              ; preds = %380
  %391 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 17
  %392 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  %393 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %394 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %395 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %396 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %397

397:                                              ; preds = %390, %501
  %398 = phi i32 [ 0, %390 ], [ %504, %501 ]
  %399 = phi i32 [ %367, %390 ], [ %503, %501 ]
  %400 = phi i32 [ %144, %390 ], [ %502, %501 ]
  %401 = load ptr, ptr %384, align 8, !tbaa !163
  %402 = getelementptr inbounds ptr, ptr %401, i64 14
  %403 = load ptr, ptr %402, align 8
  %404 = call noundef nonnull align 8 dereferenceable(56) ptr %403(ptr noundef nonnull align 8 dereferenceable(16) %384, i32 noundef %398)
  %405 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 1
  %406 = load i32, ptr %405, align 8, !tbaa !422
  %407 = load ptr, ptr %391, align 8, !tbaa !218
  %408 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %407, ptr noundef nonnull %404)
  %409 = icmp eq ptr %408, null
  br i1 %409, label %414, label %410

410:                                              ; preds = %397
  %411 = load i32, ptr %408, align 4, !tbaa !308
  %412 = load i32, ptr %145, align 8, !tbaa !531
  %413 = icmp ult i32 %411, %412
  br i1 %413, label %414, label %501

414:                                              ; preds = %410, %397
  %415 = load i8, ptr %81, align 8, !tbaa !284, !range !285, !noundef !286
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %442, label %417

417:                                              ; preds = %414
  %418 = icmp eq i32 %406, 2
  br i1 %418, label %419, label %425

419:                                              ; preds = %417
  %420 = load ptr, ptr %395, align 8, !tbaa !269
  %421 = load ptr, ptr %404, align 8, !tbaa !163
  %422 = getelementptr inbounds ptr, ptr %421, i64 5
  %423 = load ptr, ptr %422, align 8
  %424 = call noundef ptr %423(ptr noundef nonnull align 8 dereferenceable(56) %404)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %420, i32 noundef 6, ptr noundef %424, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %442

425:                                              ; preds = %417
  %426 = icmp ult i32 %406, 2
  %427 = load i8, ptr %392, align 2, !range !285
  %428 = icmp ne i8 %427, 0
  %429 = select i1 %426, i1 %428, i1 false
  %430 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 5
  %431 = load i8, ptr %430, align 1, !range !285
  %432 = icmp ne i8 %431, 0
  %433 = select i1 %429, i1 %432, i1 false
  br i1 %433, label %434, label %442

434:                                              ; preds = %425
  %435 = load ptr, ptr %393, align 8, !tbaa !269
  %436 = load ptr, ptr %404, align 8, !tbaa !163
  %437 = getelementptr inbounds ptr, ptr %436, i64 5
  %438 = load ptr, ptr %437, align 8
  %439 = call noundef ptr %438(ptr noundef nonnull align 8 dereferenceable(56) %404)
  %440 = load ptr, ptr %394, align 8, !tbaa !300
  %441 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %440)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %435, i32 noundef 82, ptr noundef %439, ptr noundef %441, ptr noundef null, ptr noundef null)
  br label %442

442:                                              ; preds = %414, %419, %434, %425
  %443 = icmp ult i32 %406, 2
  br i1 %443, label %444, label %501

444:                                              ; preds = %442
  %445 = load i8, ptr %81, align 8, !tbaa !284, !range !285, !noundef !286
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %454, label %447

447:                                              ; preds = %444
  %448 = load ptr, ptr %396, align 8, !tbaa !269
  %449 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 7
  %450 = load ptr, ptr %449, align 8, !tbaa !427
  %451 = load ptr, ptr %448, align 8, !tbaa !163
  %452 = getelementptr inbounds ptr, ptr %451, i64 8
  %453 = load ptr, ptr %452, align 8
  call void %453(ptr noundef nonnull align 8 dereferenceable(40) %448, ptr noundef nonnull %404, ptr noundef %450, i1 noundef zeroext false, ptr noundef nonnull %54)
  br label %454

454:                                              ; preds = %447, %444
  %455 = icmp ult i32 %399, %400
  br i1 %455, label %482, label %456

456:                                              ; preds = %454
  %457 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %458 = load ptr, ptr %457, align 8, !tbaa !201
  %459 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %458)
  %460 = load ptr, ptr %404, align 8, !tbaa !163
  %461 = getelementptr inbounds ptr, ptr %460, i64 5
  %462 = load ptr, ptr %461, align 8
  %463 = invoke noundef ptr %462(ptr noundef nonnull align 8 dereferenceable(56) %404)
          to label %464 unwind label %480

464:                                              ; preds = %456
  %465 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 7
  %466 = load ptr, ptr %465, align 8, !tbaa !427
  %467 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 2
  %468 = load i32, ptr %467, align 4, !tbaa !539
  %469 = load ptr, ptr %457, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49) %459, i32 noundef 0, ptr noundef %463, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %466, i32 noundef %468, i1 noundef zeroext false, ptr noundef %469, ptr noundef null, i1 noundef zeroext false)
          to label %470 unwind label %480

470:                                              ; preds = %464
  %471 = load ptr, ptr %141, align 8, !tbaa !487
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %471, i32 noundef 1)
  %472 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %471, i64 0, i32 4
  %473 = load ptr, ptr %472, align 8, !tbaa !540
  %474 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %471, i64 0, i32 2
  %475 = load i32, ptr %474, align 4, !tbaa !529
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds ptr, ptr %473, i64 %476
  store ptr %459, ptr %477, align 8, !tbaa !240
  %478 = add i32 %475, 1
  store i32 %478, ptr %474, align 4, !tbaa !529
  %479 = add i32 %400, 1
  br label %498

480:                                              ; preds = %464, %456
  %481 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %459, ptr noundef %458) #16
  br label %556

482:                                              ; preds = %454
  %483 = load ptr, ptr %141, align 8, !tbaa !487
  %484 = call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %483, i32 noundef %399)
  %485 = load ptr, ptr %404, align 8, !tbaa !163
  %486 = getelementptr inbounds ptr, ptr %485, i64 5
  %487 = load ptr, ptr %486, align 8
  %488 = call noundef ptr %487(ptr noundef nonnull align 8 dereferenceable(56) %404)
  %489 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 7
  %490 = load ptr, ptr %489, align 8, !tbaa !427
  %491 = getelementptr inbounds %"class.xercesc_2_7::XMLAttDef", ptr %404, i64 0, i32 2
  %492 = load i32, ptr %491, align 4, !tbaa !539
  %493 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %484, i64 0, i32 6
  %494 = load ptr, ptr %493, align 8, !tbaa !542
  call void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56) %494, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %488, i32 noundef 0)
  call void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49) %484, ptr noundef %490)
  %495 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %484, i64 0, i32 2
  store i32 %492, ptr %495, align 4, !tbaa !544
  %496 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %484, i64 0, i32 9
  store i8 0, ptr %496, align 8, !tbaa !545
  %497 = getelementptr inbounds %"class.xercesc_2_7::XMLAttr", ptr %484, i64 0, i32 8
  store ptr null, ptr %497, align 8, !tbaa !546
  store i8 0, ptr %484, align 8, !tbaa !547
  br label %498

498:                                              ; preds = %482, %470
  %499 = phi i32 [ %479, %470 ], [ %400, %482 ]
  %500 = add i32 %399, 1
  br label %501

501:                                              ; preds = %498, %442, %410
  %502 = phi i32 [ %499, %498 ], [ %400, %442 ], [ %400, %410 ]
  %503 = phi i32 [ %500, %498 ], [ %399, %442 ], [ %399, %410 ]
  %504 = add nuw i32 %398, 1
  %505 = load ptr, ptr %384, align 8, !tbaa !163
  %506 = getelementptr inbounds ptr, ptr %505, i64 13
  %507 = load ptr, ptr %506, align 8
  %508 = call noundef i32 %507(ptr noundef nonnull align 8 dereferenceable(16) %384)
  %509 = icmp ult i32 %504, %508
  br i1 %509, label %397, label %510, !llvm.loop !556

510:                                              ; preds = %501, %380, %375
  %511 = phi i32 [ %367, %375 ], [ %367, %380 ], [ %503, %501 ]
  %512 = and i8 %368, 1
  %513 = icmp ne i8 %512, 0
  br i1 %513, label %514, label %546, !prof !557

514:                                              ; preds = %510
  %515 = load i8, ptr %81, align 8, !tbaa !284, !range !285, !noundef !286
  %516 = icmp eq i8 %515, 0
  br i1 %516, label %534, label %517, !prof !551

517:                                              ; preds = %514
  %518 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %519 = load ptr, ptr %518, align 8, !tbaa !269
  %520 = load ptr, ptr %519, align 8, !tbaa !163
  %521 = getelementptr inbounds ptr, ptr %520, i64 2
  %522 = load ptr, ptr %521, align 8
  %523 = call noundef i32 %522(ptr noundef nonnull align 8 dereferenceable(40) %519, ptr noundef nonnull %54, ptr noundef null, i32 noundef 0)
  %524 = icmp sgt i32 %523, -1
  br i1 %524, label %525, label %534

525:                                              ; preds = %517
  %526 = load ptr, ptr %518, align 8, !tbaa !269
  %527 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %54, i64 0, i32 2
  %528 = load ptr, ptr %527, align 8, !tbaa !300
  %529 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %528)
  %530 = load ptr, ptr %54, align 8, !tbaa !163
  %531 = getelementptr inbounds ptr, ptr %530, i64 15
  %532 = load ptr, ptr %531, align 8
  %533 = call noundef ptr %532(ptr noundef nonnull align 8 dereferenceable(33) %54)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %526, i32 noundef 7, ptr noundef %529, ptr noundef %533, ptr noundef null, ptr noundef null)
  br label %534

534:                                              ; preds = %517, %525, %514
  %535 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %73)
  br i1 %76, label %536, label %537, !prof !558

536:                                              ; preds = %534
  store i8 0, ptr %1, align 1, !tbaa !292
  br label %546

537:                                              ; preds = %534
  %538 = load ptr, ptr %83, align 8, !tbaa !326
  %539 = load i32, ptr %74, align 4, !tbaa !297
  %540 = add i32 %539, -1
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds ptr, ptr %538, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !240
  %544 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %543, i64 0, i32 8
  %545 = load i8, ptr %544, align 8, !tbaa !399, !range !285, !noundef !286
  store i8 %545, ptr %81, align 8, !tbaa !284
  br label %546

546:                                              ; preds = %536, %537, %510
  %547 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %548 = load ptr, ptr %547, align 8, !tbaa !278
  %549 = icmp eq ptr %548, null
  br i1 %549, label %558, label %550, !prof !555

550:                                              ; preds = %546
  %551 = load i32, ptr %21, align 4, !tbaa !420
  %552 = load ptr, ptr %141, align 8, !tbaa !487
  %553 = load ptr, ptr %548, align 8, !tbaa !163
  %554 = getelementptr inbounds ptr, ptr %553, i64 11
  %555 = load ptr, ptr %554, align 8
  call void %555(ptr noundef nonnull align 8 dereferenceable(8) %548, ptr noundef nonnull align 8 dereferenceable(33) %54, i32 noundef %551, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(40) %552, i32 noundef %511, i1 noundef zeroext %513, i1 noundef zeroext %76), !prof !559
  br label %558

556:                                              ; preds = %480, %347, %233, %51
  %557 = phi { ptr, i32 } [ %52, %51 ], [ %481, %480 ], [ %348, %347 ], [ %234, %233 ]
  resume { ptr, i32 } %557

558:                                              ; preds = %12, %12, %365, %550, %546
  %559 = phi i1 [ true, %550 ], [ true, %546 ], [ false, %365 ], [ false, %12 ], [ false, %12 ]
  ret i1 %559
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(186), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !560 {
  store ptr %3, ptr %0, align 8, !tbaa !561
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !563
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !564
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !565
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !566

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !561
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.3, i32 noundef 69, i32 noundef 68, ptr noundef %12)
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
  %19 = load ptr, ptr %3, align 8, !tbaa !163
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !567
  store ptr %22, ptr %5, align 8, !tbaa !568
  %23 = load i32, ptr %8, align 8, !tbaa !565
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !257

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !563
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !566

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !568
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !240
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !569, !llvm.loop !570

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !563
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !561
  %40 = load i32, ptr %6, align 8, !tbaa !563
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !163
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !567
  store ptr %46, ptr %38, align 8, !tbaa !571
  store ptr null, ptr %46, align 8, !tbaa !240
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %6 = zext i1 %2 to i8
  store ptr %4, ptr %0, align 8, !tbaa !572
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !574
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !575
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !576
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !577
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !578
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  %13 = load ptr, ptr %0, align 8, !tbaa !572
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %19, !prof !483

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !579
  %16 = load i32, ptr %11, align 8, !tbaa !577
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !580

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !577
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %0, align 8, !tbaa !572
  %24 = load i32, ptr %11, align 8, !tbaa !577
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %23, align 8, !tbaa !163
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %26), !prof !581
  store ptr %30, ptr %22, align 8, !tbaa !582
  store ptr null, ptr %30, align 8, !tbaa !240
  ret void
}

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !560 {
  %2 = load ptr, ptr %0, align 8, !tbaa !561
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !571
  %5 = load ptr, ptr %2, align 8, !tbaa !163
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !583

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !584

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !561
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !568
  %13 = load ptr, ptr %10, align 8, !tbaa !163
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !583

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %2 unwind label %25, !prof !483

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !572
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !582
  %6 = load ptr, ptr %3, align 8, !tbaa !163
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %25, !prof !585

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !572
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !575
  %13 = load ptr, ptr %10, align 8, !tbaa !163
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %25, !prof !585

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !579
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !580

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !163
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #16, !prof !586
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18, !prof !200

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !261
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !264
  %6 = load ptr, ptr %3, align 8, !tbaa !163
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !202

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !267
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !203

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !163
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #16, !prof !587
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #17
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %3) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !400 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !236
  store i8 0, ptr %3, align 1, !tbaa !292
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  br label %10

10:                                               ; preds = %236, %4
  %11 = phi i32 [ 0, %4 ], [ %234, %236 ]
  %12 = phi i32 [ undef, %4 ], [ %235, %236 ]
  %13 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %30, label %15, !prof !588

15:                                               ; preds = %10
  switch i16 %13, label %16 [
    i16 62, label %30
    i16 47, label %30
  ], !prof !589

16:                                               ; preds = %15
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !309
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %18, i64 0, i32 28
  %20 = load ptr, ptr %19, align 8, !tbaa !534
  %21 = zext i16 %13 to i64
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !407
  %24 = icmp slt i8 %23, 0
  br i1 %24, label %25, label %29, !prof !590

25:                                               ; preds = %16
  %26 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  %27 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false)
  %28 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  br label %30

29:                                               ; preds = %16
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %30

30:                                               ; preds = %15, %15, %29, %25, %10
  %31 = phi i16 [ %28, %25 ], [ %13, %29 ], [ %13, %10 ], [ %13, %15 ], [ %13, %15 ]
  %32 = load ptr, ptr %9, align 8, !tbaa !309
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %32, i64 0, i32 28
  %34 = load ptr, ptr %33, align 8, !tbaa !534
  %35 = zext i16 %31 to i64
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !407
  %38 = and i8 %37, 16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %214, !prof !591

40:                                               ; preds = %30
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store i32 0, ptr %41, align 8, !tbaa !189
  %43 = load ptr, ptr %42, align 8, !tbaa !195
  store i16 0, ptr %43, align 2, !tbaa !196
  %44 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %32, ptr noundef nonnull align 8 dereferenceable(40) %41, ptr noundef nonnull %5)
  br i1 %44, label %56, label %45, !prof !592

45:                                               ; preds = %40
  %46 = load i32, ptr %41, align 8, !tbaa !189
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  br label %53

49:                                               ; preds = %45
  %50 = load ptr, ptr %42, align 8, !tbaa !195
  %51 = zext i32 %46 to i64
  %52 = getelementptr inbounds i16, ptr %50, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !196
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 309, ptr noundef %50, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %53

53:                                               ; preds = %49, %48
  br label %54

54:                                               ; preds = %53, %54
  %55 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  switch i16 %55, label %54 [
    i16 62, label %210
    i16 0, label %210
  ]

56:                                               ; preds = %40
  %57 = load ptr, ptr %42, align 8, !tbaa !195
  %58 = load i32, ptr %41, align 8, !tbaa !189
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %57, i64 %59
  store i16 0, ptr %60, align 2, !tbaa !196
  %61 = call noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext false)
  br i1 %61, label %80, label %62, !prof !592

62:                                               ; preds = %56
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
  %63 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList)
  switch i16 %63, label %64 [
    i16 62, label %76
    i16 47, label %76
    i16 39, label %75
    i16 34, label %75
  ]

64:                                               ; preds = %62
  %65 = load ptr, ptr %9, align 8, !tbaa !309
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %65, i64 0, i32 28
  %67 = load ptr, ptr %66, align 8, !tbaa !534
  %68 = zext i16 %63 to i64
  %69 = getelementptr inbounds i8, ptr %67, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !407
  %71 = icmp slt i8 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %64
  %73 = icmp eq i16 %63, 60
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %76

75:                                               ; preds = %62, %62
  br label %76

76:                                               ; preds = %62, %62, %75, %64, %72, %74
  %77 = phi i1 [ false, %74 ], [ false, %62 ], [ false, %72 ], [ true, %64 ], [ true, %75 ], [ false, %62 ]
  %78 = phi i32 [ 1, %74 ], [ 2, %62 ], [ 1, %72 ], [ 0, %64 ], [ 0, %75 ], [ 2, %62 ]
  %79 = phi i32 [ %11, %74 ], [ %12, %62 ], [ %11, %72 ], [ %12, %64 ], [ %12, %75 ], [ %12, %62 ]
  br i1 %77, label %80, label %210

80:                                               ; preds = %76, %56
  %81 = phi i32 [ %12, %56 ], [ %79, %76 ]
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  %83 = call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %57, ptr noundef nonnull align 8 dereferenceable(40) %82)
  br i1 %83, label %100, label %84, !prof !592

84:                                               ; preds = %80
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 199)
  %85 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80) %8, ptr noundef nonnull @_ZZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERbE7tmpList_0)
  switch i16 %85, label %86 [
    i16 62, label %97
    i16 47, label %97
  ]

86:                                               ; preds = %84
  %87 = load ptr, ptr %9, align 8, !tbaa !309
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %87, i64 0, i32 28
  %89 = load ptr, ptr %88, align 8, !tbaa !534
  %90 = zext i16 %85 to i64
  %91 = getelementptr inbounds i8, ptr %89, i64 %90
  %92 = load i8, ptr %91, align 1, !tbaa !407
  %93 = icmp slt i8 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = icmp eq i16 %85, 60
  br i1 %95, label %96, label %97

96:                                               ; preds = %94
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %97

97:                                               ; preds = %84, %86, %84, %94, %96
  %98 = phi i1 [ false, %96 ], [ false, %94 ], [ true, %84 ], [ true, %86 ], [ true, %84 ]
  %99 = phi i32 [ %11, %96 ], [ %11, %94 ], [ %81, %84 ], [ %81, %86 ], [ %81, %84 ]
  br i1 %98, label %100, label %210

100:                                              ; preds = %97, %80
  %101 = phi i32 [ %81, %80 ], [ %99, %97 ]
  %102 = icmp ult i32 %11, %7
  br i1 %102, label %123, label %103, !prof !593

103:                                              ; preds = %100
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %106 = load ptr, ptr %104, align 8, !tbaa !201
  %107 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %106)
  %108 = load i32, ptr %41, align 8, !tbaa !189
  %109 = load ptr, ptr %105, align 8, !tbaa !195
  %110 = load i32, ptr %82, align 8, !tbaa !189
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i16, ptr %109, i64 %111
  store i16 0, ptr %112, align 2, !tbaa !196
  %113 = load ptr, ptr %104, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef %57, i32 noundef %108, ptr noundef %109, i32 noundef %110, ptr noundef %113)
          to label %114 unwind label %121, !prof !594

114:                                              ; preds = %103
  %115 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 4
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef 1)
  %116 = load ptr, ptr %115, align 8, !tbaa !238
  %117 = load i32, ptr %6, align 4, !tbaa !236
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds ptr, ptr %116, i64 %118
  store ptr %107, ptr %119, align 8, !tbaa !240
  %120 = add i32 %117, 1
  store i32 %120, ptr %6, align 4, !tbaa !236
  br label %198

121:                                              ; preds = %103
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %107, ptr noundef %106) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %131

123:                                              ; preds = %100
  %124 = load i32, ptr %6, align 4, !tbaa !236
  %125 = icmp ugt i32 %124, %11
  br i1 %125, label %135, label %126, !prof !595

126:                                              ; preds = %123
  %127 = call ptr @__cxa_allocate_exception(i64 48) #16
  %128 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 5
  %129 = load ptr, ptr %128, align 8, !tbaa !239
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %127, ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 116, ptr noundef %129)
          to label %130 unwind label %133

130:                                              ; preds = %126
  call void @__cxa_throw(ptr nonnull %127, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

131:                                              ; preds = %121, %220, %133
  %132 = phi { ptr, i32 } [ %134, %133 ], [ %221, %220 ], [ %122, %121 ]
  resume { ptr, i32 } %132

133:                                              ; preds = %126
  %134 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %127) #16
  br label %131

135:                                              ; preds = %123
  %136 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 4
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %138 = load ptr, ptr %136, align 8, !tbaa !238
  %139 = zext i32 %11 to i64
  %140 = getelementptr inbounds ptr, ptr %138, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !240
  %142 = load i32, ptr %41, align 8, !tbaa !189
  %143 = load ptr, ptr %137, align 8, !tbaa !195
  %144 = load i32, ptr %82, align 8, !tbaa !189
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i16, ptr %143, i64 %145
  store i16 0, ptr %146, align 2, !tbaa !196
  %147 = zext i32 %142 to i64
  %148 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !596
  %150 = icmp ugt i64 %149, %147
  br i1 %150, label %167, label %151, !prof !598

151:                                              ; preds = %135
  %152 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !599
  %154 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 3
  %155 = load ptr, ptr %154, align 8, !tbaa !600
  %156 = load ptr, ptr %153, align 8, !tbaa !163
  %157 = getelementptr inbounds ptr, ptr %156, i64 3
  %158 = load ptr, ptr %157, align 8
  call void %158(ptr noundef nonnull align 8 dereferenceable(8) %153, ptr noundef %155), !prof !202
  %159 = add i32 %142, 1
  %160 = zext i32 %159 to i64
  store i64 %160, ptr %148, align 8, !tbaa !596
  %161 = load ptr, ptr %152, align 8, !tbaa !599
  %162 = shl nuw nsw i64 %160, 1
  %163 = load ptr, ptr %161, align 8, !tbaa !163
  %164 = getelementptr inbounds ptr, ptr %163, i64 2
  %165 = load ptr, ptr %164, align 8
  %166 = call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %161, i64 noundef %162), !prof !194
  store ptr %166, ptr %154, align 8, !tbaa !600
  br label %167

167:                                              ; preds = %151, %135
  %168 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !600
  %170 = add i32 %142, 1
  %171 = zext i32 %170 to i64
  %172 = shl nuw nsw i64 %171, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %169, ptr align 2 %57, i64 %172, i1 false), !prof !601
  %173 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 2
  %174 = load i64, ptr %173, align 8, !tbaa !602
  %175 = icmp ugt i64 %174, %145
  br i1 %175, label %192, label %176, !prof !603

176:                                              ; preds = %167
  %177 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !599
  %179 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !604
  %181 = load ptr, ptr %178, align 8, !tbaa !163
  %182 = getelementptr inbounds ptr, ptr %181, i64 3
  %183 = load ptr, ptr %182, align 8
  call void %183(ptr noundef nonnull align 8 dereferenceable(8) %178, ptr noundef %180), !prof !583
  %184 = add i32 %144, 1
  %185 = zext i32 %184 to i64
  store i64 %185, ptr %173, align 8, !tbaa !602
  %186 = load ptr, ptr %177, align 8, !tbaa !599
  %187 = shl nuw nsw i64 %185, 1
  %188 = load ptr, ptr %186, align 8, !tbaa !163
  %189 = getelementptr inbounds ptr, ptr %188, i64 2
  %190 = load ptr, ptr %189, align 8
  %191 = call noundef ptr %190(ptr noundef nonnull align 8 dereferenceable(8) %186, i64 noundef %187), !prof !567
  store ptr %191, ptr %179, align 8, !tbaa !604
  br label %192

192:                                              ; preds = %167, %176
  %193 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %141, i64 0, i32 4
  %194 = load ptr, ptr %193, align 8, !tbaa !604
  %195 = add i32 %144, 1
  %196 = zext i32 %195 to i64
  %197 = shl nuw nsw i64 %196, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %194, ptr align 2 %143, i64 %197, i1 false), !prof !605
  br label %198

198:                                              ; preds = %192, %114
  %199 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  %200 = load i32, ptr %199, align 8, !tbaa !199
  %201 = icmp ult i32 %11, %200
  br i1 %201, label %203, label %202, !prof !592

202:                                              ; preds = %198
  call void @_ZN11xercesc_2_712IGXMLScanner22resizeRawAttrColonListEv(ptr noundef nonnull align 8 dereferenceable(1024) %0)
  br label %203

203:                                              ; preds = %202, %198
  %204 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %205 = load i32, ptr %5, align 4, !tbaa !308
  %206 = load ptr, ptr %204, align 8, !tbaa !205
  %207 = zext i32 %11 to i64
  %208 = getelementptr inbounds i32, ptr %206, i64 %207
  store i32 %205, ptr %208, align 4, !tbaa !308
  %209 = add i32 %11, 1
  br label %210

210:                                              ; preds = %54, %54, %97, %203, %76
  %211 = phi i32 [ 2, %203 ], [ %78, %76 ], [ 1, %97 ], [ 1, %54 ], [ 1, %54 ]
  %212 = phi i32 [ %209, %203 ], [ %11, %76 ], [ %11, %97 ], [ %11, %54 ], [ %11, %54 ]
  %213 = phi i32 [ %101, %203 ], [ %79, %76 ], [ %99, %97 ], [ %11, %54 ], [ %11, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  br label %232

214:                                              ; preds = %30
  switch i16 %31, label %232 [
    i16 0, label %215
    i16 47, label %222
    i16 62, label %226
    i16 60, label %228
    i16 39, label %229
    i16 34, label %229
  ], !prof !606

215:                                              ; preds = %214
  %216 = call ptr @__cxa_allocate_exception(i64 48) #16
  %217 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %218 = load ptr, ptr %217, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %216, ptr noundef nonnull @.str, i32 noundef 765, i32 noundef 47, ptr noundef %218)
          to label %219 unwind label %220

219:                                              ; preds = %215
  call void @__cxa_throw(ptr nonnull %216, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

220:                                              ; preds = %215
  %221 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %216) #16
  br label %131

222:                                              ; preds = %214
  %223 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  store i8 1, ptr %3, align 1, !tbaa !292
  %224 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext 62)
  br i1 %224, label %232, label %225, !prof !513

225:                                              ; preds = %222
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %232

226:                                              ; preds = %214
  %227 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  br label %232

228:                                              ; preds = %214
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 198, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %232

229:                                              ; preds = %214, %214
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 174)
  %230 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %8)
  call void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80) %8, i16 noundef zeroext %31)
  %231 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %8, i1 noundef zeroext false)
  br label %232, !llvm.loop !607

232:                                              ; preds = %214, %222, %225, %229, %228, %226, %210
  %233 = phi i32 [ 3, %226 ], [ 3, %228 ], [ 2, %229 ], [ %211, %210 ], [ 3, %225 ], [ 3, %222 ], [ 0, %214 ]
  %234 = phi i32 [ %11, %226 ], [ %11, %228 ], [ %11, %229 ], [ %212, %210 ], [ %11, %225 ], [ %11, %222 ], [ %11, %214 ]
  %235 = phi i32 [ %12, %226 ], [ %12, %228 ], [ %12, %229 ], [ %213, %210 ], [ %12, %225 ], [ %12, %222 ], [ %12, %214 ]
  switch i32 %233, label %238 [
    i32 0, label %236
    i32 2, label %236
    i32 3, label %237
  ], !prof !608

236:                                              ; preds = %232, %232
  br label %10, !llvm.loop !607

237:                                              ; preds = %232
  br label %238

238:                                              ; preds = %232, %237
  %239 = phi i32 [ %234, %237 ], [ %235, %232 ]
  ret i32 %239
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext) local_unnamed_addr #5

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner22resizeRawAttrColonListEv(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #4 align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !199
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !163
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  %13 = load i32, ptr %2, align 8, !tbaa !199
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !205
  br label %18

18:                                               ; preds = %15, %18
  %19 = phi i64 [ 0, %15 ], [ %23, %18 ]
  %20 = getelementptr inbounds i32, ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !308
  %22 = getelementptr inbounds i32, ptr %12, i64 %19
  store i32 %21, ptr %22, align 4, !tbaa !308
  %23 = add nuw nsw i64 %19, 1
  %24 = load i32, ptr %2, align 8, !tbaa !199
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %18, label %27, !llvm.loop !609

27:                                               ; preds = %18, %1
  %28 = load ptr, ptr %5, align 8, !tbaa !201
  %29 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !205
  %31 = load ptr, ptr %28, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %12, ptr %29, align 8, !tbaa !205
  store i32 %4, ptr %2, align 8, !tbaa !199
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_712ValueStackOfIbE3popEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !610 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !377
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !611

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !231
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 70, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !377
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !612

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !231
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 206, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !233
  %31 = zext i32 %16 to i64
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !292, !range !285, !noundef !286
  %34 = icmp ne i8 %33, 0
  tail call void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef %16)
  ret i1 %34
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner14endElementPSVIEPNS_17SchemaElementDeclEPNS_17DatatypeValidatorE(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 !prof !160 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !461
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !463
  %9 = icmp sgt i32 %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 4
  %12 = load i32, ptr %11, align 4, !tbaa !462
  %13 = icmp sgt i32 %6, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = add nsw i32 %6, -1
  store i32 %15, ptr %11, align 4, !tbaa !462
  store i32 %15, ptr %7, align 8, !tbaa !463
  br label %16

16:                                               ; preds = %10, %3, %14
  %17 = phi i32 [ 1, %14 ], [ 2, %3 ], [ 0, %10 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = load i8, ptr %18, align 8, !tbaa !284, !range !285, !noundef !286
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !332
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  %27 = load i8, ptr %26, align 1, !tbaa !330, !range !285, !noundef !286
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 2, i32 1
  br label %30

30:                                               ; preds = %25, %21, %16
  %31 = phi i32 [ %29, %25 ], [ 0, %21 ], [ 0, %16 ]
  %32 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !340
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %37 = load ptr, ptr %36, align 8, !tbaa !522
  %38 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %37, ptr noundef nonnull %33)
  %39 = load ptr, ptr %32, align 8, !tbaa !340
  %40 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %39, i64 0, i32 10
  %41 = load i32, ptr %40, align 8, !tbaa !404
  %42 = and i32 %41, -2
  %43 = icmp ne i32 %42, 2
  br label %52

44:                                               ; preds = %30
  %45 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %46 = load ptr, ptr %45, align 8, !tbaa !343
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %50 = load ptr, ptr %49, align 8, !tbaa !522
  %51 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %50, ptr noundef nonnull %46)
  br label %52

52:                                               ; preds = %44, %48, %35
  %53 = phi ptr [ %38, %35 ], [ %51, %48 ], [ null, %44 ]
  %54 = phi i1 [ %43, %35 ], [ true, %48 ], [ true, %44 ]
  %55 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !345
  %57 = icmp ne ptr %56, null
  %58 = icmp eq i32 %31, 2
  %59 = and i1 %58, %54
  %60 = and i1 %59, %57
  br i1 %60, label %61, label %75

61:                                               ; preds = %52
  %62 = icmp eq ptr %2, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  %65 = load ptr, ptr %64, align 8, !tbaa !343
  %66 = icmp eq ptr %65, null
  br i1 %66, label %75, label %67

67:                                               ; preds = %63, %61
  %68 = phi ptr [ %2, %61 ], [ %65, %63 ]
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %70 = load ptr, ptr %69, align 8, !tbaa !201
  %71 = load ptr, ptr %68, align 8, !tbaa !163
  %72 = getelementptr inbounds ptr, ptr %71, i64 7
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(104) %68, ptr noundef nonnull %56, ptr noundef %70, i1 noundef zeroext false)
  br label %75

75:                                               ; preds = %67, %63, %52
  %76 = phi ptr [ null, %63 ], [ null, %52 ], [ %74, %67 ]
  %77 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 22
  %78 = load ptr, ptr %77, align 8, !tbaa !228
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %80 = load ptr, ptr %79, align 8, !tbaa !456
  %81 = load i8, ptr %4, align 8, !tbaa !365, !range !285, !noundef !286
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !332
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %87 = load ptr, ptr %86, align 8, !tbaa !522
  %88 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %87, ptr noundef nonnull %1)
  br label %89

89:                                               ; preds = %75, %85
  %90 = phi ptr [ %88, %85 ], [ null, %75 ]
  %91 = icmp eq ptr %2, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %94 = load ptr, ptr %93, align 8, !tbaa !522
  %95 = tail call noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298) %94, ptr noundef nonnull %2)
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ null, %89 ]
  %98 = icmp ne i8 %81, 0
  %99 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 21
  %100 = load ptr, ptr %99, align 8, !tbaa !522
  %101 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 11
  %102 = load ptr, ptr %101, align 8, !tbaa !366
  %103 = load ptr, ptr %55, align 8, !tbaa !345
  tail call void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104) %78, i32 noundef %31, i32 noundef %17, ptr noundef %80, i1 noundef zeroext %98, ptr noundef %90, ptr noundef %53, ptr noundef %97, ptr noundef %100, ptr noundef %102, ptr noundef %103, ptr noundef %76, ptr noundef null)
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  %105 = load ptr, ptr %104, align 8, !tbaa !344
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !300
  %108 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %107, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !448
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %111 = load ptr, ptr %110, align 8, !tbaa !438
  %112 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %107, i64 0, i32 4
  %113 = load i32, ptr %112, align 4, !tbaa !506
  %114 = load ptr, ptr %111, align 8, !tbaa !163
  %115 = getelementptr inbounds ptr, ptr %114, i64 10
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(40) %111, i32 noundef %113)
  %118 = load ptr, ptr %77, align 8, !tbaa !228
  %119 = load ptr, ptr %105, align 8, !tbaa !163
  %120 = getelementptr inbounds ptr, ptr %119, i64 2
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef %109, ptr noundef %117, ptr noundef %118)
  %122 = load i32, ptr %5, align 4, !tbaa !461
  %123 = add nsw i32 %122, -1
  store i32 %123, ptr %5, align 4, !tbaa !461
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4 x i16], align 8
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE)
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %11 = load ptr, ptr %10, align 8, !tbaa !613
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %11, align 8, !tbaa !163
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11)
  br label %17

17:                                               ; preds = %13, %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %18, i1 noundef zeroext false)
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
  br label %21

21:                                               ; preds = %21, %20
  %22 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
  switch i16 %22, label %21 [
    i16 62, label %604
    i16 0, label %604
  ]

23:                                               ; preds = %17
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %25 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %27 = load i8, ptr %26, align 2, !tbaa !304, !range !285, !noundef !286
  %28 = icmp eq i8 %27, 0
  store i32 0, ptr %25, align 8, !tbaa !189
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !195
  store i16 0, ptr %30, align 2, !tbaa !196
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !309
  br i1 %28, label %35, label %33

33:                                               ; preds = %23
  %34 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %32, ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull %3)
          to label %37 unwind label %45

35:                                               ; preds = %23
  %36 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %32, ptr noundef nonnull align 8 dereferenceable(40) %25, i1 noundef zeroext false)
          to label %37 unwind label %45

37:                                               ; preds = %35, %33
  %38 = phi i1 [ %34, %33 ], [ %36, %35 ]
  br i1 %38, label %56, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %25, align 8, !tbaa !189
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 208)
          to label %52 unwind label %45

43:                                               ; preds = %53
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %619

45:                                               ; preds = %42, %47, %33, %35, %56, %86
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %619

47:                                               ; preds = %39
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %25, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !195
  %50 = zext i32 %40 to i64
  %51 = getelementptr inbounds i16, ptr %49, i64 %50
  store i16 0, ptr %51, align 2, !tbaa !196
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 307, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %52 unwind label %45

52:                                               ; preds = %42, %47
  br label %53

53:                                               ; preds = %52, %55
  %54 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %55 unwind label %43

55:                                               ; preds = %53
  switch i16 %54, label %53 [
    i16 62, label %600
    i16 0, label %600
  ]

56:                                               ; preds = %37
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %25, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !195
  %59 = load i32, ptr %25, align 8, !tbaa !189
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, ptr %58, i64 %60
  store i16 0, ptr %61, align 2, !tbaa !196
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %63 = load ptr, ptr %62, align 8, !tbaa !201
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %65 = load ptr, ptr %64, align 8, !tbaa !456
  %66 = load ptr, ptr %63, align 8, !tbaa !163
  %67 = getelementptr inbounds ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %65)
          to label %69 unwind label %45

69:                                               ; preds = %56
  %70 = load ptr, ptr %62, align 8, !tbaa !201
  %71 = icmp eq ptr %58, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %69
  %73 = load i16, ptr %58, align 2, !tbaa !196
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %77, %75 ], [ %58, %72 ]
  %77 = getelementptr inbounds i16, ptr %76, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !196
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %75, !llvm.loop !458

80:                                               ; preds = %75
  %81 = ptrtoint ptr %77 to i64
  %82 = ptrtoint ptr %58 to i64
  %83 = sub i64 %81, %82
  %84 = add i64 %83, 2
  %85 = and i64 %84, 8589934590
  br label %86

86:                                               ; preds = %80, %72
  %87 = phi i64 [ %85, %80 ], [ 2, %72 ]
  %88 = load ptr, ptr %70, align 8, !tbaa !163
  %89 = getelementptr inbounds ptr, ptr %88, i64 2
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %70, i64 noundef %87)
          to label %92 unwind label %45

92:                                               ; preds = %86
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %91, ptr nonnull align 2 %58, i64 %87, i1 false)
  br label %93

93:                                               ; preds = %69, %92
  %94 = phi ptr [ %91, %92 ], [ null, %69 ]
  store ptr %94, ptr %64, align 8, !tbaa !456
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %96 = load i8, ptr %95, align 2, !tbaa !614, !range !285, !noundef !286
  %97 = icmp eq i8 %96, 0
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %62, align 8
  %101 = select i1 %97, ptr %99, ptr %100
  %102 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %101)
          to label %103 unwind label %124

103:                                              ; preds = %93
  %104 = load ptr, ptr %57, align 8, !tbaa !195
  %105 = load i32, ptr %25, align 8, !tbaa !189
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i16, ptr %104, i64 %106
  store i16 0, ptr %107, align 2, !tbaa !196
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %109 = load i32, ptr %108, align 4, !tbaa !420
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %102, ptr noundef %104, i32 noundef %109, i32 noundef 1, ptr noundef %101)
          to label %110 unwind label %126

110:                                              ; preds = %103
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %102, i64 0, i32 3
  store i32 4, ptr %111, align 8, !tbaa !332
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %102, i64 0, i32 5
  store i8 1, ptr %112, align 8, !tbaa !615
  %113 = load i8, ptr %95, align 2, !tbaa !614, !range !285, !noundef !286
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %110
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %117 = load ptr, ptr %116, align 8, !tbaa !389
  %118 = load ptr, ptr %117, align 8, !tbaa !163
  %119 = getelementptr inbounds ptr, ptr %118, i64 17
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef i32 %120(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull %102, i1 noundef zeroext false)
          to label %122 unwind label %128

122:                                              ; preds = %115
  %123 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %117, i64 0, i32 7
  store i32 %121, ptr %123, align 8, !tbaa !616
  br label %157

124:                                              ; preds = %93
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %619

126:                                              ; preds = %103
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %102, ptr noundef %101) #16
  br label %619

128:                                              ; preds = %166, %160, %157, %115
  %129 = phi ptr [ %158, %166 ], [ %158, %160 ], [ %158, %157 ], [ %102, %115 ]
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %611

131:                                              ; preds = %110
  %132 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %133 = load ptr, ptr %132, align 8, !tbaa !216
  %134 = load ptr, ptr %57, align 8, !tbaa !195
  %135 = load i32, ptr %25, align 8, !tbaa !189
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i16, ptr %134, i64 %136
  store i16 0, ptr %137, align 2, !tbaa !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #16
  %138 = invoke noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %133, ptr noundef %134, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %139 unwind label %150

139:                                              ; preds = %131
  %140 = icmp eq ptr %138, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %139
  %142 = load ptr, ptr %138, align 8, !tbaa !430
  br label %143

143:                                              ; preds = %139, %141
  %144 = phi ptr [ %142, %141 ], [ null, %139 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #16
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %144, i64 0, i32 4
  %148 = load i32, ptr %147, align 4, !tbaa !449
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %102, i64 0, i32 4
  store i32 %148, ptr %149, align 4, !tbaa !449
  br label %157

150:                                              ; preds = %131, %152
  %151 = landingpad { ptr, i32 }
          cleanup
  br label %611

152:                                              ; preds = %143
  %153 = load ptr, ptr %132, align 8, !tbaa !216
  %154 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %153, ptr noundef nonnull %102)
          to label %155 unwind label %150

155:                                              ; preds = %152
  %156 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %102, i64 0, i32 4
  store i32 %154, ptr %156, align 4, !tbaa !449
  br label %157

157:                                              ; preds = %146, %155, %122
  %158 = phi ptr [ null, %122 ], [ null, %155 ], [ %102, %146 ]
  %159 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %18, i1 noundef zeroext false)
          to label %160 unwind label %128

160:                                              ; preds = %157
  %161 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 62)
          to label %162 unwind label %128

162:                                              ; preds = %160
  br i1 %161, label %163, label %170

163:                                              ; preds = %162
  %164 = load ptr, ptr %10, align 8, !tbaa !613
  %165 = icmp eq ptr %164, null
  br i1 %165, label %594, label %166

166:                                              ; preds = %163
  %167 = load ptr, ptr %164, align 8, !tbaa !163
  %168 = getelementptr inbounds ptr, ptr %167, i64 4
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(8) %164, ptr noundef nonnull align 8 dereferenceable(80) %102, ptr noundef null, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %594 unwind label %128

170:                                              ; preds = %162
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %172 = load i32, ptr %171, align 8, !tbaa !617
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %179

174:                                              ; preds = %170
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %176 = load i8, ptr %175, align 8, !tbaa !284, !range !285, !noundef !286
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i8 1, ptr %175, align 8, !tbaa !284
  br label %179

179:                                              ; preds = %178, %174, %170
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #16
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %181 = load ptr, ptr %180, align 8, !tbaa !389
  %182 = load ptr, ptr %10, align 8, !tbaa !613
  %183 = load ptr, ptr %98, align 8, !tbaa !618
  %184 = load ptr, ptr %62, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %181, ptr noundef %182, ptr noundef %183, ptr noundef %184)
          to label %185 unwind label %190

185:                                              ; preds = %179
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull %0, ptr noundef nonnull %18, ptr noundef nonnull %24)
          to label %186 unwind label %192

186:                                              ; preds = %185
  %187 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %188 unwind label %192

188:                                              ; preds = %186
  %189 = icmp ne i16 %187, 91
  br i1 %189, label %194, label %302

190:                                              ; preds = %179
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %609

192:                                              ; preds = %186, %185
  %193 = landingpad { ptr, i32 }
          cleanup
  br label %607

194:                                              ; preds = %188
  %195 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 0, ptr %195, align 1, !tbaa !619
  %196 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %197 unwind label %205

197:                                              ; preds = %194
  %198 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %24)
          to label %199 unwind label %207

199:                                              ; preds = %197
  %200 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(40) %196, ptr noundef nonnull align 8 dereferenceable(40) %198, i32 noundef 1)
          to label %201 unwind label %211

201:                                              ; preds = %199
  br i1 %200, label %218, label %202

202:                                              ; preds = %201, %204
  %203 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %204 unwind label %209

204:                                              ; preds = %202
  switch i16 %203, label %202 [
    i16 62, label %285
    i16 0, label %285
  ]

205:                                              ; preds = %194
  %206 = landingpad { ptr, i32 }
          cleanup
  br label %607

207:                                              ; preds = %197
  %208 = landingpad { ptr, i32 }
          cleanup
  br label %297

209:                                              ; preds = %202
  %210 = landingpad { ptr, i32 }
          cleanup
  br label %213

211:                                              ; preds = %199, %277, %280, %240, %270
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi { ptr, i32 } [ %210, %209 ], [ %212, %211 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(40) %198)
          to label %297 unwind label %215

215:                                              ; preds = %213
  %216 = landingpad { ptr, i32 }
          catch ptr null
  %217 = extractvalue { ptr, i32 } %216, 0
  call void @__clang_call_terminate(ptr %217) #17
  unreachable

218:                                              ; preds = %201
  %219 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %196, i64 0, i32 6
  %220 = load ptr, ptr %219, align 8, !tbaa !195
  %221 = load i32, ptr %196, align 8, !tbaa !189
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i16, ptr %220, i64 %222
  store i16 0, ptr %223, align 2, !tbaa !196
  %224 = load ptr, ptr %62, align 8, !tbaa !201
  %225 = icmp eq ptr %220, null
  br i1 %225, label %247, label %226

226:                                              ; preds = %218
  %227 = load i16, ptr %220, align 2, !tbaa !196
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %226, %229
  %230 = phi ptr [ %231, %229 ], [ %220, %226 ]
  %231 = getelementptr inbounds i16, ptr %230, i64 1
  %232 = load i16, ptr %231, align 2, !tbaa !196
  %233 = icmp eq i16 %232, 0
  br i1 %233, label %234, label %229, !llvm.loop !458

234:                                              ; preds = %229
  %235 = ptrtoint ptr %231 to i64
  %236 = ptrtoint ptr %220 to i64
  %237 = sub i64 %235, %236
  %238 = add i64 %237, 2
  %239 = and i64 %238, 8589934590
  br label %240

240:                                              ; preds = %234, %226
  %241 = phi i64 [ %239, %234 ], [ 2, %226 ]
  %242 = load ptr, ptr %224, align 8, !tbaa !163
  %243 = getelementptr inbounds ptr, ptr %242, i64 2
  %244 = load ptr, ptr %243, align 8
  %245 = invoke noundef ptr %244(ptr noundef nonnull align 8 dereferenceable(8) %224, i64 noundef %241)
          to label %246 unwind label %211

246:                                              ; preds = %240
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %245, ptr nonnull align 2 %220, i64 %241, i1 false)
  br label %247

247:                                              ; preds = %246, %218
  %248 = phi ptr [ %245, %246 ], [ null, %218 ]
  %249 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %198, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !195
  %251 = load i32, ptr %198, align 8, !tbaa !189
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i16, ptr %250, i64 %252
  store i16 0, ptr %253, align 2, !tbaa !196
  %254 = load ptr, ptr %62, align 8, !tbaa !201
  %255 = icmp eq ptr %250, null
  br i1 %255, label %277, label %256

256:                                              ; preds = %247
  %257 = load i16, ptr %250, align 2, !tbaa !196
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %256, %259
  %260 = phi ptr [ %261, %259 ], [ %250, %256 ]
  %261 = getelementptr inbounds i16, ptr %260, i64 1
  %262 = load i16, ptr %261, align 2, !tbaa !196
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %259, !llvm.loop !458

264:                                              ; preds = %259
  %265 = ptrtoint ptr %261 to i64
  %266 = ptrtoint ptr %250 to i64
  %267 = sub i64 %265, %266
  %268 = add i64 %267, 2
  %269 = and i64 %268, 8589934590
  br label %270

270:                                              ; preds = %264, %256
  %271 = phi i64 [ %269, %264 ], [ 2, %256 ]
  %272 = load ptr, ptr %254, align 8, !tbaa !163
  %273 = getelementptr inbounds ptr, ptr %272, i64 2
  %274 = load ptr, ptr %273, align 8
  %275 = invoke noundef ptr %274(ptr noundef nonnull align 8 dereferenceable(8) %254, i64 noundef %271)
          to label %276 unwind label %211

276:                                              ; preds = %270
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %275, ptr nonnull align 2 %250, i64 %271, i1 false)
  br label %277

277:                                              ; preds = %276, %247
  %278 = phi ptr [ %275, %276 ], [ null, %247 ]
  %279 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %18, i1 noundef zeroext false)
          to label %280 unwind label %211

280:                                              ; preds = %277
  %281 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %282 unwind label %211

282:                                              ; preds = %280
  %283 = icmp eq i16 %281, 91
  %284 = zext i1 %283 to i8
  br label %285

285:                                              ; preds = %204, %204, %282
  %286 = phi ptr [ %278, %282 ], [ null, %204 ], [ null, %204 ]
  %287 = phi ptr [ %248, %282 ], [ null, %204 ], [ null, %204 ]
  %288 = phi i8 [ %284, %282 ], [ 0, %204 ], [ 0, %204 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(40) %198)
          to label %292 unwind label %289

289:                                              ; preds = %285
  %290 = landingpad { ptr, i32 }
          catch ptr null
  %291 = extractvalue { ptr, i32 } %290, 0
  call void @__clang_call_terminate(ptr %291) #17
  unreachable

292:                                              ; preds = %285
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(40) %196)
          to label %296 unwind label %293

293:                                              ; preds = %292
  %294 = landingpad { ptr, i32 }
          catch ptr null
  %295 = extractvalue { ptr, i32 } %294, 0
  call void @__clang_call_terminate(ptr %295) #17
  unreachable

296:                                              ; preds = %292
  br i1 %200, label %302, label %593

297:                                              ; preds = %213, %207
  %298 = phi { ptr, i32 } [ %208, %207 ], [ %214, %213 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(40) %196)
          to label %607 unwind label %299

299:                                              ; preds = %297
  %300 = landingpad { ptr, i32 }
          catch ptr null
  %301 = extractvalue { ptr, i32 } %300, 0
  call void @__clang_call_terminate(ptr %301) #17
  unreachable

302:                                              ; preds = %188, %296
  %303 = phi ptr [ %286, %296 ], [ null, %188 ]
  %304 = phi ptr [ %287, %296 ], [ null, %188 ]
  %305 = phi i8 [ %288, %296 ], [ 1, %188 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %306 = load ptr, ptr %62, align 8, !tbaa !201
  store ptr %303, ptr %5, align 8, !tbaa !620
  %307 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %306, ptr %307, align 8, !tbaa !622
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  store ptr %304, ptr %6, align 8, !tbaa !620
  %308 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %306, ptr %308, align 8, !tbaa !622
  %309 = load ptr, ptr %10, align 8, !tbaa !613
  %310 = icmp eq ptr %309, null
  br i1 %310, label %323, label %311

311:                                              ; preds = %302
  %312 = and i8 %305, 1
  %313 = icmp ne i8 %312, 0
  %314 = load ptr, ptr %309, align 8, !tbaa !163
  %315 = getelementptr inbounds ptr, ptr %314, i64 4
  %316 = load ptr, ptr %315, align 8
  invoke void %316(ptr noundef nonnull align 8 dereferenceable(8) %309, ptr noundef nonnull align 8 dereferenceable(80) %102, ptr noundef %304, ptr noundef %303, i1 noundef zeroext %313, i1 noundef zeroext %189)
          to label %323 unwind label %321

317:                                              ; preds = %354
  %318 = landingpad { ptr, i32 }
          cleanup
  br label %605

319:                                              ; preds = %332
  %320 = landingpad { ptr, i32 }
          cleanup
  br label %605

321:                                              ; preds = %353, %352, %349, %346, %343, %341, %340, %339, %335, %329, %328, %326, %311
  %322 = landingpad { ptr, i32 }
          cleanup
  br label %605

323:                                              ; preds = %311, %302
  %324 = and i8 %305, 1
  %325 = icmp ne i8 %324, 0
  br i1 %325, label %326, label %343

326:                                              ; preds = %323
  %327 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %328 unwind label %321

328:                                              ; preds = %326
  invoke void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %189, ptr noundef %303, ptr noundef %304)
          to label %329 unwind label %321

329:                                              ; preds = %328
  %330 = invoke noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %331 unwind label %321

331:                                              ; preds = %329
  br i1 %330, label %335, label %332

332:                                              ; preds = %331, %334
  %333 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %334 unwind label %319

334:                                              ; preds = %332
  switch i16 %333, label %332 [
    i16 62, label %592
    i16 0, label %592
  ]

335:                                              ; preds = %331
  %336 = invoke noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %337 unwind label %321

337:                                              ; preds = %335
  %338 = icmp ugt i32 %336, 1
  br i1 %338, label %339, label %341

339:                                              ; preds = %337
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 256)
          to label %340 unwind label %321

340:                                              ; preds = %339
  invoke void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80) %18, i32 noundef 1)
          to label %341 unwind label %321

341:                                              ; preds = %340, %337
  %342 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %18, i1 noundef zeroext false)
          to label %343 unwind label %321

343:                                              ; preds = %341, %323
  %344 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 62)
          to label %345 unwind label %321

345:                                              ; preds = %343
  br i1 %344, label %357, label %346

346:                                              ; preds = %345
  %347 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 93)
          to label %348 unwind label %321

348:                                              ; preds = %346
  br i1 %347, label %349, label %353

349:                                              ; preds = %348
  %350 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 62)
          to label %351 unwind label %321

351:                                              ; preds = %349
  br i1 %350, label %352, label %353

352:                                              ; preds = %351
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 257)
          to label %357 unwind label %321

353:                                              ; preds = %351, %348
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 212)
          to label %354 unwind label %321

354:                                              ; preds = %353, %356
  %355 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %356 unwind label %317

356:                                              ; preds = %354
  switch i16 %355, label %354 [
    i16 62, label %357
    i16 0, label %357
  ]

357:                                              ; preds = %356, %356, %352, %345
  br i1 %189, label %358, label %592

358:                                              ; preds = %357
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !240
  %359 = load i8, ptr %95, align 2, !tbaa !614, !range !285, !noundef !286
  %360 = icmp eq i8 %359, 0
  %361 = or i1 %325, %360
  br i1 %361, label %410, label %362

362:                                              ; preds = %358
  %363 = load ptr, ptr %0, align 8, !tbaa !163
  %364 = getelementptr inbounds ptr, ptr %363, i64 17
  %365 = load ptr, ptr %364, align 8
  %366 = invoke noundef ptr %365(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %303, ptr noundef %304)
          to label %367 unwind label %406

367:                                              ; preds = %362
  store ptr %366, ptr %7, align 8, !tbaa !240
  %368 = icmp eq ptr %366, null
  br i1 %368, label %410, label %369

369:                                              ; preds = %367
  %370 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %371 = load ptr, ptr %370, align 8, !tbaa !623
  %372 = load ptr, ptr %366, align 8, !tbaa !163
  %373 = getelementptr inbounds ptr, ptr %372, i64 5
  %374 = load ptr, ptr %373, align 8
  %375 = invoke noundef ptr %374(ptr noundef nonnull align 8 dereferenceable(41) %366)
          to label %376 unwind label %408

376:                                              ; preds = %369
  %377 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %371, ptr noundef %375)
          to label %378 unwind label %408

378:                                              ; preds = %376
  %379 = icmp eq ptr %377, null
  br i1 %379, label %410, label %380

380:                                              ; preds = %378
  %381 = load ptr, ptr %377, align 8, !tbaa !163
  %382 = getelementptr inbounds ptr, ptr %381, i64 5
  %383 = load ptr, ptr %382, align 8
  %384 = invoke noundef i32 %383(ptr noundef nonnull align 8 dereferenceable(8) %377)
          to label %385 unwind label %408

385:                                              ; preds = %380
  %386 = icmp eq i32 %384, 0
  br i1 %386, label %387, label %410

387:                                              ; preds = %385
  %388 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %377, ptr %388, align 8, !tbaa !271
  store ptr %377, ptr %180, align 8, !tbaa !389
  %389 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %390 = load ptr, ptr %389, align 8, !tbaa !269
  %391 = load ptr, ptr %390, align 8, !tbaa !163
  %392 = getelementptr inbounds ptr, ptr %391, i64 11
  %393 = load ptr, ptr %392, align 8
  invoke void %393(ptr noundef nonnull align 8 dereferenceable(40) %390, ptr noundef nonnull %377)
          to label %394 unwind label %408

394:                                              ; preds = %387
  %395 = load ptr, ptr %10, align 8, !tbaa !613
  %396 = icmp eq ptr %395, null
  br i1 %396, label %571, label %397

397:                                              ; preds = %394
  %398 = load ptr, ptr %395, align 8, !tbaa !163
  %399 = getelementptr inbounds ptr, ptr %398, i64 16
  %400 = load ptr, ptr %399, align 8
  invoke void %400(ptr noundef nonnull align 8 dereferenceable(8) %395)
          to label %401 unwind label %408

401:                                              ; preds = %397
  %402 = load ptr, ptr %10, align 8, !tbaa !613
  %403 = load ptr, ptr %402, align 8, !tbaa !163
  %404 = getelementptr inbounds ptr, ptr %403, i64 10
  %405 = load ptr, ptr %404, align 8
  invoke void %405(ptr noundef nonnull align 8 dereferenceable(8) %402)
          to label %571 unwind label %408

406:                                              ; preds = %362
  %407 = landingpad { ptr, i32 }
          cleanup
  br label %575

408:                                              ; preds = %401, %397, %387, %380, %376, %369
  %409 = landingpad { ptr, i32 }
          cleanup
  br label %575

410:                                              ; preds = %385, %378, %358, %367
  %411 = phi ptr [ null, %358 ], [ null, %367 ], [ %366, %378 ], [ %366, %385 ]
  %412 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  %413 = load i8, ptr %412, align 1, !tbaa !624, !range !285, !noundef !286
  %414 = icmp eq i8 %413, 0
  %415 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %416 = load i8, ptr %415, align 8, !range !285
  %417 = icmp eq i8 %416, 0
  %418 = select i1 %414, i1 %417, i1 false
  br i1 %418, label %584, label %419

419:                                              ; preds = %410
  %420 = load ptr, ptr %7, align 8, !tbaa !240
  %421 = icmp eq ptr %420, null
  %422 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %423 = load i8, ptr %422, align 1, !tbaa !625, !range !285, !noundef !286
  %424 = icmp ne i8 %423, 0
  br i1 %421, label %430, label %425

425:                                              ; preds = %419
  %426 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(41) %420, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %424)
          to label %442 unwind label %427

427:                                              ; preds = %458, %430, %425
  %428 = phi ptr [ %443, %458 ], [ %411, %430 ], [ %411, %425 ]
  %429 = landingpad { ptr, i32 }
          cleanup
  br label %575

430:                                              ; preds = %419
  %431 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %432 = load i8, ptr %431, align 1, !tbaa !626, !range !285, !noundef !286
  %433 = icmp ne i8 %432, 0
  %434 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef %303, ptr noundef %304, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %424, i1 noundef zeroext %433)
          to label %435 unwind label %427

435:                                              ; preds = %430
  %436 = load ptr, ptr %7, align 8, !tbaa !240
  %437 = icmp eq ptr %411, null
  br i1 %437, label %442, label %438

438:                                              ; preds = %435
  %439 = load ptr, ptr %411, align 8, !tbaa !163
  %440 = getelementptr inbounds ptr, ptr %439, i64 1
  %441 = load ptr, ptr %440, align 8
  call void %441(ptr noundef nonnull align 8 dereferenceable(41) %411) #16
  br label %442

442:                                              ; preds = %438, %435, %425
  %443 = phi ptr [ %411, %425 ], [ %436, %435 ], [ %436, %438 ]
  %444 = phi ptr [ %426, %425 ], [ %434, %435 ], [ %434, %438 ]
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %461

446:                                              ; preds = %442
  %447 = call ptr @__cxa_allocate_exception(i64 48) #16
  %448 = load ptr, ptr %7, align 8, !tbaa !240
  %449 = icmp eq ptr %448, null
  br i1 %449, label %455, label %450

450:                                              ; preds = %446
  %451 = load ptr, ptr %448, align 8, !tbaa !163
  %452 = getelementptr inbounds ptr, ptr %451, i64 5
  %453 = load ptr, ptr %452, align 8
  %454 = invoke noundef ptr %453(ptr noundef nonnull align 8 dereferenceable(41) %448)
          to label %455 unwind label %459

455:                                              ; preds = %450, %446
  %456 = phi ptr [ %303, %446 ], [ %454, %450 ]
  %457 = load ptr, ptr %62, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %447, ptr noundef nonnull @.str, i32 noundef 1505, i32 noundef 45, ptr noundef %456, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %457)
          to label %458 unwind label %459

458:                                              ; preds = %455
  invoke void @__cxa_throw(ptr nonnull %447, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %625 unwind label %427

459:                                              ; preds = %455, %450
  %460 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %447) #16
  br label %575

461:                                              ; preds = %442
  %462 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %463 = load i8, ptr %462, align 1, !tbaa !627, !range !285, !noundef !286
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %508, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %467 = load ptr, ptr %466, align 8, !tbaa !623
  %468 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %467, i64 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !628
  %470 = load ptr, ptr %7, align 8, !tbaa !240
  %471 = load ptr, ptr %470, align 8, !tbaa !163
  %472 = getelementptr inbounds ptr, ptr %471, i64 5
  %473 = load ptr, ptr %472, align 8
  %474 = invoke noundef ptr %473(ptr noundef nonnull align 8 dereferenceable(41) %470)
          to label %475 unwind label %504

475:                                              ; preds = %465
  %476 = load ptr, ptr %469, align 8, !tbaa !163
  %477 = getelementptr inbounds ptr, ptr %476, i64 5
  %478 = load ptr, ptr %477, align 8
  %479 = invoke noundef i32 %478(ptr noundef nonnull align 8 dereferenceable(40) %469, ptr noundef %474)
          to label %480 unwind label %504

480:                                              ; preds = %475
  %481 = load ptr, ptr %466, align 8, !tbaa !623
  %482 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %481, i64 0, i32 3
  %483 = load ptr, ptr %482, align 8, !tbaa !628
  %484 = load ptr, ptr %483, align 8, !tbaa !163
  %485 = getelementptr inbounds ptr, ptr %484, i64 10
  %486 = load ptr, ptr %485, align 8
  %487 = invoke noundef ptr %486(ptr noundef nonnull align 8 dereferenceable(40) %483, i32 noundef %479)
          to label %488 unwind label %506

488:                                              ; preds = %480
  %489 = load ptr, ptr %466, align 8, !tbaa !623
  %490 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %489, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE)
          to label %491 unwind label %506

491:                                              ; preds = %488
  %492 = load ptr, ptr %180, align 8, !tbaa !389
  %493 = load ptr, ptr %492, align 8, !tbaa !163
  %494 = getelementptr inbounds ptr, ptr %493, i64 22
  %495 = load ptr, ptr %494, align 8
  %496 = invoke noundef ptr %495(ptr noundef nonnull align 8 dereferenceable(8) %492)
          to label %497 unwind label %506

497:                                              ; preds = %491
  %498 = load ptr, ptr %496, align 8, !tbaa !163
  %499 = getelementptr inbounds ptr, ptr %498, i64 10
  %500 = load ptr, ptr %499, align 8
  invoke void %500(ptr noundef nonnull align 8 dereferenceable(16) %496, ptr noundef %487)
          to label %501 unwind label %506

501:                                              ; preds = %497
  %502 = load ptr, ptr %466, align 8, !tbaa !623
  %503 = load ptr, ptr %180, align 8, !tbaa !389
  invoke void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %502, ptr noundef %503)
          to label %508 unwind label %506

504:                                              ; preds = %475, %465
  %505 = landingpad { ptr, i32 }
          cleanup
  br label %575

506:                                              ; preds = %501, %497, %491, %488, %480
  %507 = landingpad { ptr, i32 }
          cleanup
  br label %575

508:                                              ; preds = %501, %461
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 292063281220, ptr %8, align 8
  %509 = load ptr, ptr %62, align 8, !tbaa !201
  %510 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %509)
          to label %511 unwind label %560

511:                                              ; preds = %508
  %512 = load ptr, ptr %62, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %510, ptr noundef nonnull %8, ptr noundef %512)
          to label %513 unwind label %562

513:                                              ; preds = %511
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %510, align 8, !tbaa !163
  %514 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %510, i64 0, i32 1
  store i8 0, ptr %514, align 8, !tbaa !630
  %515 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %510, i64 0, i32 2
  store i8 0, ptr %515, align 1, !tbaa !633
  %516 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %510, i64 0, i32 3
  store i8 0, ptr %516, align 2, !tbaa !634
  %517 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %510, i64 0, i32 7
  %518 = load ptr, ptr %517, align 8, !tbaa !635
  %519 = icmp eq ptr %518, null
  br i1 %519, label %526, label %520

520:                                              ; preds = %513
  %521 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %510, i64 0, i32 9
  %522 = load ptr, ptr %521, align 8, !tbaa !636
  %523 = load ptr, ptr %522, align 8, !tbaa !163
  %524 = getelementptr inbounds ptr, ptr %523, i64 3
  %525 = load ptr, ptr %524, align 8
  invoke void %525(ptr noundef nonnull align 8 dereferenceable(8) %522, ptr noundef nonnull %518)
          to label %526 unwind label %560

526:                                              ; preds = %520, %513
  %527 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %510, i64 0, i32 9
  %528 = load ptr, ptr %527, align 8, !tbaa !636
  %529 = icmp eq ptr %303, null
  br i1 %529, label %551, label %530

530:                                              ; preds = %526
  %531 = load i16, ptr %303, align 2, !tbaa !196
  %532 = icmp eq i16 %531, 0
  br i1 %532, label %544, label %533

533:                                              ; preds = %530, %533
  %534 = phi ptr [ %535, %533 ], [ %303, %530 ]
  %535 = getelementptr inbounds i16, ptr %534, i64 1
  %536 = load i16, ptr %535, align 2, !tbaa !196
  %537 = icmp eq i16 %536, 0
  br i1 %537, label %538, label %533, !llvm.loop !458

538:                                              ; preds = %533
  %539 = ptrtoint ptr %535 to i64
  %540 = ptrtoint ptr %303 to i64
  %541 = sub i64 %539, %540
  %542 = add i64 %541, 2
  %543 = and i64 %542, 8589934590
  br label %544

544:                                              ; preds = %538, %530
  %545 = phi i64 [ %543, %538 ], [ 2, %530 ]
  %546 = load ptr, ptr %528, align 8, !tbaa !163
  %547 = getelementptr inbounds ptr, ptr %546, i64 2
  %548 = load ptr, ptr %547, align 8
  %549 = invoke noundef ptr %548(ptr noundef nonnull align 8 dereferenceable(8) %528, i64 noundef %545)
          to label %550 unwind label %560

550:                                              ; preds = %544
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %549, ptr nonnull align 2 %303, i64 %545, i1 false)
  br label %551

551:                                              ; preds = %526, %550
  %552 = phi ptr [ %549, %550 ], [ null, %526 ]
  store ptr %552, ptr %517, align 8, !tbaa !635
  %553 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %444, i64 0, i32 25
  store i8 1, ptr %553, align 1, !tbaa !637
  %554 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull %444, ptr noundef nonnull %510)
          to label %555 unwind label %564

555:                                              ; preds = %551
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %4, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %556 unwind label %564

556:                                              ; preds = %555
  %557 = load ptr, ptr %510, align 8, !tbaa !163
  %558 = getelementptr inbounds ptr, ptr %557, i64 1
  %559 = load ptr, ptr %558, align 8
  call void %559(ptr noundef nonnull align 8 dereferenceable(75) %510) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %584

560:                                              ; preds = %544, %520, %508
  %561 = landingpad { ptr, i32 }
          cleanup
  br label %569

562:                                              ; preds = %511
  %563 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %510, ptr noundef %509) #16
  br label %569

564:                                              ; preds = %555, %551
  %565 = landingpad { ptr, i32 }
          cleanup
  %566 = load ptr, ptr %510, align 8, !tbaa !163
  %567 = getelementptr inbounds ptr, ptr %566, i64 1
  %568 = load ptr, ptr %567, align 8
  call void %568(ptr noundef nonnull align 8 dereferenceable(75) %510) #16
  br label %569

569:                                              ; preds = %564, %562, %560
  %570 = phi { ptr, i32 } [ %565, %564 ], [ %561, %560 ], [ %563, %562 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %575

571:                                              ; preds = %394, %401
  %572 = load ptr, ptr %366, align 8, !tbaa !163
  %573 = getelementptr inbounds ptr, ptr %572, i64 1
  %574 = load ptr, ptr %573, align 8
  call void %574(ptr noundef nonnull align 8 dereferenceable(41) %366) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %592

575:                                              ; preds = %427, %459, %569, %506, %504, %408, %406
  %576 = phi ptr [ %428, %427 ], [ %443, %459 ], [ %443, %569 ], [ %443, %506 ], [ %443, %504 ], [ %366, %408 ], [ null, %406 ]
  %577 = phi { ptr, i32 } [ %429, %427 ], [ %460, %459 ], [ %570, %569 ], [ %507, %506 ], [ %505, %504 ], [ %409, %408 ], [ %407, %406 ]
  %578 = icmp eq ptr %576, null
  br i1 %578, label %583, label %579

579:                                              ; preds = %575
  %580 = load ptr, ptr %576, align 8, !tbaa !163
  %581 = getelementptr inbounds ptr, ptr %580, i64 1
  %582 = load ptr, ptr %581, align 8
  call void %582(ptr noundef nonnull align 8 dereferenceable(41) %576) #16
  br label %583

583:                                              ; preds = %575, %579
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %605

584:                                              ; preds = %556, %410
  %585 = phi ptr [ %411, %410 ], [ %443, %556 ]
  %586 = icmp eq ptr %585, null
  br i1 %586, label %591, label %587

587:                                              ; preds = %584
  %588 = load ptr, ptr %585, align 8, !tbaa !163
  %589 = getelementptr inbounds ptr, ptr %588, i64 1
  %590 = load ptr, ptr %589, align 8
  call void %590(ptr noundef nonnull align 8 dereferenceable(41) %585) #16
  br label %591

591:                                              ; preds = %584, %587
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %592

592:                                              ; preds = %334, %334, %357, %591, %571
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %593

593:                                              ; preds = %296, %592
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #16
  br label %594

594:                                              ; preds = %163, %166, %593
  %595 = icmp eq ptr %158, null
  br i1 %595, label %600, label %596

596:                                              ; preds = %594
  %597 = load ptr, ptr %158, align 8, !tbaa !163
  %598 = getelementptr inbounds ptr, ptr %597, i64 1
  %599 = load ptr, ptr %598, align 8
  call void %599(ptr noundef nonnull align 8 dereferenceable(80) %158) #16
  br label %600

600:                                              ; preds = %55, %55, %596, %594
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(40) %25)
          to label %604 unwind label %601

601:                                              ; preds = %600
  %602 = landingpad { ptr, i32 }
          catch ptr null
  %603 = extractvalue { ptr, i32 } %602, 0
  call void @__clang_call_terminate(ptr %603) #17
  unreachable

604:                                              ; preds = %21, %21, %600
  ret void

605:                                              ; preds = %317, %321, %319, %583
  %606 = phi { ptr, i32 } [ %577, %583 ], [ %318, %317 ], [ %320, %319 ], [ %322, %321 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  br label %607

607:                                              ; preds = %205, %297, %605, %192
  %608 = phi { ptr, i32 } [ %606, %605 ], [ %193, %192 ], [ %206, %205 ], [ %298, %297 ]
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #16
  br label %609

609:                                              ; preds = %607, %190
  %610 = phi { ptr, i32 } [ %608, %607 ], [ %191, %190 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #16
  br label %611

611:                                              ; preds = %609, %150, %128
  %612 = phi ptr [ %129, %128 ], [ %158, %609 ], [ %102, %150 ]
  %613 = phi { ptr, i32 } [ %130, %128 ], [ %610, %609 ], [ %151, %150 ]
  %614 = icmp eq ptr %612, null
  br i1 %614, label %619, label %615

615:                                              ; preds = %611
  %616 = load ptr, ptr %612, align 8, !tbaa !163
  %617 = getelementptr inbounds ptr, ptr %616, i64 1
  %618 = load ptr, ptr %617, align 8
  call void %618(ptr noundef nonnull align 8 dereferenceable(80) %612) #16
  br label %619

619:                                              ; preds = %43, %45, %615, %611, %124, %126
  %620 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ], [ %613, %611 ], [ %613, %615 ], [ %44, %43 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(40) %25)
          to label %624 unwind label %621

621:                                              ; preds = %619
  %622 = landingpad { ptr, i32 }
          catch ptr null
  %623 = extractvalue { ptr, i32 } %622, 0
  call void @__clang_call_terminate(ptr %623) #17
  unreachable

624:                                              ; preds = %619
  resume { ptr, i32 } %620

625:                                              ; preds = %458
  unreachable
}

declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !638 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !300
  %6 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
  %7 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !639

9:                                                ; preds = %2
  %10 = call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = load ptr, ptr %4, align 8, !tbaa !300
  %12 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %13 unwind label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !561
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.3, i32 noundef 213, i32 noundef 65, ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %14)
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
  %19 = load ptr, ptr %0, align 8, !tbaa !561
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 16), !prof !640
  %24 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !568
  %26 = load i32, ptr %3, align 4, !tbaa !308
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !240
  store ptr %1, ptr %23, align 8, !tbaa !430
  %30 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %23, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !641
  store ptr %23, ptr %28, align 8, !tbaa !240
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !564
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !563
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %58, !prof !642

37:                                               ; preds = %18
  %38 = uitofp i32 %35 to double
  %39 = fmul double %38, 1.500000e+00
  %40 = fptoui double %39 to i32
  %41 = load ptr, ptr %0, align 8, !tbaa !561
  %42 = zext i32 %40 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = load ptr, ptr %41, align 8, !tbaa !163
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %43)
  %48 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !571
  %50 = load i32, ptr %34, align 8, !tbaa !563
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %47, ptr align 8 %49, i64 %52, i1 false)
  %53 = load ptr, ptr %0, align 8, !tbaa !561
  %54 = load ptr, ptr %48, align 8, !tbaa !571
  %55 = load ptr, ptr %53, align 8, !tbaa !163
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %54)
  store ptr %47, ptr %48, align 8, !tbaa !571
  store i32 %40, ptr %34, align 8, !tbaa !563
  br label %58

58:                                               ; preds = %37, %18
  %59 = load i32, ptr %31, align 4, !tbaa !564
  %60 = add i32 %59, 1
  store i32 %60, ptr %31, align 4, !tbaa !564
  %61 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !571
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %1, ptr %64, align 8, !tbaa !240
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 4
  store i32 %60, ptr %65, align 4, !tbaa !449
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %60
}

declare void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner6scanIdERNS_9XMLBufferES2_NS0_7IDTypesE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776), i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_710DTDScanner18scanInternalSubsetEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

declare noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !643 {
  %2 = load ptr, ptr %0, align 8, !tbaa !620
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !644

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !622
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !645

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !163
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !646

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

declare noundef ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb(ptr noundef nonnull align 8 dereferenceable(49), i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !647 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !529
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !648

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !649
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !540
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !240
  ret ptr %18
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 !prof !650 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !253
  %7 = load ptr, ptr %0, align 8, !tbaa !249
  %8 = load ptr, ptr %4, align 8, !tbaa !163
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !651
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38, !prof !652

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !256
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !653
  %21 = load ptr, ptr %18, align 8, !tbaa !163
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20), !prof !654
  br i1 %24, label %38, label %25, !prof !272

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !prof !655, !llvm.loop !656

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !256
  %32 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !653
  %34 = load ptr, ptr %31, align 8, !tbaa !163
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33), !prof !654
  br i1 %37, label %38, label %25, !prof !655, !llvm.loop !656

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 comdat align 2 !prof !657 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !253
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !255
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !493

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !256
  %15 = load i32, ptr %4, align 8, !tbaa !253
  %16 = load ptr, ptr %0, align 8, !tbaa !249
  %17 = load ptr, ptr %14, align 8, !tbaa !163
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !658
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !252
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !240
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !659

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !256
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !653
  %31 = load ptr, ptr %28, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !654
  br i1 %34, label %39, label %35, !prof !655

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !240
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !660, !llvm.loop !661

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !493

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !251, !range !285, !noundef !286
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !494
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #19
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !494
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !653
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !249
  %54 = load ptr, ptr %53, align 8, !tbaa !163
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !662
  %58 = load ptr, ptr %20, align 8, !tbaa !252
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !240
  store ptr %2, ptr %57, align 8, !tbaa !494
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !491
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !653
  store ptr %57, ptr %59, align 8, !tbaa !240
  %63 = load i32, ptr %8, align 8, !tbaa !255
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !255
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIjE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 !prof !663 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !253
  %7 = load ptr, ptr %0, align 8, !tbaa !249
  %8 = load ptr, ptr %4, align 8, !tbaa !163
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !664
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !257

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !256
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !653
  %22 = load ptr, ptr %19, align 8, !tbaa !163
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !665
  br i1 %25, label %30, label %26, !prof !666

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !667, !llvm.loop !661

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !668

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !494
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_77XMLAttr8setValueEPKt(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #10 comdat align 2 !prof !669 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !255
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !488

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !253
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !489

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !255
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !252
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !240
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !490

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !491
  %23 = load i8, ptr %11, align 8, !tbaa !251, !range !285, !noundef !286
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !493

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !494
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #19
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !249
  %31 = load ptr, ptr %30, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !383
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !493, !llvm.loop !496

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !252
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !240
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !253
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !497, !llvm.loop !498

42:                                               ; preds = %1, %12
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner19parseSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner20resolveSchemaGrammarEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1024), i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner11updateNSMapEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %4) local_unnamed_addr #10 align 2 !prof !400 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = icmp eq i32 %4, -1
  br i1 %8, label %9, label %15, !prof !306

9:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #16
  store i8 0, ptr %6, align 1, !tbaa !292
  store i32 0, ptr %2, align 8, !tbaa !189
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !195
  store i16 0, ptr %11, align 2, !tbaa !196
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %13 = sext i16 %3 to i32
  %14 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, i32 noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #16
  br label %76

15:                                               ; preds = %5
  store i32 0, ptr %2, align 8, !tbaa !189
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %1, i32 noundef %4)
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %2, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !195
  %18 = load i32, ptr %2, align 8, !tbaa !189
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i16, ptr %17, i64 %19
  store i16 0, ptr %20, align 2, !tbaa !196
  %21 = icmp eq ptr %17, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = load i16, ptr %17, align 2, !tbaa !196
  %24 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !196
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %29, label %46

26:                                               ; preds = %15
  %27 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !196
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %46

29:                                               ; preds = %22, %34
  %30 = phi i16 [ %37, %34 ], [ %23, %22 ]
  %31 = phi ptr [ %36, %34 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %22 ]
  %32 = phi ptr [ %35, %34 ], [ %17, %22 ]
  %33 = icmp eq i16 %30, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = load i16, ptr %35, align 2, !tbaa !196
  %38 = load i16, ptr %36, align 2, !tbaa !196
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %29, label %46, !llvm.loop !346

40:                                               ; preds = %29, %26
  %41 = icmp eq i16 %3, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 305, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %43

43:                                               ; preds = %42, %40
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %45 = load i32, ptr %44, align 8, !tbaa !670
  br label %76

46:                                               ; preds = %34, %22, %26
  br i1 %21, label %51, label %47

47:                                               ; preds = %46
  %48 = load i16, ptr %17, align 2, !tbaa !196
  %49 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !196
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %54, label %68

51:                                               ; preds = %46
  %52 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgXMLStringE, align 2, !tbaa !196
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %68

54:                                               ; preds = %47, %59
  %55 = phi i16 [ %62, %59 ], [ %48, %47 ]
  %56 = phi ptr [ %61, %59 ], [ @_ZN11xercesc_2_76XMLUni11fgXMLStringE, %47 ]
  %57 = phi ptr [ %60, %59 ], [ %17, %47 ]
  %58 = icmp eq i16 %55, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  %62 = load i16, ptr %60, align 2, !tbaa !196
  %63 = load i16, ptr %61, align 2, !tbaa !196
  %64 = icmp eq i16 %62, %63
  br i1 %64, label %54, label %68, !llvm.loop !346

65:                                               ; preds = %54, %51
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %67 = load i32, ptr %66, align 4, !tbaa !671
  br label %76

68:                                               ; preds = %59, %47, %51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #16
  store i8 0, ptr %7, align 1, !tbaa !292
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %70 = sext i16 %3 to i32
  %71 = call noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104) %69, ptr noundef %17, i32 noundef %70, ptr noundef nonnull align 1 dereferenceable(1) %7)
  %72 = load i8, ptr %7, align 1, !tbaa !292, !range !285, !noundef !286
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 277, ptr noundef %17, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %75

75:                                               ; preds = %74, %68
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #16
  br label %76

76:                                               ; preds = %43, %65, %75, %9
  %77 = phi i32 [ %14, %9 ], [ %45, %43 ], [ %67, %65 ], [ %71, %75 ]
  ret i32 %77
}

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_712IGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 !prof !672 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !673

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !574, !range !285, !noundef !286
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !443
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !163
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #16
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !443
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !674
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !675
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !676
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !572
  %26 = load ptr, ptr %25, align 8, !tbaa !163
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !prof !677
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !575
  %32 = load i32, ptr %6, align 4, !tbaa !308
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !240
  store ptr %4, ptr %29, align 8, !tbaa !443
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !678
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 2
  store ptr %1, ptr %37, align 8, !tbaa !674
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 3
  store i32 %2, ptr %38, align 8, !tbaa !675
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 4
  store i32 %3, ptr %39, align 4, !tbaa !676
  store ptr %29, ptr %34, align 8, !tbaa !240
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !578
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !577
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %68, !prof !679

47:                                               ; preds = %40
  %48 = uitofp i32 %45 to double
  %49 = fmul double %48, 1.500000e+00
  %50 = fptoui double %49 to i32
  %51 = load ptr, ptr %0, align 8, !tbaa !572
  %52 = zext i32 %50 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = load ptr, ptr %51, align 8, !tbaa !163
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %53)
  %58 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !582
  %60 = load i32, ptr %44, align 8, !tbaa !577
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 8 %59, i64 %62, i1 false)
  %63 = load ptr, ptr %0, align 8, !tbaa !572
  %64 = load ptr, ptr %58, align 8, !tbaa !582
  %65 = load ptr, ptr %63, align 8, !tbaa !163
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %64)
  store ptr %57, ptr %58, align 8, !tbaa !582
  store i32 %50, ptr %44, align 8, !tbaa !577
  br label %68

68:                                               ; preds = %47, %40
  %69 = load i32, ptr %41, align 4, !tbaa !578
  %70 = add i32 %69, 1
  store i32 %70, ptr %41, align 4, !tbaa !578
  %71 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !582
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  store ptr %4, ptr %74, align 8, !tbaa !240
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %4, i64 0, i32 4
  store i32 %70, ptr %75, align 4, !tbaa !449
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %70
}

declare void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 comdat align 2 !prof !680 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !681

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !189
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !190
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !479

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = load i32, ptr %0, align 8, !tbaa !189
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !682
  %20 = load i32, ptr %0, align 8, !tbaa !189
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !189
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner15resizeElemStateEv(ptr nocapture noundef nonnull align 8 dereferenceable(1024) %0) local_unnamed_addr #4 align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !187
  %4 = shl i32 %3, 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !201
  %7 = zext i32 %4 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = load ptr, ptr %6, align 8, !tbaa !163
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  %13 = load i32, ptr %2, align 8, !tbaa !187
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !188
  br label %32

18:                                               ; preds = %32
  %19 = trunc i64 %37 to i32
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ 0, %1 ], [ %19, %18 ]
  %22 = icmp ult i32 %21, %4
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = zext i32 %21 to i64
  %25 = shl nuw nsw i64 %24, 2
  %26 = getelementptr i8, ptr %12, i64 %25
  %27 = xor i32 %21, -1
  %28 = add i32 %4, %27
  %29 = zext i32 %28 to i64
  %30 = shl nuw nsw i64 %29, 2
  %31 = add nuw nsw i64 %30, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %26, i8 0, i64 %31, i1 false), !tbaa !308
  br label %41

32:                                               ; preds = %15, %32
  %33 = phi i64 [ 0, %15 ], [ %37, %32 ]
  %34 = getelementptr inbounds i32, ptr %17, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !308
  %36 = getelementptr inbounds i32, ptr %12, i64 %33
  store i32 %35, ptr %36, align 4, !tbaa !308
  %37 = add nuw nsw i64 %33, 1
  %38 = load i32, ptr %2, align 8, !tbaa !187
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %32, label %18, !llvm.loop !683

41:                                               ; preds = %23, %20
  %42 = load ptr, ptr %5, align 8, !tbaa !201
  %43 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !188
  %45 = load ptr, ptr %42, align 8, !tbaa !163
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %44)
  store ptr %12, ptr %43, align 8, !tbaa !188
  store i32 %4, ptr %2, align 8, !tbaa !187
  ret void
}

declare noundef i32 @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #10 comdat align 2 !prof !560 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !266
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !499

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !265
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 4, !tbaa !266
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !264
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !240
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !500
  %23 = load i8, ptr %11, align 8, !tbaa !263, !range !285, !noundef !286
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !502
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #19
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !261
  %31 = load ptr, ptr %30, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !503

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !264
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !240
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !265
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !504

42:                                               ; preds = %1, %12
  ret void
}

declare void @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_77XSModel11getXSObjectEPv(ptr noundef nonnull align 8 dereferenceable(298), ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_711PSVIElement5resetENS_8PSVIItem14VALIDITY_STATEENS1_15ASSESSMENT_TYPEEPKtbPNS_20XSElementDeclarationEPNS_16XSTypeDefinitionEPNS_22XSSimpleTypeDefinitionEPNS_7XSModelES5_S5_PtPNS_21XSNotationDeclarationE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712IGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %4) unnamed_addr #4 align 2 !prof !160 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 58)
  store i32 %6, ptr %4, align 4, !tbaa !308
  %7 = tail call noundef i32 @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, i16 noundef signext %3, i32 noundef %6)
  ret i32 %7
}

declare noundef i32 @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i16 noundef signext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %7 = load ptr, ptr %6, align 8, !tbaa !623
  invoke void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80) %7, i1 noundef zeroext false)
          to label %8 unwind label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !623
  %10 = zext i1 %3 to i8
  %11 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %9, i64 0, i32 1
  store i8 %10, ptr %11, align 1, !tbaa !684
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr null, ptr %12, align 8, !tbaa !454
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  %14 = load i32, ptr %13, align 8, !tbaa !617
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %53

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %17, align 8, !tbaa !284
  br label %53

18:                                               ; preds = %61, %59, %4
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
  br i1 %23, label %24, label %32

24:                                               ; preds = %18, %32
  %25 = tail call ptr @__cxa_begin_catch(ptr %20) #16
  tail call void @__cxa_end_catch() #16
  br label %26

26:                                               ; preds = %24, %59, %105, %61, %53
  %27 = phi ptr [ null, %53 ], [ %62, %61 ], [ null, %105 ], [ %60, %59 ], [ null, %24 ]
  invoke void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %31 unwind label %28

28:                                               ; preds = %26
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #17
  unreachable

31:                                               ; preds = %26
  ret ptr %27

32:                                               ; preds = %18
  %33 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #16
  %34 = icmp eq i32 %21, %33
  br i1 %34, label %24, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #16
  %37 = icmp eq i32 %21, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = tail call ptr @__cxa_begin_catch(ptr %20) #16
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %40, align 1, !tbaa !280
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !281
  %43 = add i32 %42, -1
  %44 = icmp ult i32 %43, 4
  br i1 %44, label %45, label %77

45:                                               ; preds = %38
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !290
  br label %96

48:                                               ; preds = %35
  %49 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %50 = icmp eq i32 %21, %49
  br i1 %50, label %51, label %115

51:                                               ; preds = %48
  %52 = tail call ptr @__cxa_begin_catch(ptr %20) #16
  invoke void @__cxa_rethrow() #18
          to label %134 unwind label %63

53:                                               ; preds = %16, %8
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %54, align 1, !tbaa !280
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %55, align 2, !tbaa !685
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %56, align 8, !tbaa !686
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %57, align 1, !tbaa !619
  %58 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %58, align 8, !tbaa !166
  switch i16 %2, label %26 [
    i16 1, label %59
    i16 0, label %61
  ]

59:                                               ; preds = %53
  %60 = invoke noundef ptr @_ZN11xercesc_2_712IGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3)
          to label %26 unwind label %18

61:                                               ; preds = %53
  %62 = invoke noundef ptr @_ZN11xercesc_2_712IGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %3)
          to label %26 unwind label %18

63:                                               ; preds = %51
  %64 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %65 unwind label %131

65:                                               ; preds = %63
  %66 = extractvalue { ptr, i32 } %64, 1
  %67 = extractvalue { ptr, i32 } %64, 0
  br label %115

68:                                               ; preds = %96, %91, %86
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %70 = extractvalue { ptr, i32 } %69, 0
  %71 = extractvalue { ptr, i32 } %69, 1
  %72 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %110

74:                                               ; preds = %68
  %75 = tail call ptr @__cxa_begin_catch(ptr %70) #16
  invoke void @__cxa_rethrow() #18
          to label %76 unwind label %100

76:                                               ; preds = %74
  unreachable

77:                                               ; preds = %38
  %78 = add i32 %42, -5
  %79 = icmp ult i32 %78, 397
  %80 = and i32 %42, -2
  %81 = icmp ne i32 %80, 402
  %82 = or i1 %79, %81
  %83 = load ptr, ptr %39, align 8, !tbaa !163
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8
  br i1 %82, label %86, label %91

86:                                               ; preds = %77
  %87 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(48) %39)
          to label %88 unwind label %68

88:                                               ; preds = %86
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !290
  br label %96

91:                                               ; preds = %77
  %92 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(48) %39)
          to label %93 unwind label %68

93:                                               ; preds = %91
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %39, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !290
  br label %96

96:                                               ; preds = %45, %88, %93
  %97 = phi i32 [ 157, %93 ], [ 292, %88 ], [ 156, %45 ]
  %98 = phi ptr [ %92, %93 ], [ %87, %88 ], [ %47, %45 ]
  %99 = phi ptr [ %95, %93 ], [ %90, %88 ], [ null, %45 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %97, ptr noundef %98, ptr noundef %99, ptr noundef null, ptr noundef null)
          to label %105 unwind label %68

100:                                              ; preds = %74
  %101 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %102 unwind label %131

102:                                              ; preds = %100
  %103 = extractvalue { ptr, i32 } %101, 1
  %104 = extractvalue { ptr, i32 } %101, 0
  br label %110

105:                                              ; preds = %96
  invoke void @__cxa_end_catch()
          to label %26 unwind label %106

106:                                              ; preds = %105
  %107 = landingpad { ptr, i32 }
          cleanup
  %108 = extractvalue { ptr, i32 } %107, 0
  %109 = extractvalue { ptr, i32 } %107, 1
  br label %115

110:                                              ; preds = %102, %68
  %111 = phi i64 [ 0, %102 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %68 ]
  %112 = phi ptr [ null, %102 ], [ %5, %68 ]
  %113 = phi i32 [ %103, %102 ], [ %71, %68 ]
  %114 = phi ptr [ %104, %102 ], [ %70, %68 ]
  invoke void @__cxa_end_catch()
          to label %115 unwind label %131

115:                                              ; preds = %110, %106, %65, %48
  %116 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %106 ], [ 0, %65 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %48 ], [ %111, %110 ]
  %117 = phi ptr [ %5, %106 ], [ null, %65 ], [ %5, %48 ], [ %112, %110 ]
  %118 = phi i32 [ %109, %106 ], [ %66, %65 ], [ %21, %48 ], [ %113, %110 ]
  %119 = phi ptr [ %108, %106 ], [ %67, %65 ], [ %20, %48 ], [ %114, %110 ]
  %120 = icmp eq ptr %117, null
  %121 = icmp eq i64 %116, 0
  %122 = or i1 %121, %120
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = inttoptr i64 %116 to ptr
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(80) %117)
          to label %128 unwind label %125

125:                                              ; preds = %123
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  tail call void @__clang_call_terminate(ptr %127) #17
  unreachable

128:                                              ; preds = %115, %123
  %129 = insertvalue { ptr, i32 } poison, ptr %119, 0
  %130 = insertvalue { ptr, i32 } %129, i32 %118, 1
  resume { ptr, i32 } %130

131:                                              ; preds = %110, %100, %63
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  tail call void @__clang_call_terminate(ptr %133) #17
  unreachable

134:                                              ; preds = %51
  unreachable
}

declare void @_ZN11xercesc_2_715GrammarResolver21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_712IGXMLScanner20loadXMLSchemaGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712IGXMLScanner14loadDTDGrammarERKNS_11InputSourceEb(ptr noundef nonnull align 8 dereferenceable(1024) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %4 = alloca [4 x i16], align 8
  %5 = alloca %"class.xercesc_2_7::DTDScanner", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !206
  %8 = load ptr, ptr %7, align 8, !tbaa !163
  %9 = getelementptr inbounds ptr, ptr %8, i64 6
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %12 = load i8, ptr %11, align 1, !tbaa !394, !range !285, !noundef !286
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %16 = load ptr, ptr %15, align 8, !tbaa !269
  %17 = load ptr, ptr %16, align 8, !tbaa !163
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(40) %16)
  br label %20

20:                                               ; preds = %14, %3
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %22 = load ptr, ptr %21, align 8, !tbaa !269
  %23 = load ptr, ptr %22, align 8, !tbaa !163
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(40) %22)
  br i1 %26, label %43, label %27

27:                                               ; preds = %20
  %28 = load i8, ptr %11, align 1, !tbaa !394, !range !285, !noundef !286
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %31 = load i8, ptr %30, align 8, !range !285
  %32 = icmp eq i8 %31, 0
  %33 = select i1 %29, i1 true, i1 %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %27
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %37 = load ptr, ptr %36, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 3059, i32 noundef 44, ptr noundef %37)
          to label %38 unwind label %39

38:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #16
  br label %310

41:                                               ; preds = %27
  %42 = load ptr, ptr %6, align 8, !tbaa !206
  store ptr %42, ptr %21, align 8, !tbaa !269
  br label %43

43:                                               ; preds = %41, %20
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %45 = load ptr, ptr %44, align 8, !tbaa !623
  %46 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %45, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE)
  %47 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 11
  store ptr %46, ptr %47, align 8, !tbaa !271
  %48 = icmp eq ptr %46, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %46, align 8, !tbaa !163
  %51 = getelementptr inbounds ptr, ptr %50, i64 20
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(61) %46)
  br label %62

53:                                               ; preds = %43
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %55 = load ptr, ptr %54, align 8, !tbaa !618
  %56 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %55)
  %57 = load ptr, ptr %54, align 8, !tbaa !618
  invoke void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %56, ptr noundef %57)
          to label %58 unwind label %60

58:                                               ; preds = %53
  store ptr %56, ptr %47, align 8, !tbaa !271
  %59 = load ptr, ptr %44, align 8, !tbaa !623
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %59, ptr noundef nonnull %56)
  br label %62

60:                                               ; preds = %53
  %61 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %56, ptr noundef %55) #16
  br label %310

62:                                               ; preds = %58, %49
  %63 = load ptr, ptr %47, align 8, !tbaa !271
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %63, ptr %64, align 8, !tbaa !389
  %65 = load ptr, ptr %63, align 8, !tbaa !163
  %66 = getelementptr inbounds ptr, ptr %65, i64 5
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef i32 %67(ptr noundef nonnull align 8 dereferenceable(8) %63)
  %69 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %68, ptr %69, align 4, !tbaa !186
  %70 = load ptr, ptr %21, align 8, !tbaa !269
  %71 = load ptr, ptr %64, align 8, !tbaa !389
  %72 = load ptr, ptr %70, align 8, !tbaa !163
  %73 = getelementptr inbounds ptr, ptr %72, i64 11
  %74 = load ptr, ptr %73, align 8
  tail call void %74(ptr noundef nonnull align 8 dereferenceable(40) %70, ptr noundef %71)
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %76 = load ptr, ptr %75, align 8, !tbaa !278
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %62
  %79 = load ptr, ptr %76, align 8, !tbaa !163
  %80 = getelementptr inbounds ptr, ptr %79, i64 9
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(8) %76)
  br label %82

82:                                               ; preds = %78, %62
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %84 = load ptr, ptr %83, align 8, !tbaa !687
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %84, align 8, !tbaa !163
  %88 = getelementptr inbounds ptr, ptr %87, i64 4
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(8) %84)
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %92 = load ptr, ptr %91, align 8, !tbaa !688
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load ptr, ptr %92, align 8, !tbaa !163
  %96 = getelementptr inbounds ptr, ptr %95, i64 3
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(8) %92)
  br label %98

98:                                               ; preds = %94, %90
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %100 = load ptr, ptr %99, align 8, !tbaa !363
  %101 = load ptr, ptr %100, align 8, !tbaa !163
  %102 = getelementptr inbounds ptr, ptr %101, i64 4
  %103 = load ptr, ptr %102, align 8
  tail call void %103(ptr noundef nonnull align 8 dereferenceable(16) %100)
  %104 = load ptr, ptr %99, align 8, !tbaa !363
  %105 = load ptr, ptr %104, align 8, !tbaa !163
  %106 = getelementptr inbounds ptr, ptr %105, i64 9
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(16) %104, ptr noundef null)
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %109, align 8, !tbaa !689
  %110 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 14
  %111 = load ptr, ptr %110, align 8, !tbaa !216
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %111)
  br i1 %2, label %112, label %143

112:                                              ; preds = %98
  %113 = load ptr, ptr %44, align 8, !tbaa !623
  %114 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %113, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !628
  %116 = load ptr, ptr %1, align 8, !tbaa !163
  %117 = getelementptr inbounds ptr, ptr %116, i64 5
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %120 = load ptr, ptr %115, align 8, !tbaa !163
  %121 = getelementptr inbounds ptr, ptr %120, i64 5
  %122 = load ptr, ptr %121, align 8
  %123 = tail call noundef i32 %122(ptr noundef nonnull align 8 dereferenceable(40) %115, ptr noundef %119)
  %124 = load ptr, ptr %44, align 8, !tbaa !623
  %125 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %124, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !628
  %127 = load ptr, ptr %126, align 8, !tbaa !163
  %128 = getelementptr inbounds ptr, ptr %127, i64 10
  %129 = load ptr, ptr %128, align 8
  %130 = tail call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(40) %126, i32 noundef %123)
  %131 = load ptr, ptr %44, align 8, !tbaa !623
  %132 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver13orphanGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %131, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE)
  %133 = load ptr, ptr %64, align 8, !tbaa !389
  %134 = load ptr, ptr %133, align 8, !tbaa !163
  %135 = getelementptr inbounds ptr, ptr %134, i64 22
  %136 = load ptr, ptr %135, align 8
  %137 = tail call noundef ptr %136(ptr noundef nonnull align 8 dereferenceable(8) %133)
  %138 = load ptr, ptr %137, align 8, !tbaa !163
  %139 = getelementptr inbounds ptr, ptr %138, i64 10
  %140 = load ptr, ptr %139, align 8
  tail call void %140(ptr noundef nonnull align 8 dereferenceable(16) %137, ptr noundef %130)
  %141 = load ptr, ptr %44, align 8, !tbaa !623
  %142 = load ptr, ptr %64, align 8, !tbaa !389
  tail call void @_ZN11xercesc_2_715GrammarResolver10putGrammarEPNS_7GrammarE(ptr noundef nonnull align 8 dereferenceable(80) %141, ptr noundef %142)
  br label %143

143:                                              ; preds = %112, %98
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %146 = load i8, ptr %145, align 1, !tbaa !625, !range !285, !noundef !286
  %147 = icmp ne i8 %146, 0
  %148 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %144, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext false, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %147)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %175

150:                                              ; preds = %143
  %151 = load ptr, ptr %1, align 8, !tbaa !163
  %152 = getelementptr inbounds ptr, ptr %151, i64 6
  %153 = load ptr, ptr %152, align 8
  %154 = tail call noundef zeroext i1 %153(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %155 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %156 = load ptr, ptr %1, align 8, !tbaa !163
  %157 = getelementptr inbounds ptr, ptr %156, i64 5
  %158 = load ptr, ptr %157, align 8
  br i1 %154, label %159, label %167

159:                                              ; preds = %150
  %160 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %161 unwind label %165

161:                                              ; preds = %159
  %162 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %163 = load ptr, ptr %162, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %155, ptr noundef nonnull @.str, i32 noundef 3116, i32 noundef 76, ptr noundef %160, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %163)
          to label %164 unwind label %165

164:                                              ; preds = %161
  tail call void @__cxa_throw(ptr nonnull %155, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

165:                                              ; preds = %161, %159
  %166 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %155) #16
  br label %310

167:                                              ; preds = %150
  %168 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %169 unwind label %173

169:                                              ; preds = %167
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %171 = load ptr, ptr %170, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %155, ptr noundef nonnull @.str, i32 noundef 3118, i32 noundef 2, ptr noundef %168, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %171)
          to label %172 unwind label %173

172:                                              ; preds = %169
  tail call void @__cxa_throw(ptr nonnull %155, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

173:                                              ; preds = %169, %167
  %174 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %155) #16
  br label %310

175:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  store i64 292063281220, ptr %4, align 8
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %177 = load ptr, ptr %176, align 8, !tbaa !201
  %178 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %177)
  %179 = load ptr, ptr %176, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %178, ptr noundef nonnull %4, ptr noundef %179)
          to label %180 unwind label %258

180:                                              ; preds = %175
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %178, align 8, !tbaa !163
  %181 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %178, i64 0, i32 1
  store i8 0, ptr %181, align 8, !tbaa !630
  %182 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %178, i64 0, i32 2
  store i8 0, ptr %182, align 1, !tbaa !633
  %183 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %178, i64 0, i32 3
  store i8 0, ptr %183, align 2, !tbaa !634
  %184 = load ptr, ptr %1, align 8, !tbaa !163
  %185 = getelementptr inbounds ptr, ptr %184, i64 5
  %186 = load ptr, ptr %185, align 8
  %187 = call noundef ptr %186(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %178, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !635
  %190 = icmp eq ptr %189, null
  br i1 %190, label %197, label %191

191:                                              ; preds = %180
  %192 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %178, i64 0, i32 9
  %193 = load ptr, ptr %192, align 8, !tbaa !636
  %194 = load ptr, ptr %193, align 8, !tbaa !163
  %195 = getelementptr inbounds ptr, ptr %194, i64 3
  %196 = load ptr, ptr %195, align 8
  call void %196(ptr noundef nonnull align 8 dereferenceable(8) %193, ptr noundef nonnull %189)
  br label %197

197:                                              ; preds = %191, %180
  %198 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %178, i64 0, i32 9
  %199 = load ptr, ptr %198, align 8, !tbaa !636
  %200 = icmp eq ptr %187, null
  br i1 %200, label %221, label %201

201:                                              ; preds = %197
  %202 = load i16, ptr %187, align 2, !tbaa !196
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %201, %204
  %205 = phi ptr [ %206, %204 ], [ %187, %201 ]
  %206 = getelementptr inbounds i16, ptr %205, i64 1
  %207 = load i16, ptr %206, align 2, !tbaa !196
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %204, !llvm.loop !458

209:                                              ; preds = %204
  %210 = ptrtoint ptr %206 to i64
  %211 = ptrtoint ptr %187 to i64
  %212 = sub i64 %210, %211
  %213 = add i64 %212, 2
  %214 = and i64 %213, 8589934590
  br label %215

215:                                              ; preds = %209, %201
  %216 = phi i64 [ %214, %209 ], [ 2, %201 ]
  %217 = load ptr, ptr %199, align 8, !tbaa !163
  %218 = getelementptr inbounds ptr, ptr %217, i64 2
  %219 = load ptr, ptr %218, align 8
  %220 = call noundef ptr %219(ptr noundef nonnull align 8 dereferenceable(8) %199, i64 noundef %216)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %220, ptr nonnull align 2 %187, i64 %216, i1 false)
  br label %221

221:                                              ; preds = %197, %215
  %222 = phi ptr [ %220, %215 ], [ null, %197 ]
  store ptr %222, ptr %188, align 8, !tbaa !635
  %223 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %148, i64 0, i32 25
  store i8 1, ptr %223, align 1, !tbaa !637
  %224 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %144, ptr noundef nonnull %148, ptr noundef nonnull %178)
          to label %225 unwind label %260

225:                                              ; preds = %221
  %226 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %227 = load ptr, ptr %226, align 8, !tbaa !613
  %228 = icmp eq ptr %227, null
  br i1 %228, label %271, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %231 = load ptr, ptr %230, align 8, !tbaa !618
  %232 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %231)
          to label %233 unwind label %262

233:                                              ; preds = %229
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %235 = load i32, ptr %234, align 4, !tbaa !420
  %236 = load ptr, ptr %230, align 8, !tbaa !618
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %232, ptr noundef nonnull %4, i32 noundef %235, i32 noundef 1, ptr noundef %236)
          to label %237 unwind label %264

237:                                              ; preds = %233
  %238 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %232, i64 0, i32 3
  store i32 4, ptr %238, align 8, !tbaa !332
  %239 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %232, i64 0, i32 5
  store i8 1, ptr %239, align 8, !tbaa !615
  %240 = load ptr, ptr %226, align 8, !tbaa !613
  %241 = load ptr, ptr %1, align 8, !tbaa !163
  %242 = getelementptr inbounds ptr, ptr %241, i64 4
  %243 = load ptr, ptr %242, align 8
  %244 = invoke noundef ptr %243(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %245 unwind label %266

245:                                              ; preds = %237
  %246 = load ptr, ptr %1, align 8, !tbaa !163
  %247 = getelementptr inbounds ptr, ptr %246, i64 5
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef ptr %248(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %250 unwind label %266

250:                                              ; preds = %245
  %251 = load ptr, ptr %240, align 8, !tbaa !163
  %252 = getelementptr inbounds ptr, ptr %251, i64 4
  %253 = load ptr, ptr %252, align 8
  invoke void %253(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef nonnull align 8 dereferenceable(80) %232, ptr noundef %244, ptr noundef %249, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %254 unwind label %266

254:                                              ; preds = %250
  %255 = load ptr, ptr %232, align 8, !tbaa !163
  %256 = getelementptr inbounds ptr, ptr %255, i64 1
  %257 = load ptr, ptr %256, align 8
  call void %257(ptr noundef nonnull align 8 dereferenceable(80) %232) #16
  br label %271

258:                                              ; preds = %175
  %259 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %178, ptr noundef %177) #16
  br label %308

260:                                              ; preds = %221
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %303

262:                                              ; preds = %229
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %303

264:                                              ; preds = %233
  %265 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %232, ptr noundef %231) #16
  br label %303

266:                                              ; preds = %250, %245, %237
  %267 = landingpad { ptr, i32 }
          cleanup
  %268 = load ptr, ptr %232, align 8, !tbaa !163
  %269 = getelementptr inbounds ptr, ptr %268, i64 1
  %270 = load ptr, ptr %269, align 8
  call void %270(ptr noundef nonnull align 8 dereferenceable(80) %232) #16
  br label %303

271:                                              ; preds = %254, %225
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %5) #16
  %272 = load ptr, ptr %64, align 8, !tbaa !389
  %273 = load ptr, ptr %226, align 8, !tbaa !613
  %274 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  %275 = load ptr, ptr %274, align 8, !tbaa !618
  %276 = load ptr, ptr %176, align 8, !tbaa !201
  invoke void @_ZN11xercesc_2_710DTDScannerC1EPNS_10DTDGrammarEPNS_14DocTypeHandlerEPNS_13MemoryManagerES6_(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef %272, ptr noundef %273, ptr noundef %275, ptr noundef %276)
          to label %277 unwind label %289

277:                                              ; preds = %271
  %278 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_710DTDScanner14setScannerInfoEPNS_10XMLScannerEPNS_9ReaderMgrEPNS_12XMLBufferMgrE(ptr noundef nonnull align 8 dereferenceable(112) %5, ptr noundef nonnull %0, ptr noundef nonnull %144, ptr noundef nonnull %278)
          to label %279 unwind label %291

279:                                              ; preds = %277
  invoke void @_ZN11xercesc_2_710DTDScanner17scanExtSubsetDeclEbb(ptr noundef nonnull align 8 dereferenceable(112) %5, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %280 unwind label %291

280:                                              ; preds = %279
  %281 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %282 = load i8, ptr %281, align 8, !tbaa !284, !range !285, !noundef !286
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %293, label %284

284:                                              ; preds = %280
  %285 = load ptr, ptr %21, align 8, !tbaa !269
  %286 = load ptr, ptr %285, align 8, !tbaa !163
  %287 = getelementptr inbounds ptr, ptr %286, i64 4
  %288 = load ptr, ptr %287, align 8
  invoke void %288(ptr noundef nonnull align 8 dereferenceable(40) %285, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %293 unwind label %291

289:                                              ; preds = %271
  %290 = landingpad { ptr, i32 }
          cleanup
  br label %301

291:                                              ; preds = %294, %284, %279, %277
  %292 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #16
  br label %301

293:                                              ; preds = %284, %280
  br i1 %2, label %294, label %296

294:                                              ; preds = %293
  %295 = load ptr, ptr %44, align 8, !tbaa !623
  invoke void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80) %295)
          to label %296 unwind label %291

296:                                              ; preds = %294, %293
  %297 = load ptr, ptr %47, align 8, !tbaa !271
  call void @_ZN11xercesc_2_710DTDScannerD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %5) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #16
  %298 = load ptr, ptr %178, align 8, !tbaa !163
  %299 = getelementptr inbounds ptr, ptr %298, i64 1
  %300 = load ptr, ptr %299, align 8
  call void %300(ptr noundef nonnull align 8 dereferenceable(75) %178) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %297

301:                                              ; preds = %291, %289
  %302 = phi { ptr, i32 } [ %292, %291 ], [ %290, %289 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %5) #16
  br label %303

303:                                              ; preds = %260, %301, %266, %264, %262
  %304 = phi { ptr, i32 } [ %302, %301 ], [ %261, %260 ], [ %267, %266 ], [ %265, %264 ], [ %263, %262 ]
  %305 = load ptr, ptr %178, align 8, !tbaa !163
  %306 = getelementptr inbounds ptr, ptr %305, i64 1
  %307 = load ptr, ptr %306, align 8
  call void %307(ptr noundef nonnull align 8 dereferenceable(75) %178) #16
  br label %308

308:                                              ; preds = %303, %258
  %309 = phi { ptr, i32 } [ %304, %303 ], [ %259, %258 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  br label %310

310:                                              ; preds = %165, %173, %308, %60, %39
  %311 = phi { ptr, i32 } [ %61, %60 ], [ %40, %39 ], [ %309, %308 ], [ %166, %165 ], [ %174, %173 ]
  resume { ptr, i32 } %311
}

declare void @_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61), ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !690 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !565
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !691

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !564
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !568
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !240
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !692

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !641
  %19 = load ptr, ptr %16, align 8, !tbaa !430
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !642

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !163
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(80) %19) #16, !prof !693
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !561
  %27 = load ptr, ptr %26, align 8, !tbaa !163
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16), !prof !694
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !639, !llvm.loop !695

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !568
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !240
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !565
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !696, !llvm.loop !697
}

declare void @_ZN11xercesc_2_715GrammarResolver13cacheGrammarsEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1024) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !270 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !309
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !212
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %6, i64 0, i32 1
  store i32 0, ptr %7, align 4, !tbaa !246
  %8 = load i16, ptr %1, align 2, !tbaa !196
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %55, label %10, !prof !382

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 28
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 28
  br label %13

13:                                               ; preds = %10, %51
  %14 = phi ptr [ %1, %10 ], [ %52, %51 ]
  %15 = load ptr, ptr %11, align 8, !tbaa !534
  br label %16

16:                                               ; preds = %13, %23
  %17 = phi ptr [ %24, %23 ], [ %14, %13 ]
  %18 = load i16, ptr %17, align 2, !tbaa !196
  %19 = zext i16 %18 to i64
  %20 = getelementptr inbounds i8, ptr %15, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !407
  %22 = icmp slt i8 %21, 0
  br i1 %22, label %23, label %27, !prof !698

23:                                               ; preds = %16
  store i16 0, ptr %17, align 2, !tbaa !196
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !196
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %16, !prof !272, !llvm.loop !699

27:                                               ; preds = %23, %16
  %28 = phi ptr [ %17, %16 ], [ %24, %23 ]
  %29 = load i16, ptr %28, align 2, !tbaa !196
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %51, label %31, !prof !700

31:                                               ; preds = %27
  %32 = load ptr, ptr %5, align 8, !tbaa !212
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %32, i32 noundef 1)
  %33 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !215
  %35 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %32, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !246
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  store ptr %28, ptr %38, align 8, !tbaa !240
  %39 = add i32 %36, 1
  store i32 %39, ptr %35, align 4, !tbaa !246
  br label %40

40:                                               ; preds = %45, %31
  %41 = phi ptr [ %28, %31 ], [ %42, %45 ]
  %42 = getelementptr inbounds i16, ptr %41, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !196
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %51, label %45, !prof !701

45:                                               ; preds = %40
  %46 = load ptr, ptr %12, align 8, !tbaa !534
  %47 = zext i16 %43 to i64
  %48 = getelementptr inbounds i8, ptr %46, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !407
  %50 = icmp slt i8 %49, 0
  br i1 %50, label %51, label %40, !prof !702, !llvm.loop !703

51:                                               ; preds = %45, %40, %27
  %52 = phi ptr [ %28, %27 ], [ %42, %40 ], [ %42, %45 ]
  %53 = load i16, ptr %52, align 2, !tbaa !196
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %13, !prof !704, !llvm.loop !705

55:                                               ; preds = %51, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_712IGXMLScanner20resetPSVIElemContextEv(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1024) %0) local_unnamed_addr #13 align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24
  store i8 0, ptr %2, align 8, !tbaa !365
  %3 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 1
  store i8 0, ptr %3, align 1, !tbaa !330
  %4 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 2
  store i32 -1, ptr %4, align 4, !tbaa !461
  %5 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 3
  store i32 -1, ptr %5, align 8, !tbaa !463
  %6 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 4
  store i32 -1, ptr %6, align 4, !tbaa !462
  %7 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 24, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !630, !range !285, !noundef !286
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !633, !range !285, !noundef !286
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #3 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !634, !range !285, !noundef !286
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 comdat align 2 !prof !160 {
  %3 = load ptr, ptr %0, align 8, !tbaa !163
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712IGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #3 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::IGXMLScanner", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !186
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712IGXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(1024) %0) unnamed_addr #3 comdat align 2 !prof !160 {
  ret ptr @_ZN11xercesc_2_76XMLUni14fgIGXMLScannerE
}

declare void @_ZN11xercesc_2_712IGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1024)) unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare noundef i32 @_ZN11xercesc_2_712IGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1024), i1 noundef zeroext, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #5

declare void @_ZN11xercesc_2_712IGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_712IGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1024), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !163
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !163
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !707 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !338
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !708

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !709
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #16
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !338
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !710

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !709
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf.9", ptr %0, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !711
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !163
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !163
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #10 comdat align 2 !prof !712 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !713

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !196
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !714

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !196
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !715, !llvm.loop !716

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !189
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !190
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !717

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !195
  %24 = load i32, ptr %0, align 8, !tbaa !189
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !718
  %28 = load i32, ptr %0, align 8, !tbaa !189
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !189
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_75QName7setNameEPKtS2_j(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #5

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #10 comdat align 2 !prof !719 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !565
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !720

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !196
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !720

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !196
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !721

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
  %25 = load i16, ptr %24, align 2, !tbaa !196
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !722, !llvm.loop !723

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !308
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !568
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !240
  %37 = icmp eq ptr %36, null
  br i1 %37, label %73, label %38, !prof !724

38:                                               ; preds = %30, %69
  %39 = phi ptr [ %71, %69 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !430
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !300
  %43 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %42)
  %44 = icmp eq ptr %43, null
  %45 = or i1 %6, %44
  br i1 %45, label %50, label %46, !prof !725

46:                                               ; preds = %38
  %47 = load i16, ptr %1, align 2, !tbaa !196
  %48 = load i16, ptr %43, align 2, !tbaa !196
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %58, label %69, !prof !726

50:                                               ; preds = %38
  br i1 %6, label %54, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %1, align 2, !tbaa !196
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51, %50
  br i1 %44, label %73, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %43, align 2, !tbaa !196
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %73, label %69

58:                                               ; preds = %46, %63
  %59 = phi i16 [ %66, %63 ], [ %47, %46 ]
  %60 = phi ptr [ %65, %63 ], [ %43, %46 ]
  %61 = phi ptr [ %64, %63 ], [ %1, %46 ]
  %62 = icmp eq i16 %59, 0
  br i1 %62, label %73, label %63, !prof !727

63:                                               ; preds = %58
  %64 = getelementptr inbounds i16, ptr %61, i64 1
  %65 = getelementptr inbounds i16, ptr %60, i64 1
  %66 = load i16, ptr %64, align 2, !tbaa !196
  %67 = load i16, ptr %65, align 2, !tbaa !196
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %58, label %69, !prof !728, !llvm.loop !346

69:                                               ; preds = %63, %46, %55, %51
  %70 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !240
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %38, !prof !729, !llvm.loop !730

73:                                               ; preds = %69, %54, %55, %58, %30
  %74 = phi ptr [ null, %30 ], [ %39, %58 ], [ %39, %55 ], [ %39, %54 ], [ null, %69 ]
  ret ptr %74
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !163
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
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

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #10 comdat align 2 !prof !731 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !579
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !576
  %10 = load ptr, ptr %0, align 8, !tbaa !572
  %11 = load ptr, ptr %7, align 8, !tbaa !163
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10), !prof !732
  store i32 %13, ptr %4, align 4, !tbaa !308
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !575
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !240
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !733

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !675
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !734

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !676
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !735

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !579
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !674
  %33 = load ptr, ptr %30, align 8, !tbaa !163
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32), !prof !736
  br i1 %36, label %41, label %37, !prof !737

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !240
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !738, !llvm.loop !739

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ %21, %29 ], [ null, %37 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !580

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !572
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.4, i32 noundef 138, i32 noundef 48, ptr noundef %6)
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
  %11 = load ptr, ptr %0, align 8, !tbaa !572
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !576
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !163
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !581
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !575
  %21 = load i32, ptr %12, align 8, !tbaa !576
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !740

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !575
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !240
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !741, !llvm.loop !742
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !163
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !234, !range !285, !noundef !286
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !203

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !236
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !257

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !743

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !163
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #16, !prof !744
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !236
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !745, !llvm.loop !746

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !239
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !238
  %31 = load ptr, ptr %28, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !202

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !162 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !236
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !239
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.5, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !234, !range !285, !noundef !286
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !238
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !240
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !163
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(48) %23) #16
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !238
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !240
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !236
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !236
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !234, !range !285, !noundef !286
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !238
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !240
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !163
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(48) %18) #16
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !238
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !240
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !236
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !747
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !236
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !239
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.5, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !234, !range !285, !noundef !286
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !238
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !240
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !163
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(48) %22) #16
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !236
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
  %40 = load ptr, ptr %35, align 8, !tbaa !238
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !240
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !240
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !748

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !238
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !240
  store i32 %30, ptr %3, align 4, !tbaa !236
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !236
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !236
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !234, !range !285, !noundef !286
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !238
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !163
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #16
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !160 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !234, !range !285, !noundef !286
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !236
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !238
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !163
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(48) %15) #16
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !236
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !749

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !239
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !238
  %31 = load ptr, ptr %28, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 !prof !160 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #10 comdat align 2 !prof !750 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !576
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !751

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %35, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !578
  ret void

10:                                               ; preds = %5, %35
  %11 = phi i64 [ 0, %5 ], [ %38, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !575
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !240
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !752

16:                                               ; preds = %10, %29
  %17 = phi ptr [ %19, %29 ], [ %14, %10 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !678
  %20 = load i8, ptr %7, align 8, !tbaa !574, !range !285, !noundef !286
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22, !prof !679

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !443
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !679

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !163
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(147) %23) #16, !prof !753
  br label %29

29:                                               ; preds = %22, %25, %16
  %30 = load ptr, ptr %0, align 8, !tbaa !572
  %31 = load ptr, ptr %30, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %17), !prof !754
  %34 = icmp eq ptr %19, null
  br i1 %34, label %35, label %16, !prof !673, !llvm.loop !755

35:                                               ; preds = %29, %10
  %36 = load ptr, ptr %6, align 8, !tbaa !575
  %37 = getelementptr inbounds ptr, ptr %36, i64 %11
  store ptr null, ptr %37, align 8, !tbaa !240
  %38 = add nuw nsw i64 %11, 1
  %39 = load i32, ptr %2, align 8, !tbaa !576
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %10, label %8, !prof !756, !llvm.loop !757
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !560 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !249
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !252
  %5 = load ptr, ptr %2, align 8, !tbaa !163
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !583
  store ptr null, ptr %3, align 8, !tbaa !252
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !256
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !566

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !163
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !758
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !750 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !236
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !237
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !743

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !239
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !163
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !236
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !240
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !238
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !240
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !240
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !759

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !239
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !238
  %52 = load ptr, ptr %49, align 8, !tbaa !163
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !238
  store i32 %12, ptr %6, align 8, !tbaa !237
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !610 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !377
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !760

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !231
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
  br i1 %15, label %30, label %16, !prof !760

16:                                               ; preds = %13
  %17 = icmp ugt i32 %14, %1
  br i1 %17, label %18, label %30

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.1", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !233
  %21 = zext i32 %1 to i64
  %22 = zext i32 %14 to i64
  br label %23

23:                                               ; preds = %18, %23
  %24 = phi i64 [ %21, %18 ], [ %25, %23 ]
  %25 = add nuw nsw i64 %24, 1
  %26 = getelementptr inbounds i8, ptr %20, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !292, !range !285, !noundef !286
  %28 = getelementptr inbounds i8, ptr %20, i64 %24
  store i8 %27, ptr %28, align 1, !tbaa !292
  %29 = icmp eq i64 %25, %22
  br i1 %29, label %30, label %23, !llvm.loop !761

30:                                               ; preds = %23, %16, %13
  %31 = add i32 %4, -1
  store i32 %31, ptr %3, align 4, !tbaa !377
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !762 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !529
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !763
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !764

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !649
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !163
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !529
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !240
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !540
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !240
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !240
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !765

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !649
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.5", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !540
  %52 = load ptr, ptr %49, align 8, !tbaa !163
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !540
  store i32 %12, ptr %6, align 8, !tbaa !763
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.11", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !253
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !249
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !163
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %13 = load ptr, ptr %0, align 8, !tbaa !249
  store ptr %12, ptr %2, align 8, !tbaa !766
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.11", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !768
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !253
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !252
  %23 = load ptr, ptr %2, align 8, !tbaa !766
  store ptr null, ptr %2, align 8, !tbaa !766
  store ptr %23, ptr %21, align 8, !tbaa !252
  store i32 %5, ptr %3, align 8, !tbaa !253
  %24 = load ptr, ptr %0, align 8, !tbaa !249
  %25 = load ptr, ptr %24, align 8, !tbaa !163
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !252
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !240
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !491
  %38 = load ptr, ptr %19, align 8, !tbaa !256
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !653
  %41 = load ptr, ptr %0, align 8, !tbaa !249
  %42 = load ptr, ptr %38, align 8, !tbaa !163
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !240
  store ptr %48, ptr %36, align 8, !tbaa !491
  store ptr %35, ptr %47, align 8, !tbaa !240
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !769

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !253
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !770

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

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !160 {
  %2 = load ptr, ptr %0, align 8, !tbaa !766
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.11", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !768
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !163
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
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !771 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !246
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !247
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %42, !prof !700

9:                                                ; preds = %2
  %10 = uitofp i32 %4 to double
  %11 = fmul double %10, 1.250000e+00
  %12 = fptoui double %11 to i32
  %13 = tail call i32 @llvm.umax.i32(i32 %5, i32 %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !213
  %16 = zext i32 %13 to i64
  %17 = shl nuw nsw i64 %16, 3
  %18 = load ptr, ptr %15, align 8, !tbaa !163
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %17)
  %22 = load i32, ptr %3, align 4, !tbaa !246
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %9
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %26 = zext i32 %22 to i64
  br label %34

27:                                               ; preds = %34, %9
  %28 = load ptr, ptr %14, align 8, !tbaa !213
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !215
  %31 = load ptr, ptr %28, align 8, !tbaa !163
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  store ptr %21, ptr %29, align 8, !tbaa !215
  store i32 %13, ptr %6, align 8, !tbaa !247
  br label %42

34:                                               ; preds = %24, %34
  %35 = phi i64 [ 0, %24 ], [ %40, %34 ]
  %36 = load ptr, ptr %25, align 8, !tbaa !215
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !240
  %39 = getelementptr inbounds ptr, ptr %21, i64 %35
  store ptr %38, ptr %39, align 8, !tbaa !240
  %40 = add nuw nsw i64 %35, 1
  %41 = icmp eq i64 %40, %26
  br i1 %41, label %27, label %34, !llvm.loop !772

42:                                               ; preds = %2, %27
  ret void
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
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!159}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!35 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, i64 5}
!36 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!37 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_712IGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 24}
!41 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, i64 3}
!42 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, i64 3}
!43 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, i64 6}
!44 = !{ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev, i64 3}
!45 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 42}
!46 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_712DTDValidatorC1EPNS_16XMLErrorReporterE, i64 3}
!47 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE, i64 6}
!48 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_715SchemaValidatorC1EPNS_16XMLErrorReporterEPNS_13MemoryManagerE, i64 3}
!49 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_725IdentityConstraintHandlerC1EPNS_10XMLScannerEPNS_13MemoryManagerE, i64 3}
!50 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!51 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, i64 3}
!52 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 3}
!53 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 6}
!54 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10commonInitEv, ptr @_ZN11xercesc_2_717PSVIAttributeListC1EPNS_13MemoryManagerE, i64 3}
!55 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_712IGXMLScanner7cleanUpEv, i64 3}
!56 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, ptr @_ZN11xercesc_2_710XMLScannerD2Ev, i64 3}
!57 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD0Ev, ptr @_ZN11xercesc_2_712IGXMLScannerD2Ev, i64 3}
!58 = !{ptr @_ZN11xercesc_2_712IGXMLScannerD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!59 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner9scanResetERKNS_11InputSourceE, i64 3}
!60 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, i64 3}
!61 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, i64 3}
!62 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZNK11xercesc_2_79ReaderMgr5atEOFEv, i64 6}
!63 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, i64 3}
!64 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, i64 1}
!65 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, i64 3}
!66 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, i64 2733777}
!67 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner12scanCharDataERNS_9XMLBufferE, i64 1512649}
!68 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, i64 614458}
!69 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, i64 752768}
!70 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, i64 352}
!71 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @__cxa_begin_catch, i64 1}
!72 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE, i64 1}
!73 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11scanContentEv, ptr @__cxa_end_catch, i64 1}
!74 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 166}
!75 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ElemStack6popTopEv, i64 680325}
!76 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 359}
!77 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 680325}
!78 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 680325}
!79 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 680325}
!80 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, i64 1359931}
!81 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 679966}
!82 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, i64 679966}
!83 = !{ptr @_ZN11xercesc_2_712IGXMLScanner10scanEndTagERb, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 359}
!84 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 833461}
!85 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 833461}
!86 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, i64 833461}
!87 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_79ElemStack10topElementEv, i64 832910}
!88 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv, i64 1818766}
!89 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb, i64 24}
!90 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack8addLevelEv, i64 833461}
!91 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner28scanRawAttrListforNameSpacesEi, i64 190050}
!92 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 550}
!93 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, i64 833461}
!94 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 17}
!95 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, i64 17}
!96 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, i64 17}
!97 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj, i64 833461}
!98 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString10copyStringEPtPKt, i64 832911}
!99 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 496163}
!100 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 496163}
!101 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!102 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner13switchGrammarEPKt, i64 496163}
!103 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, i64 832910}
!104 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_712IGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE, i64 833461}
!105 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_725IdentityConstraintHandler26activateIdentityConstraintEPNS_17SchemaElementDeclEijPKtRKNS_11RefVectorOfINS_7XMLAttrEEEj, i64 832911}
!106 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_79ElemStack6popTopEv, i64 153377}
!107 = !{ptr @_ZN11xercesc_2_712IGXMLScanner14scanStartTagNSERb, ptr @_ZN11xercesc_2_725IdentityConstraintHandler17deactivateContextEPNS_17SchemaElementDeclEPKt, i64 152945}
!108 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, i64 612}
!109 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 390}
!110 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 33}
!111 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE, i64 30}
!112 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, i64 30}
!113 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack8addLevelEPNS_14XMLElementDeclEj, i64 390}
!114 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb, i64 389}
!115 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 650}
!116 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 650}
!117 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, i64 222}
!118 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714DTDElementDecl9getAttDefEPKt, i64 222}
!119 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMLAttrC1EjPKtS2_S2_NS_9XMLAttDef8AttTypesEbPNS_13MemoryManagerEPNS_17DatatypeValidatorEb, i64 3}
!120 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE19ensureExtraCapacityEj, i64 3}
!121 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE9elementAtEj, i64 219}
!122 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_75QName7setNameEPKtS2_j, i64 219}
!123 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_77XMLAttr8setValueEPKt, i64 441}
!124 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZNK11xercesc_2_714RefHashTableOfIjE11containsKeyEPKv, i64 222}
!125 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714RefHashTableOfIjE3putEPvPj, i64 222}
!126 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_712IGXMLScanner12scanAttValueEPKNS_9XMLAttDefEPKtRNS_9XMLBufferE, i64 222}
!127 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 390}
!128 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 149}
!129 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 189}
!130 = !{ptr @_ZN11xercesc_2_712IGXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_79ElemStack6popTopEv, i64 149}
!131 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!132 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!133 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!134 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!135 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!136 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv, i64 3}
!137 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 1027041}
!138 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 835226}
!139 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 1765}
!140 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, i64 191815}
!141 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, i64 191815}
!142 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_712IGXMLScanner18basicAttrValueScanEPKtRNS_9XMLBufferE, i64 191815}
!143 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 7}
!144 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_712KVStringPairC1EPKtjS2_jPNS_13MemoryManagerE, i64 7}
!145 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE19ensureExtraCapacityEj, i64 7}
!146 = !{ptr @_ZN11xercesc_2_712IGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 153377}
!147 = !{ptr @_ZN11xercesc_2_712ValueStackOfIbE3popEv, ptr @_ZN11xercesc_2_713ValueVectorOfIbE15removeElementAtEj, i64 1359931}
!148 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 47}
!149 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!150 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi, ptr @_ZNK11xercesc_2_79ElemStack14mapPrefixToURIEPKtNS0_8MapModesERb, i64 833461}
!151 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!152 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!153 = !{ptr @_ZN11xercesc_2_712IGXMLScanner21processSchemaLocationEPt, ptr @_ZN11xercesc_2_713ValueVectorOfIPtE19ensureExtraCapacityEj, i64 2}
!154 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!155 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 2038}
!156 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED2Ev, i64 3}
!157 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_12KVStringPairEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!158 = !{ptr @_ZN11xercesc_2_714RefHashTableOfIjE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv, i64 6}
!159 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!160 = !{!"function_entry_count", i64 0}
!161 = !{!"function_entry_count", i64 5}
!162 = !{!"function_entry_count", i64 3}
!163 = !{!164, !164, i64 0}
!164 = !{!"vtable pointer", !165, i64 0}
!165 = !{!"Simple C++ TBAA"}
!166 = !{!167, !172, i64 776}
!167 = !{!"_ZTSN11xercesc_2_712IGXMLScannerE", !168, i64 0, !172, i64 776, !184, i64 780, !173, i64 784, !174, i64 792, !180, i64 800, !174, i64 840, !173, i64 848, !174, i64 856, !174, i64 864, !174, i64 872, !174, i64 880, !174, i64 888, !174, i64 896, !174, i64 904, !174, i64 912, !173, i64 920, !174, i64 928, !174, i64 936, !174, i64 944, !174, i64 952, !174, i64 960, !174, i64 968, !174, i64 976, !185, i64 984}
!168 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !169, i64 0, !170, i64 8, !172, i64 16, !172, i64 17, !172, i64 18, !172, i64 19, !172, i64 20, !172, i64 21, !172, i64 22, !172, i64 23, !172, i64 24, !172, i64 25, !172, i64 26, !172, i64 27, !172, i64 28, !172, i64 29, !172, i64 30, !172, i64 31, !172, i64 32, !172, i64 33, !172, i64 34, !172, i64 35, !172, i64 36, !172, i64 37, !172, i64 38, !173, i64 40, !173, i64 44, !173, i64 48, !173, i64 52, !173, i64 56, !173, i64 60, !173, i64 64, !173, i64 68, !174, i64 72, !173, i64 80, !173, i64 84, !173, i64 88, !173, i64 92, !173, i64 96, !174, i64 104, !174, i64 112, !174, i64 120, !174, i64 128, !174, i64 136, !174, i64 144, !174, i64 152, !174, i64 160, !174, i64 168, !172, i64 176, !175, i64 184, !174, i64 264, !178, i64 272, !174, i64 280, !174, i64 288, !174, i64 296, !174, i64 304, !174, i64 312, !174, i64 320, !174, i64 328, !174, i64 336, !174, i64 344, !177, i64 352, !174, i64 360, !179, i64 368, !180, i64 392, !180, i64 432, !180, i64 472, !180, i64 512, !180, i64 552, !180, i64 592, !180, i64 632, !181, i64 672}
!169 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!170 = !{!"long", !171, i64 0}
!171 = !{!"omnipotent char", !165, i64 0}
!172 = !{!"bool", !171, i64 0}
!173 = !{!"int", !171, i64 0}
!174 = !{!"any pointer", !171, i64 0}
!175 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !176, i64 0, !174, i64 8, !174, i64 16, !174, i64 24, !174, i64 32, !173, i64 40, !174, i64 48, !172, i64 56, !177, i64 60, !172, i64 64, !174, i64 72}
!176 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!177 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !171, i64 0}
!178 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !171, i64 0}
!179 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !173, i64 0, !174, i64 8, !174, i64 16}
!180 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !173, i64 0, !173, i64 4, !173, i64 8, !172, i64 12, !174, i64 16, !174, i64 24, !174, i64 32}
!181 = !{!"_ZTSN11xercesc_2_79ElemStackE", !173, i64 0, !173, i64 4, !182, i64 8, !174, i64 48, !173, i64 56, !173, i64 60, !173, i64 64, !173, i64 68, !173, i64 72, !173, i64 76, !173, i64 80, !174, i64 88, !174, i64 96}
!182 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !183, i64 0, !174, i64 8, !174, i64 16, !174, i64 24, !173, i64 32, !173, i64 36}
!183 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!184 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !171, i64 0}
!185 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !172, i64 0, !172, i64 1, !173, i64 4, !173, i64 8, !173, i64 12, !174, i64 16, !174, i64 24, !174, i64 32}
!186 = !{!167, !184, i64 780}
!187 = !{!167, !173, i64 784}
!188 = !{!167, !174, i64 792}
!189 = !{!180, !173, i64 0}
!190 = !{!180, !173, i64 4}
!191 = !{!180, !173, i64 8}
!192 = !{!180, !172, i64 12}
!193 = !{!180, !174, i64 16}
!194 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!195 = !{!180, !174, i64 32}
!196 = !{!197, !197, i64 0}
!197 = !{!"short", !171, i64 0}
!198 = !{!167, !174, i64 840}
!199 = !{!167, !173, i64 848}
!200 = !{!"branch_weights", i32 3, i32 0}
!201 = !{!168, !174, i64 360}
!202 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!203 = !{!"branch_weights", i32 0, i32 3}
!204 = !{!"VP", i32 0, i64 3, i64 -8868054426413540225, i64 3}
!205 = !{!167, !174, i64 856}
!206 = !{!167, !174, i64 864}
!207 = !{!"VP", i32 0, i64 3, i64 -979485481200653870, i64 3}
!208 = !{!167, !174, i64 872}
!209 = !{!"VP", i32 0, i64 3, i64 -74999561176739991, i64 3}
!210 = !{!167, !174, i64 888}
!211 = !{!"VP", i32 0, i64 3, i64 8625134757775224259, i64 3}
!212 = !{!167, !174, i64 896}
!213 = !{!214, !174, i64 24}
!214 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPtEE", !172, i64 0, !173, i64 4, !173, i64 8, !174, i64 16, !174, i64 24}
!215 = !{!214, !174, i64 16}
!216 = !{!167, !174, i64 904}
!217 = !{!167, !174, i64 912}
!218 = !{!167, !174, i64 928}
!219 = !{!167, !174, i64 936}
!220 = !{!167, !174, i64 944}
!221 = !{!167, !174, i64 952}
!222 = !{!223, !174, i64 8}
!223 = !{!"_ZTSN11xercesc_2_717PSVIAttributeListE", !174, i64 0, !174, i64 8, !174, i64 16, !174, i64 24, !173, i64 32}
!224 = !{!"VP", i32 0, i64 3, i64 -508437034450589590, i64 3}
!225 = !{!223, !174, i64 16}
!226 = !{!"VP", i32 0, i64 3, i64 2021940994423510361, i64 3}
!227 = !{!223, !174, i64 24}
!228 = !{!167, !174, i64 968}
!229 = !{!"VP", i32 0, i64 3, i64 -3981380428280728367, i64 3}
!230 = !{!167, !174, i64 976}
!231 = !{!232, !174, i64 24}
!232 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIbEE", !172, i64 0, !173, i64 4, !173, i64 8, !174, i64 16, !174, i64 24}
!233 = !{!232, !174, i64 16}
!234 = !{!235, !172, i64 8}
!235 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !172, i64 8, !173, i64 12, !173, i64 16, !174, i64 24, !174, i64 32}
!236 = !{!235, !173, i64 12}
!237 = !{!235, !173, i64 16}
!238 = !{!235, !174, i64 24}
!239 = !{!235, !174, i64 32}
!240 = !{!174, !174, i64 0}
!241 = !{!"branch_weights", i32 3, i32 93}
!242 = distinct !{!242, !243, !244}
!243 = !{!"llvm.loop.mustprogress"}
!244 = !{!"llvm.loop.unroll.disable"}
!245 = !{!214, !172, i64 0}
!246 = !{!214, !173, i64 4}
!247 = !{!214, !173, i64 8}
!248 = !{!"VP", i32 1, i64 3, i64 64, i64 3}
!249 = !{!250, !174, i64 0}
!250 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !174, i64 0, !172, i64 8, !174, i64 16, !173, i64 24, !173, i64 28, !173, i64 32, !174, i64 40}
!251 = !{!250, !172, i64 8}
!252 = !{!250, !174, i64 16}
!253 = !{!250, !173, i64 24}
!254 = !{!250, !173, i64 28}
!255 = !{!250, !173, i64 32}
!256 = !{!250, !174, i64 40}
!257 = !{!"branch_weights", i32 1, i32 191}
!258 = !{!"branch_weights", i32 191, i32 24961}
!259 = distinct !{!259, !243, !244}
!260 = !{!"branch_weights", i32 191, i32 1153}
!261 = !{!262, !174, i64 0}
!262 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !174, i64 0, !172, i64 8, !174, i64 16, !173, i64 24, !173, i64 28, !174, i64 32}
!263 = !{!262, !172, i64 8}
!264 = !{!262, !174, i64 16}
!265 = !{!262, !173, i64 24}
!266 = !{!262, !173, i64 28}
!267 = !{!262, !174, i64 32}
!268 = distinct !{!268, !243, !244}
!269 = !{!168, !174, i64 264}
!270 = !{!"function_entry_count", i64 1}
!271 = !{!167, !174, i64 880}
!272 = !{!"branch_weights", i32 0, i32 1}
!273 = !{!274, !174, i64 32}
!274 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !275, i64 0, !174, i64 8, !174, i64 16, !174, i64 24, !174, i64 32, !174, i64 40, !174, i64 48, !173, i64 56, !172, i64 60}
!275 = !{!"_ZTSN11xercesc_2_77GrammarE", !183, i64 0}
!276 = !{!168, !173, i64 96}
!277 = !{!"VP", i32 0, i64 3, i64 4292450453448012502, i64 3}
!278 = !{!168, !174, i64 120}
!279 = !{!"VP", i32 0, i64 3, i64 1442988434101093592, i64 1, i64 2891878030481226120, i64 1, i64 -337214134219566318, i64 1}
!280 = !{!168, !172, i64 21}
!281 = !{!282, !283, i64 8}
!282 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !283, i64 8, !174, i64 16, !173, i64 24, !174, i64 32, !174, i64 40}
!283 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !171, i64 0}
!284 = !{!168, !172, i64 24}
!285 = !{i8 0, i8 2}
!286 = !{}
!287 = !{!"branch_weights", i32 2, i32 1}
!288 = !{!"branch_weights", i32 1, i32 0}
!289 = !{!"VP", i32 0, i64 3, i64 -40996933056561139, i64 1, i64 -7270210032144057484, i64 1, i64 -3706799833160026377, i64 1}
!290 = !{!282, !174, i64 32}
!291 = !{!"function_entry_count", i64 4}
!292 = !{!172, !172, i64 0}
!293 = !{!"branch_weights", i32 3026825, i32 0}
!294 = !{!"branch_weights", i32 0, i32 1512649, i32 0, i32 0, i32 0, i32 680325, i32 0, i32 833851}
!295 = !{!"VP", i32 0, i64 1512649, i64 1004052608082357841, i64 1512649}
!296 = distinct !{!296, !243, !244}
!297 = !{!181, !173, i64 60}
!298 = !{!299, !174, i64 0}
!299 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !174, i64 0, !173, i64 8, !173, i64 12, !173, i64 16, !174, i64 24, !174, i64 32, !173, i64 40, !173, i64 44, !172, i64 48, !172, i64 49, !172, i64 50, !173, i64 52, !174, i64 56, !173, i64 64, !174, i64 72, !173, i64 80, !173, i64 84}
!300 = !{!301, !174, i64 16}
!301 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !183, i64 0, !174, i64 8, !174, i64 16, !302, i64 24, !173, i64 28, !172, i64 32}
!302 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !171, i64 0}
!303 = !{!"branch_weights", i32 680325, i32 0}
!304 = !{!168, !172, i64 18}
!305 = !{!"branch_weights", i32 390, i32 833461}
!306 = !{!"branch_weights", i32 833461, i32 0}
!307 = !{!"branch_weights", i32 390, i32 0}
!308 = !{!173, !173, i64 0}
!309 = !{!175, !174, i64 16}
!310 = !{!311, !173, i64 163904}
!311 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !173, i64 0, !171, i64 4, !173, i64 32772, !171, i64 32776, !171, i64 49160, !170, i64 114696, !170, i64 114704, !312, i64 114712, !174, i64 114720, !172, i64 114728, !172, i64 114729, !174, i64 114736, !173, i64 114744, !171, i64 114748, !173, i64 163900, !173, i64 163904, !313, i64 163908, !172, i64 163912, !314, i64 163916, !173, i64 163920, !172, i64 163924, !172, i64 163925, !174, i64 163928, !174, i64 163936, !172, i64 163944, !172, i64 163945, !174, i64 163952, !315, i64 163960, !174, i64 163968, !172, i64 163976, !177, i64 163980, !174, i64 163984}
!312 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !171, i64 0}
!313 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !171, i64 0}
!314 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !171, i64 0}
!315 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !171, i64 0}
!316 = !{!"branch_weights", i32 1514176, i32 0}
!317 = !{!"branch_weights", i32 191, i32 193716609}
!318 = !{!319, !174, i64 0}
!319 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !174, i64 0, !173, i64 8}
!320 = !{!"branch_weights", i32 191, i32 1}
!321 = distinct !{!321, !243, !244}
!322 = distinct !{!322, !243, !244}
!323 = !{!"function_entry_count", i64 680325}
!324 = !{!"branch_weights", i32 0, i32 680325}
!325 = !{!"branch_weights", i32 241, i32 680084}
!326 = !{!181, !174, i64 48}
!327 = !{!"branch_weights", i32 679966, i32 359}
!328 = !{!299, !174, i64 72}
!329 = !{!299, !173, i64 8}
!330 = !{!167, !172, i64 985}
!331 = !{!"branch_weights", i32 0, i32 679966}
!332 = !{!301, !302, i64 24}
!333 = !{!"branch_weights", i32 679966, i32 0}
!334 = !{!335, !174, i64 168}
!335 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !336, i64 0, !174, i64 40, !174, i64 48, !174, i64 56, !174, i64 64, !172, i64 72, !174, i64 80, !174, i64 88, !180, i64 96, !172, i64 136, !172, i64 137, !337, i64 144, !174, i64 168, !174, i64 176, !172, i64 184, !172, i64 185}
!336 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !174, i64 8, !174, i64 16, !174, i64 24, !174, i64 32}
!337 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !172, i64 8, !174, i64 16}
!338 = !{!339, !173, i64 4}
!339 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !172, i64 0, !173, i64 4, !173, i64 8, !174, i64 16, !174, i64 24}
!340 = !{!167, !174, i64 1008}
!341 = !{!"branch_weights", i32 336748, i32 343218}
!342 = !{!335, !174, i64 80}
!343 = !{!167, !174, i64 1000}
!344 = !{!168, !174, i64 160}
!345 = !{!167, !174, i64 1016}
!346 = distinct !{!346, !243, !244}
!347 = !{!"branch_weights", i32 359, i32 679966}
!348 = !{!299, !172, i64 49}
!349 = !{!350, !351, i64 36}
!350 = !{!"_ZTSN11xercesc_2_714DTDElementDeclE", !301, i64 0, !351, i64 36, !174, i64 40, !174, i64 48, !174, i64 56, !174, i64 64, !174, i64 72}
!351 = !{!"_ZTSN11xercesc_2_714DTDElementDecl10ModelTypesE", !171, i64 0}
!352 = !{!299, !172, i64 50}
!353 = !{!299, !174, i64 24}
!354 = !{!299, !173, i64 16}
!355 = !{!"VP", i32 0, i64 679966, i64 775056299206688193, i64 679966}
!356 = !{!335, !172, i64 184}
!357 = !{!"branch_weights", i32 343218, i32 336748}
!358 = !{!359, !360, i64 28}
!359 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !183, i64 0, !172, i64 8, !172, i64 9, !172, i64 10, !172, i64 11, !197, i64 12, !173, i64 16, !173, i64 20, !173, i64 24, !360, i64 28, !361, i64 32, !174, i64 40, !174, i64 48, !174, i64 56, !174, i64 64, !174, i64 72, !174, i64 80, !174, i64 88, !174, i64 96}
!360 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !171, i64 0}
!361 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !171, i64 0}
!362 = !{!"branch_weights", i32 0, i32 336748}
!363 = !{!168, !174, i64 168}
!364 = !{!335, !172, i64 185}
!365 = !{!167, !172, i64 984}
!366 = !{!367, !174, i64 72}
!367 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !301, i64 0, !368, i64 36, !369, i64 40, !370, i64 44, !371, i64 48, !173, i64 52, !173, i64 56, !173, i64 60, !173, i64 64, !174, i64 72, !174, i64 80, !174, i64 88, !174, i64 96, !174, i64 104, !174, i64 112, !174, i64 120, !174, i64 128, !174, i64 136, !172, i64 144, !172, i64 145, !172, i64 146}
!368 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !171, i64 0}
!369 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !171, i64 0}
!370 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !171, i64 0}
!371 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !171, i64 0}
!372 = !{!299, !173, i64 84}
!373 = !{!374, !174, i64 24}
!374 = !{!"_ZTSN11xercesc_2_75QNameE", !183, i64 0, !173, i64 8, !173, i64 12, !173, i64 16, !173, i64 20, !174, i64 24, !174, i64 32, !174, i64 40, !174, i64 48}
!375 = !{!"VP", i32 0, i64 680325, i64 6097453972949846256, i64 679966, i64 5968109641619488004, i64 241, i64 6499927686955036818, i64 118}
!376 = !{!"branch_weights", i32 360, i32 679965}
!377 = !{!232, !173, i64 4}
!378 = !{!"branch_weights", i32 0, i32 679965}
!379 = !{!232, !173, i64 8}
!380 = !{!"branch_weights", i32 2, i32 1359935}
!381 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!382 = !{!"branch_weights", i32 1, i32 127}
!383 = !{!"VP", i32 0, i64 0, i64 -7405368087501025645, i64 0}
!384 = !{!"branch_weights", i32 127, i32 1025}
!385 = distinct !{!385, !243, !244}
!386 = !{!"branch_weights", i32 3, i32 680322}
!387 = !{!"branch_weights", i32 240, i32 680082}
!388 = !{!299, !174, i64 56}
!389 = !{!168, !174, i64 296}
!390 = !{!"VP", i32 0, i64 680082, i64 -6289420323266357339, i64 679965, i64 -908290396823866376, i64 117}
!391 = !{!"branch_weights", i32 679965, i32 117}
!392 = !{!"VP", i32 0, i64 679965, i64 -5622634898759239754, i64 679965}
!393 = !{!"branch_weights", i32 679965, i32 0}
!394 = !{!168, !172, i64 25}
!395 = !{!"branch_weights", i32 117, i32 679965}
!396 = !{!"VP", i32 0, i64 117, i64 -1739351328056341907, i64 117}
!397 = !{!"branch_weights", i32 117, i32 0}
!398 = !{!"VP", i32 0, i64 680082, i64 -8600786475566429199, i64 679965, i64 904836365347592004, i64 117}
!399 = !{!299, !172, i64 48}
!400 = !{!"function_entry_count", i64 833461}
!401 = !{!"branch_weights", i32 2, i32 833459}
!402 = !{!"branch_weights", i32 551, i32 832910}
!403 = !{!"branch_weights", i32 0, i32 832910}
!404 = !{!405, !173, i64 32}
!405 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !183, i64 0, !172, i64 8, !172, i64 9, !172, i64 10, !172, i64 11, !172, i64 12, !173, i64 16, !173, i64 20, !173, i64 24, !173, i64 28, !173, i64 32, !173, i64 36, !173, i64 40, !173, i64 44, !174, i64 48, !174, i64 56, !174, i64 64, !174, i64 72, !174, i64 80, !174, i64 88, !174, i64 96, !174, i64 104, !174, i64 112, !174, i64 120, !174, i64 128, !174, i64 136, !174, i64 144, !174, i64 152, !174, i64 160, !174, i64 168}
!406 = !{!367, !174, i64 80}
!407 = !{!171, !171, i64 0}
!408 = !{!"branch_weights", i32 0, i32 727543, i32 105367, i32 0, i32 0}
!409 = !{!405, !174, i64 136}
!410 = !{!"branch_weights", i32 832886, i32 24}
!411 = !{!"VP", i32 0, i64 832910, i64 4542264789139256903, i64 665441, i64 -9112821330401423452, i64 167463, i64 3604193561982623635, i64 6}
!412 = !{!299, !173, i64 52}
!413 = !{!"branch_weights", i32 1, i32 833460}
!414 = !{!168, !174, i64 328}
!415 = !{!168, !174, i64 336}
!416 = !{!"branch_weights", i32 643411, i32 190050}
!417 = !{!"branch_weights", i32 550, i32 832911}
!418 = !{!168, !172, i64 38}
!419 = !{!"branch_weights", i32 550, i32 0}
!420 = !{!168, !173, i64 52}
!421 = !{!"VP", i32 0, i64 550, i64 -8564895565370113594, i64 550}
!422 = !{!423, !424, i64 8}
!423 = !{!"_ZTSN11xercesc_2_79XMLAttDefE", !183, i64 0, !424, i64 8, !425, i64 12, !426, i64 16, !172, i64 20, !172, i64 21, !173, i64 24, !174, i64 32, !174, i64 40, !174, i64 48}
!424 = !{!"_ZTSN11xercesc_2_79XMLAttDef11DefAttTypesE", !171, i64 0}
!425 = !{!"_ZTSN11xercesc_2_79XMLAttDef8AttTypesE", !171, i64 0}
!426 = !{!"_ZTSN11xercesc_2_79XMLAttDef13CreateReasonsE", !171, i64 0}
!427 = !{!423, !174, i64 32}
!428 = distinct !{!428, !243, !244}
!429 = !{!"branch_weights", i32 17, i32 533}
!430 = !{!431, !174, i64 0}
!431 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !174, i64 0, !174, i64 8}
!432 = !{!168, !172, i64 26}
!433 = !{!"branch_weights", i32 0, i32 832911}
!434 = !{!"branch_weights", i32 832911, i32 0}
!435 = !{!"VP", i32 0, i64 832911, i64 -7417660270255234998, i64 832911}
!436 = !{!"branch_weights", i32 579753, i32 253158}
!437 = !{!"VP", i32 0, i64 579753, i64 -2166467938784159167, i64 579753}
!438 = !{!168, !174, i64 312}
!439 = !{!"VP", i32 0, i64 579753, i64 -43095626630086639, i64 579753}
!440 = !{!"branch_weights", i32 579753, i32 0}
!441 = !{!"VP", i32 0, i64 579753, i64 -7417660270255234998, i64 579753}
!442 = !{!"branch_weights", i32 0, i32 579753}
!443 = !{!444, !174, i64 0}
!444 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !174, i64 0, !174, i64 8, !174, i64 16, !173, i64 24, !173, i64 28}
!445 = !{!"branch_weights", i32 17, i32 833444}
!446 = !{!"branch_weights", i32 0, i32 17, i32 0}
!447 = !{!"branch_weights", i32 17, i32 0}
!448 = !{!374, !174, i64 32}
!449 = !{!301, !173, i64 28}
!450 = !{!"branch_weights", i32 832911, i32 533}
!451 = !{!"branch_weights", i32 533, i32 0}
!452 = !{!"branch_weights", i32 0, i32 533}
!453 = !{!299, !173, i64 64}
!454 = !{!168, !174, i64 304}
!455 = !{!"branch_weights", i32 1, i32 1}
!456 = !{!168, !174, i64 320}
!457 = !{!"branch_weights", i32 1, i32 3}
!458 = distinct !{!458, !243, !244}
!459 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!460 = !{!"VP", i32 1, i64 1, i64 9, i64 1}
!461 = !{!167, !173, i64 988}
!462 = !{!167, !173, i64 996}
!463 = !{!167, !173, i64 992}
!464 = !{!"VP", i32 0, i64 832911, i64 5865359479090519840, i64 832911}
!465 = !{!"VP", i32 0, i64 832911, i64 -5622634898759239754, i64 832911}
!466 = !{!"branch_weights", i32 832911, i32 550}
!467 = !{!"branch_weights", i32 832911, i32 4548823}
!468 = !{!299, !173, i64 80}
!469 = !{!"branch_weights", i32 832895, i32 16}
!470 = !{!181, !174, i64 96}
!471 = !{!"VP", i32 0, i64 16, i64 8345045103670217670, i64 16}
!472 = !{!"VP", i32 0, i64 16, i64 -7405368087501025645, i64 16}
!473 = !{!"branch_weights", i32 336748, i32 496163}
!474 = !{!405, !173, i64 28}
!475 = !{!405, !174, i64 48}
!476 = !{!"branch_weights", i32 496163, i32 0}
!477 = !{!"branch_weights", i32 0, i32 496163}
!478 = !{!"VP", i32 0, i64 496163, i64 8345045103670217670, i64 496163}
!479 = !{!"branch_weights", i32 2718764, i32 4}
!480 = !{!"VP", i32 1, i64 496163, i64 33, i64 120230, i64 9, i64 79466, i64 17, i64 74828, i64 8, i64 58401}
!481 = !{!"VP", i32 0, i64 496163, i64 -7405368087501025645, i64 496163}
!482 = !{!"branch_weights", i32 1, i32 4}
!483 = !{!"branch_weights", i32 5, i32 0}
!484 = !{!"branch_weights", i32 549, i32 832910}
!485 = !{!"branch_weights", i32 0, i32 833461}
!486 = !{!223, !173, i64 32}
!487 = !{!168, !174, i64 104}
!488 = !{!"branch_weights", i32 189544, i32 704}
!489 = !{!"branch_weights", i32 1, i32 703}
!490 = !{!"branch_weights", i32 4167, i32 885}
!491 = !{!492, !174, i64 8}
!492 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !174, i64 0, !174, i64 8, !174, i64 16}
!493 = !{!"branch_weights", i32 885, i32 0}
!494 = !{!492, !174, i64 0}
!495 = !{!"VP", i32 0, i64 884, i64 -7405368087501025645, i64 884}
!496 = distinct !{!496, !243, !244}
!497 = !{!"branch_weights", i32 4349, i32 703}
!498 = distinct !{!498, !243, !244}
!499 = !{!"branch_weights", i32 190056, i32 0}
!500 = !{!501, !174, i64 8}
!501 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !174, i64 0, !174, i64 8, !174, i64 16, !173, i64 24}
!502 = !{!501, !174, i64 0}
!503 = distinct !{!503, !243, !244}
!504 = distinct !{!504, !243, !244}
!505 = !{!"VP", i32 0, i64 833461, i64 -1053059006651270997, i64 832911, i64 7566783703816504772, i64 550}
!506 = !{!374, !173, i64 20}
!507 = !{!"branch_weights", i32 680084, i32 153377}
!508 = !{!"branch_weights", i32 152945, i32 432}
!509 = !{!"branch_weights", i32 0, i32 152945}
!510 = !{!"branch_weights", i32 152945, i32 0}
!511 = !{!"branch_weights", i32 432, i32 152945}
!512 = !{!"VP", i32 0, i64 152945, i64 775056299206688193, i64 152945}
!513 = !{!"branch_weights", i32 153377, i32 0}
!514 = !{!"branch_weights", i32 0, i32 153377}
!515 = !{!"VP", i32 0, i64 153377, i64 6097453972949846256, i64 152945, i64 6499927686955036818, i64 432}
!516 = !{!"VP", i32 0, i64 153377, i64 -6289420323266357339, i64 152945, i64 -908290396823866376, i64 432}
!517 = !{!"VP", i32 0, i64 152945, i64 -5622634898759239754, i64 152945}
!518 = !{!"VP", i32 0, i64 432, i64 -1739351328056341907, i64 432}
!519 = !{!"branch_weights", i32 432, i32 0}
!520 = !{!"VP", i32 0, i64 153377, i64 -8600786475566429199, i64 152945, i64 904836365347592004, i64 432}
!521 = !{!"branch_weights", i32 679966, i32 118}
!522 = !{!167, !174, i64 960}
!523 = !{!"function_entry_count", i64 390}
!524 = !{!"VP", i32 0, i64 390, i64 -8564895565370113594, i64 390}
!525 = !{!"branch_weights", i32 30, i32 360}
!526 = !{!"branch_weights", i32 30, i32 0}
!527 = !{!"branch_weights", i32 360, i32 0}
!528 = !{!"branch_weights", i32 1, i32 389}
!529 = !{!530, !173, i64 12}
!530 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !172, i64 8, !173, i64 12, !173, i64 16, !174, i64 24, !174, i64 32}
!531 = !{!167, !173, i64 920}
!532 = !{!"branch_weights", i32 390, i32 222}
!533 = !{!"branch_weights", i32 38, i32 66, i32 118}
!534 = !{!311, !174, i64 163968}
!535 = !{!"branch_weights", i32 38, i32 0}
!536 = !{!"branch_weights", i32 222, i32 390}
!537 = !{!"branch_weights", i32 222, i32 0}
!538 = !{!"branch_weights", i32 219, i32 3}
!539 = !{!423, !425, i64 12}
!540 = !{!530, !174, i64 24}
!541 = !{!"branch_weights", i32 219, i32 0}
!542 = !{!543, !174, i64 24}
!543 = !{!"_ZTSN11xercesc_2_77XMLAttrE", !172, i64 0, !425, i64 4, !173, i64 8, !174, i64 16, !174, i64 24, !174, i64 32, !174, i64 40, !172, i64 48}
!544 = !{!543, !425, i64 4}
!545 = !{!543, !172, i64 48}
!546 = !{!543, !174, i64 40}
!547 = !{!543, !172, i64 0}
!548 = !{!"branch_weights", i32 0, i32 222}
!549 = distinct !{!549, !243, !244}
!550 = !{!"branch_weights", i32 0, i32 0, i32 149, i32 241, i32 0, i32 0, i32 0}
!551 = !{!"branch_weights", i32 149, i32 0}
!552 = !{!"branch_weights", i32 0, i32 0, i32 222, i32 390}
!553 = !{!"branch_weights", i32 201, i32 189}
!554 = !{!"VP", i32 0, i64 390, i64 -71788823611994443, i64 390}
!555 = !{!"branch_weights", i32 0, i32 390}
!556 = distinct !{!556, !243, !244}
!557 = !{!"branch_weights", i32 149, i32 241}
!558 = !{!"branch_weights", i32 0, i32 149}
!559 = !{!"VP", i32 0, i64 390, i64 6872187896685074058, i64 390}
!560 = !{!"function_entry_count", i64 6}
!561 = !{!562, !174, i64 0}
!562 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !174, i64 0, !174, i64 8, !174, i64 16, !173, i64 24, !173, i64 28, !173, i64 32}
!563 = !{!562, !173, i64 24}
!564 = !{!562, !173, i64 28}
!565 = !{!562, !173, i64 32}
!566 = !{!"branch_weights", i32 0, i32 6}
!567 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!568 = !{!562, !174, i64 8}
!569 = !{!"branch_weights", i32 191, i32 13057}
!570 = distinct !{!570, !243, !244}
!571 = !{!562, !174, i64 16}
!572 = !{!573, !174, i64 0}
!573 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !174, i64 0, !172, i64 8, !174, i64 16, !173, i64 24, !174, i64 32, !174, i64 40, !173, i64 48, !173, i64 52}
!574 = !{!573, !172, i64 8}
!575 = !{!573, !174, i64 16}
!576 = !{!573, !173, i64 24}
!577 = !{!573, !173, i64 48}
!578 = !{!573, !173, i64 52}
!579 = !{!573, !174, i64 32}
!580 = !{!"branch_weights", i32 0, i32 5}
!581 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!582 = !{!573, !174, i64 40}
!583 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!584 = !{!"branch_weights", i32 6, i32 0}
!585 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!586 = !{!"VP", i32 0, i64 5, i64 -5147776714887549805, i64 5}
!587 = !{!"VP", i32 0, i64 3, i64 -5147776714887549805, i64 3}
!588 = !{!"branch_weights", i32 833461, i32 191815}
!589 = !{!"branch_weights", i32 1765, i32 36673, i32 153377}
!590 = !{!"branch_weights", i32 1765, i32 0}
!591 = !{!"branch_weights", i32 191815, i32 833461}
!592 = !{!"branch_weights", i32 191815, i32 0}
!593 = !{!"branch_weights", i32 191808, i32 7}
!594 = !{!"branch_weights", i32 7, i32 0}
!595 = !{!"branch_weights", i32 574788, i32 0}
!596 = !{!597, !170, i64 8}
!597 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !183, i64 0, !170, i64 8, !170, i64 16, !174, i64 24, !174, i64 32, !174, i64 40}
!598 = !{!"branch_weights", i32 191805, i32 3}
!599 = !{!597, !174, i64 40}
!600 = !{!597, !174, i64 24}
!601 = !{!"VP", i32 1, i64 191808, i64 17, i64 86473, i64 9, i64 74646, i64 6, i64 30625, i64 8, i64 63}
!602 = !{!597, !170, i64 16}
!603 = !{!"branch_weights", i32 191802, i32 6}
!604 = !{!597, !174, i64 32}
!605 = !{!"VP", i32 1, i64 191808, i64 17, i64 156341, i64 33, i64 26095, i64 32, i64 4901, i64 16, i64 2947}
!606 = !{!"branch_weights", i32 0, i32 0, i32 153377, i32 680084, i32 0, i32 0, i32 0}
!607 = distinct !{!607, !243, !244}
!608 = !{!"branch_weights", i32 0, i32 0, i32 191815, i32 833461}
!609 = distinct !{!609, !243, !244}
!610 = !{!"function_entry_count", i64 1359931}
!611 = !{!"branch_weights", i32 0, i32 1359931}
!612 = !{!"branch_weights", i32 1359937, i32 0}
!613 = !{!168, !174, i64 128}
!614 = !{!168, !172, i64 30}
!615 = !{!301, !172, i64 32}
!616 = !{!274, !173, i64 56}
!617 = !{!168, !178, i64 272}
!618 = !{!168, !174, i64 288}
!619 = !{!168, !172, i64 23}
!620 = !{!621, !174, i64 0}
!621 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !174, i64 0, !174, i64 8}
!622 = !{!621, !174, i64 8}
!623 = !{!168, !174, i64 280}
!624 = !{!168, !172, i64 31}
!625 = !{!168, !172, i64 17}
!626 = !{!168, !172, i64 37}
!627 = !{!168, !172, i64 29}
!628 = !{!629, !174, i64 8}
!629 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !172, i64 0, !172, i64 1, !172, i64 2, !174, i64 8, !174, i64 16, !174, i64 24, !174, i64 32, !174, i64 40, !174, i64 48, !174, i64 56, !174, i64 64, !174, i64 72}
!630 = !{!631, !172, i64 72}
!631 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !632, i64 0, !172, i64 72, !172, i64 73, !172, i64 74}
!632 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !183, i64 0, !173, i64 8, !173, i64 12, !174, i64 16, !174, i64 24, !174, i64 32, !174, i64 40, !174, i64 48, !174, i64 56, !174, i64 64}
!633 = !{!631, !172, i64 73}
!634 = !{!631, !172, i64 74}
!635 = !{!632, !174, i64 48}
!636 = !{!632, !174, i64 64}
!637 = !{!311, !172, i64 163945}
!638 = !{!"function_entry_count", i64 47}
!639 = !{!"branch_weights", i32 47, i32 0}
!640 = !{!"VP", i32 0, i64 47, i64 8345045103670217670, i64 47}
!641 = !{!431, !174, i64 8}
!642 = !{!"branch_weights", i32 0, i32 47}
!643 = !{!"function_entry_count", i64 243874}
!644 = !{!"branch_weights", i32 191815, i32 52059}
!645 = !{!"branch_weights", i32 0, i32 52059}
!646 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!647 = !{!"function_entry_count", i64 201935}
!648 = !{!"branch_weights", i32 201935, i32 0}
!649 = !{!530, !174, i64 32}
!650 = !{!"function_entry_count", i64 872}
!651 = !{!"VP", i32 0, i64 872, i64 3024540859536234746, i64 872}
!652 = !{!"branch_weights", i32 29, i32 843}
!653 = !{!492, !174, i64 16}
!654 = !{!"VP", i32 0, i64 29, i64 -1309333655503989351, i64 29}
!655 = !{!"branch_weights", i32 0, i32 29}
!656 = distinct !{!656, !243, !244}
!657 = !{!"function_entry_count", i64 885}
!658 = !{!"VP", i32 0, i64 885, i64 3024540859536234746, i64 872, i64 4592451362407133634, i64 13}
!659 = !{!"branch_weights", i32 856, i32 29}
!660 = !{!"branch_weights", i32 29, i32 0}
!661 = distinct !{!661, !243, !244}
!662 = !{!"VP", i32 0, i64 885, i64 8345045103670217670, i64 885}
!663 = !{!"function_entry_count", i64 392072}
!664 = !{!"VP", i32 0, i64 392072, i64 4592451362407133634, i64 392072}
!665 = !{!"VP", i32 0, i64 392048, i64 2119983950972065349, i64 392048}
!666 = !{!"branch_weights", i32 392048, i32 0}
!667 = !{!"branch_weights", i32 191, i32 3136193}
!668 = !{!"branch_weights", i32 24, i32 392048}
!669 = !{!"function_entry_count", i64 198}
!670 = !{!168, !173, i64 64}
!671 = !{!168, !173, i64 60}
!672 = !{!"function_entry_count", i64 79}
!673 = !{!"branch_weights", i32 79, i32 0}
!674 = !{!444, !174, i64 16}
!675 = !{!444, !173, i64 24}
!676 = !{!444, !173, i64 28}
!677 = !{!"VP", i32 0, i64 79, i64 8345045103670217670, i64 79}
!678 = !{!444, !174, i64 8}
!679 = !{!"branch_weights", i32 0, i32 79}
!680 = !{!"function_entry_count", i64 2222605}
!681 = !{!"branch_weights", i32 0, i32 2718768}
!682 = !{!"VP", i32 1, i64 2222605, i64 33, i64 538580, i64 9, i64 355977, i64 17, i64 335202, i64 8, i64 261615}
!683 = distinct !{!683, !243, !244}
!684 = !{!629, !172, i64 1}
!685 = !{!168, !172, i64 22}
!686 = !{!168, !173, i64 40}
!687 = !{!168, !174, i64 136}
!688 = !{!168, !174, i64 144}
!689 = !{!168, !172, i64 176}
!690 = !{!"function_entry_count", i64 9}
!691 = !{!"branch_weights", i32 1, i32 143}
!692 = !{!"branch_weights", i32 454, i32 47}
!693 = !{!"VP", i32 0, i64 47, i64 6620649524856465861, i64 47}
!694 = !{!"VP", i32 0, i64 47, i64 -7405368087501025645, i64 47}
!695 = distinct !{!695, !243, !244}
!696 = !{!"branch_weights", i32 7873, i32 143}
!697 = distinct !{!697, !243, !244}
!698 = !{!"branch_weights", i32 1, i32 2}
!699 = distinct !{!699, !243, !244}
!700 = !{!"branch_weights", i32 0, i32 2}
!701 = !{!"branch_weights", i32 1, i32 39}
!702 = !{!"branch_weights", i32 1, i32 38}
!703 = distinct !{!703, !243, !244}
!704 = !{!"branch_weights", i32 127, i32 129}
!705 = distinct !{!705, !243, !244}
!706 = !{!282, !174, i64 40}
!707 = !{!"function_entry_count", i64 4843157}
!708 = !{!"branch_weights", i32 0, i32 4843157}
!709 = !{!339, !174, i64 24}
!710 = !{!"branch_weights", i32 4843157, i32 0}
!711 = !{!339, !174, i64 16}
!712 = !{!"function_entry_count", i64 789922}
!713 = !{!"branch_weights", i32 0, i32 789922}
!714 = !{!"branch_weights", i32 284, i32 789638}
!715 = !{!"branch_weights", i32 789638, i32 41628303}
!716 = distinct !{!716, !243, !244}
!717 = !{!"branch_weights", i32 789636, i32 2}
!718 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!719 = !{!"function_entry_count", i64 1927}
!720 = !{!"branch_weights", i32 0, i32 1927}
!721 = !{!"branch_weights", i32 1, i32 1926}
!722 = !{!"branch_weights", i32 1926, i32 12567}
!723 = distinct !{!723, !243, !244}
!724 = !{!"branch_weights", i32 1, i32 1033}
!725 = !{!"branch_weights", i32 0, i32 1283}
!726 = !{!"branch_weights", i32 389, i32 1}
!727 = !{!"branch_weights", i32 893, i32 7885}
!728 = !{!"branch_weights", i32 8389, i32 389}
!729 = !{!"branch_weights", i32 1033, i32 250}
!730 = distinct !{!730, !243, !244}
!731 = !{!"function_entry_count", i64 1992794}
!732 = !{!"VP", i32 0, i64 1992794, i64 3024540859536234746, i64 1992794}
!733 = !{!"branch_weights", i32 1, i32 1159830}
!734 = !{!"branch_weights", i32 2435526, i32 0}
!735 = !{!"branch_weights", i32 1030784, i32 1404742}
!736 = !{!"VP", i32 0, i64 1030784, i64 -1309333655503989351, i64 1030784}
!737 = !{!"branch_weights", i32 832963, i32 197821}
!738 = !{!"branch_weights", i32 1159830, i32 1275696}
!739 = distinct !{!739, !243, !244}
!740 = !{!"branch_weights", i32 1, i32 159}
!741 = !{!"branch_weights", i32 159, i32 9601}
!742 = distinct !{!742, !243, !244}
!743 = !{!"branch_weights", i32 0, i32 7}
!744 = !{!"VP", i32 0, i64 7, i64 -2769809254715685994, i64 7}
!745 = !{!"branch_weights", i32 257, i32 191}
!746 = distinct !{!746, !243, !244}
!747 = distinct !{!747, !243, !244}
!748 = distinct !{!748, !243, !244}
!749 = distinct !{!749, !243, !244}
!750 = !{!"function_entry_count", i64 7}
!751 = !{!"branch_weights", i32 1, i32 223}
!752 = !{!"branch_weights", i32 444, i32 79}
!753 = !{!"VP", i32 0, i64 79, i64 -3182483803875353668, i64 79}
!754 = !{!"VP", i32 0, i64 79, i64 -7405368087501025645, i64 79}
!755 = distinct !{!755, !243, !244}
!756 = !{!"branch_weights", i32 16513, i32 223}
!757 = distinct !{!757, !243, !244}
!758 = !{!"VP", i32 0, i64 6, i64 -1480571424701097013, i64 3, i64 -5147776714887549805, i64 3}
!759 = distinct !{!759, !243, !244}
!760 = !{!"branch_weights", i32 1359931, i32 0}
!761 = distinct !{!761, !243, !244}
!762 = !{!"function_entry_count", i64 10}
!763 = !{!530, !173, i64 16}
!764 = !{!"branch_weights", i32 0, i32 10}
!765 = distinct !{!765, !243, !244}
!766 = !{!767, !174, i64 0}
!767 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIjEEEE", !174, i64 0, !174, i64 8}
!768 = !{!767, !174, i64 8}
!769 = distinct !{!769, !243, !244}
!770 = distinct !{!770, !243, !244}
!771 = !{!"function_entry_count", i64 2}
!772 = distinct !{!772, !243, !244}
