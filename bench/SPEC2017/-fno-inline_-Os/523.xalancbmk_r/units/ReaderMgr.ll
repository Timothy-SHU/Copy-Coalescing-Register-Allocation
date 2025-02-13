; ModuleID = 'ReaderMgr.cpp'
source_filename = "ReaderMgr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::RefStackOf" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf" }
%"class.xercesc_2_7::RefVectorOf" = type { %"class.xercesc_2_7::BaseRefVectorOf" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefStackOf.0" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.1" }
%"class.xercesc_2_7::RefVectorOf.1" = type { %"class.xercesc_2_7::BaseRefVectorOf.2" }
%"class.xercesc_2_7::BaseRefVectorOf.2" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::Janitor.3" = type { ptr }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::EndOfEntityException" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_77LocatorC2Ev = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEED2Ev = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv = comdat any

$_ZN11xercesc_2_79XMLReader11getNextCharERt = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79XMLReader12peekNextCharERt = comdat any

$_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZNK11xercesc_2_79XMLReader12getReaderNumEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv = comdat any

$_ZN11xercesc_2_77JanitorINS_14BinInputStreamEEC2EPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLReader12setReaderNumEj = comdat any

$_ZN11xercesc_2_77JanitorINS_14BinInputStreamEED2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE = comdat any

$_ZN11xercesc_2_721XMLResourceIdentifierD2Ev = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE6orphanEv = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev = comdat any

$_ZNK11xercesc_2_79XMLReader14getEncodingStrEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4sizeEv = comdat any

$_ZNK11xercesc_2_79XMLReader11getSystemIdEv = comdat any

$_ZNK11xercesc_2_79XMLReader11getPublicIdEv = comdat any

$_ZNK11xercesc_2_79XMLReader13getLineNumberEv = comdat any

$_ZNK11xercesc_2_79XMLReader15getColumnNumberEv = comdat any

$_ZNK11xercesc_2_79XMLReader7getTypeEv = comdat any

$_ZNK11xercesc_2_79XMLReader10getRefFromEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl7getNameEv = comdat any

$_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4pushEPS1_ = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4pushEPS1_ = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE17removeAllElementsEv = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4sizeEv = comdat any

$_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj = comdat any

$_ZNK11xercesc_2_79XMLReader13getThrowAtEndEv = comdat any

$_ZN11xercesc_2_720EndOfEntityExceptionC2EPNS_13XMLEntityDeclEj = comdat any

$_ZN11xercesc_2_720EndOfEntityExceptionD2Ev = comdat any

$_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv = comdat any

$_ZN11xercesc_2_77LocatorD2Ev = comdat any

$_ZN11xercesc_2_77LocatorD0Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE7cleanupEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE7cleanupEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE4sizeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11InputSourceEE7releaseEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED0Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE19ensureExtraCapacityEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE9elementAtEj = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTIN11xercesc_2_720EndOfEntityExceptionE = comdat any

$_ZTSN11xercesc_2_77LocatorE = comdat any

$_ZTIN11xercesc_2_77LocatorE = comdat any

$_ZTVN11xercesc_2_77LocatorE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE = comdat any

@_ZTVN11xercesc_2_79ReaderMgrE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_79ReaderMgrE, ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_79ReaderMgrD0Ev, ptr @_ZNK11xercesc_2_79ReaderMgr11getPublicIdEv, ptr @_ZNK11xercesc_2_79ReaderMgr11getSystemIdEv, ptr @_ZNK11xercesc_2_79ReaderMgr13getLineNumberEv, ptr @_ZNK11xercesc_2_79ReaderMgr15getColumnNumberEv] }, align 8
@.str = private unnamed_addr constant [14 x i8] c"ReaderMgr.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_79ReaderMgrE = dso_local constant [26 x i8] c"N11xercesc_2_79ReaderMgrE\00", align 1
@_ZTSN11xercesc_2_77LocatorE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77LocatorE\00", comdat, align 1
@_ZTIN11xercesc_2_77LocatorE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77LocatorE }, comdat, align 8
@_ZTIN11xercesc_2_79ReaderMgrE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_79ReaderMgrE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_77LocatorE, i64 2 }, align 8
@_ZTVN11xercesc_2_77LocatorE = linkonce_odr dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77LocatorE, ptr @_ZN11xercesc_2_77LocatorD2Ev, ptr @_ZN11xercesc_2_77LocatorD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_711RefVectorOfINS_9XMLReaderEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE = linkonce_odr dso_local constant [50 x i8] c"N11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE }, comdat, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/RefStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_79ReaderMgrC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_79ReaderMgrD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79ReaderMgrD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgrC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  tail call void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_79ReaderMgrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !134
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !142
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 0, ptr %6, align 8, !tbaa !143
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  store i32 0, ptr %7, align 4, !tbaa !144
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 0, ptr %8, align 8, !tbaa !145
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  store ptr %1, ptr %9, align 8, !tbaa !146
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !147 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_77LocatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgrD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 !prof !130 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_79ReaderMgrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %3) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !142
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #13
  br label %16

16:                                               ; preds = %15, %11
  tail call void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgrD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_79ReaderMgrD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr7isEmptyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !152 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !153 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11getNextCharERt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 2 dereferenceable(2) %2) #12
  br i1 %5, label %6, label %8, !prof !154

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 2, !tbaa !155
  br label %14

8:                                                ; preds = %1
  %9 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %9, label %10, label %14

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 8, !tbaa !149
  %12 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11getNextCharERt(ptr noundef nonnull align 8 dereferenceable(163992) %11, ptr noundef nonnull align 2 dereferenceable(2) %2) #12
  %13 = load i16, ptr %2, align 2, !tbaa !155
  br label %14

14:                                               ; preds = %8, %10, %6
  %15 = phi i16 [ %7, %6 ], [ %13, %10 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret i16 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11getNextCharERt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #2 comdat align 2 !prof !153 {
  %3 = load i32, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !164
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %15, label %7, !prof !165

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !166, !range !167, !noundef !168
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %28, !prof !169

11:                                               ; preds = %7
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %12, label %13, label %28, !prof !169

13:                                               ; preds = %11
  %14 = load i32, ptr %0, align 8, !tbaa !157
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ %3, %2 ]
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !157
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !155
  store i16 %20, ptr %1, align 2, !tbaa !155
  %21 = and i16 %20, -8368
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23, !prof !170

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !171
  %26 = add nsw i64 %25, 1
  store i64 %26, ptr %24, align 8, !tbaa !171
  br label %28

27:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %1, i1 noundef zeroext false) #12
  br label %28

28:                                               ; preds = %23, %27, %11, %7
  %29 = phi i1 [ false, %7 ], [ false, %11 ], [ true, %27 ], [ true, %23 ]
  ret i1 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !172 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  br i1 %4, label %55, label %5, !prof !173

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !174
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getThrowAtEndEv(ptr noundef nonnull align 8 dereferenceable(163992) %9) #12
  %11 = load ptr, ptr %8, align 8, !tbaa !149
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %11) #12
  %13 = load ptr, ptr %8, align 8, !tbaa !149
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %13) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #13
  br label %16

16:                                               ; preds = %15, %5
  %17 = load ptr, ptr %2, align 8, !tbaa !142
  %18 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %17) #12
  store ptr %18, ptr %8, align 8, !tbaa !149
  %19 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !150
  %21 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %20) #12
  store ptr %21, ptr %6, align 8, !tbaa !174
  %22 = icmp ne ptr %7, null
  %23 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %24 = load i8, ptr %23, align 8, !range !167
  %25 = icmp ne i8 %24, 0
  %26 = select i1 %22, i1 %25, i1 false
  %27 = or i1 %10, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %16
  %29 = load ptr, ptr %8, align 8, !tbaa !149
  %30 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %29) #12
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %34, label %55

32:                                               ; preds = %16
  %33 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  tail call void @_ZN11xercesc_2_720EndOfEntityExceptionC2EPNS_13XMLEntityDeclEj(ptr noundef nonnull align 8 dereferenceable(12) %33, ptr noundef %7, i32 noundef %12) #12
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE, ptr nonnull @_ZN11xercesc_2_720EndOfEntityExceptionD2Ev) #15
  unreachable

34:                                               ; preds = %28, %47
  %35 = load ptr, ptr %8, align 8, !tbaa !149
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %35) #12
  %37 = load ptr, ptr %8, align 8, !tbaa !149
  %38 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %37) #12
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load ptr, ptr %2, align 8, !tbaa !142
  %42 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %41) #12
  br i1 %42, label %55, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %8, align 8, !tbaa !149
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %44) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %44) #13
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr %2, align 8, !tbaa !142
  %49 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %48) #12
  store ptr %49, ptr %8, align 8, !tbaa !149
  %50 = load ptr, ptr %19, align 8, !tbaa !150
  %51 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %50) #12
  store ptr %51, ptr %6, align 8, !tbaa !174
  %52 = load ptr, ptr %8, align 8, !tbaa !149
  %53 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %52) #12
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %34, label %55, !llvm.loop !175

55:                                               ; preds = %47, %34, %40, %28, %1
  %56 = phi i1 [ false, %1 ], [ true, %28 ], [ true, %47 ], [ true, %34 ], [ false, %40 ]
  ret i1 %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !prof !177 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %7, %2
  %5 = load ptr, ptr %3, align 8, !tbaa !149
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  br i1 %6, label %9, label %7, !prof !178

7:                                                ; preds = %4
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %8, label %4, label %9, !prof !179, !llvm.loop !180

9:                                                ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !181 {
  store i32 0, ptr %0, align 8, !tbaa !182
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  store i16 0, ptr %3, align 2, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %8, %3
  %6 = load ptr, ptr %4, align 8, !tbaa !149
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(163992) %6, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) #12
  br i1 %7, label %10, label %8, !prof !185

8:                                                ; preds = %5
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %9, label %5, label %10, !llvm.loop !186

10:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !187 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12peekNextCharERt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 2 dereferenceable(2) %2) #12
  br i1 %5, label %6, label %8, !prof !188

6:                                                ; preds = %1
  %7 = load i16, ptr %2, align 2, !tbaa !155
  br label %14

8:                                                ; preds = %1
  %9 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %9, label %10, label %14, !prof !189

10:                                               ; preds = %8
  %11 = load ptr, ptr %3, align 8, !tbaa !149
  %12 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12peekNextCharERt(ptr noundef nonnull align 8 dereferenceable(163992) %11, ptr noundef nonnull align 2 dereferenceable(2) %2) #12
  %13 = load i16, ptr %2, align 2, !tbaa !155
  br label %14

14:                                               ; preds = %8, %10, %6
  %15 = phi i16 [ %7, %6 ], [ %13, %10 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret i16 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12peekNextCharERt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #2 comdat align 2 !prof !187 {
  %3 = load i32, ptr %0, align 8, !tbaa !157
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !164
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %11, label %7, !prof !190

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %8, label %9, label %28, !prof !191

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8, !tbaa !157
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %3, %2 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !155
  store i16 %15, ptr %1, align 2, !tbaa !155
  switch i16 %15, label %31 [
    i16 13, label %24
    i16 133, label %16
    i16 8232, label %16
  ], !prof !192

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  %18 = load i8, ptr %17, align 8, !tbaa !193, !range !167, !noundef !168
  %19 = icmp ne i8 %18, 0
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %28, label %31

24:                                               ; preds = %11
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  %26 = load i32, ptr %25, align 4, !tbaa !194
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %16, %7
  %29 = phi i16 [ 0, %7 ], [ 10, %16 ], [ 10, %24 ]
  %30 = phi i1 [ false, %7 ], [ true, %16 ], [ true, %24 ]
  store i16 %29, ptr %1, align 2, !tbaa !155
  br label %31

31:                                               ; preds = %28, %16, %24, %11
  %32 = phi i1 [ true, %11 ], [ true, %24 ], [ true, %16 ], [ %30, %28 ]
  ret i1 %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !195 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %10, %2
  %5 = load ptr, ptr %3, align 8, !tbaa !149
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %1) #12
  br i1 %6, label %12, label %7, !prof !196

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 8, !tbaa !149
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv(ptr noundef nonnull align 8 dereferenceable(163992) %8) #12
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %11, label %4, label %12, !llvm.loop !197

12:                                               ; preds = %7, %10, %4
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(163992), i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %3 = load i8, ptr %2, align 1, !tbaa !166, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %9, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !149
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(163992) %4) #12
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !149
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv(ptr noundef nonnull align 8 dereferenceable(163992) %7) #12
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %10, label %3, label %11, !llvm.loop !199

11:                                               ; preds = %6, %9, %3
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #2 align 2 !prof !200 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %10, %2
  %5 = load ptr, ptr %3, align 8, !tbaa !149
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 2 dereferenceable(2) %1) #12
  br i1 %6, label %12, label %7, !prof !201

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 8, !tbaa !149
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv(ptr noundef nonnull align 8 dereferenceable(163992) %8) #12
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %11, label %4, label %12, !llvm.loop !202

12:                                               ; preds = %7, %10, %4
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !203 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i8 [ 0, %2 ], [ %12, %9 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !149
  %8 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10skipSpacesERbb(ptr noundef nonnull align 8 dereferenceable(163992) %7, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %1) #12
  br i1 %8, label %14, label %9, !prof !204

9:                                                ; preds = %5
  %10 = load i8, ptr %3, align 1, !tbaa !205, !range !167, !noundef !168
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i8 %6, i8 1
  %13 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  br i1 %13, label %5, label %14, !llvm.loop !206

14:                                               ; preds = %9, %5
  %15 = phi i8 [ %6, %5 ], [ %12, %9 ]
  %16 = load i8, ptr %3, align 1, !tbaa !205, !range !167, !noundef !168
  %17 = icmp ne i8 %16, 0
  %18 = and i8 %15, 1
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %17, i1 true, i1 %19, !prof !207
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  ret i1 %20
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10skipSpacesERbb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !151 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %5 = icmp eq i16 %4, 0
  %6 = icmp eq i16 %4, %1
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %3, !llvm.loop !208

8:                                                ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !151 {
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %9
  %6 = phi i16 [ %11, %9 ], [ %3, %2 ]
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext %6) #12
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %11 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !209

13:                                               ; preds = %9, %5, %2
  %14 = phi i16 [ 0, %2 ], [ %6, %5 ], [ 0, %9 ]
  ret i16 %14
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !151 {
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %5, %14
  %8 = phi i16 [ %3, %5 ], [ %16, %14 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !149
  %10 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %9, i16 noundef zeroext %8) #12
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext %8) #12
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %16 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #12
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %7, !llvm.loop !210

18:                                               ; preds = %14, %7, %11, %2
  %19 = phi i16 [ 0, %2 ], [ %8, %11 ], [ %8, %7 ], [ 0, %14 ]
  ret i16 %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !211 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !212
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !213
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !198 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  br i1 %4, label %5, label %9, !prof !214

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv(ptr noundef nonnull align 8 dereferenceable(163992) %7) #12
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i1 [ false, %1 ], [ %8, %5 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %4) #12
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %7, %25
  %12 = load ptr, ptr %8, align 8, !tbaa !142
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %12) #12
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %17 = load ptr, ptr %16, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 366, i32 noundef 69, ptr noundef %17) #12
          to label %18 unwind label %19

18:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %11
  %22 = load ptr, ptr %3, align 8, !tbaa !149
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %22) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #13
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr %8, align 8, !tbaa !142
  %27 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %26) #12
  store ptr %27, ptr %3, align 8, !tbaa !149
  %28 = load ptr, ptr %9, align 8, !tbaa !150
  %29 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %28) #12
  store ptr %29, ptr %10, align 8, !tbaa !174
  %30 = load ptr, ptr %3, align 8, !tbaa !149
  %31 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %30) #12
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %33, label %11, !llvm.loop !215

33:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getReaderNumEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !216 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  %3 = load i32, ptr %2, align 8, !tbaa !217
  ret i32 %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 80, ptr noundef %7) #12
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %12) #12
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 80, ptr noundef %7) #12
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %12) #12
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %8 = alloca %"class.xercesc_2_7::Janitor", align 8
  %9 = load ptr, ptr %1, align 8, !tbaa !131
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %85, label %14, !prof !189

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %12) #12
  %15 = load ptr, ptr %1, align 8, !tbaa !131
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %19 unwind label %44

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  %21 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !146
  br i1 %20, label %48, label %23, !prof !185

23:                                               ; preds = %19
  %24 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 163992, ptr noundef %22) #12
          to label %25 unwind label %44

25:                                               ; preds = %23
  %26 = load ptr, ptr %1, align 8, !tbaa !131
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %30 unwind label %46

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8, !tbaa !131
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %35 unwind label %46

35:                                               ; preds = %30
  %36 = load ptr, ptr %1, align 8, !tbaa !131
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %40 unwind label %46

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 4, !tbaa !144
  %43 = load ptr, ptr %21, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %24, ptr noundef %29, ptr noundef %34, ptr noundef nonnull %12, ptr noundef %39, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext false, i1 noundef zeroext %6, i32 noundef %42, ptr noundef %43) #12
          to label %77 unwind label %46

44:                                               ; preds = %48, %23, %14
  %45 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %66

46:                                               ; preds = %40, %35, %30, %25
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %22) #13
  br label %66

48:                                               ; preds = %19
  %49 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 163992, ptr noundef %22) #12
          to label %50 unwind label %44

50:                                               ; preds = %48
  %51 = load ptr, ptr %1, align 8, !tbaa !131
  %52 = getelementptr inbounds ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %55 unwind label %64

55:                                               ; preds = %50
  %56 = load ptr, ptr %1, align 8, !tbaa !131
  %57 = getelementptr inbounds ptr, ptr %56, i64 5
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(41) %1) #12
          to label %60 unwind label %64

60:                                               ; preds = %55
  %61 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  %62 = load i32, ptr %61, align 4, !tbaa !144
  %63 = load ptr, ptr %21, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %49, ptr noundef %54, ptr noundef %59, ptr noundef nonnull %12, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext false, i1 noundef zeroext %6, i32 noundef %62, ptr noundef %63) #12
          to label %77 unwind label %64

64:                                               ; preds = %60, %55, %50
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %49, ptr noundef %22) #13
  br label %66

66:                                               ; preds = %64, %46, %44
  %67 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ], [ %65, %64 ]
  %68 = extractvalue { ptr, i32 } %67, 1
  %69 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %66
  %72 = extractvalue { ptr, i32 } %67, 0
  %73 = call ptr @__cxa_begin_catch(ptr %72) #14
  %74 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  invoke void @__cxa_rethrow() #15
          to label %90 unwind label %75

75:                                               ; preds = %71
  %76 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %83 unwind label %87

77:                                               ; preds = %60, %40
  %78 = phi ptr [ %24, %40 ], [ %49, %60 ]
  %79 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #12
  %80 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %81 = load i32, ptr %80, align 8, !tbaa !134
  %82 = add i32 %81, 1
  store i32 %82, ptr %80, align 8, !tbaa !134
  call void @_ZN11xercesc_2_79XMLReader12setReaderNumEj(ptr noundef nonnull align 8 dereferenceable(163992) %78, i32 noundef %81) #12
  call void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  br label %85

83:                                               ; preds = %75, %66
  %84 = phi { ptr, i32 } [ %67, %66 ], [ %76, %75 ]
  call void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  resume { ptr, i32 } %84

85:                                               ; preds = %7, %77
  %86 = phi ptr [ %78, %77 ], [ null, %7 ]
  ret ptr %86

87:                                               ; preds = %75
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #16
  unreachable

90:                                               ; preds = %71
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !218
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !218
  store ptr null, ptr %0, align 8, !tbaa !218
  ret ptr %2
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader12setReaderNumEj(ptr noundef nonnull align 8 dereferenceable(163992) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 %1, ptr %3, align 8, !tbaa !217
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  tail call void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %11 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %12 = alloca i16, align 2
  %13 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %14 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %15 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %16 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %17 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %18 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %19 = alloca %"class.xercesc_2_7::Janitor.3", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !146
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef 1023, ptr noundef %21) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #14
  store i16 -1, ptr %12, align 2, !tbaa !155
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %12, ptr noundef nonnull align 8 dereferenceable(40) %11) #12
          to label %22 unwind label %35

22:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  %23 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #14
  %24 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 1023, ptr noundef %24) #12
          to label %25 unwind label %37

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !220
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !131
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(40) %13) #12
          to label %34 unwind label %39

34:                                               ; preds = %29
  br i1 %33, label %42, label %41

35:                                               ; preds = %10
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #14
  br label %163

37:                                               ; preds = %22
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %161

39:                                               ; preds = %41, %29
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %159

41:                                               ; preds = %34, %25
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef %23) #12
          to label %42 unwind label %39

42:                                               ; preds = %41, %34
  store ptr null, ptr %7, align 8, !tbaa !221
  %43 = load ptr, ptr %26, align 8, !tbaa !220
  %44 = icmp eq ptr %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #14
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #12
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %14) #12
          to label %46 unwind label %54

46:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #14
  %47 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  %48 = load ptr, ptr %14, align 8, !tbaa !222
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %15, i32 noundef 4, ptr noundef %47, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %2, ptr noundef %48, ptr noundef nonnull %0) #12
  %49 = load ptr, ptr %26, align 8, !tbaa !220
  %50 = load ptr, ptr %49, align 8, !tbaa !131
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef nonnull %15) #12
          to label %60 unwind label %56

54:                                               ; preds = %45
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %58

56:                                               ; preds = %46
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #14
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #14
  br label %159

60:                                               ; preds = %46
  store ptr %53, ptr %7, align 8, !tbaa !221
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #14
  %61 = load ptr, ptr %7, align 8, !tbaa !221
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %143

63:                                               ; preds = %42, %60
  br i1 %9, label %157, label %64

64:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #14
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #12
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %16) #12
          to label %65 unwind label %91

65:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #14
  %66 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %66) #12
          to label %67 unwind label %93

67:                                               ; preds = %65
  %68 = load ptr, ptr %16, align 8, !tbaa !222
  %69 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  %70 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %68, ptr noundef %69, ptr noundef nonnull align 8 dereferenceable(81) %17) #12
          to label %71 unwind label %95

71:                                               ; preds = %67
  br i1 %70, label %72, label %75

72:                                               ; preds = %71
  %73 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %17) #12
          to label %74 unwind label %95

74:                                               ; preds = %72
  br i1 %73, label %75, label %112

75:                                               ; preds = %74, %71
  %76 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %77 = load i8, ptr %76, align 8, !tbaa !145, !range !167, !noundef !168
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #14
  %80 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 1023, ptr noundef %80) #12
          to label %81 unwind label %97

81:                                               ; preds = %79
  %82 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %82, ptr noundef nonnull align 8 dereferenceable(40) %18) #12
          to label %83 unwind label %99

83:                                               ; preds = %81
  %84 = load ptr, ptr %20, align 8, !tbaa !146
  %85 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %84) #12
          to label %86 unwind label %99

86:                                               ; preds = %83
  %87 = load ptr, ptr %16, align 8, !tbaa !222
  %88 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #12
  %89 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %85, ptr noundef %87, ptr noundef %88, ptr noundef %89) #12
          to label %90 unwind label %101

90:                                               ; preds = %86
  store ptr %85, ptr %7, align 8, !tbaa !221
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %135

91:                                               ; preds = %64
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %141

93:                                               ; preds = %65
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %139

95:                                               ; preds = %122, %127, %116, %72, %67
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %137

97:                                               ; preds = %79
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %105

99:                                               ; preds = %83, %81
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %86
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %85, ptr noundef %84) #13
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  br label %105

105:                                              ; preds = %103, %97
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %137

107:                                              ; preds = %75
  %108 = call ptr @__cxa_allocate_exception(i64 48) #14
  %109 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 99, ptr noundef %109) #12
          to label %122 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %108) #14
  br label %137

112:                                              ; preds = %74
  %113 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %114 = load i8, ptr %113, align 8, !tbaa !145, !range !167, !noundef !168
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %17) #12
          to label %118 unwind label %95

118:                                              ; preds = %116
  br i1 %117, label %119, label %127

119:                                              ; preds = %118
  %120 = call ptr @__cxa_allocate_exception(i64 48) #14
  %121 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %120, ptr noundef nonnull @.str, i32 noundef 573, i32 noundef 99, ptr noundef %121) #12
          to label %122 unwind label %125

122:                                              ; preds = %119, %107
  %123 = phi ptr [ %108, %107 ], [ %120, %119 ]
  invoke void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %124 unwind label %95

124:                                              ; preds = %122
  unreachable

125:                                              ; preds = %119
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %120) #14
  br label %137

127:                                              ; preds = %118, %112
  %128 = load ptr, ptr %20, align 8, !tbaa !146
  %129 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %128) #12
          to label %130 unwind label %95

130:                                              ; preds = %127
  %131 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %129, ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %131) #12
          to label %132 unwind label %133

132:                                              ; preds = %130
  store ptr %129, ptr %7, align 8, !tbaa !221
  br label %135

133:                                              ; preds = %130
  %134 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %129, ptr noundef %128) #13
  br label %137

135:                                              ; preds = %132, %90
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #14
  %136 = load ptr, ptr %7, align 8, !tbaa !221
  br label %143

137:                                              ; preds = %133, %125, %110, %105, %95
  %138 = phi { ptr, i32 } [ %96, %95 ], [ %111, %110 ], [ %106, %105 ], [ %126, %125 ], [ %134, %133 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #13
  br label %139

139:                                              ; preds = %137, %93
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  br label %141

141:                                              ; preds = %139, %91
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %92, %91 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #14
  br label %159

143:                                              ; preds = %135, %60
  %144 = phi ptr [ %136, %135 ], [ %61, %60 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %144) #12
  %145 = load ptr, ptr %7, align 8, !tbaa !221
  %146 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(41) %145, i1 zeroext poison, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %8) #12
          to label %147 unwind label %150

147:                                              ; preds = %143
  invoke void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE6orphanEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #12
          to label %148 unwind label %150

148:                                              ; preds = %147
  %149 = icmp eq ptr %146, null
  br i1 %149, label %156, label %152

150:                                              ; preds = %147, %143
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  br label %159

152:                                              ; preds = %148
  %153 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !134
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 8, !tbaa !134
  call void @_ZN11xercesc_2_79XMLReader12setReaderNumEj(ptr noundef nonnull align 8 dereferenceable(163992) %146, i32 noundef %154) #12
  br label %156

156:                                              ; preds = %148, %152
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  br label %157

157:                                              ; preds = %63, %156
  %158 = phi ptr [ %146, %156 ], [ null, %63 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #14
  ret ptr %158

159:                                              ; preds = %150, %141, %58, %39
  %160 = phi { ptr, i32 } [ %151, %150 ], [ %142, %141 ], [ %59, %58 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #13
  br label %161

161:                                              ; preds = %159, %37
  %162 = phi { ptr, i32 } [ %160, %159 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  br label %163

163:                                              ; preds = %161, %35
  %164 = phi { ptr, i32 } [ %162, %161 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #14
  resume { ptr, i32 } %164
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !224 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !182
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !225
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !226
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !227
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !228
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !131
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !184
  store i16 0, ptr %16, align 2, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !184
  %4 = load i32, ptr %0, align 8, !tbaa !182
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !155
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !230 {
  store i32 0, ptr %0, align 8, !tbaa !182
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 !prof !231 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !142
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = select i1 %6, i1 true, i1 %9
  br i1 %10, label %11, label %14, !prof !232

11:                                               ; preds = %2
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %1, align 8, !tbaa !222
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 1
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %12, align 8, !tbaa !233
  %13 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 2
  store i64 0, ptr %13, align 8, !tbaa !234
  br label %22

14:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %15 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  %16 = tail call noundef ptr @_ZNK11xercesc_2_79XMLReader11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(163992) %15) #12
  store ptr %16, ptr %1, align 8, !tbaa !222
  %17 = tail call noundef ptr @_ZNK11xercesc_2_79XMLReader11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(163992) %15) #12
  %18 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !233
  %19 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %15) #12
  %20 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 2
  store i64 %19, ptr %20, align 8, !tbaa !234
  %21 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %22

22:                                               ; preds = %14, %11
  %23 = phi i64 [ 0, %11 ], [ %21, %14 ]
  %24 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 3
  store i64 %23, ptr %24, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 comdat align 2 !prof !151 {
  store i32 %1, ptr %0, align 8, !tbaa !235
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !238
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !239
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 3
  store ptr %5, ptr %10, align 8, !tbaa !240
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 4
  store ptr %3, ptr %11, align 8, !tbaa !241
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 5
  store ptr %6, ptr %12, align 8, !tbaa !242
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !224 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !228
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !184
  %6 = load ptr, ptr %3, align 8, !tbaa !131
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !243 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE6orphanEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !151 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !243 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %12 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %13 = alloca i16, align 2
  %14 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %15 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %16 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %17 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %18 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %19 = alloca %"class.xercesc_2_7::Janitor.3", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !146
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef 1023, ptr noundef %21) #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #14
  store i16 -1, ptr %13, align 2, !tbaa !155
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %13, ptr noundef nonnull align 8 dereferenceable(40) %12) #12
          to label %22 unwind label %35

22:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  %23 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %12) #12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %14) #14
  %24 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1023, ptr noundef %24) #12
          to label %25 unwind label %37

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !220
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %27, align 8, !tbaa !131
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef zeroext i1 %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(40) %14) #12
          to label %34 unwind label %39

34:                                               ; preds = %29
  br i1 %33, label %42, label %41

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #14
  br label %163

37:                                               ; preds = %22
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %161

39:                                               ; preds = %41, %29
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %159

41:                                               ; preds = %34, %25
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef %23) #12
          to label %42 unwind label %39

42:                                               ; preds = %41, %34
  store ptr null, ptr %8, align 8, !tbaa !221
  %43 = load ptr, ptr %26, align 8, !tbaa !220
  %44 = icmp eq ptr %43, null
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %15) #14
  %46 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #12
  call void @_ZN11xercesc_2_721XMLResourceIdentifierC2ENS0_22ResourceIdentifierTypeEPKtS3_S3_S3_PKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %15, i32 noundef 4, ptr noundef %46, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %3, ptr noundef %1, ptr noundef nonnull %0) #12
  %47 = load ptr, ptr %26, align 8, !tbaa !220
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  %49 = getelementptr inbounds ptr, ptr %48, i64 6
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull %15) #12
          to label %54 unwind label %52

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #14
  br label %159

54:                                               ; preds = %45
  store ptr %51, ptr %8, align 8, !tbaa !221
  call void @_ZN11xercesc_2_721XMLResourceIdentifierD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %15) #14
  %55 = load ptr, ptr %8, align 8, !tbaa !221
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %143

57:                                               ; preds = %42, %54
  br i1 %10, label %157, label %58

58:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #14
  call void @_ZN11xercesc_2_79ReaderMgr17LastExtEntityInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #12
  %59 = icmp eq ptr %1, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %58
  %61 = load i16, ptr %1, align 2, !tbaa !155
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60, %58
  invoke void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(32) %16) #12
          to label %64 unwind label %66

64:                                               ; preds = %63
  %65 = load ptr, ptr %16, align 8, !tbaa !222
  br label %68

66:                                               ; preds = %63
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %141

68:                                               ; preds = %64, %60
  %69 = phi ptr [ %1, %60 ], [ %65, %64 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #14
  %70 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %70) #12
          to label %71 unwind label %93

71:                                               ; preds = %68
  %72 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #12
  %73 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %69, ptr noundef %72, ptr noundef nonnull align 8 dereferenceable(81) %17) #12
          to label %74 unwind label %95

74:                                               ; preds = %71
  br i1 %73, label %75, label %78

75:                                               ; preds = %74
  %76 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %17) #12
          to label %77 unwind label %95

77:                                               ; preds = %75
  br i1 %76, label %78, label %112

78:                                               ; preds = %77, %74
  %79 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %80 = load i8, ptr %79, align 8, !tbaa !145, !range !167, !noundef !168
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %107

82:                                               ; preds = %78
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #14
  %83 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 1023, ptr noundef %83) #12
          to label %84 unwind label %97

84:                                               ; preds = %82
  %85 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %14) #12
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %85, ptr noundef nonnull align 8 dereferenceable(40) %18) #12
          to label %86 unwind label %99

86:                                               ; preds = %84
  %87 = load ptr, ptr %20, align 8, !tbaa !146
  %88 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %87) #12
          to label %89 unwind label %99

89:                                               ; preds = %86
  %90 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %18) #12
  %91 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %88, ptr noundef %69, ptr noundef %90, ptr noundef %91) #12
          to label %92 unwind label %101

92:                                               ; preds = %89
  store ptr %88, ptr %8, align 8, !tbaa !221
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %135

93:                                               ; preds = %68
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %139

95:                                               ; preds = %122, %127, %116, %75, %71
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %137

97:                                               ; preds = %82
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %105

99:                                               ; preds = %86, %84
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %103

101:                                              ; preds = %89
  %102 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %88, ptr noundef %87) #13
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi { ptr, i32 } [ %102, %101 ], [ %100, %99 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #13
  br label %105

105:                                              ; preds = %103, %97
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %137

107:                                              ; preds = %78
  %108 = call ptr @__cxa_allocate_exception(i64 48) #14
  %109 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %108, ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 99, ptr noundef %109) #12
          to label %122 unwind label %110

110:                                              ; preds = %107
  %111 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %108) #14
  br label %137

112:                                              ; preds = %77
  %113 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %114 = load i8, ptr %113, align 8, !tbaa !145, !range !167, !noundef !168
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %17) #12
          to label %118 unwind label %95

118:                                              ; preds = %116
  br i1 %117, label %119, label %127

119:                                              ; preds = %118
  %120 = call ptr @__cxa_allocate_exception(i64 48) #14
  %121 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %120, ptr noundef nonnull @.str, i32 noundef 692, i32 noundef 99, ptr noundef %121) #12
          to label %122 unwind label %125

122:                                              ; preds = %119, %107
  %123 = phi ptr [ %108, %107 ], [ %120, %119 ]
  invoke void @__cxa_throw(ptr nonnull %123, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %124 unwind label %95

124:                                              ; preds = %122
  unreachable

125:                                              ; preds = %119
  %126 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %120) #14
  br label %137

127:                                              ; preds = %118, %112
  %128 = load ptr, ptr %20, align 8, !tbaa !146
  %129 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %128) #12
          to label %130 unwind label %95

130:                                              ; preds = %127
  %131 = load ptr, ptr %20, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %129, ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %131) #12
          to label %132 unwind label %133

132:                                              ; preds = %130
  store ptr %129, ptr %8, align 8, !tbaa !221
  br label %135

133:                                              ; preds = %130
  %134 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %129, ptr noundef %128) #13
  br label %137

135:                                              ; preds = %132, %92
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #13
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #14
  %136 = load ptr, ptr %8, align 8, !tbaa !221
  br label %143

137:                                              ; preds = %133, %125, %110, %105, %95
  %138 = phi { ptr, i32 } [ %96, %95 ], [ %111, %110 ], [ %106, %105 ], [ %126, %125 ], [ %134, %133 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #13
  br label %139

139:                                              ; preds = %137, %93
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %94, %93 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  br label %141

141:                                              ; preds = %139, %66
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #14
  br label %159

143:                                              ; preds = %135, %54
  %144 = phi ptr [ %136, %135 ], [ %55, %54 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #14
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %144) #12
  %145 = load ptr, ptr %8, align 8, !tbaa !221
  %146 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(41) %145, i1 zeroext poison, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %9) #12
          to label %147 unwind label %150

147:                                              ; preds = %143
  invoke void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE6orphanEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #12
          to label %148 unwind label %150

148:                                              ; preds = %147
  %149 = icmp eq ptr %146, null
  br i1 %149, label %156, label %152

150:                                              ; preds = %147, %143
  %151 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  br label %159

152:                                              ; preds = %148
  %153 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %154 = load i32, ptr %153, align 8, !tbaa !134
  %155 = add i32 %154, 1
  store i32 %155, ptr %153, align 8, !tbaa !134
  call void @_ZN11xercesc_2_79XMLReader12setReaderNumEj(ptr noundef nonnull align 8 dereferenceable(163992) %146, i32 noundef %154) #12
  br label %156

156:                                              ; preds = %148, %152
  call void @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #14
  br label %157

157:                                              ; preds = %57, %156
  %158 = phi ptr [ %146, %156 ], [ null, %57 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #14
  ret ptr %158

159:                                              ; preds = %150, %141, %52, %39
  %160 = phi { ptr, i32 } [ %151, %150 ], [ %142, %141 ], [ %53, %52 ], [ %40, %39 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #13
  br label %161

161:                                              ; preds = %159, %37
  %162 = phi { ptr, i32 } [ %160, %159 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %14) #14
  br label %163

163:                                              ; preds = %161, %35
  %164 = phi { ptr, i32 } [ %162, %161 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #14
  resume { ptr, i32 } %164
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10) #12
  %12 = shl i32 %5, 1
  %13 = select i1 %6, i32 1, i32 2
  %14 = load ptr, ptr %9, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %4, i32 noundef %12, i32 noundef %13, ptr noundef %14) #12
          to label %17 unwind label %15

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #13
  br label %29

17:                                               ; preds = %8
  %18 = load ptr, ptr %9, align 8, !tbaa !146
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 163992, ptr noundef %18) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !144
  %22 = load ptr, ptr %9, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %19, ptr noundef %1, ptr noundef null, ptr noundef nonnull %11, i32 noundef 7, i32 noundef %2, i32 noundef %3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %7, i32 noundef %21, ptr noundef %22) #12
          to label %25 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #13
  br label %29

25:                                               ; preds = %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !134
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !134
  tail call void @_ZN11xercesc_2_79XMLReader12setReaderNumEj(ptr noundef nonnull align 8 dereferenceable(163992) %19, i32 noundef %27) #12
  ret ptr %19

29:                                               ; preds = %23, %15
  %30 = phi { ptr, i32 } [ %24, %23 ], [ %16, %15 ]
  resume { ptr, i32 } %30
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #2 align 2 !prof !130 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %4 = tail call noundef ptr @_ZNK11xercesc_2_79XMLReader14getEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !246 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !174
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8, !prof !247

8:                                                ; preds = %2
  %9 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %6) #12
  br i1 %9, label %31, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !142
  %13 = tail call noundef i32 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %12) #12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  br label %17

17:                                               ; preds = %15, %25
  %18 = phi i32 [ %19, %25 ], [ %13, %15 ]
  %19 = add i32 %18, -1
  %20 = load ptr, ptr %16, align 8, !tbaa !150
  %21 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %20, i32 noundef %19) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %21) #12
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  %26 = icmp eq i32 %19, 0
  br i1 %26, label %31, label %17, !llvm.loop !248

27:                                               ; preds = %23, %17
  %28 = phi ptr [ null, %17 ], [ %21, %23 ]
  %29 = load ptr, ptr %11, align 8, !tbaa !142
  %30 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %29, i32 noundef %19) #12
  br label %31

31:                                               ; preds = %25, %27, %10, %8, %2
  %32 = phi ptr [ %4, %8 ], [ %4, %2 ], [ %4, %10 ], [ %30, %27 ], [ %4, %25 ]
  %33 = phi ptr [ %6, %8 ], [ null, %2 ], [ %6, %10 ], [ %28, %27 ], [ %21, %25 ]
  store ptr %33, ptr %1, align 8, !tbaa !221
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLReader14getEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getCurrentEntityEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #7 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentEntityEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #7 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !150
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %3) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  %11 = add i32 %6, %10
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi i32 [ %11, %5 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLReader11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !250 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !251
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_79XMLReader11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_79XMLReader13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %3 = load i64, ptr %2, align 8, !tbaa !254
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !171
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr27isScanningPERefOutOfLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !174
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader7getTypeEv(ptr noundef nonnull align 8 dereferenceable(163992) %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = load ptr, ptr %6, align 8, !tbaa !149
  %12 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader10getRefFromEv(ptr noundef nonnull align 8 dereferenceable(163992) %11) #12
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %5
  br label %15

15:                                               ; preds = %10, %1, %14
  %16 = phi i1 [ false, %14 ], [ false, %1 ], [ true, %10 ]
  ret i1 %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader7getTypeEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  %3 = load i32, ptr %2, align 8, !tbaa !255
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader10getRefFromEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  %3 = load i32, ptr %2, align 4, !tbaa !256
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %27, label %5, !prof !185

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = tail call noundef i32 @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #12
  %11 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %2) #12
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %9, %24
  %14 = phi i32 [ %25, %24 ], [ 0, %9 ]
  %15 = load ptr, ptr %6, align 8, !tbaa !150
  %16 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %15, i32 noundef %14) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #12
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %11, ptr noundef %19) #12
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = icmp eq ptr %1, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %1) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #13
  br label %62

24:                                               ; preds = %18, %13
  %25 = add nuw i32 %14, 1
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %27, label %13, !llvm.loop !257

27:                                               ; preds = %24, %9, %5, %3
  %28 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !142
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %39, !prof !185

31:                                               ; preds = %27
  %32 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !146
  %34 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %33) #12
  %35 = load ptr, ptr %32, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, i32 noundef 16, i1 noundef zeroext true, ptr noundef %35) #12
          to label %36 unwind label %37

36:                                               ; preds = %31
  store ptr %34, ptr %28, align 8, !tbaa !142
  br label %39

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %33) #13
  br label %64

39:                                               ; preds = %36, %27
  %40 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !150
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %51, !prof !185

43:                                               ; preds = %39
  %44 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %45 = load ptr, ptr %44, align 8, !tbaa !146
  %46 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %45) #12
  %47 = load ptr, ptr %44, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %46, i32 noundef 16, i1 noundef zeroext false, ptr noundef %47) #12
          to label %48 unwind label %49

48:                                               ; preds = %43
  store ptr %46, ptr %40, align 8, !tbaa !150
  br label %51

49:                                               ; preds = %43
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %46, ptr noundef %45) #13
  br label %64

51:                                               ; preds = %48, %39
  %52 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !149
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55, !prof !185

55:                                               ; preds = %51
  %56 = load ptr, ptr %28, align 8, !tbaa !142
  tail call void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull %53) #12
  %57 = load ptr, ptr %40, align 8, !tbaa !150
  %58 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !174
  tail call void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %57, ptr noundef %59) #12
  br label %60

60:                                               ; preds = %55, %51
  store ptr %1, ptr %52, align 8, !tbaa !149
  %61 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  store ptr %2, ptr %61, align 8, !tbaa !174
  br label %62

62:                                               ; preds = %21, %23, %60
  %63 = phi i1 [ true, %60 ], [ false, %23 ], [ false, %21 ]
  ret i1 %63

64:                                               ; preds = %49, %37
  %65 = phi { ptr, i32 } [ %50, %49 ], [ %38, %37 ]
  resume { ptr, i32 } %65
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 55, i32 noundef 79, ptr noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %1) #12
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !261 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !262

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !155
  %8 = load i16, ptr %1, align 2, !tbaa !155
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !263

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !264

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !155
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !189

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !265

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !155
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !266

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !267

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !155
  %28 = load i16, ptr %26, align 2, !tbaa !155
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !268, !llvm.loop !269

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4pushEPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 0, ptr %2, align 8, !tbaa !143
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %4) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %4) #13
  br label %7

7:                                                ; preds = %6, %1
  store ptr null, ptr %3, align 8, !tbaa !149
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !189

11:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %9) #12
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  store ptr null, ptr %13, align 8, !tbaa !174
  %14 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !150
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !189

17:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %15) #12
  br label %18

18:                                               ; preds = %17, %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 !prof !151 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %11 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %12 = tail call noundef ptr @_ZNK11xercesc_2_79XMLReader11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(163992) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 !prof !243 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %13, label %10, !prof !270

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %11 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %12 = tail call noundef ptr @_ZNK11xercesc_2_79XMLReader11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(163992) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_79ReaderMgr15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 !prof !271 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !272

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %11 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %12 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %12, %10 ], [ 0, %6 ]
  ret i64 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_79ReaderMgr13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #2 align 2 !prof !271 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !272

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %11 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  %12 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(163992) %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i64 [ %12, %10 ], [ 0, %6 ]
  ret i64 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !273
  %4 = icmp ne ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 55, i32 noundef 79, ptr noundef %8) #12
          to label %9 unwind label %10

9:                                                ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %2
  %13 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %1) #12
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader13getThrowAtEndEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  %3 = load i8, ptr %2, align 1, !tbaa !274, !range !167, !noundef !168
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720EndOfEntityExceptionC2EPNS_13XMLEntityDeclEj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !151 {
  store ptr %1, ptr %0, align 8, !tbaa !275
  %4 = getelementptr inbounds %"class.xercesc_2_7::EndOfEntityException", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720EndOfEntityExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #0 comdat align 2 !prof !278 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !164
  %4 = load i32, ptr %0, align 8, !tbaa !157
  %5 = sub i32 %3, %4
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !148 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77LocatorD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !282 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !283

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !155
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !284

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !155
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !285, !llvm.loop !286

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !182
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !225
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !287

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #12
  %21 = load i32, ptr %0, align 8, !tbaa !182
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !184
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !182
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !182
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !189

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !290
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !291

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !292
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %16) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #13
  %19 = load i32, ptr %6, align 4, !tbaa !290
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !293, !llvm.loop !294

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !295
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !292
  %30 = load ptr, ptr %27, align 8, !tbaa !131
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #12
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !290
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !295
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !288, !range !167, !noundef !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !292
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !221
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %25) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #13
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !292
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !290
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !291

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !290
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !288, !range !167, !noundef !168
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !292
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %17) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #13
  %20 = load ptr, ptr %7, align 8, !tbaa !292
  %21 = load i32, ptr %2, align 4, !tbaa !290
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !221
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !prof !293, !llvm.loop !296
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !290
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !295
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !288, !range !167, !noundef !168
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !292
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %22) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #13
  %25 = load i32, ptr %3, align 4, !tbaa !290
  br label %26

26:                                               ; preds = %17, %24, %13
  %27 = phi i32 [ %4, %17 ], [ %25, %24 ], [ %4, %13 ]
  %28 = add i32 %27, -1
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, %1
  br i1 %31, label %34, label %32

32:                                               ; preds = %30
  %33 = zext i32 %28 to i64
  br label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !292
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !292
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !292
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !221
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !221
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !297

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !221
  store i32 %28, ptr %3, align 4, !tbaa !290
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !290
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !290
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !288, !range !167, !noundef !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !292
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %15) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !288, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !290
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !292
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %16) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #13
  %19 = load i32, ptr %6, align 4, !tbaa !290
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !298

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !295
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !292
  %30 = load ptr, ptr %27, align 8, !tbaa !131
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !299, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5, !prof !185

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !301
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !302
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !131
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !301
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !303

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !304
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !302
  %33 = load ptr, ptr %30, align 8, !tbaa !131
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !301
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !304
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !299, !range !167, !noundef !168
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !302
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !221
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !131
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !302
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !221
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !301
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !291

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !301
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !299, !range !167, !noundef !168
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !302
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !221
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !131
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !302
  %24 = load i32, ptr %2, align 4, !tbaa !301
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !221
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !prof !293, !llvm.loop !305
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !301
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !304
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !299, !range !167, !noundef !168
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !302
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !131
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !301
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !302
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !302
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !302
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !221
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !221
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !306

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !221
  store i32 %31, ptr %3, align 4, !tbaa !301
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !301
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !301
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !299, !range !167, !noundef !168
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !302
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !221
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !131
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !299, !range !167, !noundef !168
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !301
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !302
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !131
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !301
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !307

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !304
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !302
  %33 = load ptr, ptr %30, align 8, !tbaa !131
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !152 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !290
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !295
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !290
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !295
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !292
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  %23 = zext i32 %19 to i64
  br i1 %22, label %29, label %26

24:                                               ; preds = %29
  %25 = load ptr, ptr %14, align 8, !tbaa !292
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %32, %29 ], [ %16, %21 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !292
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !221
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %24, label %29, !llvm.loop !308

37:                                               ; preds = %13, %26
  %38 = phi ptr [ %28, %26 ], [ %17, %13 ]
  store ptr null, ptr %38, align 8, !tbaa !221
  store i32 %19, ptr %3, align 4, !tbaa !290
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !151 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !279
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !301
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !304
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !301
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !304
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !302
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  %23 = zext i32 %19 to i64
  br i1 %22, label %29, label %26

24:                                               ; preds = %29
  %25 = load ptr, ptr %14, align 8, !tbaa !302
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %32, %29 ], [ %16, %21 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !302
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !221
  %35 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !221
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %24, label %29, !llvm.loop !309

37:                                               ; preds = %13, %26
  %38 = phi ptr [ %28, %26 ], [ %17, %13 ]
  store ptr null, ptr %38, align 8, !tbaa !221
  store i32 %19, ptr %3, align 4, !tbaa !301
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %3 = load ptr, ptr %0, align 8, !tbaa !218
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !185

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !131
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !218
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !243 {
  %3 = load ptr, ptr %0, align 8, !tbaa !244
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !310

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !131
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(41) %3) #13
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !151 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  store ptr null, ptr %0, align 8, !tbaa !244
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !301
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !304
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !302
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !130 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !288
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !290
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !311
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !292
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !295
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !131
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !292
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !312

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !292
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !221
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !313, !llvm.loop !314
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !130 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !299
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !301
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !315
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !302
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !304
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !131
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !302
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !312

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !302
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !221
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !313, !llvm.loop !316
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !130 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !292
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !290
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !221
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !290
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !290
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !311
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !295
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !131
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !290
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !221
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !292
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !221
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !221
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !317

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !295
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !292
  %49 = load ptr, ptr %46, align 8, !tbaa !131
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !292
  store i32 %12, ptr %6, align 8, !tbaa !311
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !151 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !302
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !301
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !221
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !301
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !301
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !315
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !304
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !131
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !301
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !221
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !302
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !221
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !221
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !318

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !304
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !302
  %49 = load ptr, ptr %46, align 8, !tbaa !131
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !302
  store i32 %12, ptr %6, align 8, !tbaa !315
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !151 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !290
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !295
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !292
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !221
  ret ptr %18
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!129}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128}
!35 = !{ptr @_ZN11xercesc_2_79ReaderMgrC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_79ReaderMgrC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77LocatorC2Ev, i64 3}
!37 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_79XMLReaderD1Ev, i64 2}
!38 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 6}
!39 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEED2Ev, i64 2}
!40 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEED2Ev, i64 2}
!41 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_77LocatorD2Ev, i64 3}
!42 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev, i64 3}
!43 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev, i64 3}
!44 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE4sizeEv, i64 11}
!45 = !{ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, ptr @_ZN11xercesc_2_79XMLReader11getNextCharERt, i64 5315877}
!46 = !{ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 1}
!47 = !{ptr @_ZN11xercesc_2_79XMLReader11getNextCharERt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 152}
!48 = !{ptr @_ZN11xercesc_2_79XMLReader11getNextCharERt, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1034680}
!49 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv, i64 8}
!50 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZNK11xercesc_2_79XMLReader13getThrowAtEndEv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZNK11xercesc_2_79XMLReader12getReaderNumEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv, i64 4}
!53 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv, i64 4}
!54 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv, i64 7}
!55 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 3}
!56 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZN11xercesc_2_79XMLReaderD1Ev, i64 2}
!57 = !{ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!58 = !{ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 4}
!59 = !{ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, i64 5}
!60 = !{ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 2}
!61 = !{ptr @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 3}
!62 = !{ptr @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt, i64 4}
!63 = !{ptr @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 1}
!64 = !{ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, ptr @_ZN11xercesc_2_79XMLReader12peekNextCharERt, i64 5568710}
!65 = !{ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 4}
!66 = !{ptr @_ZN11xercesc_2_79XMLReader12peekNextCharERt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 199}
!67 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, ptr @_ZN11xercesc_2_79XMLReader11skippedCharEt, i64 1025896}
!68 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, ptr @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv, i64 1}
!69 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 1}
!70 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, ptr @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt, i64 192041}
!71 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, ptr @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv, i64 1}
!72 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 1}
!73 = !{ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, i64 1900287}
!74 = !{ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 1}
!75 = !{ptr @_ZNK11xercesc_2_79ReaderMgr5atEOFEv, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE5emptyEv, i64 6}
!76 = !{ptr @_ZNK11xercesc_2_79ReaderMgr5atEOFEv, ptr @_ZNK11xercesc_2_79XMLReader13getNoMoreFlagEv, i64 5}
!77 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEEC2EPS1_, i64 2}
!78 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!79 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, i64 2}
!80 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE7releaseEv, i64 2}
!81 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_79XMLReader12setReaderNumEj, i64 2}
!82 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEED2Ev, i64 2}
!83 = !{ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!84 = !{ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_14BinInputStreamEE5resetEPS1_, i64 3}
!85 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!86 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!87 = !{ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 549}
!88 = !{ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, ptr @_ZNK11xercesc_2_79XMLReader11getSystemIdEv, i64 549}
!89 = !{ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, ptr @_ZNK11xercesc_2_79XMLReader11getPublicIdEv, i64 549}
!90 = !{ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, ptr @_ZNK11xercesc_2_79XMLReader13getLineNumberEv, i64 549}
!91 = !{ptr @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE, ptr @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv, i64 549}
!92 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEEC2EPS1_, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!93 = !{ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEED2Ev, ptr @_ZN11xercesc_2_77JanitorINS_11InputSourceEE5resetEPS1_, i64 1}
!94 = !{ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 3}
!95 = !{ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, ptr @_ZNK11xercesc_2_79XMLReader14getEncodingStrEv, i64 3}
!96 = !{ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, ptr @_ZNK11xercesc_2_713XMLEntityDecl10isExternalEv, i64 4}
!97 = !{ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj, i64 3}
!98 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj, i64 5}
!99 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZNK11xercesc_2_713XMLEntityDecl7getNameEv, i64 3}
!100 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 3}
!101 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 4}
!102 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, i64 2}
!103 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, i64 2}
!104 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE4pushEPS1_, i64 1}
!105 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE4pushEPS1_, i64 1}
!106 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!107 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, i64 3}
!108 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!109 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, i64 3}
!110 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_79XMLReaderD1Ev, i64 2}
!111 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!112 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE17removeAllElementsEv, i64 2}
!113 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE17removeAllElementsEv, i64 2}
!114 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv, i64 3}
!115 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv, i64 3}
!116 = !{ptr @_ZNK11xercesc_2_79ReaderMgr11getSystemIdEv, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 1}
!117 = !{ptr @_ZNK11xercesc_2_79ReaderMgr11getSystemIdEv, ptr @_ZNK11xercesc_2_79XMLReader11getSystemIdEv, i64 1}
!118 = !{ptr @_ZNK11xercesc_2_79ReaderMgr15getColumnNumberEv, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 829}
!119 = !{ptr @_ZNK11xercesc_2_79ReaderMgr15getColumnNumberEv, ptr @_ZNK11xercesc_2_79XMLReader15getColumnNumberEv, i64 829}
!120 = !{ptr @_ZNK11xercesc_2_79ReaderMgr13getLineNumberEv, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 829}
!121 = !{ptr @_ZNK11xercesc_2_79ReaderMgr13getLineNumberEv, ptr @_ZNK11xercesc_2_79XMLReader13getLineNumberEv, i64 829}
!122 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!123 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev, i64 3}
!124 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev, i64 3}
!125 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, i64 3}
!126 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!127 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, i64 3}
!128 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!129 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!130 = !{!"function_entry_count", i64 3}
!131 = !{!132, !132, i64 0}
!132 = !{!"vtable pointer", !133, i64 0}
!133 = !{!"Simple C++ TBAA"}
!134 = !{!135, !139, i64 40}
!135 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !136, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !139, i64 40, !137, i64 48, !140, i64 56, !141, i64 60, !140, i64 64, !137, i64 72}
!136 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!137 = !{!"any pointer", !138, i64 0}
!138 = !{!"omnipotent char", !133, i64 0}
!139 = !{!"int", !138, i64 0}
!140 = !{!"bool", !138, i64 0}
!141 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !138, i64 0}
!142 = !{!135, !137, i64 48}
!143 = !{!135, !140, i64 56}
!144 = !{!135, !141, i64 60}
!145 = !{!135, !140, i64 64}
!146 = !{!135, !137, i64 72}
!147 = !{!"function_entry_count", i64 5836268}
!148 = !{!"function_entry_count", i64 855}
!149 = !{!135, !137, i64 16}
!150 = !{!135, !137, i64 32}
!151 = !{!"function_entry_count", i64 0}
!152 = !{!"function_entry_count", i64 11}
!153 = !{!"function_entry_count", i64 5315876}
!154 = !{!"branch_weights", i32 5315877, i32 1}
!155 = !{!156, !156, i64 0}
!156 = !{!"short", !138, i64 0}
!157 = !{!158, !139, i64 0}
!158 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !139, i64 0, !138, i64 4, !139, i64 32772, !138, i64 32776, !138, i64 49160, !159, i64 114696, !159, i64 114704, !160, i64 114712, !137, i64 114720, !140, i64 114728, !140, i64 114729, !137, i64 114736, !139, i64 114744, !138, i64 114748, !139, i64 163900, !139, i64 163904, !161, i64 163908, !140, i64 163912, !162, i64 163916, !139, i64 163920, !140, i64 163924, !140, i64 163925, !137, i64 163928, !137, i64 163936, !140, i64 163944, !140, i64 163945, !137, i64 163952, !163, i64 163960, !137, i64 163968, !140, i64 163976, !141, i64 163980, !137, i64 163984}
!159 = !{!"long", !138, i64 0}
!160 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !138, i64 0}
!161 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !138, i64 0}
!162 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !138, i64 0}
!163 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !138, i64 0}
!164 = !{!158, !139, i64 32772}
!165 = !{!"branch_weights", i32 5315725, i32 153}
!166 = !{!158, !140, i64 114729}
!167 = !{i8 0, i8 2}
!168 = !{}
!169 = !{!"branch_weights", i32 153, i32 1}
!170 = !{!"branch_weights", i32 1034681, i32 4281197}
!171 = !{!158, !159, i64 114696}
!172 = !{!"function_entry_count", i64 5}
!173 = !{!"branch_weights", i32 6, i32 1}
!174 = !{!135, !137, i64 8}
!175 = distinct !{!175, !176}
!176 = !{!"llvm.loop.mustprogress"}
!177 = !{!"function_entry_count", i64 4}
!178 = !{!"branch_weights", i32 3, i32 3}
!179 = !{!"branch_weights", i32 1, i32 3}
!180 = distinct !{!180, !176}
!181 = !{!"function_entry_count", i64 8985736}
!182 = !{!183, !139, i64 0}
!183 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !139, i64 0, !139, i64 4, !139, i64 8, !140, i64 12, !137, i64 16, !137, i64 24, !137, i64 32}
!184 = !{!183, !137, i64 32}
!185 = !{!"branch_weights", i32 4, i32 1}
!186 = distinct !{!186, !176}
!187 = !{!"function_entry_count", i64 5568709}
!188 = !{!"branch_weights", i32 5568707, i32 4}
!189 = !{!"branch_weights", i32 1, i32 4}
!190 = !{!"branch_weights", i32 5568512, i32 199}
!191 = !{!"branch_weights", i32 196, i32 4}
!192 = !{!"branch_weights", i32 -1782020698, i32 450, i32 450, i32 451}
!193 = !{!158, !140, i64 163976}
!194 = !{!158, !162, i64 163916}
!195 = !{!"function_entry_count", i64 1025895}
!196 = !{!"branch_weights", i32 1025896, i32 1}
!197 = distinct !{!197, !176}
!198 = !{!"function_entry_count", i64 6}
!199 = distinct !{!199, !176}
!200 = !{!"function_entry_count", i64 192040}
!201 = !{!"branch_weights", i32 192041, i32 1}
!202 = distinct !{!202, !176}
!203 = !{!"function_entry_count", i64 1900286}
!204 = !{!"branch_weights", i32 1900287, i32 1}
!205 = !{!140, !140, i64 0}
!206 = distinct !{!206, !176}
!207 = !{!"branch_weights", i32 190284, i32 1710004}
!208 = distinct !{!208, !176}
!209 = distinct !{!209, !176}
!210 = distinct !{!210, !176}
!211 = !{!"function_entry_count", i64 5190970}
!212 = !{!158, !137, i64 163968}
!213 = !{!138, !138, i64 0}
!214 = !{!"branch_weights", i32 7, i32 1}
!215 = distinct !{!215, !176}
!216 = !{!"function_entry_count", i64 4926602}
!217 = !{!158, !139, i64 163904}
!218 = !{!219, !137, i64 0}
!219 = !{!"_ZTSN11xercesc_2_77JanitorINS_14BinInputStreamEEE", !137, i64 0}
!220 = !{!135, !137, i64 24}
!221 = !{!137, !137, i64 0}
!222 = !{!223, !137, i64 0}
!223 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !137, i64 0, !137, i64 8, !159, i64 16, !159, i64 24}
!224 = !{!"function_entry_count", i64 496321}
!225 = !{!183, !139, i64 4}
!226 = !{!183, !139, i64 8}
!227 = !{!183, !140, i64 12}
!228 = !{!183, !137, i64 16}
!229 = !{!"function_entry_count", i64 10769804}
!230 = !{!"function_entry_count", i64 190774}
!231 = !{!"function_entry_count", i64 551}
!232 = !{!"branch_weights", i32 1105, i32 304704}
!233 = !{!223, !137, i64 8}
!234 = !{!223, !159, i64 16}
!235 = !{!236, !237, i64 0}
!236 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !237, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40}
!237 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !138, i64 0}
!238 = !{!236, !137, i64 8}
!239 = !{!236, !137, i64 16}
!240 = !{!236, !137, i64 24}
!241 = !{!236, !137, i64 32}
!242 = !{!236, !137, i64 40}
!243 = !{!"function_entry_count", i64 1}
!244 = !{!245, !137, i64 0}
!245 = !{!"_ZTSN11xercesc_2_77JanitorINS_11InputSourceEEE", !137, i64 0}
!246 = !{!"function_entry_count", i64 2213}
!247 = !{!"branch_weights", i32 2214, i32 1}
!248 = distinct !{!248, !176}
!249 = !{!158, !137, i64 114720}
!250 = !{!"function_entry_count", i64 552}
!251 = !{!158, !137, i64 163928}
!252 = !{!158, !137, i64 114736}
!253 = !{!"function_entry_count", i64 1382}
!254 = !{!158, !159, i64 114704}
!255 = !{!158, !163, i64 163960}
!256 = !{!158, !161, i64 163908}
!257 = distinct !{!257, !176}
!258 = !{!259, !137, i64 24}
!259 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !260, i64 0, !139, i64 8, !139, i64 12, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64}
!260 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!261 = !{!"function_entry_count", i64 1231717351}
!262 = !{!"branch_weights", i32 621, i32 -1469098093}
!263 = !{!"branch_weights", i32 408901017, i32 1}
!264 = !{!"branch_weights", i32 267, i32 4}
!265 = !{!"branch_weights", i32 156, i32 112}
!266 = !{!"branch_weights", i32 1, i32 112}
!267 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!268 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!269 = distinct !{!269, !176}
!270 = !{!"branch_weights", i32 1, i32 5}
!271 = !{!"function_entry_count", i64 829}
!272 = !{!"branch_weights", i32 1, i32 830}
!273 = !{!259, !137, i64 40}
!274 = !{!158, !140, i64 163945}
!275 = !{!276, !137, i64 0}
!276 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !137, i64 0, !139, i64 8}
!277 = !{!276, !139, i64 8}
!278 = !{!"function_entry_count", i64 680594}
!279 = !{!280, !137, i64 40}
!280 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !281, i64 8, !137, i64 16, !139, i64 24, !137, i64 32, !137, i64 40}
!281 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !138, i64 0}
!282 = !{!"function_entry_count", i64 789922}
!283 = !{!"branch_weights", i32 1, i32 789923}
!284 = !{!"branch_weights", i32 285, i32 789639}
!285 = !{!"branch_weights", i32 789639, i32 41628304}
!286 = distinct !{!286, !176}
!287 = !{!"branch_weights", i32 789637, i32 3}
!288 = !{!289, !140, i64 8}
!289 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE", !140, i64 8, !139, i64 12, !139, i64 16, !137, i64 24, !137, i64 32}
!290 = !{!289, !139, i64 12}
!291 = !{!"branch_weights", i32 3, i32 1}
!292 = !{!289, !137, i64 24}
!293 = !{!"branch_weights", i32 0, i32 1}
!294 = distinct !{!294, !176}
!295 = !{!289, !137, i64 32}
!296 = distinct !{!296, !176}
!297 = distinct !{!297, !176}
!298 = distinct !{!298, !176}
!299 = !{!300, !140, i64 8}
!300 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE", !140, i64 8, !139, i64 12, !139, i64 16, !137, i64 24, !137, i64 32}
!301 = !{!300, !139, i64 12}
!302 = !{!300, !137, i64 24}
!303 = distinct !{!303, !176}
!304 = !{!300, !137, i64 32}
!305 = distinct !{!305, !176}
!306 = distinct !{!306, !176}
!307 = distinct !{!307, !176}
!308 = distinct !{!308, !176}
!309 = distinct !{!309, !176}
!310 = !{!"branch_weights", i32 1, i32 2}
!311 = !{!289, !139, i64 16}
!312 = !{!"branch_weights", i32 1, i32 127}
!313 = !{!"branch_weights", i32 127, i32 1441}
!314 = distinct !{!314, !176}
!315 = !{!300, !139, i64 16}
!316 = distinct !{!316, !176}
!317 = distinct !{!317, !176}
!318 = distinct !{!318, !176}
