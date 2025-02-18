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
%"class.xercesc_2_7::EndOfEntityException" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj = comdat any

$_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj = comdat any

$_ZN11xercesc_2_720EndOfEntityExceptionD2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

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

$_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE7cleanupEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15orphanElementAtEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE19ensureExtraCapacityEj = comdat any

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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgrC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(80) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_79ReaderMgrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 1, ptr %4, align 8, !tbaa !62
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 0, ptr %6, align 8, !tbaa !71
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  store i32 0, ptr %7, align 4, !tbaa !72
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  store i8 0, ptr %8, align 8, !tbaa !73
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  store ptr %1, ptr %9, align 8, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgrD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xercesc_2_79ReaderMgrE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !76

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %3) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !70
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !77

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %8, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #14
  br label %12

12:                                               ; preds = %10, %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !78
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !77

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %14, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %14) #14
  br label %18

18:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgrD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_79ReaderMgrD2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr7isEmptyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp eq i32 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 align 2 !prof !82 {
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = load i32, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %15, label %9, !prof !91

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 10
  %11 = load i8, ptr %10, align 1, !tbaa !92, !range !93, !noundef !94
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %30, !prof !95

13:                                               ; preds = %9
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %4)
  br i1 %14, label %15, label %30, !prof !95

15:                                               ; preds = %13, %1
  %16 = load i32, ptr %4, align 8, !tbaa !83
  %17 = add i32 %16, 1
  store i32 %17, ptr %4, align 8, !tbaa !83
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !96
  store i16 %20, ptr %2, align 2, !tbaa !96
  %21 = and i16 %20, -8368
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %27, label %23, !prof !98

23:                                               ; preds = %15
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 5
  %25 = load i64, ptr %24, align 8, !tbaa !99
  %26 = add nsw i64 %25, 1
  store i64 %26, ptr %24, align 8, !tbaa !99
  br label %28

27:                                               ; preds = %15
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false)
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i16, ptr %2, align 2, !tbaa !96
  br label %59

30:                                               ; preds = %9, %13
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %31, label %32, label %59

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8, !tbaa !75
  %34 = load i32, ptr %33, align 8, !tbaa !83
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %33, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !90
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %33, i64 0, i32 10
  %40 = load i8, ptr %39, align 1, !tbaa !92, !range !93, !noundef !94
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %33)
  br i1 %43, label %44, label %57

44:                                               ; preds = %42, %32
  %45 = load i32, ptr %33, align 8, !tbaa !83
  %46 = add i32 %45, 1
  store i32 %46, ptr %33, align 8, !tbaa !83
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %33, i64 0, i32 1, i64 %47
  %49 = load i16, ptr %48, align 2, !tbaa !96
  store i16 %49, ptr %2, align 2, !tbaa !96
  %50 = and i16 %49, -8368
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %33, i64 0, i32 5
  %54 = load i64, ptr %53, align 8, !tbaa !99
  %55 = add nsw i64 %54, 1
  store i64 %55, ptr %53, align 8, !tbaa !99
  br label %57

56:                                               ; preds = %44
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %33, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false)
  br label %57

57:                                               ; preds = %38, %42, %52, %56
  %58 = load i16, ptr %2, align 2, !tbaa !96
  br label %59

59:                                               ; preds = %30, %57, %28
  %60 = phi i16 [ %29, %28 ], [ %58, %57 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #14
  ret i16 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %63, label %7, !prof !101

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %11, i64 0, i32 25
  %13 = load i8, ptr %12, align 1, !tbaa !103, !range !93, !noundef !94
  %14 = icmp ne i8 %13, 0
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %11, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !104
  %17 = icmp eq ptr %11, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %11) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #14
  br label %19

19:                                               ; preds = %18, %7
  %20 = load ptr, ptr %2, align 8, !tbaa !70
  %21 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %20)
  store ptr %21, ptr %10, align 8, !tbaa !75
  %22 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !78
  %24 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %23)
  store ptr %24, ptr %8, align 8, !tbaa !102
  %25 = icmp ne ptr %9, null
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 8, !range !93
  %28 = icmp ne i8 %27, 0
  %29 = select i1 %25, i1 %28, i1 false
  %30 = or i1 %14, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = load ptr, ptr %10, align 8, !tbaa !75
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %32, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !90
  %35 = load i32, ptr %32, align 8, !tbaa !83
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %40, label %63

37:                                               ; preds = %19
  %38 = tail call ptr @__cxa_allocate_exception(i64 16) #14
  store ptr %9, ptr %38, align 8, !tbaa !105
  %39 = getelementptr inbounds %"class.xercesc_2_7::EndOfEntityException", ptr %38, i64 0, i32 1
  store i32 %16, ptr %39, align 8, !tbaa !107
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE, ptr nonnull @_ZN11xercesc_2_720EndOfEntityExceptionD2Ev) #15
  unreachable

40:                                               ; preds = %31, %53
  %41 = phi ptr [ %58, %53 ], [ %32, %31 ]
  %42 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %41)
  %43 = load ptr, ptr %10, align 8, !tbaa !75
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %43, i64 0, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !90
  %46 = load i32, ptr %43, align 8, !tbaa !83
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load ptr, ptr %2, align 8, !tbaa !70
  %50 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %49, i64 0, i32 1, i32 0, i32 2
  %51 = load i32, ptr %50, align 4, !tbaa !80
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %43) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %43) #14
  %54 = load ptr, ptr %2, align 8, !tbaa !70
  %55 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %54)
  store ptr %55, ptr %10, align 8, !tbaa !75
  %56 = load ptr, ptr %22, align 8, !tbaa !78
  %57 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %56)
  store ptr %57, ptr %8, align 8, !tbaa !102
  %58 = load ptr, ptr %10, align 8, !tbaa !75
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !90
  %61 = load i32, ptr %58, align 8, !tbaa !83
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %40, label %63, !llvm.loop !108

63:                                               ; preds = %53, %40, %48, %31, %1
  %64 = phi i1 [ false, %1 ], [ true, %31 ], [ false, %48 ], [ true, %40 ], [ true, %53 ]
  ret i1 %64
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #6 align 2 !prof !111 {
  store i32 0, ptr %1, align 8, !tbaa !112
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  store i16 0, ptr %4, align 2, !tbaa !96
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %9, %2
  %7 = load ptr, ptr %5, align 8, !tbaa !75
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %7, ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %8, label %11, label %9, !prof !115

9:                                                ; preds = %6
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %10, label %6, label %11, !prof !116, !llvm.loop !117

11:                                               ; preds = %9, %6
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !58 {
  store i32 0, ptr %1, align 8, !tbaa !112
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  store i16 0, ptr %5, align 2, !tbaa !96
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %10, %3
  %8 = load ptr, ptr %6, align 8, !tbaa !75
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(163992) %8, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2)
  br i1 %9, label %12, label %10, !prof !76

10:                                               ; preds = %7
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %11, label %7, label %12, !llvm.loop !118

12:                                               ; preds = %10, %7
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = load i32, ptr %3, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !90
  %7 = icmp ult i32 %4, %6
  br i1 %7, label %10, label %8, !prof !120

8:                                                ; preds = %1
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %3)
  br i1 %9, label %10, label %28, !prof !121

10:                                               ; preds = %8, %1
  %11 = load i32, ptr %3, align 8, !tbaa !83
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %3, i64 0, i32 1, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !96
  switch i16 %14, label %28 [
    i16 13, label %23
    i16 133, label %15
    i16 8232, label %15
  ], !prof !122

15:                                               ; preds = %10, %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %3, i64 0, i32 29
  %17 = load i8, ptr %16, align 8, !tbaa !123, !range !93, !noundef !94
  %18 = icmp ne i8 %17, 0
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %3, i64 0, i32 18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  %22 = select i1 %18, i1 %21, i1 false
  br i1 %22, label %27, label %28

23:                                               ; preds = %10
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %3, i64 0, i32 18
  %25 = load i32, ptr %24, align 4, !tbaa !124
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %23, %15
  br label %28

28:                                               ; preds = %23, %15, %10, %8, %27
  %29 = phi i16 [ 10, %27 ], [ 0, %8 ], [ %14, %10 ], [ %14, %15 ], [ %14, %23 ]
  %30 = phi i1 [ true, %27 ], [ false, %8 ], [ true, %10 ], [ true, %15 ], [ true, %23 ]
  br i1 %30, label %59, label %31, !prof !125

31:                                               ; preds = %28
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %32, label %33, label %59, !prof !77

33:                                               ; preds = %31
  %34 = load ptr, ptr %2, align 8, !tbaa !75
  %35 = load i32, ptr %34, align 8, !tbaa !83
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %34, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !90
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %33
  %40 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %34)
  br i1 %40, label %41, label %59

41:                                               ; preds = %39, %33
  %42 = load i32, ptr %34, align 8, !tbaa !83
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %34, i64 0, i32 1, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !96
  switch i16 %45, label %59 [
    i16 13, label %54
    i16 133, label %46
    i16 8232, label %46
  ]

46:                                               ; preds = %41, %41
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %34, i64 0, i32 29
  %48 = load i8, ptr %47, align 8, !tbaa !123, !range !93, !noundef !94
  %49 = icmp ne i8 %48, 0
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %34, i64 0, i32 18
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 1
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %58, label %59

54:                                               ; preds = %41
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %34, i64 0, i32 18
  %56 = load i32, ptr %55, align 4, !tbaa !124
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %46
  br label %59

59:                                               ; preds = %54, %46, %41, %58, %39, %28, %31
  %60 = phi i16 [ 0, %31 ], [ %29, %28 ], [ 10, %58 ], [ 0, %39 ], [ %45, %41 ], [ %45, %46 ], [ %45, %54 ]
  ret i16 %60
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %12, %2
  %5 = load ptr, ptr %3, align 8, !tbaa !75
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %5, i16 noundef zeroext %1)
  br i1 %6, label %14, label %7, !prof !127

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 8, !tbaa !75
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %8, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !92, !range !93, !noundef !94
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %13, label %4, label %14, !llvm.loop !128

14:                                               ; preds = %12, %7, %4
  ret i1 %6
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(163992), i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %11, %1
  %4 = load ptr, ptr %2, align 8, !tbaa !75
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(163992) %4)
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr %2, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %7, i64 0, i32 10
  %9 = load i8, ptr %8, align 1, !tbaa !92, !range !93, !noundef !94
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %12, label %3, label %13, !llvm.loop !129

13:                                               ; preds = %11, %6, %3
  ret i1 %5
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 align 2 !prof !130 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %4

4:                                                ; preds = %12, %2
  %5 = load ptr, ptr %3, align 8, !tbaa !75
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(163992) %5, ptr noundef nonnull align 2 dereferenceable(2) %1)
  br i1 %6, label %14, label %7, !prof !131

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 8, !tbaa !75
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %8, i64 0, i32 10
  %10 = load i8, ptr %9, align 1, !tbaa !92, !range !93, !noundef !94
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %13, label %4, label %14, !llvm.loop !132

14:                                               ; preds = %12, %7, %4
  ret i1 %6
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !133 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i8 [ 0, %2 ], [ %12, %9 ]
  %7 = load ptr, ptr %4, align 8, !tbaa !75
  %8 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10skipSpacesERbb(ptr noundef nonnull align 8 dereferenceable(163992) %7, ptr noundef nonnull align 1 dereferenceable(1) %3, i1 noundef zeroext %1)
  br i1 %8, label %14, label %9, !prof !134

9:                                                ; preds = %5
  %10 = load i8, ptr %3, align 1, !tbaa !135, !range !93, !noundef !94
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i8 %6, i8 1
  %13 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr9popReaderEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br i1 %13, label %5, label %14, !llvm.loop !136

14:                                               ; preds = %9, %5
  %15 = phi i8 [ %6, %5 ], [ %12, %9 ]
  %16 = load i8, ptr %3, align 1, !tbaa !135, !range !93, !noundef !94
  %17 = icmp ne i8 %16, 0
  %18 = and i8 %15, 1
  %19 = icmp ne i8 %18, 0
  %20 = select i1 %17, i1 true, i1 %19, !prof !137
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #14
  ret i1 %20
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10skipSpacesERbb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr16skipQuotedStringEt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #6 align 2 !prof !79 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %5 = icmp eq i16 %4, 0
  %6 = icmp eq i16 %4, %1
  %7 = or i1 %5, %6
  br i1 %7, label %8, label %3, !llvm.loop !138

8:                                                ; preds = %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11skipUntilInEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !79 {
  %3 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2, %9
  %6 = phi i16 [ %11, %9 ], [ %3, %2 ]
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext %6)
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %11 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %5, !llvm.loop !139

13:                                               ; preds = %9, %5, %2
  %14 = phi i16 [ %3, %2 ], [ %11, %9 ], [ %6, %5 ]
  ret i16 %14
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr15skipUntilInOrWSEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %2, %18
  %7 = phi i16 [ %20, %18 ], [ %4, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !75
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %8, i64 0, i32 28
  %10 = load ptr, ptr %9, align 8, !tbaa !140
  %11 = zext i16 %7 to i64
  %12 = getelementptr inbounds i8, ptr %10, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !141
  %14 = icmp slt i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %6
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext %7)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %20 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %6, !llvm.loop !142

22:                                               ; preds = %18, %6, %15, %2
  %23 = phi i16 [ %4, %2 ], [ %20, %18 ], [ %7, %6 ], [ %7, %15 ]
  ret i16 %23
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !143 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13, !prof !144

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %9, i64 0, i32 10
  %11 = load i8, ptr %10, align 1, !tbaa !92, !range !93, !noundef !94
  %12 = icmp ne i8 %11, 0
  br label %13

13:                                               ; preds = %7, %1
  %14 = phi i1 [ false, %1 ], [ %12, %7 ]
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr16cleanStackBackToEj(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %4, i64 0, i32 15
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %8, %28
  %13 = phi ptr [ %4, %8 ], [ %33, %28 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %14, i64 0, i32 1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !80
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 366, i32 noundef 69, ptr noundef %21)
          to label %22 unwind label %23

22:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %19) #14
  resume { ptr, i32 } %24

25:                                               ; preds = %12
  %26 = icmp eq ptr %13, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %13) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #14
  br label %28

28:                                               ; preds = %27, %25
  %29 = load ptr, ptr %9, align 8, !tbaa !70
  %30 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %29)
  store ptr %30, ptr %3, align 8, !tbaa !75
  %31 = load ptr, ptr %10, align 8, !tbaa !78
  %32 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %31)
  store ptr %32, ptr %11, align 8, !tbaa !102
  %33 = load ptr, ptr %3, align 8, !tbaa !75
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %33, i64 0, i32 15
  %35 = load i32, ptr %34, align 8, !tbaa !104
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %37, label %12, !llvm.loop !145

37:                                               ; preds = %28, %2
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_9XMLReaderEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %14 = add nsw i32 %3, -1
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %14)
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1, i32 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %10

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #14
  resume { ptr, i32 } %11

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  %14 = add nsw i32 %3, -1
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %14)
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 zeroext %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %8 = load ptr, ptr %1, align 8, !tbaa !59
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(41) %1), !prof !150
  %12 = icmp eq ptr %11, null
  br i1 %12, label %90, label %13, !prof !77

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !59
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %18 unwind label %43, !prof !151

18:                                               ; preds = %13
  %19 = icmp eq ptr %17, null
  %20 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !74
  br i1 %19, label %47, label %22, !prof !76

22:                                               ; preds = %18
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 163992, ptr noundef %21)
          to label %24 unwind label %43

24:                                               ; preds = %22
  %25 = load ptr, ptr %1, align 8, !tbaa !59
  %26 = getelementptr inbounds ptr, ptr %25, i64 4
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %29 unwind label %45

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8, !tbaa !59
  %31 = getelementptr inbounds ptr, ptr %30, i64 5
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %34 unwind label %45

34:                                               ; preds = %29
  %35 = load ptr, ptr %1, align 8, !tbaa !59
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %39 unwind label %45

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 4, !tbaa !72
  %42 = load ptr, ptr %20, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %23, ptr noundef %28, ptr noundef %33, ptr noundef nonnull %11, ptr noundef %38, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext false, i1 noundef zeroext %6, i32 noundef %41, ptr noundef %42)
          to label %75 unwind label %45

43:                                               ; preds = %47, %22, %13
  %44 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %65

45:                                               ; preds = %39, %34, %29, %24
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %21) #14
  br label %65

47:                                               ; preds = %18
  %48 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 163992, ptr noundef %21)
          to label %49 unwind label %43, !prof !76

49:                                               ; preds = %47
  %50 = load ptr, ptr %1, align 8, !tbaa !59
  %51 = getelementptr inbounds ptr, ptr %50, i64 4
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %54 unwind label %63, !prof !152

54:                                               ; preds = %49
  %55 = load ptr, ptr %1, align 8, !tbaa !59
  %56 = getelementptr inbounds ptr, ptr %55, i64 5
  %57 = load ptr, ptr %56, align 8
  %58 = invoke noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %59 unwind label %63, !prof !153

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  %61 = load i32, ptr %60, align 4, !tbaa !72
  %62 = load ptr, ptr %20, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %48, ptr noundef %53, ptr noundef %58, ptr noundef nonnull %11, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext false, i1 noundef zeroext %6, i32 noundef %61, ptr noundef %62)
          to label %75 unwind label %63, !prof !76

63:                                               ; preds = %59, %54, %49
  %64 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %48, ptr noundef %21) #14
  br label %65

65:                                               ; preds = %63, %45, %43
  %66 = phi { ptr, i32 } [ %46, %45 ], [ %44, %43 ], [ %64, %63 ]
  %67 = extractvalue { ptr, i32 } %66, 1
  %68 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = extractvalue { ptr, i32 } %66, 0
  %72 = tail call ptr @__cxa_begin_catch(ptr %71) #14
  invoke void @__cxa_rethrow() #15
          to label %95 unwind label %73

73:                                               ; preds = %70
  %74 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %81 unwind label %92

75:                                               ; preds = %59, %39
  %76 = phi ptr [ %23, %39 ], [ %48, %59 ]
  %77 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !62
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !62
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %76, i64 0, i32 15
  store i32 %78, ptr %80, align 8, !tbaa !104
  br label %90

81:                                               ; preds = %73, %65
  %82 = phi ptr [ null, %73 ], [ %11, %65 ]
  %83 = phi { ptr, i32 } [ %74, %73 ], [ %66, %65 ]
  %84 = icmp eq ptr %82, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %82, align 8, !tbaa !59
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(8) %82) #14
  br label %89

89:                                               ; preds = %81, %85
  resume { ptr, i32 } %83

90:                                               ; preds = %7, %75
  %91 = phi ptr [ %76, %75 ], [ null, %7 ]
  ret ptr %91

92:                                               ; preds = %73
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  tail call void @__clang_call_terminate(ptr %94) #16
  unreachable

95:                                               ; preds = %70
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !79 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef nonnull align 8 dereferenceable(8) %7, i1 noundef zeroext %8, i1 noundef zeroext %9) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %14 = alloca i16, align 2
  %15 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %16 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %17 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %18 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  store i32 0, ptr %13, align 8, !tbaa !112
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 1
  store i32 1023, ptr %21, align 4, !tbaa !154
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 2
  store i32 0, ptr %22, align 8, !tbaa !155
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 3
  store i8 0, ptr %23, align 4, !tbaa !156
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 4
  store ptr %20, ptr %24, align 8, !tbaa !157
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 5
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %27 = load ptr, ptr %20, align 8, !tbaa !59
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 2048)
  store ptr %30, ptr %26, align 8, !tbaa !114
  store i16 0, ptr %30, align 2, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  store i16 -1, ptr %14, align 2, !tbaa !96
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %14, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %31 unwind label %57

31:                                               ; preds = %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  %32 = load ptr, ptr %26, align 8, !tbaa !114
  %33 = load i32, ptr %13, align 8, !tbaa !112
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, ptr %32, i64 %34
  store i16 0, ptr %35, align 2, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #14
  %36 = load ptr, ptr %19, align 8, !tbaa !74
  store i32 0, ptr %15, align 8, !tbaa !112
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 1
  store i32 1023, ptr %37, align 4, !tbaa !154
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 2
  store i32 0, ptr %38, align 8, !tbaa !155
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 3
  store i8 0, ptr %39, align 4, !tbaa !156
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 4
  store ptr %36, ptr %40, align 8, !tbaa !157
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 5
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %36, align 8, !tbaa !59
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef 2048)
          to label %47 unwind label %59

47:                                               ; preds = %31
  store ptr %46, ptr %42, align 8, !tbaa !114
  store i16 0, ptr %46, align 2, !tbaa !96
  %48 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !158
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !59
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %56 unwind label %61

56:                                               ; preds = %51
  br i1 %55, label %64, label %63

57:                                               ; preds = %10
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %277

59:                                               ; preds = %31
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %275

61:                                               ; preds = %63, %51
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %265

63:                                               ; preds = %47, %56
  store i32 0, ptr %15, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %32)
          to label %64 unwind label %61

64:                                               ; preds = %63, %56
  store ptr null, ptr %7, align 8, !tbaa !159
  %65 = load ptr, ptr %48, align 8, !tbaa !158
  %66 = icmp eq ptr %65, null
  br i1 %66, label %101, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = icmp eq ptr %69, null
  %71 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  %74 = select i1 %70, i1 true, i1 %73
  br i1 %74, label %80, label %75

75:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  %76 = invoke noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %77 unwind label %97

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %76, i64 0, i32 22
  %79 = load ptr, ptr %78, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  br label %80

80:                                               ; preds = %77, %67
  %81 = phi ptr [ %79, %77 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %67 ]
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #14
  %82 = load ptr, ptr %42, align 8, !tbaa !114
  %83 = load i32, ptr %15, align 8, !tbaa !112
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i16, ptr %82, i64 %84
  store i16 0, ptr %85, align 2, !tbaa !96
  store i32 4, ptr %16, align 8, !tbaa !161
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 1
  store ptr %2, ptr %86, align 8, !tbaa !164
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 2
  store ptr %82, ptr %87, align 8, !tbaa !165
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 3
  store ptr %81, ptr %88, align 8, !tbaa !166
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 4
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %89, align 8, !tbaa !167
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 5
  store ptr %0, ptr %90, align 8, !tbaa !168
  %91 = load ptr, ptr %48, align 8, !tbaa !158
  %92 = load ptr, ptr %91, align 8, !tbaa !59
  %93 = getelementptr inbounds ptr, ptr %92, i64 6
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull %16)
          to label %96 unwind label %99

96:                                               ; preds = %80
  store ptr %95, ptr %7, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #14
  br label %101

97:                                               ; preds = %75
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %265

99:                                               ; preds = %80
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #14
  br label %265

101:                                              ; preds = %96, %64
  %102 = load ptr, ptr %7, align 8, !tbaa !159
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %228

104:                                              ; preds = %101
  br i1 %9, label %245, label %105

105:                                              ; preds = %104
  %106 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !70
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = icmp eq ptr %110, null
  %112 = select i1 %108, i1 true, i1 %111
  br i1 %112, label %118, label %113

113:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #14
  %114 = invoke noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %115 unwind label %171

115:                                              ; preds = %113
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %114, i64 0, i32 22
  %117 = load ptr, ptr %116, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #14
  br label %118

118:                                              ; preds = %115, %105
  %119 = phi ptr [ %117, %115 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %105 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #14
  %120 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %120)
          to label %121 unwind label %173

121:                                              ; preds = %118
  %122 = load ptr, ptr %42, align 8, !tbaa !114
  %123 = load i32, ptr %15, align 8, !tbaa !112
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i16, ptr %122, i64 %124
  store i16 0, ptr %125, align 2, !tbaa !96
  %126 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %119, ptr noundef %122, ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %127 unwind label %175

127:                                              ; preds = %121
  br i1 %126, label %128, label %131

128:                                              ; preds = %127
  %129 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %130 unwind label %175

130:                                              ; preds = %128
  br i1 %129, label %131, label %200

131:                                              ; preds = %130, %127
  %132 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %133 = load i8, ptr %132, align 8, !tbaa !73, !range !93, !noundef !94
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %195

135:                                              ; preds = %131
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #14
  %136 = load ptr, ptr %19, align 8, !tbaa !74
  store i32 0, ptr %18, align 8, !tbaa !112
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 1
  store i32 1023, ptr %137, align 4, !tbaa !154
  %138 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 2
  store i32 0, ptr %138, align 8, !tbaa !155
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 3
  store i8 0, ptr %139, align 4, !tbaa !156
  %140 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 4
  store ptr %136, ptr %140, align 8, !tbaa !157
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 5
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %141, i8 0, i64 16, i1 false)
  %143 = load ptr, ptr %136, align 8, !tbaa !59
  %144 = getelementptr inbounds ptr, ptr %143, i64 2
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %136, i64 noundef 2048)
          to label %147 unwind label %177

147:                                              ; preds = %135
  store ptr %146, ptr %142, align 8, !tbaa !114
  store i16 0, ptr %146, align 2, !tbaa !96
  %148 = load ptr, ptr %42, align 8, !tbaa !114
  %149 = load i32, ptr %15, align 8, !tbaa !112
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i16, ptr %148, i64 %150
  store i16 0, ptr %151, align 2, !tbaa !96
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %148, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %152 unwind label %179

152:                                              ; preds = %147
  %153 = load ptr, ptr %19, align 8, !tbaa !74
  %154 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %153)
          to label %155 unwind label %179

155:                                              ; preds = %152
  %156 = load ptr, ptr %142, align 8, !tbaa !114
  %157 = load i32, ptr %18, align 8, !tbaa !112
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i16, ptr %156, i64 %158
  store i16 0, ptr %159, align 2, !tbaa !96
  %160 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %154, ptr noundef %119, ptr noundef %156, ptr noundef %160)
          to label %161 unwind label %181

161:                                              ; preds = %155
  store ptr %154, ptr %7, align 8, !tbaa !159
  %162 = load ptr, ptr %140, align 8, !tbaa !157
  %163 = load ptr, ptr %142, align 8, !tbaa !114
  %164 = load ptr, ptr %162, align 8, !tbaa !59
  %165 = getelementptr inbounds ptr, ptr %164, i64 3
  %166 = load ptr, ptr %165, align 8
  invoke void %166(ptr noundef nonnull align 8 dereferenceable(8) %162, ptr noundef %163)
          to label %170 unwind label %167

167:                                              ; preds = %161
  %168 = landingpad { ptr, i32 }
          catch ptr null
  %169 = extractvalue { ptr, i32 } %168, 0
  call void @__clang_call_terminate(ptr %169) #16
  unreachable

170:                                              ; preds = %161
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %223

171:                                              ; preds = %113
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %265

173:                                              ; preds = %118
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %226

175:                                              ; preds = %210, %215, %204, %128, %121
  %176 = landingpad { ptr, i32 }
          cleanup
  br label %224

177:                                              ; preds = %135
  %178 = landingpad { ptr, i32 }
          cleanup
  br label %193

179:                                              ; preds = %152, %147
  %180 = landingpad { ptr, i32 }
          cleanup
  br label %183

181:                                              ; preds = %155
  %182 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %154, ptr noundef %153) #14
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi { ptr, i32 } [ %182, %181 ], [ %180, %179 ]
  %185 = load ptr, ptr %140, align 8, !tbaa !157
  %186 = load ptr, ptr %142, align 8, !tbaa !114
  %187 = load ptr, ptr %185, align 8, !tbaa !59
  %188 = getelementptr inbounds ptr, ptr %187, i64 3
  %189 = load ptr, ptr %188, align 8
  invoke void %189(ptr noundef nonnull align 8 dereferenceable(8) %185, ptr noundef %186)
          to label %193 unwind label %190

190:                                              ; preds = %183
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #16
  unreachable

193:                                              ; preds = %183, %177
  %194 = phi { ptr, i32 } [ %178, %177 ], [ %184, %183 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %224

195:                                              ; preds = %131
  %196 = call ptr @__cxa_allocate_exception(i64 48) #14
  %197 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %196, ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 99, ptr noundef %197)
          to label %210 unwind label %198

198:                                              ; preds = %195
  %199 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %196) #14
  br label %224

200:                                              ; preds = %130
  %201 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %202 = load i8, ptr %201, align 8, !tbaa !73, !range !93, !noundef !94
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %200
  %205 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %206 unwind label %175

206:                                              ; preds = %204
  br i1 %205, label %207, label %215

207:                                              ; preds = %206
  %208 = call ptr @__cxa_allocate_exception(i64 48) #14
  %209 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %208, ptr noundef nonnull @.str, i32 noundef 573, i32 noundef 99, ptr noundef %209)
          to label %210 unwind label %213

210:                                              ; preds = %207, %195
  %211 = phi ptr [ %196, %195 ], [ %208, %207 ]
  invoke void @__cxa_throw(ptr nonnull %211, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %212 unwind label %175

212:                                              ; preds = %210
  unreachable

213:                                              ; preds = %207
  %214 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %208) #14
  br label %224

215:                                              ; preds = %206, %200
  %216 = load ptr, ptr %19, align 8, !tbaa !74
  %217 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %216)
          to label %218 unwind label %175

218:                                              ; preds = %215
  %219 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %217, ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %219)
          to label %220 unwind label %221

220:                                              ; preds = %218
  store ptr %217, ptr %7, align 8, !tbaa !159
  br label %223

221:                                              ; preds = %218
  %222 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %217, ptr noundef %216) #14
  br label %224

223:                                              ; preds = %220, %170
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  br label %228

224:                                              ; preds = %221, %213, %198, %193, %175
  %225 = phi { ptr, i32 } [ %176, %175 ], [ %199, %198 ], [ %194, %193 ], [ %214, %213 ], [ %222, %221 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #14
  br label %226

226:                                              ; preds = %224, %173
  %227 = phi { ptr, i32 } [ %225, %224 ], [ %174, %173 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  br label %265

228:                                              ; preds = %223, %101
  %229 = load ptr, ptr %7, align 8, !tbaa !159
  %230 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(41) %229, i1 zeroext poison, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %8)
          to label %231 unwind label %233

231:                                              ; preds = %228
  %232 = icmp eq ptr %230, null
  br i1 %232, label %245, label %240

233:                                              ; preds = %228
  %234 = landingpad { ptr, i32 }
          cleanup
  %235 = icmp eq ptr %229, null
  br i1 %235, label %265, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr %229, align 8, !tbaa !59
  %238 = getelementptr inbounds ptr, ptr %237, i64 1
  %239 = load ptr, ptr %238, align 8
  call void %239(ptr noundef nonnull align 8 dereferenceable(41) %229) #14
  br label %265

240:                                              ; preds = %231
  %241 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %242 = load i32, ptr %241, align 8, !tbaa !62
  %243 = add i32 %242, 1
  store i32 %243, ptr %241, align 8, !tbaa !62
  %244 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %230, i64 0, i32 15
  store i32 %242, ptr %244, align 8, !tbaa !104
  br label %245

245:                                              ; preds = %231, %240, %104
  %246 = phi ptr [ null, %104 ], [ %230, %240 ], [ null, %231 ]
  %247 = load ptr, ptr %40, align 8, !tbaa !157
  %248 = load ptr, ptr %42, align 8, !tbaa !114
  %249 = load ptr, ptr %247, align 8, !tbaa !59
  %250 = getelementptr inbounds ptr, ptr %249, i64 3
  %251 = load ptr, ptr %250, align 8
  invoke void %251(ptr noundef nonnull align 8 dereferenceable(8) %247, ptr noundef %248)
          to label %255 unwind label %252

252:                                              ; preds = %245
  %253 = landingpad { ptr, i32 }
          catch ptr null
  %254 = extractvalue { ptr, i32 } %253, 0
  call void @__clang_call_terminate(ptr %254) #16
  unreachable

255:                                              ; preds = %245
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #14
  %256 = load ptr, ptr %24, align 8, !tbaa !157
  %257 = load ptr, ptr %26, align 8, !tbaa !114
  %258 = load ptr, ptr %256, align 8, !tbaa !59
  %259 = getelementptr inbounds ptr, ptr %258, i64 3
  %260 = load ptr, ptr %259, align 8
  invoke void %260(ptr noundef nonnull align 8 dereferenceable(8) %256, ptr noundef %257)
          to label %264 unwind label %261

261:                                              ; preds = %255
  %262 = landingpad { ptr, i32 }
          catch ptr null
  %263 = extractvalue { ptr, i32 } %262, 0
  call void @__clang_call_terminate(ptr %263) #16
  unreachable

264:                                              ; preds = %255
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  ret ptr %246

265:                                              ; preds = %236, %233, %171, %226, %97, %99, %61
  %266 = phi { ptr, i32 } [ %62, %61 ], [ %100, %99 ], [ %98, %97 ], [ %227, %226 ], [ %172, %171 ], [ %234, %233 ], [ %234, %236 ]
  %267 = load ptr, ptr %40, align 8, !tbaa !157
  %268 = load ptr, ptr %42, align 8, !tbaa !114
  %269 = load ptr, ptr %267, align 8, !tbaa !59
  %270 = getelementptr inbounds ptr, ptr %269, i64 3
  %271 = load ptr, ptr %270, align 8
  invoke void %271(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef %268)
          to label %275 unwind label %272

272:                                              ; preds = %265
  %273 = landingpad { ptr, i32 }
          catch ptr null
  %274 = extractvalue { ptr, i32 } %273, 0
  call void @__clang_call_terminate(ptr %274) #16
  unreachable

275:                                              ; preds = %265, %59
  %276 = phi { ptr, i32 } [ %60, %59 ], [ %266, %265 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #14
  br label %277

277:                                              ; preds = %275, %57
  %278 = phi { ptr, i32 } [ %276, %275 ], [ %58, %57 ]
  %279 = load ptr, ptr %24, align 8, !tbaa !157
  %280 = load ptr, ptr %26, align 8, !tbaa !114
  %281 = load ptr, ptr %279, align 8, !tbaa !59
  %282 = getelementptr inbounds ptr, ptr %281, i64 3
  %283 = load ptr, ptr %282, align 8
  invoke void %283(ptr noundef nonnull align 8 dereferenceable(8) %279, ptr noundef %280)
          to label %287 unwind label %284

284:                                              ; preds = %277
  %285 = landingpad { ptr, i32 }
          catch ptr null
  %286 = extractvalue { ptr, i32 } %285, 0
  call void @__clang_call_terminate(ptr %286) #16
  unreachable

287:                                              ; preds = %277
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  resume { ptr, i32 } %278
}

declare void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %1) local_unnamed_addr #4 align 2 !prof !169 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 true, i1 %8, !prof !170
  br i1 %9, label %10, label %13, !prof !170

10:                                               ; preds = %2
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %1, align 8, !tbaa !171
  %11 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 1
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %11, align 8, !tbaa !173
  %12 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %63

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = icmp eq ptr %15, null
  br i1 %16, label %50, label %17, !prof !174

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %15, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !175
  %20 = icmp ne ptr %19, null
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %15, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, null
  %24 = select i1 %20, i1 true, i1 %23
  br i1 %24, label %50, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %4, i64 0, i32 1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !80
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  br label %31

31:                                               ; preds = %45, %29
  %32 = phi i32 [ %33, %45 ], [ %27, %29 ]
  %33 = add i32 %32, -1
  %34 = load ptr, ptr %30, align 8, !tbaa !78
  %35 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %34, i32 noundef %33)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %35, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !175
  %40 = icmp ne ptr %39, null
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %35, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8
  %43 = icmp ne ptr %42, null
  %44 = select i1 %40, i1 true, i1 %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %37
  %46 = icmp eq i32 %33, 0
  br i1 %46, label %50, label %31, !llvm.loop !178

47:                                               ; preds = %37, %31
  %48 = load ptr, ptr %3, align 8, !tbaa !70
  %49 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %48, i32 noundef %33)
  br label %50

50:                                               ; preds = %45, %47, %13, %17, %25
  %51 = phi ptr [ %7, %17 ], [ %7, %13 ], [ %7, %25 ], [ %49, %47 ], [ %7, %45 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %51, i64 0, i32 22
  %53 = load ptr, ptr %52, align 8, !tbaa !160
  store ptr %53, ptr %1, align 8, !tbaa !171
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %51, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !179
  %56 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 1
  store ptr %55, ptr %56, align 8, !tbaa !173
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %51, i64 0, i32 6
  %58 = load i64, ptr %57, align 8, !tbaa !180
  %59 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 2
  store i64 %58, ptr %59, align 8, !tbaa !181
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %51, i64 0, i32 5
  %61 = load i64, ptr %60, align 8, !tbaa !99
  %62 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %1, i64 0, i32 3
  store i64 %61, ptr %62, align 8, !tbaa !182
  br label %63

63:                                               ; preds = %50, %10
  ret void
}

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #7

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #7

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #7

declare void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #7

declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderEPKtS2_S2_bNS_9XMLReader7RefFromENS3_5TypesENS3_7SourcesERPNS_11InputSourceEbb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nocapture noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext %9, i1 noundef zeroext %10) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %12 = alloca ptr, align 8
  %13 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %14 = alloca i16, align 2
  %15 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %16 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %17 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %18 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %13) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !74
  store i32 0, ptr %13, align 8, !tbaa !112
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 1
  store i32 1023, ptr %21, align 4, !tbaa !154
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 2
  store i32 0, ptr %22, align 8, !tbaa !155
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 3
  store i8 0, ptr %23, align 4, !tbaa !156
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 4
  store ptr %20, ptr %24, align 8, !tbaa !157
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 5
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %25, i8 0, i64 16, i1 false)
  %27 = load ptr, ptr %20, align 8, !tbaa !59
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 2048)
  store ptr %30, ptr %26, align 8, !tbaa !114
  store i16 0, ptr %30, align 2, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #14
  store i16 -1, ptr %14, align 2, !tbaa !96
  invoke void @_ZN11xercesc_2_79XMLString10removeCharEPKtRS1_RNS_9XMLBufferE(ptr noundef %2, ptr noundef nonnull align 2 dereferenceable(2) %14, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %31 unwind label %57

31:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  %32 = load ptr, ptr %26, align 8, !tbaa !114
  %33 = load i32, ptr %13, align 8, !tbaa !112
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, ptr %32, i64 %34
  store i16 0, ptr %35, align 2, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %15) #14
  %36 = load ptr, ptr %19, align 8, !tbaa !74
  store i32 0, ptr %15, align 8, !tbaa !112
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 1
  store i32 1023, ptr %37, align 4, !tbaa !154
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 2
  store i32 0, ptr %38, align 8, !tbaa !155
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 3
  store i8 0, ptr %39, align 4, !tbaa !156
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 4
  store ptr %36, ptr %40, align 8, !tbaa !157
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 5
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %15, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %41, i8 0, i64 16, i1 false)
  %43 = load ptr, ptr %36, align 8, !tbaa !59
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef 2048)
          to label %47 unwind label %59

47:                                               ; preds = %31
  store ptr %46, ptr %42, align 8, !tbaa !114
  store i16 0, ptr %46, align 2, !tbaa !96
  %48 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !158
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %49, align 8, !tbaa !59
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef zeroext i1 %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %32, ptr noundef nonnull align 8 dereferenceable(40) %15)
          to label %56 unwind label %61

56:                                               ; preds = %51
  br i1 %55, label %64, label %63

57:                                               ; preds = %11
  %58 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #14
  br label %265

59:                                               ; preds = %31
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %263

61:                                               ; preds = %63, %51
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %253

63:                                               ; preds = %47, %56
  store i32 0, ptr %15, align 8, !tbaa !112
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef %32)
          to label %64 unwind label %61

64:                                               ; preds = %63, %56
  store ptr null, ptr %8, align 8, !tbaa !159
  %65 = load ptr, ptr %48, align 8, !tbaa !158
  %66 = icmp eq ptr %65, null
  br i1 %66, label %84, label %67

67:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %16) #14
  %68 = load ptr, ptr %42, align 8, !tbaa !114
  %69 = load i32, ptr %15, align 8, !tbaa !112
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %68, i64 %70
  store i16 0, ptr %71, align 2, !tbaa !96
  store i32 4, ptr %16, align 8, !tbaa !161
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 1
  store ptr %3, ptr %72, align 8, !tbaa !164
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 2
  store ptr %68, ptr %73, align 8, !tbaa !165
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 3
  store ptr %1, ptr %74, align 8, !tbaa !166
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 4
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %75, align 8, !tbaa !167
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %16, i64 0, i32 5
  store ptr %0, ptr %76, align 8, !tbaa !168
  %77 = load ptr, ptr %65, align 8, !tbaa !59
  %78 = getelementptr inbounds ptr, ptr %77, i64 6
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull %16)
          to label %81 unwind label %82

81:                                               ; preds = %67
  store ptr %80, ptr %8, align 8, !tbaa !159
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #14
  br label %84

82:                                               ; preds = %67
  %83 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %16) #14
  br label %253

84:                                               ; preds = %81, %64
  %85 = load ptr, ptr %8, align 8, !tbaa !159
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %216

87:                                               ; preds = %84
  br i1 %10, label %233, label %88

88:                                               ; preds = %87
  %89 = icmp eq ptr %1, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = load i16, ptr %1, align 2, !tbaa !96
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %90, %88
  %94 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !70
  %96 = icmp eq ptr %95, null
  %97 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = icmp eq ptr %98, null
  %100 = select i1 %96, i1 true, i1 %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #14
  %102 = invoke noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %103 unwind label %106

103:                                              ; preds = %101
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %102, i64 0, i32 22
  %105 = load ptr, ptr %104, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #14
  br label %108

106:                                              ; preds = %101
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %253

108:                                              ; preds = %93, %103, %90
  %109 = phi ptr [ %1, %90 ], [ %105, %103 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %93 ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %17) #14
  %110 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %110)
          to label %111 unwind label %161

111:                                              ; preds = %108
  %112 = load ptr, ptr %42, align 8, !tbaa !114
  %113 = load i32, ptr %15, align 8, !tbaa !112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i16, ptr %112, i64 %114
  store i16 0, ptr %115, align 2, !tbaa !96
  %116 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL6setURLEPKtS2_RS0_(ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %109, ptr noundef %112, ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %117 unwind label %163

117:                                              ; preds = %111
  br i1 %116, label %118, label %121

118:                                              ; preds = %117
  %119 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %120 unwind label %163

120:                                              ; preds = %118
  br i1 %119, label %121, label %188

121:                                              ; preds = %120, %117
  %122 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %123 = load i8, ptr %122, align 8, !tbaa !73, !range !93, !noundef !94
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %183

125:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %18) #14
  %126 = load ptr, ptr %19, align 8, !tbaa !74
  store i32 0, ptr %18, align 8, !tbaa !112
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 1
  store i32 1023, ptr %127, align 4, !tbaa !154
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 2
  store i32 0, ptr %128, align 8, !tbaa !155
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 3
  store i8 0, ptr %129, align 4, !tbaa !156
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 4
  store ptr %126, ptr %130, align 8, !tbaa !157
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 5
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %18, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %131, i8 0, i64 16, i1 false)
  %133 = load ptr, ptr %126, align 8, !tbaa !59
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8
  %136 = invoke noundef ptr %135(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 2048)
          to label %137 unwind label %165

137:                                              ; preds = %125
  store ptr %136, ptr %132, align 8, !tbaa !114
  store i16 0, ptr %136, align 2, !tbaa !96
  %138 = load ptr, ptr %42, align 8, !tbaa !114
  %139 = load i32, ptr %15, align 8, !tbaa !112
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i16, ptr %138, i64 %140
  store i16 0, ptr %141, align 2, !tbaa !96
  invoke void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr noundef %138, ptr noundef nonnull align 8 dereferenceable(40) %18)
          to label %142 unwind label %167

142:                                              ; preds = %137
  %143 = load ptr, ptr %19, align 8, !tbaa !74
  %144 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %143)
          to label %145 unwind label %167

145:                                              ; preds = %142
  %146 = load ptr, ptr %132, align 8, !tbaa !114
  %147 = load i32, ptr %18, align 8, !tbaa !112
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i16, ptr %146, i64 %148
  store i16 0, ptr %149, align 2, !tbaa !96
  %150 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %144, ptr noundef %109, ptr noundef %146, ptr noundef %150)
          to label %151 unwind label %169

151:                                              ; preds = %145
  store ptr %144, ptr %8, align 8, !tbaa !159
  %152 = load ptr, ptr %130, align 8, !tbaa !157
  %153 = load ptr, ptr %132, align 8, !tbaa !114
  %154 = load ptr, ptr %152, align 8, !tbaa !59
  %155 = getelementptr inbounds ptr, ptr %154, i64 3
  %156 = load ptr, ptr %155, align 8
  invoke void %156(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %153)
          to label %160 unwind label %157

157:                                              ; preds = %151
  %158 = landingpad { ptr, i32 }
          catch ptr null
  %159 = extractvalue { ptr, i32 } %158, 0
  call void @__clang_call_terminate(ptr %159) #16
  unreachable

160:                                              ; preds = %151
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %211

161:                                              ; preds = %108
  %162 = landingpad { ptr, i32 }
          cleanup
  br label %214

163:                                              ; preds = %198, %203, %192, %118, %111
  %164 = landingpad { ptr, i32 }
          cleanup
  br label %212

165:                                              ; preds = %125
  %166 = landingpad { ptr, i32 }
          cleanup
  br label %181

167:                                              ; preds = %142, %137
  %168 = landingpad { ptr, i32 }
          cleanup
  br label %171

169:                                              ; preds = %145
  %170 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %144, ptr noundef %143) #14
  br label %171

171:                                              ; preds = %169, %167
  %172 = phi { ptr, i32 } [ %170, %169 ], [ %168, %167 ]
  %173 = load ptr, ptr %130, align 8, !tbaa !157
  %174 = load ptr, ptr %132, align 8, !tbaa !114
  %175 = load ptr, ptr %173, align 8, !tbaa !59
  %176 = getelementptr inbounds ptr, ptr %175, i64 3
  %177 = load ptr, ptr %176, align 8
  invoke void %177(ptr noundef nonnull align 8 dereferenceable(8) %173, ptr noundef %174)
          to label %181 unwind label %178

178:                                              ; preds = %171
  %179 = landingpad { ptr, i32 }
          catch ptr null
  %180 = extractvalue { ptr, i32 } %179, 0
  call void @__clang_call_terminate(ptr %180) #16
  unreachable

181:                                              ; preds = %171, %165
  %182 = phi { ptr, i32 } [ %166, %165 ], [ %172, %171 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %18) #14
  br label %212

183:                                              ; preds = %121
  %184 = call ptr @__cxa_allocate_exception(i64 48) #14
  %185 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %184, ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 99, ptr noundef %185)
          to label %198 unwind label %186

186:                                              ; preds = %183
  %187 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %184) #14
  br label %212

188:                                              ; preds = %120
  %189 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 9
  %190 = load i8, ptr %189, align 8, !tbaa !73, !range !93, !noundef !94
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %203, label %192

192:                                              ; preds = %188
  %193 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %17)
          to label %194 unwind label %163

194:                                              ; preds = %192
  br i1 %193, label %195, label %203

195:                                              ; preds = %194
  %196 = call ptr @__cxa_allocate_exception(i64 48) #14
  %197 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %196, ptr noundef nonnull @.str, i32 noundef 692, i32 noundef 99, ptr noundef %197)
          to label %198 unwind label %201

198:                                              ; preds = %195, %183
  %199 = phi ptr [ %184, %183 ], [ %196, %195 ]
  invoke void @__cxa_throw(ptr nonnull %199, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %200 unwind label %163

200:                                              ; preds = %198
  unreachable

201:                                              ; preds = %195
  %202 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %196) #14
  br label %212

203:                                              ; preds = %194, %188
  %204 = load ptr, ptr %19, align 8, !tbaa !74
  %205 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %204)
          to label %206 unwind label %163

206:                                              ; preds = %203
  %207 = load ptr, ptr %19, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %205, ptr noundef nonnull align 8 dereferenceable(81) %17, ptr noundef %207)
          to label %208 unwind label %209

208:                                              ; preds = %206
  store ptr %205, ptr %8, align 8, !tbaa !159
  br label %211

209:                                              ; preds = %206
  %210 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %205, ptr noundef %204) #14
  br label %212

211:                                              ; preds = %208, %160
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #14
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  br label %216

212:                                              ; preds = %209, %201, %186, %181, %163
  %213 = phi { ptr, i32 } [ %164, %163 ], [ %187, %186 ], [ %182, %181 ], [ %202, %201 ], [ %210, %209 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %17) #14
  br label %214

214:                                              ; preds = %212, %161
  %215 = phi { ptr, i32 } [ %213, %212 ], [ %162, %161 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %17) #14
  br label %253

216:                                              ; preds = %211, %84
  %217 = load ptr, ptr %8, align 8, !tbaa !159
  %218 = invoke noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(41) %217, i1 zeroext poison, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %9)
          to label %219 unwind label %221

219:                                              ; preds = %216
  %220 = icmp eq ptr %218, null
  br i1 %220, label %233, label %228

221:                                              ; preds = %216
  %222 = landingpad { ptr, i32 }
          cleanup
  %223 = icmp eq ptr %217, null
  br i1 %223, label %253, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %217, align 8, !tbaa !59
  %226 = getelementptr inbounds ptr, ptr %225, i64 1
  %227 = load ptr, ptr %226, align 8
  call void %227(ptr noundef nonnull align 8 dereferenceable(41) %217) #14
  br label %253

228:                                              ; preds = %219
  %229 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %230 = load i32, ptr %229, align 8, !tbaa !62
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 8, !tbaa !62
  %232 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %218, i64 0, i32 15
  store i32 %230, ptr %232, align 8, !tbaa !104
  br label %233

233:                                              ; preds = %219, %228, %87
  %234 = phi ptr [ null, %87 ], [ %218, %228 ], [ null, %219 ]
  %235 = load ptr, ptr %40, align 8, !tbaa !157
  %236 = load ptr, ptr %42, align 8, !tbaa !114
  %237 = load ptr, ptr %235, align 8, !tbaa !59
  %238 = getelementptr inbounds ptr, ptr %237, i64 3
  %239 = load ptr, ptr %238, align 8
  invoke void %239(ptr noundef nonnull align 8 dereferenceable(8) %235, ptr noundef %236)
          to label %243 unwind label %240

240:                                              ; preds = %233
  %241 = landingpad { ptr, i32 }
          catch ptr null
  %242 = extractvalue { ptr, i32 } %241, 0
  call void @__clang_call_terminate(ptr %242) #16
  unreachable

243:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #14
  %244 = load ptr, ptr %24, align 8, !tbaa !157
  %245 = load ptr, ptr %26, align 8, !tbaa !114
  %246 = load ptr, ptr %244, align 8, !tbaa !59
  %247 = getelementptr inbounds ptr, ptr %246, i64 3
  %248 = load ptr, ptr %247, align 8
  invoke void %248(ptr noundef nonnull align 8 dereferenceable(8) %244, ptr noundef %245)
          to label %252 unwind label %249

249:                                              ; preds = %243
  %250 = landingpad { ptr, i32 }
          catch ptr null
  %251 = extractvalue { ptr, i32 } %250, 0
  call void @__clang_call_terminate(ptr %251) #16
  unreachable

252:                                              ; preds = %243
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  ret ptr %234

253:                                              ; preds = %224, %221, %106, %214, %82, %61
  %254 = phi { ptr, i32 } [ %83, %82 ], [ %62, %61 ], [ %215, %214 ], [ %107, %106 ], [ %222, %221 ], [ %222, %224 ]
  %255 = load ptr, ptr %40, align 8, !tbaa !157
  %256 = load ptr, ptr %42, align 8, !tbaa !114
  %257 = load ptr, ptr %255, align 8, !tbaa !59
  %258 = getelementptr inbounds ptr, ptr %257, i64 3
  %259 = load ptr, ptr %258, align 8
  invoke void %259(ptr noundef nonnull align 8 dereferenceable(8) %255, ptr noundef %256)
          to label %263 unwind label %260

260:                                              ; preds = %253
  %261 = landingpad { ptr, i32 }
          catch ptr null
  %262 = extractvalue { ptr, i32 } %261, 0
  call void @__clang_call_terminate(ptr %262) #16
  unreachable

263:                                              ; preds = %253, %59
  %264 = phi { ptr, i32 } [ %60, %59 ], [ %254, %253 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %15) #14
  br label %265

265:                                              ; preds = %263, %57
  %266 = phi { ptr, i32 } [ %264, %263 ], [ %58, %57 ]
  %267 = load ptr, ptr %24, align 8, !tbaa !157
  %268 = load ptr, ptr %26, align 8, !tbaa !114
  %269 = load ptr, ptr %267, align 8, !tbaa !59
  %270 = getelementptr inbounds ptr, ptr %269, i64 3
  %271 = load ptr, ptr %270, align 8
  invoke void %271(ptr noundef nonnull align 8 dereferenceable(8) %267, ptr noundef %268)
          to label %275 unwind label %272

272:                                              ; preds = %265
  %273 = landingpad { ptr, i32 }
          catch ptr null
  %274 = extractvalue { ptr, i32 } %273, 0
  call void @__clang_call_terminate(ptr %274) #16
  unreachable

275:                                              ; preds = %265
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %13) #14
  resume { ptr, i32 } %266
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr18createIntEntReaderEPKtNS_9XMLReader7RefFromENS3_5TypesES2_jbb(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %9 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !74
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10)
  %12 = shl i32 %5, 1
  %13 = select i1 %6, i32 1, i32 2
  %14 = load ptr, ptr %9, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %4, i32 noundef %12, i32 noundef %13, ptr noundef %14)
          to label %17 unwind label %15

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #14
  br label %30

17:                                               ; preds = %8
  %18 = load ptr, ptr %9, align 8, !tbaa !74
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 163992, ptr noundef %18)
  %20 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 8
  %21 = load i32, ptr %20, align 4, !tbaa !72
  %22 = load ptr, ptr %9, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %19, ptr noundef %1, ptr noundef null, ptr noundef nonnull %11, i32 noundef 7, i32 noundef %2, i32 noundef %3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext %7, i32 noundef %21, ptr noundef %22)
          to label %25 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #14
  br label %30

25:                                               ; preds = %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = add i32 %27, 1
  store i32 %28, ptr %26, align 8, !tbaa !62
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %19, i64 0, i32 15
  store i32 %27, ptr %29, align 8, !tbaa !104
  ret ptr %19

30:                                               ; preds = %23, %15
  %31 = phi { ptr, i32 } [ %24, %23 ], [ %16, %15 ]
  resume { ptr, i32 } %31
}

declare void @_ZN11xercesc_2_717BinMemInputStreamC1EPKhjNS0_7BufOptsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #6 align 2 !prof !58 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %3, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !183
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8, !prof !174

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %6, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !175
  %11 = icmp ne ptr %10, null
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %6, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %44, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %18, i64 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !80
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  br label %24

24:                                               ; preds = %22, %38
  %25 = phi i32 [ %26, %38 ], [ %20, %22 ]
  %26 = add i32 %25, -1
  %27 = load ptr, ptr %23, align 8, !tbaa !78
  %28 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %27, i32 noundef %26)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %28, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !175
  %33 = icmp ne ptr %32, null
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %28, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8
  %36 = icmp ne ptr %35, null
  %37 = select i1 %33, i1 true, i1 %36
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = icmp eq i32 %26, 0
  br i1 %39, label %44, label %24, !llvm.loop !178

40:                                               ; preds = %30, %24
  %41 = phi ptr [ null, %24 ], [ %28, %30 ]
  %42 = load ptr, ptr %17, align 8, !tbaa !70
  %43 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %42, i32 noundef %26)
  br label %44

44:                                               ; preds = %38, %40, %16, %8, %2
  %45 = phi ptr [ %4, %8 ], [ %4, %2 ], [ %4, %16 ], [ %43, %40 ], [ %4, %38 ]
  %46 = phi ptr [ %6, %8 ], [ null, %2 ], [ %6, %16 ], [ %41, %40 ], [ %28, %38 ]
  store ptr %46, ptr %1, align 8, !tbaa !159
  ret ptr %45
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getCurrentEntityEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #10 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_79ReaderMgr16getCurrentEntityEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #10 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr14getReaderDepthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %3, i64 0, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !147
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !75
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i32
  %12 = add i32 %7, %11
  br label %13

13:                                               ; preds = %1, %5
  %14 = phi i32 [ %12, %5 ], [ 0, %1 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr27isScanningPERefOutOfLiteralEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) local_unnamed_addr #3 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %7, i64 0, i32 27
  %9 = load i32, ptr %8, align 8, !tbaa !184
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %7, i64 0, i32 16
  %13 = load i32, ptr %12, align 4, !tbaa !185
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %5
  br label %16

16:                                               ; preds = %11, %1, %15
  %17 = phi i1 [ false, %15 ], [ false, %1 ], [ true, %11 ]
  ret i1 %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %59, label %5, !prof !76

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  %8 = icmp eq ptr %7, null
  br i1 %8, label %59, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %7, i64 0, i32 1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !147
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !186
  %14 = icmp ne i32 %11, 0
  br i1 %14, label %15, label %59

15:                                               ; preds = %9
  %16 = icmp eq ptr %13, null
  br label %17

17:                                               ; preds = %15, %54
  %18 = phi i1 [ %14, %15 ], [ %56, %54 ]
  %19 = phi i32 [ 0, %15 ], [ %55, %54 ]
  %20 = load ptr, ptr %6, align 8, !tbaa !78
  %21 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %20, i32 noundef %19)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %54, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %21, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !186
  %26 = icmp eq ptr %25, null
  %27 = or i1 %16, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i16, ptr %13, align 2, !tbaa !96
  %30 = load i16, ptr %25, align 2, !tbaa !96
  %31 = icmp eq i16 %29, %30
  br i1 %31, label %40, label %54

32:                                               ; preds = %23
  br i1 %16, label %36, label %33

33:                                               ; preds = %32
  %34 = load i16, ptr %13, align 2, !tbaa !96
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %33, %32
  br i1 %26, label %51, label %37

37:                                               ; preds = %36
  %38 = load i16, ptr %25, align 2, !tbaa !96
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %51, label %54

40:                                               ; preds = %28, %45
  %41 = phi i16 [ %48, %45 ], [ %29, %28 ]
  %42 = phi ptr [ %47, %45 ], [ %25, %28 ]
  %43 = phi ptr [ %46, %45 ], [ %13, %28 ]
  %44 = icmp eq i16 %41, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  %47 = getelementptr inbounds i16, ptr %42, i64 1
  %48 = load i16, ptr %46, align 2, !tbaa !96
  %49 = load i16, ptr %47, align 2, !tbaa !96
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %40, label %54, !llvm.loop !187

51:                                               ; preds = %37, %36, %40
  %52 = icmp eq ptr %1, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %51
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %58

54:                                               ; preds = %45, %28, %37, %33, %17
  %55 = add nuw i32 %19, 1
  %56 = icmp ult i32 %55, %11
  %57 = icmp eq i32 %55, %11
  br i1 %57, label %59, label %17, !llvm.loop !188

58:                                               ; preds = %53, %51
  br i1 %18, label %144, label %59

59:                                               ; preds = %54, %9, %58, %5, %3
  %60 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !70
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %88, !prof !76

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %65 = load ptr, ptr %64, align 8, !tbaa !74
  %66 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %65)
  %67 = load ptr, ptr %64, align 8, !tbaa !74
  %68 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %66, i64 0, i32 1
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE, i64 0, inrange i32 0, i64 2), ptr %68, align 8, !tbaa !59
  %69 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %66, i64 0, i32 1, i32 0, i32 1
  store i8 1, ptr %69, align 8, !tbaa !189
  %70 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %66, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %70, align 4, !tbaa !80
  %71 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %66, i64 0, i32 1, i32 0, i32 3
  store i32 16, ptr %71, align 8, !tbaa !190
  %72 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %66, i64 0, i32 1, i32 0, i32 4
  store ptr null, ptr %72, align 8, !tbaa !191
  %73 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %66, i64 0, i32 1, i32 0, i32 5
  store ptr %67, ptr %73, align 8, !tbaa !146
  %74 = load ptr, ptr %67, align 8, !tbaa !59
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = invoke noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %67, i64 noundef 128)
          to label %78 unwind label %86, !prof !192

78:                                               ; preds = %63
  store ptr %77, ptr %72, align 8, !tbaa !191
  br label %79

79:                                               ; preds = %78, %79
  %80 = phi i64 [ 0, %78 ], [ %83, %79 ]
  %81 = load ptr, ptr %72, align 8, !tbaa !191
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  store ptr null, ptr %82, align 8, !tbaa !159
  %83 = add nuw nsw i64 %80, 1
  %84 = icmp eq i64 %83, 16
  br i1 %84, label %85, label %79, !prof !193, !llvm.loop !194

85:                                               ; preds = %79
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE, i64 0, inrange i32 0, i64 2), ptr %68, align 8, !tbaa !59
  store ptr %66, ptr %60, align 8, !tbaa !70
  br label %88

86:                                               ; preds = %63
  %87 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %66, ptr noundef %65) #14
  br label %146

88:                                               ; preds = %85, %59
  %89 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !78
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %117, !prof !76

92:                                               ; preds = %88
  %93 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 10
  %94 = load ptr, ptr %93, align 8, !tbaa !74
  %95 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %94)
  %96 = load ptr, ptr %93, align 8, !tbaa !74
  %97 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %95, i64 0, i32 1
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %97, align 8, !tbaa !59
  %98 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %95, i64 0, i32 1, i32 0, i32 1
  store i8 0, ptr %98, align 8, !tbaa !195
  %99 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %95, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %99, align 4, !tbaa !147
  %100 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %95, i64 0, i32 1, i32 0, i32 3
  store i32 16, ptr %100, align 8, !tbaa !196
  %101 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %95, i64 0, i32 1, i32 0, i32 4
  store ptr null, ptr %101, align 8, !tbaa !197
  %102 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %95, i64 0, i32 1, i32 0, i32 5
  store ptr %96, ptr %102, align 8, !tbaa !149
  %103 = load ptr, ptr %96, align 8, !tbaa !59
  %104 = getelementptr inbounds ptr, ptr %103, i64 2
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %96, i64 noundef 128)
          to label %107 unwind label %115, !prof !192

107:                                              ; preds = %92
  store ptr %106, ptr %101, align 8, !tbaa !197
  br label %108

108:                                              ; preds = %107, %108
  %109 = phi i64 [ 0, %107 ], [ %112, %108 ]
  %110 = load ptr, ptr %101, align 8, !tbaa !197
  %111 = getelementptr inbounds ptr, ptr %110, i64 %109
  store ptr null, ptr %111, align 8, !tbaa !159
  %112 = add nuw nsw i64 %109, 1
  %113 = icmp eq i64 %112, 16
  br i1 %113, label %114, label %108, !prof !193, !llvm.loop !198

114:                                              ; preds = %108
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %97, align 8, !tbaa !59
  store ptr %95, ptr %89, align 8, !tbaa !78
  br label %117

115:                                              ; preds = %92
  %116 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %95, ptr noundef %94) #14
  br label %146

117:                                              ; preds = %114, %88
  %118 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !75
  %120 = icmp eq ptr %119, null
  br i1 %120, label %142, label %121, !prof !76

121:                                              ; preds = %117
  %122 = load ptr, ptr %60, align 8, !tbaa !70
  %123 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %122, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %123, i32 noundef 1)
  %124 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %122, i64 0, i32 1, i32 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !191
  %126 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %122, i64 0, i32 1, i32 0, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !80
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds ptr, ptr %125, i64 %128
  store ptr %119, ptr %129, align 8, !tbaa !159
  %130 = add i32 %127, 1
  store i32 %130, ptr %126, align 4, !tbaa !80
  %131 = load ptr, ptr %89, align 8, !tbaa !78
  %132 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !102
  %134 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %131, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %134, i32 noundef 1)
  %135 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %131, i64 0, i32 1, i32 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !197
  %137 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %131, i64 0, i32 1, i32 0, i32 2
  %138 = load i32, ptr %137, align 4, !tbaa !147
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %136, i64 %139
  store ptr %133, ptr %140, align 8, !tbaa !159
  %141 = add i32 %138, 1
  store i32 %141, ptr %137, align 4, !tbaa !147
  br label %142

142:                                              ; preds = %121, %117
  store ptr %1, ptr %118, align 8, !tbaa !75
  %143 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  store ptr %2, ptr %143, align 8, !tbaa !102
  br label %144

144:                                              ; preds = %58, %142
  %145 = phi i1 [ false, %58 ], [ true, %142 ]
  ret i1 %145

146:                                              ; preds = %115, %86
  %147 = phi { ptr, i32 } [ %116, %115 ], [ %87, %86 ]
  resume { ptr, i32 } %147
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 55, i32 noundef 79, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %0, i64 0, i32 1
  %15 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %1)
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 7
  store i8 0, ptr %2, align 8, !tbaa !71
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !77

6:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %4) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %4) #14
  br label %7

7:                                                ; preds = %6, %1
  store ptr null, ptr %3, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !70
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !77

11:                                               ; preds = %7
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %9, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
  br label %13

13:                                               ; preds = %11, %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  store ptr null, ptr %14, align 8, !tbaa !102
  %15 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !78
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %18, !prof !77

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %16, i64 0, i32 1, i32 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !147
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22, !prof !199

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %16, i64 0, i32 1, i32 0, i32 1
  %24 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %16, i64 0, i32 1, i32 0, i32 4
  br label %25

25:                                               ; preds = %22, %39
  %26 = phi i64 [ 0, %22 ], [ %42, %39 ]
  %27 = load i8, ptr %23, align 8, !tbaa !195, !range !93, !noundef !94
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %16, i64 0, i32 1, i32 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = getelementptr inbounds ptr, ptr %31, i64 %26
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %33, align 8, !tbaa !59
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(72) %33) #14
  br label %39

39:                                               ; preds = %35, %29, %25
  %40 = load ptr, ptr %24, align 8, !tbaa !197
  %41 = getelementptr inbounds ptr, ptr %40, i64 %26
  store ptr null, ptr %41, align 8, !tbaa !159
  %42 = add nuw nsw i64 %26, 1
  %43 = load i32, ptr %19, align 4, !tbaa !147
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %25, label %46, !prof !200, !llvm.loop !201

46:                                               ; preds = %39, %18
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf.0", ptr %16, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %47, align 4, !tbaa !147
  br label %48

48:                                               ; preds = %46, %13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 !prof !79 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %11 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1 ]
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_79ReaderMgr11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #6 align 2 !prof !202 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %5, i1 %8, i1 false, !prof !200
  br i1 %9, label %14, label %10, !prof !200

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %11 = call noundef ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %11, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_79ReaderMgr15getColumnNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 !prof !203 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %4, i1 %7, i1 false, !prof !204
  br i1 %8, label %50, label %9, !prof !204

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13, !prof !174

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !175
  %16 = icmp ne ptr %15, null
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %46, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  br label %27

27:                                               ; preds = %41, %25
  %28 = phi i32 [ %29, %41 ], [ %23, %25 ]
  %29 = add i32 %28, -1
  %30 = load ptr, ptr %26, align 8, !tbaa !78
  %31 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %30, i32 noundef %29)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %31, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %31, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %36, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = icmp eq i32 %29, 0
  br i1 %42, label %46, label %27, !llvm.loop !178

43:                                               ; preds = %33, %27
  %44 = load ptr, ptr %2, align 8, !tbaa !70
  %45 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %44, i32 noundef %29)
  br label %46

46:                                               ; preds = %41, %43, %9, %13, %21
  %47 = phi ptr [ %6, %13 ], [ %6, %9 ], [ %6, %21 ], [ %45, %43 ], [ %6, %41 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %47, i64 0, i32 5
  %49 = load i64, ptr %48, align 8, !tbaa !99
  br label %50

50:                                               ; preds = %1, %46
  %51 = phi i64 [ %49, %46 ], [ 0, %1 ]
  ret i64 %51
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_79ReaderMgr13getLineNumberEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(80) %0) unnamed_addr #4 align 2 !prof !203 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %4, i1 %7, i1 false, !prof !204
  br i1 %8, label %50, label %9, !prof !204

9:                                                ; preds = %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !102
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13, !prof !174

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !175
  %16 = icmp ne ptr %15, null
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %11, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8
  %19 = icmp ne ptr %18, null
  %20 = select i1 %16, i1 true, i1 %19
  br i1 %20, label %46, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !80
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 4
  br label %27

27:                                               ; preds = %41, %25
  %28 = phi i32 [ %29, %41 ], [ %23, %25 ]
  %29 = add i32 %28, -1
  %30 = load ptr, ptr %26, align 8, !tbaa !78
  %31 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %30, i32 noundef %29)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %31, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !175
  %36 = icmp ne ptr %35, null
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %31, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne ptr %38, null
  %40 = select i1 %36, i1 true, i1 %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %33
  %42 = icmp eq i32 %29, 0
  br i1 %42, label %46, label %27, !llvm.loop !178

43:                                               ; preds = %33, %27
  %44 = load ptr, ptr %2, align 8, !tbaa !70
  %45 = tail call noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %44, i32 noundef %29)
  br label %46

46:                                               ; preds = %41, %43, %9, %13, %21
  %47 = phi ptr [ %6, %13 ], [ %6, %9 ], [ %6, %21 ], [ %45, %43 ], [ %6, %41 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %47, i64 0, i32 6
  %49 = load i64, ptr %48, align 8, !tbaa !180
  br label %50

50:                                               ; preds = %1, %46
  %51 = phi i64 [ %49, %46 ], [ 0, %1 ]
  ret i64 %51
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710RefStackOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1, i32 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 55, i32 noundef 79, ptr noundef %9)
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %15 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %1)
  ret ptr %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720EndOfEntityExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #7

declare void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 2 dereferenceable(2), i1 noundef zeroext) local_unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !59
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !208 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !209

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !96
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !210

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !96
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !211, !llvm.loop !212

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !112
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !154
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !213

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !114
  %24 = load i32, ptr %0, align 8, !tbaa !112
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !214
  %28 = load i32, ptr %0, align 8, !tbaa !112
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !112
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !59
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLReaderEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !189, !range !93, !noundef !94
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5, !prof !77

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9, !prof !199

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !191
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !80
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !prof !200, !llvm.loop !215

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !146
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !191
  %28 = load ptr, ptr %25, align 8, !tbaa !59
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
          to label %31 unwind label %32, !prof !216

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !189, !range !93, !noundef !94
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !191
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %23) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #14
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !191
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !159
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !199

5:                                                ; preds = %19, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !80
  ret void

7:                                                ; preds = %1, %19
  %8 = phi i64 [ %23, %19 ], [ 0, %1 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !189, !range !93, !noundef !94
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !191
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  br label %19

19:                                               ; preds = %12, %18, %7
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !191
  %22 = getelementptr inbounds ptr, ptr %21, i64 %8
  store ptr null, ptr %22, align 8, !tbaa !159
  %23 = add nuw nsw i64 %8, 1
  %24 = load i32, ptr %2, align 4, !tbaa !80
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %7, label %5, !prof !200, !llvm.loop !217
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !189, !range !93, !noundef !94
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !191
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %22) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !80
  %27 = add i32 %26, -1
  %28 = icmp eq i32 %27, %1
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = icmp ugt i32 %27, %1
  br i1 %30, label %31, label %43

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %33 = zext i32 %1 to i64
  %34 = zext i32 %27 to i64
  br label %35

35:                                               ; preds = %31, %35
  %36 = phi i64 [ %33, %31 ], [ %38, %35 ]
  %37 = load ptr, ptr %32, align 8, !tbaa !191
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !159
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !218

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !191
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !159
  store i32 %27, ptr %3, align 4, !tbaa !80
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !80
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !189, !range !93, !noundef !94
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !191
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !189, !range !93, !noundef !94
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !191
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_79XMLReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(163992) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !80
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !219

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !146
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !191
  %28 = load ptr, ptr %25, align 8, !tbaa !59
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !59
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !195, !range !93, !noundef !94
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !76

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !147
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !197
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !59
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #14
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !147
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !220

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !149
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  %31 = load ptr, ptr %28, align 8, !tbaa !59
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !216

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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !147
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !195, !range !93, !noundef !94
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !197
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !59
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %23) #14
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !159
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !147
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !195, !range !93, !noundef !94
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !197
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !59
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %18) #14
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !197
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !159
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !147
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !201
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !195, !range !93, !noundef !94
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !197
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !59
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #14
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !147
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !197
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !159
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !221

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !197
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !159
  store i32 %30, ptr %3, align 4, !tbaa !147
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !147
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !195, !range !93, !noundef !94
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !197
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !59
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #14
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !195, !range !93, !noundef !94
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !147
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !197
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !59
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #14
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !147
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !222

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !149
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !197
  %31 = load ptr, ptr %28, align 8, !tbaa !59
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !59
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !191
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = zext i32 %1 to i64
  %25 = zext i32 %19 to i64
  br label %30

26:                                               ; preds = %30, %21
  %27 = load ptr, ptr %14, align 8, !tbaa !191
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  br label %38

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %24, %23 ], [ %33, %30 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !191
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !159
  %37 = icmp eq i64 %33, %25
  br i1 %37, label %26, label %30, !llvm.loop !223

38:                                               ; preds = %13, %26
  %39 = phi ptr [ %29, %26 ], [ %17, %13 ]
  store ptr null, ptr %39, align 8, !tbaa !159
  store i32 %19, ptr %3, align 4, !tbaa !80
  ret ptr %18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !205
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !59
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 101, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = zext i32 %1 to i64
  %25 = zext i32 %19 to i64
  br label %30

26:                                               ; preds = %30, %21
  %27 = load ptr, ptr %14, align 8, !tbaa !197
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  br label %38

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %24, %23 ], [ %33, %30 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !197
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !159
  %37 = icmp eq i64 %33, %25
  br i1 %37, label %26, label %30, !llvm.loop !224

38:                                               ; preds = %13, %26
  %39 = phi ptr [ %29, %26 ], [ %17, %13 ]
  store ptr null, ptr %39, align 8, !tbaa !159
  store i32 %19, ptr %3, align 4, !tbaa !147
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !197
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  ret ptr %18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !190
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !59
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !80
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !159
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !191
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !159
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !225

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !146
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !191
  %52 = load ptr, ptr %49, align 8, !tbaa !59
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !191
  store i32 %12, ptr %6, align 8, !tbaa !190
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !147
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !196
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !149
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !59
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !147
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !159
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !197
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !159
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !226

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !149
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.2", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !197
  %52 = load ptr, ptr %49, align 8, !tbaa !59
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !197
  store i32 %12, ptr %6, align 8, !tbaa !196
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 241, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !191
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLReaderEED2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 6}
!37 = !{ptr @_ZN11xercesc_2_79ReaderMgrD2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13XMLEntityDeclEED2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 152}
!39 = !{ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1034680}
!40 = !{ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, i64 4}
!41 = !{ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 2}
!42 = !{ptr @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt, i64 3}
!43 = !{ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 198}
!44 = !{ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, ptr @_ZN11xercesc_2_79ReaderMgr9popReaderEv, i64 3}
!45 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, ptr @_ZN11xercesc_2_79XMLReader11skippedCharEt, i64 1025895}
!46 = !{ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, ptr @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt, i64 192040}
!47 = !{ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, i64 1900286}
!48 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!49 = !{ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb, ptr @_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, i64 3}
!50 = !{ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 3}
!51 = !{ptr @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!52 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_79XMLReaderD1Ev, i64 3}
!53 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!54 = !{ptr @_ZN11xercesc_2_79ReaderMgr5resetEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEE17removeAllElementsEv, i64 3}
!55 = !{ptr @_ZNK11xercesc_2_79ReaderMgr11getSystemIdEv, ptr @_ZNK11xercesc_2_79ReaderMgr16getLastExtEntityERPKNS_13XMLEntityDeclE, i64 1}
!56 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 3}
!59 = !{!60, !60, i64 0}
!60 = !{!"vtable pointer", !61, i64 0}
!61 = !{!"Simple C++ TBAA"}
!62 = !{!63, !67, i64 40}
!63 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !64, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !67, i64 40, !65, i64 48, !68, i64 56, !69, i64 60, !68, i64 64, !65, i64 72}
!64 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!65 = !{!"any pointer", !66, i64 0}
!66 = !{!"omnipotent char", !61, i64 0}
!67 = !{!"int", !66, i64 0}
!68 = !{!"bool", !66, i64 0}
!69 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !66, i64 0}
!70 = !{!63, !65, i64 48}
!71 = !{!63, !68, i64 56}
!72 = !{!63, !69, i64 60}
!73 = !{!63, !68, i64 64}
!74 = !{!63, !65, i64 72}
!75 = !{!63, !65, i64 16}
!76 = !{!"branch_weights", i32 3, i32 0}
!77 = !{!"branch_weights", i32 0, i32 3}
!78 = !{!63, !65, i64 32}
!79 = !{!"function_entry_count", i64 0}
!80 = !{!81, !67, i64 12}
!81 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLReaderEEE", !68, i64 8, !67, i64 12, !67, i64 16, !65, i64 24, !65, i64 32}
!82 = !{!"function_entry_count", i64 5315876}
!83 = !{!84, !67, i64 0}
!84 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !67, i64 0, !66, i64 4, !67, i64 32772, !66, i64 32776, !66, i64 49160, !85, i64 114696, !85, i64 114704, !86, i64 114712, !65, i64 114720, !68, i64 114728, !68, i64 114729, !65, i64 114736, !67, i64 114744, !66, i64 114748, !67, i64 163900, !67, i64 163904, !87, i64 163908, !68, i64 163912, !88, i64 163916, !67, i64 163920, !68, i64 163924, !68, i64 163925, !65, i64 163928, !65, i64 163936, !68, i64 163944, !68, i64 163945, !65, i64 163952, !89, i64 163960, !65, i64 163968, !68, i64 163976, !69, i64 163980, !65, i64 163984}
!85 = !{!"long", !66, i64 0}
!86 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !66, i64 0}
!87 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !66, i64 0}
!88 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !66, i64 0}
!89 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !66, i64 0}
!90 = !{!84, !67, i64 32772}
!91 = !{!"branch_weights", i32 5315724, i32 152}
!92 = !{!84, !68, i64 114729}
!93 = !{i8 0, i8 2}
!94 = !{}
!95 = !{!"branch_weights", i32 152, i32 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"short", !66, i64 0}
!98 = !{!"branch_weights", i32 1034680, i32 4281196}
!99 = !{!84, !85, i64 114696}
!100 = !{!"function_entry_count", i64 5}
!101 = !{!"branch_weights", i32 5, i32 0}
!102 = !{!63, !65, i64 8}
!103 = !{!84, !68, i64 163945}
!104 = !{!84, !67, i64 163904}
!105 = !{!106, !65, i64 0}
!106 = !{!"_ZTSN11xercesc_2_720EndOfEntityExceptionE", !65, i64 0, !67, i64 8}
!107 = !{!106, !67, i64 8}
!108 = distinct !{!108, !109, !110}
!109 = !{!"llvm.loop.mustprogress"}
!110 = !{!"llvm.loop.unroll.disable"}
!111 = !{!"function_entry_count", i64 4}
!112 = !{!113, !67, i64 0}
!113 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !67, i64 0, !67, i64 4, !67, i64 8, !68, i64 12, !65, i64 16, !65, i64 24, !65, i64 32}
!114 = !{!113, !65, i64 32}
!115 = !{!"branch_weights", i32 2, i32 2}
!116 = !{!"branch_weights", i32 0, i32 2}
!117 = distinct !{!117, !109, !110}
!118 = distinct !{!118, !109, !110}
!119 = !{!"function_entry_count", i64 5568709}
!120 = !{!"branch_weights", i32 5568511, i32 198}
!121 = !{!"branch_weights", i32 195, i32 3}
!122 = !{!"branch_weights", i32 5568706, i32 0, i32 0, i32 0}
!123 = !{!84, !68, i64 163976}
!124 = !{!84, !88, i64 163916}
!125 = !{!"branch_weights", i32 5568706, i32 3}
!126 = !{!"function_entry_count", i64 1025895}
!127 = !{!"branch_weights", i32 1025895, i32 0}
!128 = distinct !{!128, !109, !110}
!129 = distinct !{!129, !109, !110}
!130 = !{!"function_entry_count", i64 192040}
!131 = !{!"branch_weights", i32 192040, i32 0}
!132 = distinct !{!132, !109, !110}
!133 = !{!"function_entry_count", i64 1900286}
!134 = !{!"branch_weights", i32 1900286, i32 0}
!135 = !{!68, !68, i64 0}
!136 = distinct !{!136, !109, !110}
!137 = !{!"branch_weights", i32 190283, i32 1710003}
!138 = distinct !{!138, !109, !110}
!139 = distinct !{!139, !109, !110}
!140 = !{!84, !65, i64 163968}
!141 = !{!66, !66, i64 0}
!142 = distinct !{!142, !109, !110}
!143 = !{!"function_entry_count", i64 6}
!144 = !{!"branch_weights", i32 6, i32 0}
!145 = distinct !{!145, !109, !110}
!146 = !{!81, !65, i64 32}
!147 = !{!148, !67, i64 12}
!148 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13XMLEntityDeclEEE", !68, i64 8, !67, i64 12, !67, i64 16, !65, i64 24, !65, i64 32}
!149 = !{!148, !65, i64 32}
!150 = !{!"VP", i32 0, i64 3, i64 2489973389968611666, i64 2, i64 4548106432335989977, i64 1}
!151 = !{!"VP", i32 0, i64 3, i64 -9047941090051178260, i64 3}
!152 = !{!"VP", i32 0, i64 3, i64 6294265767398404546, i64 3}
!153 = !{!"VP", i32 0, i64 3, i64 -3228203282622328352, i64 3}
!154 = !{!113, !67, i64 4}
!155 = !{!113, !67, i64 8}
!156 = !{!113, !68, i64 12}
!157 = !{!113, !65, i64 16}
!158 = !{!63, !65, i64 24}
!159 = !{!65, !65, i64 0}
!160 = !{!84, !65, i64 163928}
!161 = !{!162, !163, i64 0}
!162 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !163, i64 0, !65, i64 8, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40}
!163 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !66, i64 0}
!164 = !{!162, !65, i64 8}
!165 = !{!162, !65, i64 16}
!166 = !{!162, !65, i64 24}
!167 = !{!162, !65, i64 32}
!168 = !{!162, !65, i64 40}
!169 = !{!"function_entry_count", i64 551}
!170 = !{!"branch_weights", i32 0, i32 551}
!171 = !{!172, !65, i64 0}
!172 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !65, i64 0, !65, i64 8, !85, i64 16, !85, i64 24}
!173 = !{!172, !65, i64 8}
!174 = !{!"branch_weights", i32 2213, i32 0}
!175 = !{!176, !65, i64 40}
!176 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !177, i64 0, !67, i64 8, !67, i64 12, !65, i64 16, !65, i64 24, !65, i64 32, !65, i64 40, !65, i64 48, !65, i64 56, !65, i64 64}
!177 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!178 = distinct !{!178, !109, !110}
!179 = !{!84, !65, i64 114736}
!180 = !{!84, !85, i64 114704}
!181 = !{!172, !85, i64 16}
!182 = !{!172, !85, i64 24}
!183 = !{!84, !65, i64 114720}
!184 = !{!84, !89, i64 163960}
!185 = !{!84, !87, i64 163908}
!186 = !{!176, !65, i64 24}
!187 = distinct !{!187, !109, !110}
!188 = distinct !{!188, !109, !110}
!189 = !{!81, !68, i64 8}
!190 = !{!81, !67, i64 16}
!191 = !{!81, !65, i64 24}
!192 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!193 = !{!"branch_weights", i32 3, i32 45}
!194 = distinct !{!194, !109, !110}
!195 = !{!148, !68, i64 8}
!196 = !{!148, !67, i64 16}
!197 = !{!148, !65, i64 24}
!198 = distinct !{!198, !109, !110}
!199 = !{!"branch_weights", i32 1, i32 0}
!200 = !{!"branch_weights", i32 0, i32 1}
!201 = distinct !{!201, !109, !110}
!202 = !{!"function_entry_count", i64 1}
!203 = !{!"function_entry_count", i64 829}
!204 = !{!"branch_weights", i32 0, i32 829}
!205 = !{!206, !65, i64 40}
!206 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !207, i64 8, !65, i64 16, !67, i64 24, !65, i64 32, !65, i64 40}
!207 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !66, i64 0}
!208 = !{!"function_entry_count", i64 789922}
!209 = !{!"branch_weights", i32 0, i32 789922}
!210 = !{!"branch_weights", i32 284, i32 789638}
!211 = !{!"branch_weights", i32 789638, i32 41628303}
!212 = distinct !{!212, !109, !110}
!213 = !{!"branch_weights", i32 789636, i32 2}
!214 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!215 = distinct !{!215, !109, !110}
!216 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!217 = distinct !{!217, !109, !110}
!218 = distinct !{!218, !109, !110}
!219 = distinct !{!219, !109, !110}
!220 = distinct !{!220, !109, !110}
!221 = distinct !{!221, !109, !110}
!222 = distinct !{!222, !109, !110}
!223 = distinct !{!223, !109, !110}
!224 = distinct !{!224, !109, !110}
!225 = distinct !{!225, !109, !110}
!226 = distinct !{!226, !109, !110}
