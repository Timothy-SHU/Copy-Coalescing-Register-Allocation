; ModuleID = 'XMLScanner.cpp'
source_filename = "XMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::GrammarResolver" = type { i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLGrammarPool" = type <{ ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::MalformedURLException" = type { %"class.xercesc_2_7::XMLException" }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo" = type { ptr, ptr, i64, i64 }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLPScanToken" = type { i32, i32 }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLRefInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZN11xercesc_2_710XMLScanner15resolveSystemIdEPKtS2_ = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv = comdat any

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

$_ZTSN11xercesc_2_720XMLBufferFullHandlerE = comdat any

$_ZTIN11xercesc_2_720XMLBufferFullHandlerE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZN11xercesc_2_7L19scannerMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L16cleanupMsgLoaderE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L10gMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L13sScannerMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L11sRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_710XMLScannerE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710XMLScannerE, ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_710XMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_710XMLScanner15resolveSystemIdEPKtS2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [15 x i8] c"XMLScanner.cpp\00", align 1
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_78XMLValid5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_78XMLValid5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78XMLValid5CodesE }, comdat, align 8
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L10gScannerIdE = internal unnamed_addr global i32 0, align 4
@_ZTSN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720EndOfEntityExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720EndOfEntityExceptionE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720EndOfEntityExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni10fgPIStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgCommentStringE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UnexpectedEOFExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgDocTypeStringE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [10 x i8] c"in prolog\00", align 1
@_ZN11xercesc_2_76XMLUni15fgVersionStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEncodingStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgStandaloneStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgVersion1_0E = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgYesStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgNoStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXMLDeclStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgXMLDeclStringSpaceE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni19fgXMLDeclStringHTabE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgXMLDeclStringLFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgXMLDeclStringCRE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgXMLDeclStringSpaceUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgXMLDeclStringHTabUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLDeclStringLFUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLDeclStringCRUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgXMLStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgXMLStringSpaceE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXMLStringHTabE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLStringLFE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLStringCRE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgXMLStringSpaceUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgXMLStringHTabUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLStringLFUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLStringCRUE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgUnknownURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgXMLURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE9gCDATAStr = internal constant [8 x i16] [i16 33, i16 91, i16 67, i16 68, i16 65, i16 84, i16 65, i16 0], align 16
@_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE14gCommentString = internal constant [4 x i16] [i16 33, i16 45, i16 45, i16 0], align 2
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_710XMLScannerE = dso_local constant [28 x i8] c"N11xercesc_2_710XMLScannerE\00", align 1
@_ZTSN11xercesc_2_720XMLBufferFullHandlerE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720XMLBufferFullHandlerE\00", comdat, align 1
@_ZTIN11xercesc_2_720XMLBufferFullHandlerE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720XMLBufferFullHandlerE }, comdat, align 8
@_ZTIN11xercesc_2_710XMLScannerE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710XMLScannerE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2, ptr @_ZTIN11xercesc_2_720XMLBufferFullHandlerE, i64 2 }, align 8
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZTVN11xercesc_2_722UnexpectedEOFExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev, ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv, ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E = external global [65536 x i8], align 16
@_ZN11xercesc_2_710XMLChar1_09enableNELE = external local_unnamed_addr global i8, align 1
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external global [65536 x i8], align 16
@_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [43 x i8] c"N11xercesc_2_711RefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE5ResetEv] }, comdat, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XMLScanner.cpp, ptr null }]

@_ZN11xercesc_2_710XMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710XMLScannerD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !95 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner15reinitMsgLoaderEv() #4 align 2 !prof !95 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !100
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv() #4 align 2 !prof !102 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !96
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !103

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #19
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !96
  store i1 false, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer26initializeScannerMsgLoaderEv() local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE)
  store ptr %1, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner15reinitMsgLoaderEv)
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  store ptr %5, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !96
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19scannerMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv)
  store i1 true, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %5) #19
  resume { ptr, i32 } %9
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 1048576, ptr %5, align 8, !tbaa !105
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 0, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 0, ptr %7, align 1, !tbaa !121
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 0, ptr %8, align 2, !tbaa !122
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 1, ptr %9, align 1, !tbaa !123
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 0, ptr %10, align 4, !tbaa !124
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %11, align 1, !tbaa !125
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %12, align 2, !tbaa !126
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %13, align 1, !tbaa !127
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %14, align 8
  store i8 1, ptr %15, align 4, !tbaa !128
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 0, ptr %16, align 1, !tbaa !129
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 0, ptr %17, align 2, !tbaa !130
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 1, ptr %18, align 1, !tbaa !131
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 1, ptr %19, align 8, !tbaa !132
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %20, i8 0, i64 6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %21, i8 0, i64 48, i1 false)
  store i32 2, ptr %22, align 8, !tbaa !133
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  store i32 0, ptr %23, align 4, !tbaa !134
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  store i32 0, ptr %24, align 8, !tbaa !135
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(73) %25, i8 0, i64 73, i1 false)
  invoke void @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef %3)
          to label %27 unwind label %126, !prof !136

27:                                               ; preds = %4
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %1, ptr %28, align 8, !tbaa !137
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 0, ptr %29, align 8, !tbaa !138
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  store ptr %2, ptr %30, align 8, !tbaa !139
  %31 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %2, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !140
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !142
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  store ptr %34, ptr %35, align 8, !tbaa !144
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %36, i8 0, i64 60, i1 false)
  store ptr %3, ptr %37, align 8, !tbaa !145
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %38, ptr noundef %3)
          to label %39 unwind label %130, !prof !136

39:                                               ; preds = %27
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  store i32 0, ptr %40, align 8, !tbaa !146
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 1
  store i32 1023, ptr %41, align 4, !tbaa !147
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 2
  store i32 0, ptr %42, align 8, !tbaa !148
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 3
  store i8 0, ptr %43, align 4, !tbaa !149
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 4
  store ptr %3, ptr %44, align 8, !tbaa !150
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 5
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 0, i64 16, i1 false)
  %47 = load ptr, ptr %3, align 8, !tbaa !100
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %51 unwind label %134, !prof !151

51:                                               ; preds = %39
  store ptr %50, ptr %46, align 8, !tbaa !152
  store i16 0, ptr %50, align 2, !tbaa !153
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  store i32 0, ptr %52, align 8, !tbaa !146
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 1
  store i32 1023, ptr %53, align 4, !tbaa !147
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 2
  store i32 0, ptr %54, align 8, !tbaa !148
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 3
  store i8 0, ptr %55, align 4, !tbaa !149
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 4
  store ptr %3, ptr %56, align 8, !tbaa !150
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 5
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  %59 = load ptr, ptr %3, align 8, !tbaa !100
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %63 unwind label %138, !prof !151

63:                                               ; preds = %51
  store ptr %62, ptr %58, align 8, !tbaa !152
  store i16 0, ptr %62, align 2, !tbaa !153
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  store i32 0, ptr %64, align 8, !tbaa !146
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 1
  store i32 1023, ptr %65, align 4, !tbaa !147
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 2
  store i32 0, ptr %66, align 8, !tbaa !148
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 3
  store i8 0, ptr %67, align 4, !tbaa !149
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 4
  store ptr %3, ptr %68, align 8, !tbaa !150
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 5
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  %71 = load ptr, ptr %3, align 8, !tbaa !100
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = invoke noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %75 unwind label %142, !prof !151

75:                                               ; preds = %63
  store ptr %74, ptr %70, align 8, !tbaa !152
  store i16 0, ptr %74, align 2, !tbaa !153
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %76, align 8, !tbaa !146
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 1
  store i32 1023, ptr %77, align 4, !tbaa !147
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 2
  store i32 0, ptr %78, align 8, !tbaa !148
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 3
  store i8 0, ptr %79, align 4, !tbaa !149
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 4
  store ptr %3, ptr %80, align 8, !tbaa !150
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 5
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 0, i64 16, i1 false)
  %83 = load ptr, ptr %3, align 8, !tbaa !100
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %87 unwind label %146, !prof !151

87:                                               ; preds = %75
  store ptr %86, ptr %82, align 8, !tbaa !152
  store i16 0, ptr %86, align 2, !tbaa !153
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  store i32 0, ptr %88, align 8, !tbaa !146
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 1
  store i32 1023, ptr %89, align 4, !tbaa !147
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 2
  store i32 0, ptr %90, align 8, !tbaa !148
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 3
  store i8 0, ptr %91, align 4, !tbaa !149
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 4
  store ptr %3, ptr %92, align 8, !tbaa !150
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 5
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %93, i8 0, i64 16, i1 false)
  %95 = load ptr, ptr %3, align 8, !tbaa !100
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %99 unwind label %150, !prof !151

99:                                               ; preds = %87
  store ptr %98, ptr %94, align 8, !tbaa !152
  store i16 0, ptr %98, align 2, !tbaa !153
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  store i32 0, ptr %100, align 8, !tbaa !146
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 1
  store i32 1023, ptr %101, align 4, !tbaa !147
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 2
  store i32 0, ptr %102, align 8, !tbaa !148
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 3
  store i8 0, ptr %103, align 4, !tbaa !149
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 4
  store ptr %3, ptr %104, align 8, !tbaa !150
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 5
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  %107 = load ptr, ptr %3, align 8, !tbaa !100
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8
  %110 = invoke noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %111 unwind label %154, !prof !151

111:                                              ; preds = %99
  store ptr %110, ptr %106, align 8, !tbaa !152
  store i16 0, ptr %110, align 2, !tbaa !153
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  store i32 0, ptr %112, align 8, !tbaa !146
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 1
  store i32 1023, ptr %113, align 4, !tbaa !147
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 2
  store i32 0, ptr %114, align 8, !tbaa !148
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 3
  store i8 0, ptr %115, align 4, !tbaa !149
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 4
  store ptr %3, ptr %116, align 8, !tbaa !150
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 5
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %117, i8 0, i64 16, i1 false)
  %119 = load ptr, ptr %3, align 8, !tbaa !100
  %120 = getelementptr inbounds ptr, ptr %119, i64 2
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 2048)
          to label %123 unwind label %158, !prof !151

123:                                              ; preds = %111
  store ptr %122, ptr %118, align 8, !tbaa !152
  store i16 0, ptr %122, align 2, !tbaa !153
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %124, ptr noundef nonnull %3)
          to label %125 unwind label %162, !prof !136

125:                                              ; preds = %123
  invoke void @_ZN11xercesc_2_710XMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %179 unwind label %166, !prof !136

126:                                              ; preds = %4
  %127 = landingpad { ptr, i32 }
          cleanup
  %128 = extractvalue { ptr, i32 } %127, 0
  %129 = extractvalue { ptr, i32 } %127, 1
  br label %275

130:                                              ; preds = %27
  %131 = landingpad { ptr, i32 }
          cleanup
  %132 = extractvalue { ptr, i32 } %131, 0
  %133 = extractvalue { ptr, i32 } %131, 1
  br label %272

134:                                              ; preds = %39
  %135 = landingpad { ptr, i32 }
          cleanup
  %136 = extractvalue { ptr, i32 } %135, 0
  %137 = extractvalue { ptr, i32 } %135, 1
  br label %269

138:                                              ; preds = %51
  %139 = landingpad { ptr, i32 }
          cleanup
  %140 = extractvalue { ptr, i32 } %139, 0
  %141 = extractvalue { ptr, i32 } %139, 1
  br label %258

142:                                              ; preds = %63
  %143 = landingpad { ptr, i32 }
          cleanup
  %144 = extractvalue { ptr, i32 } %143, 0
  %145 = extractvalue { ptr, i32 } %143, 1
  br label %247

146:                                              ; preds = %75
  %147 = landingpad { ptr, i32 }
          cleanup
  %148 = extractvalue { ptr, i32 } %147, 0
  %149 = extractvalue { ptr, i32 } %147, 1
  br label %236

150:                                              ; preds = %87
  %151 = landingpad { ptr, i32 }
          cleanup
  %152 = extractvalue { ptr, i32 } %151, 0
  %153 = extractvalue { ptr, i32 } %151, 1
  br label %225

154:                                              ; preds = %99
  %155 = landingpad { ptr, i32 }
          cleanup
  %156 = extractvalue { ptr, i32 } %155, 0
  %157 = extractvalue { ptr, i32 } %155, 1
  br label %214

158:                                              ; preds = %111
  %159 = landingpad { ptr, i32 }
          cleanup
  %160 = extractvalue { ptr, i32 } %159, 0
  %161 = extractvalue { ptr, i32 } %159, 1
  br label %203

162:                                              ; preds = %123
  %163 = landingpad { ptr, i32 }
          cleanup
  %164 = extractvalue { ptr, i32 } %163, 0
  %165 = extractvalue { ptr, i32 } %163, 1
  br label %192

166:                                              ; preds = %125
  %167 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %168 = extractvalue { ptr, i32 } %167, 0
  %169 = extractvalue { ptr, i32 } %167, 1
  %170 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %166
  %173 = tail call ptr @__cxa_begin_catch(ptr %168) #19
  invoke void @__cxa_rethrow() #21
          to label %283 unwind label %174

174:                                              ; preds = %172
  %175 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %176 unwind label %280

176:                                              ; preds = %174
  %177 = extractvalue { ptr, i32 } %175, 1
  %178 = extractvalue { ptr, i32 } %175, 0
  br label %180

179:                                              ; preds = %125
  ret void

180:                                              ; preds = %176, %166
  %181 = phi ptr [ null, %176 ], [ @_ZN11xercesc_2_710XMLScanner7cleanUpEv, %166 ]
  %182 = phi ptr [ null, %176 ], [ %0, %166 ]
  %183 = phi i32 [ %177, %176 ], [ %169, %166 ]
  %184 = phi ptr [ %178, %176 ], [ %168, %166 ]
  %185 = icmp eq ptr %182, null
  %186 = or i1 %171, %185
  br i1 %186, label %191, label %187

187:                                              ; preds = %180
  invoke void %181(ptr noundef nonnull align 8 dereferenceable(776) %182)
          to label %191 unwind label %188

188:                                              ; preds = %187
  %189 = landingpad { ptr, i32 }
          catch ptr null
  %190 = extractvalue { ptr, i32 } %189, 0
  tail call void @__clang_call_terminate(ptr %190) #20
  unreachable

191:                                              ; preds = %180, %187
  tail call void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %124) #19
  br label %192

192:                                              ; preds = %191, %162
  %193 = phi i32 [ %183, %191 ], [ %165, %162 ]
  %194 = phi ptr [ %184, %191 ], [ %164, %162 ]
  %195 = load ptr, ptr %116, align 8, !tbaa !150
  %196 = load ptr, ptr %118, align 8, !tbaa !152
  %197 = load ptr, ptr %195, align 8, !tbaa !100
  %198 = getelementptr inbounds ptr, ptr %197, i64 3
  %199 = load ptr, ptr %198, align 8
  invoke void %199(ptr noundef nonnull align 8 dereferenceable(8) %195, ptr noundef %196)
          to label %203 unwind label %200

200:                                              ; preds = %192
  %201 = landingpad { ptr, i32 }
          catch ptr null
  %202 = extractvalue { ptr, i32 } %201, 0
  tail call void @__clang_call_terminate(ptr %202) #20
  unreachable

203:                                              ; preds = %192, %158
  %204 = phi i32 [ %161, %158 ], [ %193, %192 ]
  %205 = phi ptr [ %160, %158 ], [ %194, %192 ]
  %206 = load ptr, ptr %104, align 8, !tbaa !150
  %207 = load ptr, ptr %106, align 8, !tbaa !152
  %208 = load ptr, ptr %206, align 8, !tbaa !100
  %209 = getelementptr inbounds ptr, ptr %208, i64 3
  %210 = load ptr, ptr %209, align 8
  invoke void %210(ptr noundef nonnull align 8 dereferenceable(8) %206, ptr noundef %207)
          to label %214 unwind label %211

211:                                              ; preds = %203
  %212 = landingpad { ptr, i32 }
          catch ptr null
  %213 = extractvalue { ptr, i32 } %212, 0
  tail call void @__clang_call_terminate(ptr %213) #20
  unreachable

214:                                              ; preds = %203, %154
  %215 = phi i32 [ %157, %154 ], [ %204, %203 ]
  %216 = phi ptr [ %156, %154 ], [ %205, %203 ]
  %217 = load ptr, ptr %92, align 8, !tbaa !150
  %218 = load ptr, ptr %94, align 8, !tbaa !152
  %219 = load ptr, ptr %217, align 8, !tbaa !100
  %220 = getelementptr inbounds ptr, ptr %219, i64 3
  %221 = load ptr, ptr %220, align 8
  invoke void %221(ptr noundef nonnull align 8 dereferenceable(8) %217, ptr noundef %218)
          to label %225 unwind label %222

222:                                              ; preds = %214
  %223 = landingpad { ptr, i32 }
          catch ptr null
  %224 = extractvalue { ptr, i32 } %223, 0
  tail call void @__clang_call_terminate(ptr %224) #20
  unreachable

225:                                              ; preds = %214, %150
  %226 = phi i32 [ %153, %150 ], [ %215, %214 ]
  %227 = phi ptr [ %152, %150 ], [ %216, %214 ]
  %228 = load ptr, ptr %80, align 8, !tbaa !150
  %229 = load ptr, ptr %82, align 8, !tbaa !152
  %230 = load ptr, ptr %228, align 8, !tbaa !100
  %231 = getelementptr inbounds ptr, ptr %230, i64 3
  %232 = load ptr, ptr %231, align 8
  invoke void %232(ptr noundef nonnull align 8 dereferenceable(8) %228, ptr noundef %229)
          to label %236 unwind label %233

233:                                              ; preds = %225
  %234 = landingpad { ptr, i32 }
          catch ptr null
  %235 = extractvalue { ptr, i32 } %234, 0
  tail call void @__clang_call_terminate(ptr %235) #20
  unreachable

236:                                              ; preds = %225, %146
  %237 = phi i32 [ %149, %146 ], [ %226, %225 ]
  %238 = phi ptr [ %148, %146 ], [ %227, %225 ]
  %239 = load ptr, ptr %68, align 8, !tbaa !150
  %240 = load ptr, ptr %70, align 8, !tbaa !152
  %241 = load ptr, ptr %239, align 8, !tbaa !100
  %242 = getelementptr inbounds ptr, ptr %241, i64 3
  %243 = load ptr, ptr %242, align 8
  invoke void %243(ptr noundef nonnull align 8 dereferenceable(8) %239, ptr noundef %240)
          to label %247 unwind label %244

244:                                              ; preds = %236
  %245 = landingpad { ptr, i32 }
          catch ptr null
  %246 = extractvalue { ptr, i32 } %245, 0
  tail call void @__clang_call_terminate(ptr %246) #20
  unreachable

247:                                              ; preds = %236, %142
  %248 = phi i32 [ %145, %142 ], [ %237, %236 ]
  %249 = phi ptr [ %144, %142 ], [ %238, %236 ]
  %250 = load ptr, ptr %56, align 8, !tbaa !150
  %251 = load ptr, ptr %58, align 8, !tbaa !152
  %252 = load ptr, ptr %250, align 8, !tbaa !100
  %253 = getelementptr inbounds ptr, ptr %252, i64 3
  %254 = load ptr, ptr %253, align 8
  invoke void %254(ptr noundef nonnull align 8 dereferenceable(8) %250, ptr noundef %251)
          to label %258 unwind label %255

255:                                              ; preds = %247
  %256 = landingpad { ptr, i32 }
          catch ptr null
  %257 = extractvalue { ptr, i32 } %256, 0
  tail call void @__clang_call_terminate(ptr %257) #20
  unreachable

258:                                              ; preds = %247, %138
  %259 = phi i32 [ %141, %138 ], [ %248, %247 ]
  %260 = phi ptr [ %140, %138 ], [ %249, %247 ]
  %261 = load ptr, ptr %44, align 8, !tbaa !150
  %262 = load ptr, ptr %46, align 8, !tbaa !152
  %263 = load ptr, ptr %261, align 8, !tbaa !100
  %264 = getelementptr inbounds ptr, ptr %263, i64 3
  %265 = load ptr, ptr %264, align 8
  invoke void %265(ptr noundef nonnull align 8 dereferenceable(8) %261, ptr noundef %262)
          to label %269 unwind label %266

266:                                              ; preds = %258
  %267 = landingpad { ptr, i32 }
          catch ptr null
  %268 = extractvalue { ptr, i32 } %267, 0
  tail call void @__clang_call_terminate(ptr %268) #20
  unreachable

269:                                              ; preds = %258, %134
  %270 = phi i32 [ %137, %134 ], [ %259, %258 ]
  %271 = phi ptr [ %136, %134 ], [ %260, %258 ]
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %38) #19
  br label %272

272:                                              ; preds = %269, %130
  %273 = phi i32 [ %270, %269 ], [ %133, %130 ]
  %274 = phi ptr [ %271, %269 ], [ %132, %130 ]
  tail call void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %26) #19
  br label %275

275:                                              ; preds = %272, %126
  %276 = phi i32 [ %273, %272 ], [ %129, %126 ]
  %277 = phi ptr [ %274, %272 ], [ %128, %126 ]
  %278 = insertvalue { ptr, i32 } poison, ptr %277, 0
  %279 = insertvalue { ptr, i32 } %278, i32 %276, 1
  resume { ptr, i32 } %279

280:                                              ; preds = %174
  %281 = landingpad { ptr, i32 }
          catch ptr null
  %282 = extractvalue { ptr, i32 } %281, 0
  tail call void @__clang_call_terminate(ptr %282) #20
  unreachable

283:                                              ; preds = %172
  unreachable
}

declare void @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !156

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !100
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #19, !prof !157
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 40
  %11 = load ptr, ptr %10, align 8, !tbaa !158
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !136

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #19
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %16 = load ptr, ptr %15, align 8, !tbaa !159
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18, !prof !156

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !100
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(16) %16) #19, !prof !160
  br label %22

22:                                               ; preds = %18, %14
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %24 = load ptr, ptr %23, align 8, !tbaa !145
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %26 = load ptr, ptr %25, align 8, !tbaa !161
  %27 = load ptr, ptr %24, align 8, !tbaa !100
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %26), !prof !162
  %30 = load ptr, ptr %23, align 8, !tbaa !145
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %32 = load ptr, ptr %31, align 8, !tbaa !163
  %33 = load ptr, ptr %30, align 8, !tbaa !100
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32), !prof !162
  %36 = load ptr, ptr %23, align 8, !tbaa !145
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %38 = load ptr, ptr %37, align 8, !tbaa !164
  %39 = load ptr, ptr %36, align 8, !tbaa !100
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38), !prof !162
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  br label %51

44:                                               ; preds = %51
  %45 = load ptr, ptr %23, align 8, !tbaa !145
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %47 = load ptr, ptr %46, align 8, !tbaa !165
  %48 = load ptr, ptr %45, align 8, !tbaa !100
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %47), !prof !162
  ret void

51:                                               ; preds = %22, %51
  %52 = phi i32 [ 0, %22 ], [ %61, %51 ]
  %53 = load ptr, ptr %23, align 8, !tbaa !145
  %54 = load ptr, ptr %43, align 8, !tbaa !165
  %55 = zext i32 %52 to i64
  %56 = getelementptr inbounds ptr, ptr %54, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !96
  %58 = load ptr, ptr %53, align 8, !tbaa !100
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %57), !prof !162
  %61 = add i32 %52, 1
  %62 = load i32, ptr %42, align 8, !tbaa !166
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %44, label %51, !prof !136, !llvm.loop !167
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gScannerMutexEv()
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3)
  %4 = load i32, ptr @_ZN11xercesc_2_7L10gScannerIdE, align 4, !tbaa !170
  %5 = add i32 %4, 1
  store i32 %5, ptr @_ZN11xercesc_2_7L10gScannerIdE, align 4, !tbaa !170
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  store i32 %5, ptr %6, align 4, !tbaa !134
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %8)
  %10 = load ptr, ptr %7, align 8, !tbaa !145
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !100
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 1
  store i8 1, ptr %11, align 8, !tbaa !171
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 2
  store i32 0, ptr %12, align 4, !tbaa !173
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 3
  store i32 32, ptr %13, align 8, !tbaa !174
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !175
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 5
  store ptr %10, ptr %15, align 8, !tbaa !176
  %16 = load ptr, ptr %10, align 8, !tbaa !100
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 256)
          to label %20 unwind label %84, !prof !151

20:                                               ; preds = %1
  store ptr %19, ptr %14, align 8, !tbaa !175
  br label %21

21:                                               ; preds = %20, %21
  %22 = phi i64 [ 0, %20 ], [ %25, %21 ]
  %23 = load ptr, ptr %14, align 8, !tbaa !175
  %24 = getelementptr inbounds ptr, ptr %23, i64 %22
  store ptr null, ptr %24, align 8, !tbaa !96
  %25 = add nuw nsw i64 %22, 1
  %26 = icmp eq i64 %25, 32
  br i1 %26, label %27, label %21, !prof !177, !llvm.loop !178

27:                                               ; preds = %21
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %9, align 8, !tbaa !100
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  store ptr %9, ptr %28, align 8, !tbaa !155
  %29 = load ptr, ptr %7, align 8, !tbaa !145
  %30 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %29)
  %31 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %31)
          to label %32 unwind label %86, !prof !136

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  store ptr %30, ptr %33, align 8, !tbaa !159
  %34 = load ptr, ptr %7, align 8, !tbaa !145
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %36 = load i32, ptr %35, align 8, !tbaa !133
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = load ptr, ptr %34, align 8, !tbaa !100
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %38), !prof !151
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  store ptr %42, ptr %43, align 8, !tbaa !165
  %44 = load ptr, ptr %7, align 8, !tbaa !145
  %45 = load ptr, ptr %44, align 8, !tbaa !100
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef 256), !prof !151
  %49 = load ptr, ptr %43, align 8, !tbaa !165
  store ptr %48, ptr %49, align 8, !tbaa !96
  %50 = load ptr, ptr %43, align 8, !tbaa !165
  %51 = load ptr, ptr %50, align 8, !tbaa !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %51, i8 0, i64 256, i1 false)
  %52 = load ptr, ptr %43, align 8, !tbaa !165
  %53 = getelementptr inbounds ptr, ptr %52, i64 1
  store ptr null, ptr %53, align 8, !tbaa !96
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !105
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 5
  br i1 %58, label %69, label %60, !prof !156

60:                                               ; preds = %32
  store ptr %0, ptr %59, align 8, !tbaa !179
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 2
  store i32 %57, ptr %61, align 8, !tbaa !148
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !147
  %64 = icmp ugt i32 %63, %57
  br i1 %64, label %65, label %70, !prof !156

65:                                               ; preds = %60
  store i32 %57, ptr %62, align 4, !tbaa !147
  %66 = load i32, ptr %54, align 8, !tbaa !146
  %67 = icmp ult i32 %66, %57
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %54, i32 noundef 0)
  br label %70

69:                                               ; preds = %32
  store ptr null, ptr %59, align 8, !tbaa !179
  br label %70

70:                                               ; preds = %60, %65, %68, %69
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %72 = load ptr, ptr %71, align 8, !tbaa !137
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74, !prof !136

74:                                               ; preds = %70
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  store i8 1, ptr %75, align 1, !tbaa !180
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %72, i64 0, i32 4
  store ptr %0, ptr %78, align 8, !tbaa !181
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %72, i64 0, i32 3
  store ptr %76, ptr %79, align 8, !tbaa !183
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %72, i64 0, i32 1
  store ptr %77, ptr %80, align 8, !tbaa !184
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %82 = load ptr, ptr %81, align 8, !tbaa !185
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %72, i64 0, i32 2
  store ptr %82, ptr %83, align 8, !tbaa !186
  br label %88

84:                                               ; preds = %1
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %9, ptr noundef %8) #19
  br label %89

86:                                               ; preds = %27
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #19
  br label %89

88:                                               ; preds = %74, %70
  ret void

89:                                               ; preds = %86, %84
  %90 = phi { ptr, i32 } [ %87, %86 ], [ %85, %84 ]
  resume { ptr, i32 } %90
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerC2EPNS_18XMLDocumentHandlerEPNS_14DocTypeHandlerEPNS_16XMLEntityHandlerEPNS_16XMLErrorReporterEPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 1
  store i64 1048576, ptr %9, align 8, !tbaa !105
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 0, ptr %10, align 8, !tbaa !120
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 0, ptr %11, align 1, !tbaa !121
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 0, ptr %12, align 2, !tbaa !122
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 1, ptr %13, align 1, !tbaa !123
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 0, ptr %14, align 4, !tbaa !124
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %15, align 1, !tbaa !125
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %16, align 2, !tbaa !126
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %17, align 1, !tbaa !127
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %18, align 8
  store i8 1, ptr %19, align 4, !tbaa !128
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 0, ptr %20, align 1, !tbaa !129
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 0, ptr %21, align 2, !tbaa !130
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 1, ptr %22, align 1, !tbaa !131
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 1, ptr %23, align 8, !tbaa !132
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 19
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %24, i8 0, i64 6, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %25, i8 0, i64 48, i1 false)
  store i32 2, ptr %26, align 8, !tbaa !133
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  store i32 0, ptr %27, align 4, !tbaa !134
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  store i32 0, ptr %28, align 8, !tbaa !135
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, i8 0, i64 16, i1 false)
  store ptr %1, ptr %30, align 8, !tbaa !187
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %2, ptr %31, align 8, !tbaa !188
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %3, ptr %32, align 8, !tbaa !189
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %4, ptr %33, align 8, !tbaa !185
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %34, i8 0, i64 25, i1 false)
  invoke void @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %35, ptr noundef %7)
          to label %36 unwind label %135

36:                                               ; preds = %8
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %5, ptr %37, align 8, !tbaa !137
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 0, ptr %38, align 8, !tbaa !138
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  store ptr %6, ptr %39, align 8, !tbaa !139
  %40 = getelementptr inbounds %"class.xercesc_2_7::GrammarResolver", ptr %6, i64 0, i32 8
  %41 = load ptr, ptr %40, align 8, !tbaa !140
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLGrammarPool", ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !142
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 53
  store ptr %43, ptr %44, align 8, !tbaa !144
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %45, i8 0, i64 60, i1 false)
  store ptr %7, ptr %46, align 8, !tbaa !145
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  invoke void @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %47, ptr noundef %7)
          to label %48 unwind label %139

48:                                               ; preds = %36
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64
  store i32 0, ptr %49, align 8, !tbaa !146
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 1
  store i32 1023, ptr %50, align 4, !tbaa !147
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 2
  store i32 0, ptr %51, align 8, !tbaa !148
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 3
  store i8 0, ptr %52, align 4, !tbaa !149
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 4
  store ptr %7, ptr %53, align 8, !tbaa !150
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 5
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 0, i64 16, i1 false)
  %56 = load ptr, ptr %7, align 8, !tbaa !100
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %60 unwind label %143

60:                                               ; preds = %48
  store ptr %59, ptr %55, align 8, !tbaa !152
  store i16 0, ptr %59, align 2, !tbaa !153
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65
  store i32 0, ptr %61, align 8, !tbaa !146
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 1
  store i32 1023, ptr %62, align 4, !tbaa !147
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 2
  store i32 0, ptr %63, align 8, !tbaa !148
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 3
  store i8 0, ptr %64, align 4, !tbaa !149
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 4
  store ptr %7, ptr %65, align 8, !tbaa !150
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 5
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %66, i8 0, i64 16, i1 false)
  %68 = load ptr, ptr %7, align 8, !tbaa !100
  %69 = getelementptr inbounds ptr, ptr %68, i64 2
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %72 unwind label %147

72:                                               ; preds = %60
  store ptr %71, ptr %67, align 8, !tbaa !152
  store i16 0, ptr %71, align 2, !tbaa !153
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66
  store i32 0, ptr %73, align 8, !tbaa !146
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 1
  store i32 1023, ptr %74, align 4, !tbaa !147
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 2
  store i32 0, ptr %75, align 8, !tbaa !148
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 3
  store i8 0, ptr %76, align 4, !tbaa !149
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 4
  store ptr %7, ptr %77, align 8, !tbaa !150
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 5
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, i8 0, i64 16, i1 false)
  %80 = load ptr, ptr %7, align 8, !tbaa !100
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %84 unwind label %151

84:                                               ; preds = %72
  store ptr %83, ptr %79, align 8, !tbaa !152
  store i16 0, ptr %83, align 2, !tbaa !153
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %85, align 8, !tbaa !146
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 1
  store i32 1023, ptr %86, align 4, !tbaa !147
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 2
  store i32 0, ptr %87, align 8, !tbaa !148
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 3
  store i8 0, ptr %88, align 4, !tbaa !149
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 4
  store ptr %7, ptr %89, align 8, !tbaa !150
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 5
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %90, i8 0, i64 16, i1 false)
  %92 = load ptr, ptr %7, align 8, !tbaa !100
  %93 = getelementptr inbounds ptr, ptr %92, i64 2
  %94 = load ptr, ptr %93, align 8
  %95 = invoke noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %96 unwind label %155

96:                                               ; preds = %84
  store ptr %95, ptr %91, align 8, !tbaa !152
  store i16 0, ptr %95, align 2, !tbaa !153
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  store i32 0, ptr %97, align 8, !tbaa !146
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 1
  store i32 1023, ptr %98, align 4, !tbaa !147
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 2
  store i32 0, ptr %99, align 8, !tbaa !148
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 3
  store i8 0, ptr %100, align 4, !tbaa !149
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 4
  store ptr %7, ptr %101, align 8, !tbaa !150
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 5
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %102, i8 0, i64 16, i1 false)
  %104 = load ptr, ptr %7, align 8, !tbaa !100
  %105 = getelementptr inbounds ptr, ptr %104, i64 2
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %108 unwind label %159

108:                                              ; preds = %96
  store ptr %107, ptr %103, align 8, !tbaa !152
  store i16 0, ptr %107, align 2, !tbaa !153
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69
  store i32 0, ptr %109, align 8, !tbaa !146
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 1
  store i32 1023, ptr %110, align 4, !tbaa !147
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 2
  store i32 0, ptr %111, align 8, !tbaa !148
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 3
  store i8 0, ptr %112, align 4, !tbaa !149
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 4
  store ptr %7, ptr %113, align 8, !tbaa !150
  %114 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 5
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %114, i8 0, i64 16, i1 false)
  %116 = load ptr, ptr %7, align 8, !tbaa !100
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  %119 = invoke noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %120 unwind label %163

120:                                              ; preds = %108
  store ptr %119, ptr %115, align 8, !tbaa !152
  store i16 0, ptr %119, align 2, !tbaa !153
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70
  store i32 0, ptr %121, align 8, !tbaa !146
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 1
  store i32 1023, ptr %122, align 4, !tbaa !147
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 2
  store i32 0, ptr %123, align 8, !tbaa !148
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 3
  store i8 0, ptr %124, align 4, !tbaa !149
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 4
  store ptr %7, ptr %125, align 8, !tbaa !150
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 5
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %126, i8 0, i64 16, i1 false)
  %128 = load ptr, ptr %7, align 8, !tbaa !100
  %129 = getelementptr inbounds ptr, ptr %128, i64 2
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
          to label %132 unwind label %167

132:                                              ; preds = %120
  store ptr %131, ptr %127, align 8, !tbaa !152
  store i16 0, ptr %131, align 2, !tbaa !153
  %133 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  invoke void @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %133, ptr noundef nonnull %7)
          to label %134 unwind label %171

134:                                              ; preds = %132
  invoke void @_ZN11xercesc_2_710XMLScanner10commonInitEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %188 unwind label %175

135:                                              ; preds = %8
  %136 = landingpad { ptr, i32 }
          cleanup
  %137 = extractvalue { ptr, i32 } %136, 0
  %138 = extractvalue { ptr, i32 } %136, 1
  br label %284

139:                                              ; preds = %36
  %140 = landingpad { ptr, i32 }
          cleanup
  %141 = extractvalue { ptr, i32 } %140, 0
  %142 = extractvalue { ptr, i32 } %140, 1
  br label %281

143:                                              ; preds = %48
  %144 = landingpad { ptr, i32 }
          cleanup
  %145 = extractvalue { ptr, i32 } %144, 0
  %146 = extractvalue { ptr, i32 } %144, 1
  br label %278

147:                                              ; preds = %60
  %148 = landingpad { ptr, i32 }
          cleanup
  %149 = extractvalue { ptr, i32 } %148, 0
  %150 = extractvalue { ptr, i32 } %148, 1
  br label %267

151:                                              ; preds = %72
  %152 = landingpad { ptr, i32 }
          cleanup
  %153 = extractvalue { ptr, i32 } %152, 0
  %154 = extractvalue { ptr, i32 } %152, 1
  br label %256

155:                                              ; preds = %84
  %156 = landingpad { ptr, i32 }
          cleanup
  %157 = extractvalue { ptr, i32 } %156, 0
  %158 = extractvalue { ptr, i32 } %156, 1
  br label %245

159:                                              ; preds = %96
  %160 = landingpad { ptr, i32 }
          cleanup
  %161 = extractvalue { ptr, i32 } %160, 0
  %162 = extractvalue { ptr, i32 } %160, 1
  br label %234

163:                                              ; preds = %108
  %164 = landingpad { ptr, i32 }
          cleanup
  %165 = extractvalue { ptr, i32 } %164, 0
  %166 = extractvalue { ptr, i32 } %164, 1
  br label %223

167:                                              ; preds = %120
  %168 = landingpad { ptr, i32 }
          cleanup
  %169 = extractvalue { ptr, i32 } %168, 0
  %170 = extractvalue { ptr, i32 } %168, 1
  br label %212

171:                                              ; preds = %132
  %172 = landingpad { ptr, i32 }
          cleanup
  %173 = extractvalue { ptr, i32 } %172, 0
  %174 = extractvalue { ptr, i32 } %172, 1
  br label %201

175:                                              ; preds = %134
  %176 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %177 = extractvalue { ptr, i32 } %176, 0
  %178 = extractvalue { ptr, i32 } %176, 1
  %179 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = tail call ptr @__cxa_begin_catch(ptr %177) #19
  invoke void @__cxa_rethrow() #21
          to label %292 unwind label %183

183:                                              ; preds = %181
  %184 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %185 unwind label %289

185:                                              ; preds = %183
  %186 = extractvalue { ptr, i32 } %184, 1
  %187 = extractvalue { ptr, i32 } %184, 0
  br label %189

188:                                              ; preds = %134
  ret void

189:                                              ; preds = %185, %175
  %190 = phi ptr [ null, %185 ], [ @_ZN11xercesc_2_710XMLScanner7cleanUpEv, %175 ]
  %191 = phi ptr [ null, %185 ], [ %0, %175 ]
  %192 = phi i32 [ %186, %185 ], [ %178, %175 ]
  %193 = phi ptr [ %187, %185 ], [ %177, %175 ]
  %194 = icmp eq ptr %191, null
  %195 = or i1 %180, %194
  br i1 %195, label %200, label %196

196:                                              ; preds = %189
  invoke void %190(ptr noundef nonnull align 8 dereferenceable(776) %191)
          to label %200 unwind label %197

197:                                              ; preds = %196
  %198 = landingpad { ptr, i32 }
          catch ptr null
  %199 = extractvalue { ptr, i32 } %198, 0
  tail call void @__clang_call_terminate(ptr %199) #20
  unreachable

200:                                              ; preds = %189, %196
  tail call void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %133) #19
  br label %201

201:                                              ; preds = %200, %171
  %202 = phi i32 [ %192, %200 ], [ %174, %171 ]
  %203 = phi ptr [ %193, %200 ], [ %173, %171 ]
  %204 = load ptr, ptr %125, align 8, !tbaa !150
  %205 = load ptr, ptr %127, align 8, !tbaa !152
  %206 = load ptr, ptr %204, align 8, !tbaa !100
  %207 = getelementptr inbounds ptr, ptr %206, i64 3
  %208 = load ptr, ptr %207, align 8
  invoke void %208(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %205)
          to label %212 unwind label %209

209:                                              ; preds = %201
  %210 = landingpad { ptr, i32 }
          catch ptr null
  %211 = extractvalue { ptr, i32 } %210, 0
  tail call void @__clang_call_terminate(ptr %211) #20
  unreachable

212:                                              ; preds = %201, %167
  %213 = phi i32 [ %170, %167 ], [ %202, %201 ]
  %214 = phi ptr [ %169, %167 ], [ %203, %201 ]
  %215 = load ptr, ptr %113, align 8, !tbaa !150
  %216 = load ptr, ptr %115, align 8, !tbaa !152
  %217 = load ptr, ptr %215, align 8, !tbaa !100
  %218 = getelementptr inbounds ptr, ptr %217, i64 3
  %219 = load ptr, ptr %218, align 8
  invoke void %219(ptr noundef nonnull align 8 dereferenceable(8) %215, ptr noundef %216)
          to label %223 unwind label %220

220:                                              ; preds = %212
  %221 = landingpad { ptr, i32 }
          catch ptr null
  %222 = extractvalue { ptr, i32 } %221, 0
  tail call void @__clang_call_terminate(ptr %222) #20
  unreachable

223:                                              ; preds = %212, %163
  %224 = phi i32 [ %166, %163 ], [ %213, %212 ]
  %225 = phi ptr [ %165, %163 ], [ %214, %212 ]
  %226 = load ptr, ptr %101, align 8, !tbaa !150
  %227 = load ptr, ptr %103, align 8, !tbaa !152
  %228 = load ptr, ptr %226, align 8, !tbaa !100
  %229 = getelementptr inbounds ptr, ptr %228, i64 3
  %230 = load ptr, ptr %229, align 8
  invoke void %230(ptr noundef nonnull align 8 dereferenceable(8) %226, ptr noundef %227)
          to label %234 unwind label %231

231:                                              ; preds = %223
  %232 = landingpad { ptr, i32 }
          catch ptr null
  %233 = extractvalue { ptr, i32 } %232, 0
  tail call void @__clang_call_terminate(ptr %233) #20
  unreachable

234:                                              ; preds = %223, %159
  %235 = phi i32 [ %162, %159 ], [ %224, %223 ]
  %236 = phi ptr [ %161, %159 ], [ %225, %223 ]
  %237 = load ptr, ptr %89, align 8, !tbaa !150
  %238 = load ptr, ptr %91, align 8, !tbaa !152
  %239 = load ptr, ptr %237, align 8, !tbaa !100
  %240 = getelementptr inbounds ptr, ptr %239, i64 3
  %241 = load ptr, ptr %240, align 8
  invoke void %241(ptr noundef nonnull align 8 dereferenceable(8) %237, ptr noundef %238)
          to label %245 unwind label %242

242:                                              ; preds = %234
  %243 = landingpad { ptr, i32 }
          catch ptr null
  %244 = extractvalue { ptr, i32 } %243, 0
  tail call void @__clang_call_terminate(ptr %244) #20
  unreachable

245:                                              ; preds = %234, %155
  %246 = phi i32 [ %158, %155 ], [ %235, %234 ]
  %247 = phi ptr [ %157, %155 ], [ %236, %234 ]
  %248 = load ptr, ptr %77, align 8, !tbaa !150
  %249 = load ptr, ptr %79, align 8, !tbaa !152
  %250 = load ptr, ptr %248, align 8, !tbaa !100
  %251 = getelementptr inbounds ptr, ptr %250, i64 3
  %252 = load ptr, ptr %251, align 8
  invoke void %252(ptr noundef nonnull align 8 dereferenceable(8) %248, ptr noundef %249)
          to label %256 unwind label %253

253:                                              ; preds = %245
  %254 = landingpad { ptr, i32 }
          catch ptr null
  %255 = extractvalue { ptr, i32 } %254, 0
  tail call void @__clang_call_terminate(ptr %255) #20
  unreachable

256:                                              ; preds = %245, %151
  %257 = phi i32 [ %154, %151 ], [ %246, %245 ]
  %258 = phi ptr [ %153, %151 ], [ %247, %245 ]
  %259 = load ptr, ptr %65, align 8, !tbaa !150
  %260 = load ptr, ptr %67, align 8, !tbaa !152
  %261 = load ptr, ptr %259, align 8, !tbaa !100
  %262 = getelementptr inbounds ptr, ptr %261, i64 3
  %263 = load ptr, ptr %262, align 8
  invoke void %263(ptr noundef nonnull align 8 dereferenceable(8) %259, ptr noundef %260)
          to label %267 unwind label %264

264:                                              ; preds = %256
  %265 = landingpad { ptr, i32 }
          catch ptr null
  %266 = extractvalue { ptr, i32 } %265, 0
  tail call void @__clang_call_terminate(ptr %266) #20
  unreachable

267:                                              ; preds = %256, %147
  %268 = phi i32 [ %150, %147 ], [ %257, %256 ]
  %269 = phi ptr [ %149, %147 ], [ %258, %256 ]
  %270 = load ptr, ptr %53, align 8, !tbaa !150
  %271 = load ptr, ptr %55, align 8, !tbaa !152
  %272 = load ptr, ptr %270, align 8, !tbaa !100
  %273 = getelementptr inbounds ptr, ptr %272, i64 3
  %274 = load ptr, ptr %273, align 8
  invoke void %274(ptr noundef nonnull align 8 dereferenceable(8) %270, ptr noundef %271)
          to label %278 unwind label %275

275:                                              ; preds = %267
  %276 = landingpad { ptr, i32 }
          catch ptr null
  %277 = extractvalue { ptr, i32 } %276, 0
  tail call void @__clang_call_terminate(ptr %277) #20
  unreachable

278:                                              ; preds = %267, %143
  %279 = phi i32 [ %146, %143 ], [ %268, %267 ]
  %280 = phi ptr [ %145, %143 ], [ %269, %267 ]
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %47) #19
  br label %281

281:                                              ; preds = %278, %139
  %282 = phi i32 [ %279, %278 ], [ %142, %139 ]
  %283 = phi ptr [ %280, %278 ], [ %141, %139 ]
  tail call void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %35) #19
  br label %284

284:                                              ; preds = %281, %135
  %285 = phi i32 [ %282, %281 ], [ %138, %135 ]
  %286 = phi ptr [ %283, %281 ], [ %137, %135 ]
  %287 = insertvalue { ptr, i32 } poison, ptr %286, 0
  %288 = insertvalue { ptr, i32 } %287, i32 %285, 1
  resume { ptr, i32 } %288

289:                                              ; preds = %183
  %290 = landingpad { ptr, i32 }
          catch ptr null
  %291 = extractvalue { ptr, i32 } %290, 0
  tail call void @__clang_call_terminate(ptr %291) #20
  unreachable

292:                                              ; preds = %181
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(776) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xercesc_2_710XMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_710XMLScanner7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %2 unwind label %83, !prof !136

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  tail call void @_ZN11xercesc_2_79ElemStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %3) #19
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 70, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !152
  %8 = load ptr, ptr %5, align 8, !tbaa !100
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %7)
          to label %14 unwind label %11, !prof !162

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #20
  unreachable

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 69, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = load ptr, ptr %16, align 8, !tbaa !100
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %18)
          to label %25 unwind label %22, !prof !162

22:                                               ; preds = %14
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #20
  unreachable

25:                                               ; preds = %14
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !152
  %30 = load ptr, ptr %27, align 8, !tbaa !100
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29)
          to label %36 unwind label %33, !prof !162

33:                                               ; preds = %25
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #20
  unreachable

36:                                               ; preds = %25
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !150
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !152
  %41 = load ptr, ptr %38, align 8, !tbaa !100
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40)
          to label %47 unwind label %44, !prof !162

44:                                               ; preds = %36
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #20
  unreachable

47:                                               ; preds = %36
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !150
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 66, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !152
  %52 = load ptr, ptr %49, align 8, !tbaa !100
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
          to label %58 unwind label %55, !prof !162

55:                                               ; preds = %47
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #20
  unreachable

58:                                               ; preds = %47
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !150
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 65, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !152
  %63 = load ptr, ptr %60, align 8, !tbaa !100
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %62)
          to label %69 unwind label %66, !prof !162

66:                                               ; preds = %58
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #20
  unreachable

69:                                               ; preds = %58
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 4
  %71 = load ptr, ptr %70, align 8, !tbaa !150
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 64, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !152
  %74 = load ptr, ptr %71, align 8, !tbaa !100
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %73)
          to label %80 unwind label %77, !prof !162

77:                                               ; preds = %69
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  tail call void @__clang_call_terminate(ptr %79) #20
  unreachable

80:                                               ; preds = %69
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  tail call void @_ZN11xercesc_2_712XMLBufferMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %81) #19
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgrD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %82) #19
  ret void

83:                                               ; preds = %1
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  tail call void @__clang_call_terminate(ptr %85) #20
  unreachable
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_710XMLScannerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !95 {
  tail call void @llvm.trap() #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner12setValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !95 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 11
  %4 = load i8, ptr %3, align 1, !tbaa !180, !range !190, !noundef !191
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !100
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(40) %8) #19
  br label %14

14:                                               ; preds = %6, %10, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  store ptr %1, ptr %15, align 8, !tbaa !137
  store i8 1, ptr %3, align 1, !tbaa !180
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 4
  store ptr %0, ptr %18, align 8, !tbaa !181
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 3
  store ptr %16, ptr %19, align 8, !tbaa !183
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !184
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %22 = load ptr, ptr %21, align 8, !tbaa !185
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 2
  store ptr %22, ptr %23, align 8, !tbaa !186
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner13initValidatorEPNS_12XMLValidatorE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 align 2 !prof !192 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 4
  store ptr %0, ptr %5, align 8, !tbaa !181
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 3
  store ptr %3, ptr %6, align 8, !tbaa !183
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 1
  store ptr %4, ptr %7, align 8, !tbaa !184
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %9 = load ptr, ptr %8, align 8, !tbaa !185
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !186
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %4 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %5 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %6 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #19
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %8)
          to label %9 unwind label %24

9:                                                ; preds = %2
  %10 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(81) %3)
          to label %11 unwind label %26

11:                                               ; preds = %9
  br i1 %10, label %12, label %67

12:                                               ; preds = %11
  %13 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %3)
          to label %14 unwind label %26

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %16 = load i8, ptr %15, align 8, !tbaa !120, !range !190, !noundef !191
  %17 = icmp eq i8 %16, 0
  br i1 %13, label %18, label %43

18:                                               ; preds = %14
  br i1 %17, label %19, label %30

19:                                               ; preds = %18
  %20 = load ptr, ptr %7, align 8, !tbaa !145
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %20)
          to label %22 unwind label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %21, ptr noundef %1, ptr noundef %23)
          to label %91 unwind label %28

24:                                               ; preds = %2
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %96

26:                                               ; preds = %71, %60, %44, %19, %12, %9
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %94

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #19
  br label %94

30:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #19
  %31 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str, i32 noundef 376, i32 noundef 103, ptr noundef %31)
          to label %32 unwind label %37

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %33, align 1, !tbaa !125
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %4, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %35, ptr noundef null, ptr noundef null)
          to label %36 unwind label %39

36:                                               ; preds = %32
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #19
  br label %91

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %41

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4) #19
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #19
  br label %94

43:                                               ; preds = %14
  br i1 %17, label %60, label %44

44:                                               ; preds = %43
  %45 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %3)
          to label %46 unwind label %26

46:                                               ; preds = %44
  br i1 %45, label %47, label %60

47:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #19
  %48 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 99, ptr noundef %48)
          to label %49 unwind label %54

49:                                               ; preds = %47
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %50, align 1, !tbaa !125
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %5, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %52, ptr noundef null, ptr noundef null)
          to label %53 unwind label %56

53:                                               ; preds = %49
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #19
  br label %91

54:                                               ; preds = %47
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %58

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #19
  br label %94

60:                                               ; preds = %46, %43
  %61 = load ptr, ptr %7, align 8, !tbaa !145
  %62 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %61)
          to label %63 unwind label %26

63:                                               ; preds = %60
  %64 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %62, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr noundef %64)
          to label %91 unwind label %65

65:                                               ; preds = %63
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %62, ptr noundef %61) #19
  br label %94

67:                                               ; preds = %11
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %69 = load i8, ptr %68, align 8, !tbaa !120, !range !190, !noundef !191
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load ptr, ptr %7, align 8, !tbaa !145
  %73 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %72)
          to label %74 unwind label %26

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %73, ptr noundef %1, ptr noundef %75)
          to label %91 unwind label %76

76:                                               ; preds = %74
  %77 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %73, ptr noundef %72) #19
  br label %94

78:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #19
  %79 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 411, i32 noundef 99, ptr noundef %79)
          to label %80 unwind label %85

80:                                               ; preds = %78
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %81, align 1, !tbaa !125
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %6, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %83, ptr noundef null, ptr noundef null)
          to label %84 unwind label %87

84:                                               ; preds = %80
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  br label %91

85:                                               ; preds = %78
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %89

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #19
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  br label %94

91:                                               ; preds = %22, %63, %74, %84, %53, %36
  %92 = phi i1 [ false, %36 ], [ false, %53 ], [ false, %84 ], [ true, %74 ], [ true, %63 ], [ true, %22 ]
  %93 = phi ptr [ null, %36 ], [ null, %53 ], [ null, %84 ], [ %73, %74 ], [ %62, %63 ], [ %21, %22 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #19
  br i1 %92, label %135, label %145

94:                                               ; preds = %89, %76, %65, %58, %41, %28, %26
  %95 = phi { ptr, i32 } [ %42, %41 ], [ %29, %28 ], [ %27, %26 ], [ %59, %58 ], [ %66, %65 ], [ %90, %89 ], [ %77, %76 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %3) #19
  br label %96

96:                                               ; preds = %94, %24
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %25, %24 ]
  %98 = extractvalue { ptr, i32 } %97, 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #19
  %99 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %153

101:                                              ; preds = %96
  %102 = extractvalue { ptr, i32 } %97, 0
  %103 = call ptr @__cxa_begin_catch(ptr %102) #19
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %104, align 1, !tbaa !125
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !196
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load ptr, ptr %103, align 8, !tbaa !100
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %129 unwind label %114

114:                                              ; preds = %129, %127, %125, %109
  %115 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %153 unwind label %155

116:                                              ; preds = %101
  %117 = add i32 %106, -5
  %118 = icmp ult i32 %117, 397
  %119 = and i32 %106, -2
  %120 = icmp ne i32 %119, 402
  %121 = or i1 %118, %120
  %122 = load ptr, ptr %103, align 8, !tbaa !100
  %123 = getelementptr inbounds ptr, ptr %122, i64 2
  %124 = load ptr, ptr %123, align 8
  br i1 %121, label %125, label %127

125:                                              ; preds = %116
  %126 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %129 unwind label %114

127:                                              ; preds = %116
  %128 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %129 unwind label %114

129:                                              ; preds = %127, %125, %109
  %130 = phi i32 [ 7, %109 ], [ 292, %125 ], [ 157, %127 ]
  %131 = phi ptr [ %113, %109 ], [ %126, %125 ], [ %128, %127 ]
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %130, ptr noundef %131, ptr noundef %133, ptr noundef null, ptr noundef null)
          to label %134 unwind label %114

134:                                              ; preds = %129
  call void @__cxa_end_catch()
  br label %145

135:                                              ; preds = %91
  %136 = load ptr, ptr %0, align 8, !tbaa !100
  %137 = getelementptr inbounds ptr, ptr %136, i64 8
  %138 = load ptr, ptr %137, align 8
  invoke void %138(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %93)
          to label %139 unwind label %146

139:                                              ; preds = %135
  %140 = icmp eq ptr %93, null
  br i1 %140, label %145, label %141

141:                                              ; preds = %139
  %142 = load ptr, ptr %93, align 8, !tbaa !100
  %143 = getelementptr inbounds ptr, ptr %142, i64 1
  %144 = load ptr, ptr %143, align 8
  call void %144(ptr noundef nonnull align 8 dereferenceable(41) %93) #19
  br label %145

145:                                              ; preds = %141, %139, %91, %134
  ret void

146:                                              ; preds = %135
  %147 = landingpad { ptr, i32 }
          cleanup
  %148 = icmp eq ptr %93, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr %93, align 8, !tbaa !100
  %151 = getelementptr inbounds ptr, ptr %150, i64 1
  %152 = load ptr, ptr %151, align 8
  call void %152(ptr noundef nonnull align 8 dereferenceable(41) %93) #19
  br label %153

153:                                              ; preds = %114, %149, %146, %96
  %154 = phi { ptr, i32 } [ %97, %96 ], [ %147, %146 ], [ %147, %149 ], [ %115, %114 ]
  resume { ptr, i32 } %154

155:                                              ; preds = %114
  %156 = landingpad { ptr, i32 }
          catch ptr null
  %157 = extractvalue { ptr, i32 } %156, 0
  call void @__clang_call_terminate(ptr %157) #20
  unreachable
}

declare void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 align 2 !prof !95 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = add i32 %1, -1
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !197
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !197
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #19
  %20 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv()
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = load ptr, ptr %20, align 8, !tbaa !100
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %22)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %28 = load ptr, ptr %16, align 8, !tbaa !185
  br i1 %10, label %36, label %29

29:                                               ; preds = %19
  %30 = add i32 %1, -171
  %31 = icmp ult i32 %30, 141
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = add i32 %1, -9
  %34 = icmp ult i32 %33, 162
  %35 = select i1 %34, i32 1, i32 3
  br label %36

36:                                               ; preds = %19, %29, %32
  %37 = phi i32 [ 0, %19 ], [ 2, %29 ], [ %35, %32 ]
  %38 = load ptr, ptr %8, align 8, !tbaa !198
  %39 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !200
  %41 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !201
  %43 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !202
  %45 = load ptr, ptr %28, align 8, !tbaa !100
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef %37, ptr noundef nonnull %7, ptr noundef %38, ptr noundef %40, i64 noundef %42, i64 noundef %44)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #19
  br label %48

48:                                               ; preds = %36, %15
  %49 = add i32 %1, -171
  %50 = icmp ult i32 %49, 141
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %52 = load i8, ptr %51, align 1, !range !190
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %50, i1 %53, i1 false
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %56 = load i8, ptr %55, align 1, !range !190
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %54, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call ptr @__cxa_allocate_exception(i64 4) #19
  store i32 %1, ptr %60, align 16, !tbaa !203
  call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #21
  unreachable

61:                                               ; preds = %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

declare noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(81), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKc(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %7 = load ptr, ptr %4, align 8, !tbaa !145
  store ptr %6, ptr %3, align 8, !tbaa !205
  %8 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !207
  invoke void @_ZN11xercesc_2_710XMLScanner12scanDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %6)
          to label %9 unwind label %10

9:                                                ; preds = %2
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  resume { ptr, i32 } %11
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !205
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !209

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !207
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !210

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !100
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !211

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #22
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %4 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %5 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %6 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %7 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %9 = load ptr, ptr %8, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef %9)
          to label %10 unwind label %25

10:                                               ; preds = %3
  %11 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(81) %4)
          to label %12 unwind label %27

12:                                               ; preds = %10
  br i1 %11, label %13, label %68

13:                                               ; preds = %12
  %14 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %4)
          to label %15 unwind label %27

15:                                               ; preds = %13
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %17 = load i8, ptr %16, align 8, !tbaa !120, !range !190, !noundef !191
  %18 = icmp eq i8 %17, 0
  br i1 %14, label %19, label %44

19:                                               ; preds = %15
  br i1 %18, label %20, label %31

20:                                               ; preds = %19
  %21 = load ptr, ptr %8, align 8, !tbaa !145
  %22 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %21)
          to label %23 unwind label %27

23:                                               ; preds = %20
  %24 = load ptr, ptr %8, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %22, ptr noundef %1, ptr noundef %24)
          to label %91 unwind label %29

25:                                               ; preds = %3
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %96

27:                                               ; preds = %72, %61, %45, %20, %13, %10
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %94

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %21) #19
  br label %94

31:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #19
  %32 = load ptr, ptr %8, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 489, i32 noundef 103, ptr noundef %32)
          to label %33 unwind label %38

33:                                               ; preds = %31
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %34, align 1, !tbaa !125
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %5, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %36, ptr noundef null, ptr noundef null)
          to label %37 unwind label %40

37:                                               ; preds = %33
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #19
  br label %91

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %42

40:                                               ; preds = %33
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #19
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #19
  br label %94

44:                                               ; preds = %15
  br i1 %18, label %61, label %45

45:                                               ; preds = %44
  %46 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %4)
          to label %47 unwind label %27

47:                                               ; preds = %45
  br i1 %46, label %48, label %61

48:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #19
  %49 = load ptr, ptr %8, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 503, i32 noundef 99, ptr noundef %49)
          to label %50 unwind label %55

50:                                               ; preds = %48
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %51, align 1, !tbaa !125
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %6, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %53, ptr noundef null, ptr noundef null)
          to label %54 unwind label %57

54:                                               ; preds = %50
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  br label %91

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %59

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #19
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  br label %94

61:                                               ; preds = %47, %44
  %62 = load ptr, ptr %8, align 8, !tbaa !145
  %63 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %62)
          to label %64 unwind label %27

64:                                               ; preds = %61
  %65 = load ptr, ptr %8, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %63, ptr noundef nonnull align 8 dereferenceable(81) %4, ptr noundef %65)
          to label %91 unwind label %66

66:                                               ; preds = %64
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %63, ptr noundef %62) #19
  br label %94

68:                                               ; preds = %12
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %70 = load i8, ptr %69, align 8, !tbaa !120, !range !190, !noundef !191
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %68
  %73 = load ptr, ptr %8, align 8, !tbaa !145
  %74 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %73)
          to label %75 unwind label %27

75:                                               ; preds = %72
  %76 = load ptr, ptr %8, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %74, ptr noundef %1, ptr noundef %76)
          to label %91 unwind label %77

77:                                               ; preds = %75
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %74, ptr noundef %73) #19
  br label %94

79:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #19
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 523, i32 noundef 99, ptr noundef null)
          to label %80 unwind label %85

80:                                               ; preds = %79
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %81, align 1, !tbaa !125
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %7, i64 0, i32 4
  %83 = load ptr, ptr %82, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %83, ptr noundef null, ptr noundef null)
          to label %84 unwind label %87

84:                                               ; preds = %80
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #19
  br label %91

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %89

87:                                               ; preds = %80
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #19
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #19
  br label %94

91:                                               ; preds = %23, %64, %75, %84, %54, %37
  %92 = phi ptr [ null, %37 ], [ null, %54 ], [ null, %84 ], [ %22, %23 ], [ %63, %64 ], [ %74, %75 ]
  %93 = phi i1 [ false, %37 ], [ false, %54 ], [ false, %84 ], [ true, %23 ], [ true, %64 ], [ true, %75 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #19
  br i1 %93, label %135, label %148

94:                                               ; preds = %89, %77, %66, %59, %42, %29, %27
  %95 = phi { ptr, i32 } [ %43, %42 ], [ %30, %29 ], [ %28, %27 ], [ %60, %59 ], [ %67, %66 ], [ %90, %89 ], [ %78, %77 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %4) #19
  br label %96

96:                                               ; preds = %94, %25
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %26, %25 ]
  %98 = extractvalue { ptr, i32 } %97, 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #19
  %99 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %150

101:                                              ; preds = %96
  %102 = extractvalue { ptr, i32 } %97, 0
  %103 = call ptr @__cxa_begin_catch(ptr %102) #19
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %104, align 1, !tbaa !125
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !196
  %107 = add i32 %106, -1
  %108 = icmp ult i32 %107, 4
  br i1 %108, label %109, label %116

109:                                              ; preds = %101
  %110 = load ptr, ptr %103, align 8, !tbaa !100
  %111 = getelementptr inbounds ptr, ptr %110, i64 2
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %129 unwind label %114

114:                                              ; preds = %129, %127, %125, %109
  %115 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %150 unwind label %152

116:                                              ; preds = %101
  %117 = add i32 %106, -5
  %118 = icmp ult i32 %117, 397
  %119 = and i32 %106, -2
  %120 = icmp ne i32 %119, 402
  %121 = or i1 %118, %120
  %122 = load ptr, ptr %103, align 8, !tbaa !100
  %123 = getelementptr inbounds ptr, ptr %122, i64 2
  %124 = load ptr, ptr %123, align 8
  br i1 %121, label %125, label %127

125:                                              ; preds = %116
  %126 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %129 unwind label %114

127:                                              ; preds = %116
  %128 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(48) %103)
          to label %129 unwind label %114

129:                                              ; preds = %127, %125, %109
  %130 = phi i32 [ 7, %109 ], [ 292, %125 ], [ 157, %127 ]
  %131 = phi ptr [ %113, %109 ], [ %126, %125 ], [ %128, %127 ]
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %103, i64 0, i32 4
  %133 = load ptr, ptr %132, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %130, ptr noundef %131, ptr noundef %133, ptr noundef null, ptr noundef null)
          to label %134 unwind label %114

134:                                              ; preds = %129
  call void @__cxa_end_catch()
  br label %148

135:                                              ; preds = %91
  %136 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %92, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %137 unwind label %141

137:                                              ; preds = %135
  %138 = load ptr, ptr %92, align 8, !tbaa !100
  %139 = getelementptr inbounds ptr, ptr %138, i64 1
  %140 = load ptr, ptr %139, align 8
  call void %140(ptr noundef nonnull align 8 dereferenceable(41) %92) #19
  br label %148

141:                                              ; preds = %135
  %142 = landingpad { ptr, i32 }
          cleanup
  %143 = icmp eq ptr %92, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr %92, align 8, !tbaa !100
  %146 = getelementptr inbounds ptr, ptr %145, i64 1
  %147 = load ptr, ptr %146, align 8
  call void %147(ptr noundef nonnull align 8 dereferenceable(41) %92) #19
  br label %150

148:                                              ; preds = %91, %137, %134
  %149 = phi i1 [ %136, %137 ], [ false, %91 ], [ false, %134 ]
  ret i1 %149

150:                                              ; preds = %114, %144, %141, %96
  %151 = phi { ptr, i32 } [ %97, %96 ], [ %142, %141 ], [ %142, %144 ], [ %115, %114 ]
  resume { ptr, i32 } %151

152:                                              ; preds = %114
  %153 = landingpad { ptr, i32 }
          catch ptr null
  %154 = extractvalue { ptr, i32 } %153, 0
  call void @__clang_call_terminate(ptr %154) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstERKNS_11InputSourceERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %5 = load i32, ptr %4, align 8, !tbaa !135
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !135
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %8 = load ptr, ptr %0, align 8, !tbaa !100
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  invoke void %10(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %11 unwind label %19

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %13 = load ptr, ptr %12, align 8, !tbaa !187
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !100
  %17 = getelementptr inbounds ptr, ptr %16, i64 10
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %23 unwind label %19

19:                                               ; preds = %15, %3
  %20 = landingpad { ptr, i32 }
          cleanup
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  br label %124

23:                                               ; preds = %15, %11
  invoke void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %24 unwind label %28

24:                                               ; preds = %23
  %25 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80) %7)
          to label %26 unwind label %28

26:                                               ; preds = %24
  br i1 %25, label %27, label %108

27:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 279)
          to label %108 unwind label %28

28:                                               ; preds = %27, %24, %23
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_77XMLErrs5CodesE
          catch ptr @_ZTIN11xercesc_2_78XMLValid5CodesE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %30 = extractvalue { ptr, i32 } %29, 0
  %31 = extractvalue { ptr, i32 } %29, 1
  %32 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE) #19
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = tail call ptr @__cxa_begin_catch(ptr %30) #19
  tail call void @__cxa_end_catch() #19
  br label %113

36:                                               ; preds = %28
  %37 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_78XMLValid5CodesE) #19
  %38 = icmp eq i32 %31, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = tail call ptr @__cxa_begin_catch(ptr %30) #19
  tail call void @__cxa_end_catch() #19
  br label %113

41:                                               ; preds = %36
  %42 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %43 = icmp eq i32 %31, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = tail call ptr @__cxa_begin_catch(ptr %30) #19
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %46, align 1, !tbaa !125
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %45, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !196
  %49 = add i32 %48, -1
  %50 = icmp ult i32 %49, 4
  br i1 %50, label %51, label %75

51:                                               ; preds = %44
  %52 = load ptr, ptr %45, align 8, !tbaa !100
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(48) %45)
          to label %88 unwind label %66

56:                                               ; preds = %41
  %57 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %58 = icmp eq i32 %31, %57
  br i1 %58, label %59, label %124

59:                                               ; preds = %56
  %60 = tail call ptr @__cxa_begin_catch(ptr %30) #19
  invoke void @__cxa_rethrow() #21
          to label %143 unwind label %61

61:                                               ; preds = %59
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %63 unwind label %140

63:                                               ; preds = %61
  %64 = extractvalue { ptr, i32 } %62, 1
  %65 = extractvalue { ptr, i32 } %62, 0
  br label %124

66:                                               ; preds = %88, %86, %84, %51
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %68 = extractvalue { ptr, i32 } %67, 0
  %69 = extractvalue { ptr, i32 } %67, 1
  %70 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #19
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %103

72:                                               ; preds = %66
  %73 = tail call ptr @__cxa_begin_catch(ptr %68) #19
  invoke void @__cxa_rethrow() #21
          to label %74 unwind label %93

74:                                               ; preds = %72
  unreachable

75:                                               ; preds = %44
  %76 = add i32 %48, -5
  %77 = icmp ult i32 %76, 397
  %78 = and i32 %48, -2
  %79 = icmp ne i32 %78, 402
  %80 = or i1 %77, %79
  %81 = load ptr, ptr %45, align 8, !tbaa !100
  %82 = getelementptr inbounds ptr, ptr %81, i64 2
  %83 = load ptr, ptr %82, align 8
  br i1 %80, label %84, label %86

84:                                               ; preds = %75
  %85 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(48) %45)
          to label %88 unwind label %66

86:                                               ; preds = %75
  %87 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(48) %45)
          to label %88 unwind label %66

88:                                               ; preds = %86, %84, %51
  %89 = phi i32 [ 7, %51 ], [ 292, %84 ], [ 157, %86 ]
  %90 = phi ptr [ %55, %51 ], [ %85, %84 ], [ %87, %86 ]
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %45, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %89, ptr noundef %90, ptr noundef %92, ptr noundef null, ptr noundef null)
          to label %98 unwind label %66

93:                                               ; preds = %72
  %94 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %95 unwind label %140

95:                                               ; preds = %93
  %96 = extractvalue { ptr, i32 } %94, 1
  %97 = extractvalue { ptr, i32 } %94, 0
  br label %103

98:                                               ; preds = %88
  invoke void @__cxa_end_catch()
          to label %113 unwind label %99

99:                                               ; preds = %98
  %100 = landingpad { ptr, i32 }
          cleanup
  %101 = extractvalue { ptr, i32 } %100, 0
  %102 = extractvalue { ptr, i32 } %100, 1
  br label %124

103:                                              ; preds = %95, %66
  %104 = phi i64 [ 0, %95 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %66 ]
  %105 = phi ptr [ null, %95 ], [ %7, %66 ]
  %106 = phi i32 [ %96, %95 ], [ %69, %66 ]
  %107 = phi ptr [ %97, %95 ], [ %68, %66 ]
  invoke void @__cxa_end_catch()
          to label %124 unwind label %140

108:                                              ; preds = %26, %27
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  %110 = load i32, ptr %109, align 4, !tbaa !134
  %111 = load i32, ptr %4, align 8, !tbaa !135
  store i32 %110, ptr %2, align 4, !tbaa !212
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLPScanToken", ptr %2, i64 0, i32 1
  store i32 %111, ptr %112, align 4, !tbaa !214
  br label %113

113:                                              ; preds = %98, %108, %34, %39
  %114 = phi ptr [ null, %108 ], [ @_ZN11xercesc_2_79ReaderMgr5resetEv, %34 ], [ @_ZN11xercesc_2_79ReaderMgr5resetEv, %39 ], [ @_ZN11xercesc_2_79ReaderMgr5resetEv, %98 ]
  %115 = phi ptr [ null, %108 ], [ %7, %34 ], [ %7, %39 ], [ %7, %98 ]
  %116 = phi i1 [ true, %108 ], [ false, %34 ], [ false, %39 ], [ false, %98 ]
  %117 = icmp eq ptr %115, null
  %118 = or i1 %117, %116
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(80) %115)
          to label %123 unwind label %120

120:                                              ; preds = %119
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  tail call void @__clang_call_terminate(ptr %122) #20
  unreachable

123:                                              ; preds = %113, %119
  ret i1 %116

124:                                              ; preds = %103, %99, %63, %56, %19
  %125 = phi i64 [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %99 ], [ 0, %63 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %56 ], [ ptrtoint (ptr @_ZN11xercesc_2_79ReaderMgr5resetEv to i64), %19 ], [ %104, %103 ]
  %126 = phi ptr [ %7, %99 ], [ null, %63 ], [ %7, %56 ], [ %7, %19 ], [ %105, %103 ]
  %127 = phi i32 [ %102, %99 ], [ %64, %63 ], [ %31, %56 ], [ %22, %19 ], [ %106, %103 ]
  %128 = phi ptr [ %101, %99 ], [ %65, %63 ], [ %30, %56 ], [ %21, %19 ], [ %107, %103 ]
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
  tail call void @__clang_call_terminate(ptr %136) #20
  unreachable

137:                                              ; preds = %124, %132
  %138 = insertvalue { ptr, i32 } poison, ptr %128, 0
  %139 = insertvalue { ptr, i32 } %138, i32 %127, 1
  resume { ptr, i32 } %139

140:                                              ; preds = %103, %93, %61
  %141 = landingpad { ptr, i32 }
          catch ptr null
  %142 = extractvalue { ptr, i32 } %141, 0
  tail call void @__clang_call_terminate(ptr %142) #20
  unreachable

143:                                              ; preds = %59
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKcRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(8) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %6 = load ptr, ptr %5, align 8, !tbaa !145
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %6)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %8 = load ptr, ptr %5, align 8, !tbaa !145
  store ptr %7, ptr %4, align 8, !tbaa !205
  %9 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %4, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !207
  %10 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner9scanFirstEPKtRNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %11 unwind label %12

11:                                               ; preds = %3
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret i1 %10

12:                                               ; preds = %3
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  resume { ptr, i32 } %13
}

declare void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80)) #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner10scanPrologEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %5

5:                                                ; preds = %96, %1
  %6 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %7 unwind label %25, !prof !215

7:                                                ; preds = %5
  %8 = icmp eq i16 %6, 60
  br i1 %8, label %9, label %70, !prof !216

9:                                                ; preds = %7
  %10 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %11 unwind label %25, !prof !217

11:                                               ; preds = %9
  br i1 %10, label %12, label %30, !prof !218

12:                                               ; preds = %11
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %14, i64 0, i32 6
  %16 = load i64, ptr %15, align 8, !tbaa !220
  %17 = icmp eq i64 %16, 1
  br i1 %17, label %18, label %22, !prof !226

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %14, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !227
  %21 = icmp eq i64 %20, 7
  br i1 %21, label %29, label %22, !prof !226

22:                                               ; preds = %18, %12
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 284)
          to label %29 unwind label %27

23:                                               ; preds = %100
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %103

25:                                               ; preds = %5, %9, %35, %40, %45, %53, %61, %83, %84, %94, %97, %30, %36, %41
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %103

27:                                               ; preds = %29, %22
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %103

29:                                               ; preds = %22, %18
  invoke void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 1)
          to label %96 unwind label %27, !prof !226

30:                                               ; preds = %11
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgPIStringE)
          to label %34 unwind label %25, !prof !136

34:                                               ; preds = %30
  br i1 %33, label %35, label %36, !prof !156

35:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %96 unwind label %25

36:                                               ; preds = %34
  %37 = load ptr, ptr %31, align 8, !tbaa !219
  %38 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %37, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE)
          to label %39 unwind label %25, !prof !136

39:                                               ; preds = %36
  br i1 %38, label %40, label %41, !prof !156

40:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %96 unwind label %25

41:                                               ; preds = %39
  %42 = load ptr, ptr %31, align 8, !tbaa !219
  %43 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %42, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgDocTypeStringE)
          to label %44 unwind label %25, !prof !136

44:                                               ; preds = %41
  br i1 %43, label %45, label %112, !prof !156

45:                                               ; preds = %44
  %46 = load ptr, ptr %0, align 8, !tbaa !100
  %47 = getelementptr inbounds ptr, ptr %46, i64 14
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %49 unwind label %25

49:                                               ; preds = %45
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %51 = load i8, ptr %50, align 8, !tbaa !228, !range !190, !noundef !191
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %55 = load ptr, ptr %54, align 8, !tbaa !229
  %56 = load ptr, ptr %55, align 8, !tbaa !100
  %57 = getelementptr inbounds ptr, ptr %56, i64 7
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(8) %55)
          to label %60 unwind label %25

60:                                               ; preds = %53
  br i1 %59, label %96, label %61

61:                                               ; preds = %60
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %64 = load ptr, ptr %62, align 8, !tbaa !137
  %65 = load i8, ptr %63, align 2, !tbaa !130, !range !190, !noundef !191
  %66 = icmp ne i8 %65, 0
  %67 = load ptr, ptr %64, align 8, !tbaa !100
  %68 = getelementptr inbounds ptr, ptr %67, i64 4
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(40) %64, i1 noundef zeroext %66, i1 noundef zeroext true)
          to label %96 unwind label %25

70:                                               ; preds = %7
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !219
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %72, i64 0, i32 28
  %74 = load ptr, ptr %73, align 8, !tbaa !230
  %75 = zext i16 %6 to i64
  %76 = getelementptr inbounds i8, ptr %74, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !231
  %78 = icmp slt i8 %77, 0
  br i1 %78, label %79, label %97, !prof !226

79:                                               ; preds = %70
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %81 = load ptr, ptr %80, align 8, !tbaa !187
  %82 = icmp eq ptr %81, null
  br i1 %82, label %94, label %83, !prof !232

83:                                               ; preds = %79
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %84 unwind label %25, !prof !226

84:                                               ; preds = %83
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %86 = load ptr, ptr %80, align 8, !tbaa !187
  %87 = load ptr, ptr %85, align 8, !tbaa !152
  %88 = load i32, ptr %3, align 8, !tbaa !146
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i16, ptr %87, i64 %89
  store i16 0, ptr %90, align 2, !tbaa !153
  %91 = load ptr, ptr %86, align 8, !tbaa !100
  %92 = getelementptr inbounds ptr, ptr %91, i64 8
  %93 = load ptr, ptr %92, align 8
  invoke void %93(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %87, i32 noundef %88, i1 noundef zeroext false)
          to label %96 unwind label %25, !prof !233

94:                                               ; preds = %79
  %95 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
          to label %96 unwind label %25

96:                                               ; preds = %102, %102, %94, %84, %61, %40, %35, %60, %49, %29
  br label %5

97:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 186)
          to label %98 unwind label %25

98:                                               ; preds = %97
  %99 = icmp eq i16 %6, 0
  br i1 %99, label %112, label %100

100:                                              ; preds = %98, %102
  %101 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %102 unwind label %23

102:                                              ; preds = %100
  switch i16 %101, label %100 [
    i16 62, label %96
    i16 0, label %96
  ]

103:                                              ; preds = %23, %25, %27
  %104 = phi { ptr, i32 } [ %28, %27 ], [ %24, %23 ], [ %26, %25 ]
  %105 = extractvalue { ptr, i32 } %104, 1
  %106 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #19
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = extractvalue { ptr, i32 } %104, 0
  %110 = tail call ptr @__cxa_begin_catch(ptr %109) #19
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 255, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %111 unwind label %117

111:                                              ; preds = %108
  invoke void @__cxa_end_catch()
          to label %112 unwind label %119

112:                                              ; preds = %44, %98, %111
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %116 unwind label %113, !prof !136

113:                                              ; preds = %112
  %114 = landingpad { ptr, i32 }
          catch ptr null
  %115 = extractvalue { ptr, i32 } %114, 0
  tail call void @__clang_call_terminate(ptr %115) #20
  unreachable

116:                                              ; preds = %112
  ret void

117:                                              ; preds = %108
  %118 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %121 unwind label %127

119:                                              ; preds = %111
  %120 = landingpad { ptr, i32 }
          cleanup
  br label %121

121:                                              ; preds = %119, %117, %103
  %122 = phi { ptr, i32 } [ %104, %103 ], [ %120, %119 ], [ %118, %117 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %126 unwind label %123

123:                                              ; preds = %121
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  tail call void @__clang_call_terminate(ptr %125) #20
  unreachable

126:                                              ; preds = %121
  resume { ptr, i32 } %122

127:                                              ; preds = %117
  %128 = landingpad { ptr, i32 }
          catch ptr null
  %129 = extractvalue { ptr, i32 } %128, 0
  tail call void @__clang_call_terminate(ptr %129) #20
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79ReaderMgr5atEOFEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !95 {
  %3 = alloca [1024 x i16], align 16
  %4 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %5 = add i32 %1, -1
  %6 = icmp ult i32 %5, 8
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %9 = load i32, ptr %8, align 8, !tbaa !197
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !197
  br label %11

11:                                               ; preds = %7, %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = icmp eq ptr %13, null
  br i1 %14, label %42, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #19
  %16 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv()
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %1, ptr noundef nonnull %3, i32 noundef 1023)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %22 = load ptr, ptr %12, align 8, !tbaa !185
  br i1 %6, label %30, label %23

23:                                               ; preds = %15
  %24 = add i32 %1, -171
  %25 = icmp ult i32 %24, 141
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = add i32 %1, -9
  %28 = icmp ult i32 %27, 162
  %29 = select i1 %28, i32 1, i32 3
  br label %30

30:                                               ; preds = %15, %23, %26
  %31 = phi i32 [ 0, %15 ], [ 2, %23 ], [ %29, %26 ]
  %32 = load ptr, ptr %4, align 8, !tbaa !198
  %33 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !200
  %35 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !201
  %37 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %4, i64 0, i32 3
  %38 = load i64, ptr %37, align 8, !tbaa !202
  %39 = load ptr, ptr %22, align 8, !tbaa !100
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  call void %41(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef %31, ptr noundef nonnull %3, ptr noundef %32, ptr noundef %34, i64 noundef %36, i64 noundef %38)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #19
  br label %42

42:                                               ; preds = %30, %11
  %43 = add i32 %1, -171
  %44 = icmp ult i32 %43, 141
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %46 = load i8, ptr %45, align 1, !range !190
  %47 = icmp ne i8 %46, 0
  %48 = select i1 %44, i1 %47, i1 false
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %50 = load i8, ptr %49, align 1, !range !190
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %48, i1 %51, i1 false
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = call ptr @__cxa_allocate_exception(i64 4) #19
  store i32 %1, ptr %54, align 16, !tbaa !203
  call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #21
  unreachable

55:                                               ; preds = %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9scanResetERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  %4 = load i32, ptr %3, align 4, !tbaa !134
  %5 = load i32, ptr %1, align 4, !tbaa !212
  %6 = icmp eq i32 %4, %5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLPScanToken", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %16 = load ptr, ptr %15, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 690, i32 noundef 78, ptr noundef %16)
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %14) #19
  resume { ptr, i32 } %19

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr5resetEv(ptr noundef nonnull align 8 dereferenceable(80) %21)
  %22 = load i32, ptr %7, align 8, !tbaa !135
  %23 = add i32 %22, 1
  store i32 %23, ptr %7, align 8, !tbaa !135
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %24, align 8, !tbaa !197
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12isLegalTokenERKNS_13XMLPScanTokenE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull readonly align 4 dereferenceable(8) %1) local_unnamed_addr #11 align 2 !prof !95 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 37
  %4 = load i32, ptr %3, align 4, !tbaa !134
  %5 = load i32, ptr %1, align 4, !tbaa !212
  %6 = icmp eq i32 %4, %5
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 38
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLPScanToken", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %8, %10
  %12 = select i1 %6, i1 %11, i1 false
  ret i1 %12
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16setParseSettingsEPS0_(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 align 2 !prof !95 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 41
  %4 = load ptr, ptr %3, align 8, !tbaa !187
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  store ptr %4, ptr %5, align 8, !tbaa !187
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 42
  %7 = load ptr, ptr %6, align 8, !tbaa !188
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %7, ptr %8, align 8, !tbaa !188
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 45
  %10 = load ptr, ptr %9, align 8, !tbaa !234
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %10, ptr %11, align 8, !tbaa !234
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 44
  %13 = load ptr, ptr %12, align 8, !tbaa !185
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %13, ptr %14, align 8, !tbaa !185
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 43
  %16 = load ptr, ptr %15, align 8, !tbaa !189
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %16, ptr %17, align 8, !tbaa !189
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 3
  store ptr %16, ptr %18, align 8, !tbaa !235
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 4
  %20 = load i8, ptr %19, align 2, !tbaa !122, !range !190, !noundef !191
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 %20, ptr %21, align 2, !tbaa !122
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 12
  %23 = load i8, ptr %22, align 2, !tbaa !236, !range !190, !noundef !191
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 %23, ptr %24, align 2, !tbaa !236
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 3
  %26 = load i8, ptr %25, align 1, !tbaa !121, !range !190, !noundef !191
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  store i8 %26, ptr %27, align 1, !tbaa !121
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 2
  %29 = load i8, ptr %28, align 8, !tbaa !120, !range !190, !noundef !191
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  store i8 %29, ptr %30, align 8, !tbaa !120
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 9
  store i8 %29, ptr %31, align 8, !tbaa !237
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 5
  %33 = load i8, ptr %32, align 1, !tbaa !123, !range !190, !noundef !191
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  store i8 %33, ptr %34, align 1, !tbaa !123
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 6
  %36 = load i8, ptr %35, align 4, !tbaa !124, !range !190, !noundef !191
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 6
  store i8 %36, ptr %37, align 4, !tbaa !124
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 14
  %39 = load i8, ptr %38, align 4, !tbaa !128, !range !190, !noundef !191
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 14
  store i8 %39, ptr %40, align 4, !tbaa !128
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 13
  %42 = load i8, ptr %41, align 1, !tbaa !238, !range !190, !noundef !191
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 13
  store i8 %42, ptr %43, align 1, !tbaa !238
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 15
  %45 = load i8, ptr %44, align 1, !tbaa !129, !range !190, !noundef !191
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %45, ptr %46, align 1, !tbaa !129
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 16
  %48 = load i8, ptr %47, align 2, !tbaa !130, !range !190, !noundef !191
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %48, ptr %49, align 2, !tbaa !130
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 17
  %51 = load i8, ptr %50, align 1, !tbaa !131, !range !190, !noundef !191
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 17
  store i8 %51, ptr %52, align 1, !tbaa !131
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 18
  %54 = load i8, ptr %53, align 8, !tbaa !132, !range !190, !noundef !191
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 18
  store i8 %54, ptr %55, align 8, !tbaa !132
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 58
  %57 = load ptr, ptr %56, align 8, !tbaa !163
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %59 = load ptr, ptr %58, align 8, !tbaa !145
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 58
  %61 = load ptr, ptr %60, align 8, !tbaa !163
  %62 = load ptr, ptr %59, align 8, !tbaa !100
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %61)
  %65 = load ptr, ptr %58, align 8, !tbaa !145
  %66 = icmp eq ptr %57, null
  br i1 %66, label %87, label %67

67:                                               ; preds = %2
  %68 = load i16, ptr %57, align 2, !tbaa !153
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %67, %70
  %71 = phi ptr [ %72, %70 ], [ %57, %67 ]
  %72 = getelementptr inbounds i16, ptr %71, i64 1
  %73 = load i16, ptr %72, align 2, !tbaa !153
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %75, label %70, !llvm.loop !239

75:                                               ; preds = %70
  %76 = ptrtoint ptr %72 to i64
  %77 = ptrtoint ptr %57 to i64
  %78 = sub i64 %76, %77
  %79 = add i64 %78, 2
  %80 = and i64 %79, 8589934590
  br label %81

81:                                               ; preds = %75, %67
  %82 = phi i64 [ %80, %75 ], [ 2, %67 ]
  %83 = load ptr, ptr %65, align 8, !tbaa !100
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8
  %86 = tail call noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef %82)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %86, ptr nonnull align 2 %57, i64 %82, i1 false)
  br label %87

87:                                               ; preds = %2, %81
  %88 = phi ptr [ %86, %81 ], [ null, %2 ]
  store ptr %88, ptr %60, align 8, !tbaa !163
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 59
  %90 = load ptr, ptr %89, align 8, !tbaa !164
  %91 = load ptr, ptr %58, align 8, !tbaa !145
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 59
  %93 = load ptr, ptr %92, align 8, !tbaa !164
  %94 = load ptr, ptr %91, align 8, !tbaa !100
  %95 = getelementptr inbounds ptr, ptr %94, i64 3
  %96 = load ptr, ptr %95, align 8
  tail call void %96(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef %93)
  %97 = load ptr, ptr %58, align 8, !tbaa !145
  %98 = icmp eq ptr %90, null
  br i1 %98, label %119, label %99

99:                                               ; preds = %87
  %100 = load i16, ptr %90, align 2, !tbaa !153
  %101 = icmp eq i16 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %99, %102
  %103 = phi ptr [ %104, %102 ], [ %90, %99 ]
  %104 = getelementptr inbounds i16, ptr %103, i64 1
  %105 = load i16, ptr %104, align 2, !tbaa !153
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %107, label %102, !llvm.loop !239

107:                                              ; preds = %102
  %108 = ptrtoint ptr %104 to i64
  %109 = ptrtoint ptr %90 to i64
  %110 = sub i64 %108, %109
  %111 = add i64 %110, 2
  %112 = and i64 %111, 8589934590
  br label %113

113:                                              ; preds = %107, %99
  %114 = phi i64 [ %112, %107 ], [ 2, %99 ]
  %115 = load ptr, ptr %97, align 8, !tbaa !100
  %116 = getelementptr inbounds ptr, ptr %115, i64 2
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(8) %97, i64 noundef %114)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %118, ptr nonnull align 2 %90, i64 %114, i1 false)
  br label %119

119:                                              ; preds = %87, %113
  %120 = phi ptr [ %118, %113 ], [ null, %87 ]
  store ptr %120, ptr %92, align 8, !tbaa !164
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 51
  %122 = load i32, ptr %121, align 8, !tbaa !138
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 51
  store i32 %122, ptr %123, align 8, !tbaa !138
  %124 = icmp eq i32 %122, 1
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %126 = zext i1 %124 to i8
  store i8 %126, ptr %125, align 8, !tbaa !228
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 60
  %128 = load ptr, ptr %127, align 8, !tbaa !240
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  store ptr %128, ptr %129, align 8, !tbaa !240
  %130 = icmp eq ptr %128, null
  br i1 %130, label %138, label %131

131:                                              ; preds = %119
  %132 = load ptr, ptr %128, align 8, !tbaa !100
  %133 = getelementptr inbounds ptr, ptr %132, i64 3
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef i32 %134(ptr noundef nonnull align 8 dereferenceable(12) %128)
  %136 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %135, ptr %136, align 4, !tbaa !241
  %137 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %137, align 8, !tbaa !242
  br label %138

138:                                              ; preds = %119, %131
  %139 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %1, i64 0, i32 46
  %140 = load ptr, ptr %139, align 8, !tbaa !243
  %141 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 46
  store ptr %140, ptr %141, align 8, !tbaa !243
  ret void
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gScannerMutexEv() unnamed_addr #5 personality ptr @__gxx_personality_v0 !prof !104 !PGOFuncName !244 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load i1, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br i1 %2, label %19, label %3, !prof !245

3:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %4 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !96
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %4)
  %5 = load i1, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br i1 %5, label %16, label %6, !prof !103

6:                                                ; preds = %3
  %7 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %8 unwind label %12, !prof !246

8:                                                ; preds = %6
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9)
          to label %10 unwind label %14, !prof !246

10:                                               ; preds = %8
  store ptr %7, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19scannerMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv)
          to label %11 unwind label %12, !prof !246

11:                                               ; preds = %10
  store i1 true, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br label %16

12:                                               ; preds = %10, %6
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %17

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %7) #19
  br label %17

16:                                               ; preds = %11, %3
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  br label %19

17:                                               ; preds = %14, %12
  %18 = phi { ptr, i32 } [ %13, %12 ], [ %15, %14 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  resume { ptr, i32 } %18

19:                                               ; preds = %16, %0
  %20 = load ptr, ptr @_ZN11xercesc_2_7L13sScannerMutexE, align 8, !tbaa !96
  ret ptr %20
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !247
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !249
  %6 = load ptr, ptr %3, align 8, !tbaa !100
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !250
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !100
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #19
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #20
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner27emitErrorWillThrowExceptionENS_7XMLErrs5CodesE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #11 align 2 !prof !95 {
  %3 = add i32 %1, -171
  %4 = icmp ult i32 %3, 141
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %6 = load i8, ptr %5, align 1, !range !190
  %7 = icmp ne i8 %6, 0
  %8 = select i1 %4, i1 %7, i1 false
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %10 = load i8, ptr %9, align 1, !range !190
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %8, i1 %11, i1 false
  ret i1 %12
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv() unnamed_addr #5 personality ptr @__gxx_personality_v0 !prof !95 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #19
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gScannerMutexEv()
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5)
  %6 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE)
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4)
          to label %15 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_710XMLScanner15reinitMsgLoaderEv)
          to label %16 unwind label %13

16:                                               ; preds = %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #19
  br label %17

17:                                               ; preds = %16, %0
  %18 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !96
  ret ptr %18
}

declare void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #5 align 2 !prof !95 {
  %7 = alloca [2048 x i16], align 16
  %8 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %9 = add i32 %1, -1
  %10 = icmp ult i32 %9, 8
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !197
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !197
  br label %15

15:                                               ; preds = %11, %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = icmp eq ptr %17, null
  br i1 %18, label %48, label %19

19:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %7) #19
  %20 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L17gScannerMsgLoaderEv()
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = load ptr, ptr %20, align 8, !tbaa !100
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %1, ptr noundef nonnull %7, i32 noundef 2047, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %22)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #19
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef nonnull align 8 dereferenceable(32) %8)
  %28 = load ptr, ptr %16, align 8, !tbaa !185
  br i1 %10, label %36, label %29

29:                                               ; preds = %19
  %30 = add i32 %1, -171
  %31 = icmp ult i32 %30, 141
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = add i32 %1, -9
  %34 = icmp ult i32 %33, 162
  %35 = select i1 %34, i32 1, i32 3
  br label %36

36:                                               ; preds = %19, %29, %32
  %37 = phi i32 [ 0, %19 ], [ 2, %29 ], [ %35, %32 ]
  %38 = load ptr, ptr %8, align 8, !tbaa !198
  %39 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !200
  %41 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 2
  %42 = load i64, ptr %41, align 8, !tbaa !201
  %43 = getelementptr inbounds %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", ptr %8, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !202
  %45 = load ptr, ptr %28, align 8, !tbaa !100
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull align 8 dereferenceable(8) %28, i32 noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE, i32 noundef %37, ptr noundef nonnull %7, ptr noundef %38, ptr noundef %40, i64 noundef %42, i64 noundef %44)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %7) #19
  br label %48

48:                                               ; preds = %36, %15
  %49 = add i32 %1, -171
  %50 = icmp ult i32 %49, 141
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %52 = load i8, ptr %51, align 1, !range !190
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %50, i1 %53, i1 false
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  %56 = load i8, ptr %55, align 1, !range !190
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %54, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call ptr @__cxa_allocate_exception(i64 4) #19
  store i32 %1, ptr %60, align 16, !tbaa !203
  call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #21
  unreachable

61:                                               ; preds = %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %3 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %5

5:                                                ; preds = %38, %1
  %6 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %7 unwind label %14, !prof !217

7:                                                ; preds = %5
  switch i16 %6, label %48 [
    i16 0, label %82
    i16 60, label %25
  ], !prof !251

8:                                                ; preds = %75
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %16

10:                                               ; preds = %29
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %16

12:                                               ; preds = %45
  %13 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %16

14:                                               ; preds = %5, %25, %28, %37, %43, %44, %61, %62, %72, %74, %32, %39
  %15 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720EndOfEntityExceptionE
  br label %16

16:                                               ; preds = %10, %14, %12, %8
  %17 = phi { ptr, i32 } [ %9, %8 ], [ %11, %10 ], [ %13, %12 ], [ %15, %14 ]
  %18 = extractvalue { ptr, i32 } %17, 1
  %19 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720EndOfEntityExceptionE) #19
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %16
  %22 = extractvalue { ptr, i32 } %17, 0
  %23 = tail call ptr @__cxa_begin_catch(ptr %22) #19
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 259)
          to label %24 unwind label %78

24:                                               ; preds = %21
  invoke void @__cxa_end_catch()
          to label %38 unwind label %80

25:                                               ; preds = %7
  %26 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %27 unwind label %14

27:                                               ; preds = %25
  br i1 %26, label %28, label %32

28:                                               ; preds = %27
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 204)
          to label %29 unwind label %14

29:                                               ; preds = %28, %31
  %30 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %31 unwind label %10

31:                                               ; preds = %29
  switch i16 %30, label %29 [
    i16 62, label %38
    i16 0, label %38
  ], !llvm.loop !252

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !219
  %35 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgPIStringE)
          to label %36 unwind label %14

36:                                               ; preds = %32
  br i1 %35, label %37, label %39

37:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %38 unwind label %14

38:                                               ; preds = %47, %47, %31, %31, %77, %77, %37, %43, %62, %72, %24
  br label %5, !llvm.loop !252

39:                                               ; preds = %36
  %40 = load ptr, ptr %33, align 8, !tbaa !219
  %41 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %40, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgCommentStringE)
          to label %42 unwind label %14

42:                                               ; preds = %39
  br i1 %41, label %43, label %44

43:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
          to label %38 unwind label %14

44:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 206)
          to label %45 unwind label %14

45:                                               ; preds = %44, %47
  %46 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %47 unwind label %12

47:                                               ; preds = %45
  switch i16 %46, label %45 [
    i16 62, label %38
    i16 0, label %38
  ], !llvm.loop !252

48:                                               ; preds = %7
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !219
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %50, i64 0, i32 28
  %52 = load ptr, ptr %51, align 8, !tbaa !230
  %53 = zext i16 %6 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load i8, ptr %54, align 1, !tbaa !231
  %56 = icmp slt i8 %55, 0
  br i1 %56, label %57, label %74, !prof !226

57:                                               ; preds = %48
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %59 = load ptr, ptr %58, align 8, !tbaa !187
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61, !prof !232

61:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %62 unwind label %14, !prof !226

62:                                               ; preds = %61
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %3, i64 0, i32 6
  %64 = load ptr, ptr %58, align 8, !tbaa !187
  %65 = load ptr, ptr %63, align 8, !tbaa !152
  %66 = load i32, ptr %3, align 8, !tbaa !146
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i16, ptr %65, i64 %67
  store i16 0, ptr %68, align 2, !tbaa !153
  %69 = load ptr, ptr %64, align 8, !tbaa !100
  %70 = getelementptr inbounds ptr, ptr %69, i64 8
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %65, i32 noundef %66, i1 noundef zeroext false)
          to label %38 unwind label %14, !prof !253

72:                                               ; preds = %57
  %73 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %4, i1 noundef zeroext false)
          to label %38 unwind label %14

74:                                               ; preds = %48
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 206)
          to label %75 unwind label %14

75:                                               ; preds = %74, %77
  %76 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %4)
          to label %77 unwind label %8

77:                                               ; preds = %75
  switch i16 %76, label %75 [
    i16 62, label %38
    i16 0, label %38
  ], !llvm.loop !252

78:                                               ; preds = %21
  %79 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %87 unwind label %93

80:                                               ; preds = %24
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %87

82:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %86 unwind label %83, !prof !136

83:                                               ; preds = %82
  %84 = landingpad { ptr, i32 }
          catch ptr null
  %85 = extractvalue { ptr, i32 } %84, 0
  tail call void @__clang_call_terminate(ptr %85) #20
  unreachable

86:                                               ; preds = %82
  ret void

87:                                               ; preds = %16, %80, %78
  %88 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ], [ %17, %16 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3)
          to label %92 unwind label %89

89:                                               ; preds = %87
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  tail call void @__clang_call_terminate(ptr %91) #20
  unreachable

92:                                               ; preds = %87
  resume { ptr, i32 } %88

93:                                               ; preds = %78
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  tail call void @__clang_call_terminate(ptr %95) #20
  unreachable
}

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 !prof !254 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !219
  br i1 %1, label %5, label %31, !prof !217

5:                                                ; preds = %2
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXMLDeclStringE)
  br i1 %6, label %7, label %58, !prof !218

7:                                                ; preds = %5
  %8 = load ptr, ptr %3, align 8, !tbaa !219
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgXMLDeclStringSpaceE)
  br i1 %9, label %58, label %10, !prof !226

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !tbaa !219
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgXMLDeclStringHTabE)
  br i1 %12, label %58, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %3, align 8, !tbaa !219
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %14, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgXMLDeclStringLFE)
  br i1 %15, label %58, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %3, align 8, !tbaa !219
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %17, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgXMLDeclStringCRE)
  br i1 %18, label %58, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !219
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %20, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLDeclStringSpaceUE)
  br i1 %21, label %57, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %3, align 8, !tbaa !219
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgXMLDeclStringHTabUE)
  br i1 %24, label %57, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %3, align 8, !tbaa !219
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %26, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLDeclStringLFUE)
  br i1 %27, label %57, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 8, !tbaa !219
  %30 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %29, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLDeclStringCRUE)
  br i1 %30, label %57, label %58

31:                                               ; preds = %2
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgXMLStringE)
  br i1 %32, label %33, label %58

33:                                               ; preds = %31
  %34 = load ptr, ptr %3, align 8, !tbaa !219
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %34, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgXMLStringSpaceE)
  br i1 %35, label %58, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %3, align 8, !tbaa !219
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %37, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgXMLStringHTabE)
  br i1 %38, label %58, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 8, !tbaa !219
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %40, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLStringLFE)
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 8, !tbaa !219
  %44 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %43, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLStringCRE)
  br i1 %44, label %58, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %3, align 8, !tbaa !219
  %47 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %46, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgXMLStringSpaceUE)
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %3, align 8, !tbaa !219
  %50 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %49, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgXMLStringHTabUE)
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 8, !tbaa !219
  %53 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %52, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLStringLFUE)
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %3, align 8, !tbaa !219
  %56 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %55, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLStringCRUE)
  br i1 %56, label %57, label %58

57:                                               ; preds = %45, %48, %51, %54, %19, %22, %25, %28
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 271)
  br label %58

58:                                               ; preds = %57, %28, %5, %54, %31, %33, %36, %39, %42, %7, %10, %13, %16
  %59 = phi i1 [ true, %16 ], [ true, %13 ], [ true, %10 ], [ true, %7 ], [ true, %42 ], [ true, %39 ], [ true, %36 ], [ true, %33 ], [ false, %31 ], [ false, %54 ], [ false, %5 ], [ false, %28 ], [ true, %57 ]
  ret i1 %59
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner6scanPIEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %6, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !230
  %9 = zext i16 %4 to i64
  %10 = getelementptr inbounds i8, ptr %8, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !231
  %12 = icmp slt i8 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 194)
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
  br label %15

15:                                               ; preds = %13, %1
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %17 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %16)
  store i32 0, ptr %17, align 8, !tbaa !146
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  store i16 0, ptr %19, align 2, !tbaa !153
  %20 = load ptr, ptr %5, align 8, !tbaa !219
  %21 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %20, ptr noundef nonnull align 8 dereferenceable(40) %17, i1 noundef zeroext false)
          to label %22 unwind label %29

22:                                               ; preds = %15
  br i1 %21, label %31, label %23

23:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 194)
          to label %24 unwind label %29

24:                                               ; preds = %23, %26
  %25 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %26 unwind label %27

26:                                               ; preds = %24
  switch i16 %25, label %24 [
    i16 62, label %182
    i16 0, label %182
  ]

27:                                               ; preds = %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %192

29:                                               ; preds = %23, %45, %50, %54, %15
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %192

31:                                               ; preds = %22
  %32 = load ptr, ptr %18, align 8, !tbaa !152
  %33 = load i32, ptr %17, align 8, !tbaa !146
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i16, ptr %32, i64 %34
  store i16 0, ptr %35, align 2, !tbaa !153
  %36 = icmp eq i32 %33, 3
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i16, ptr %32, align 2, !tbaa !153
  switch i16 %38, label %46 [
    i16 120, label %39
    i16 88, label %39
  ]

39:                                               ; preds = %37, %37
  %40 = getelementptr inbounds i16, ptr %32, i64 1
  %41 = load i16, ptr %40, align 2, !tbaa !153
  switch i16 %41, label %46 [
    i16 109, label %42
    i16 77, label %42
  ]

42:                                               ; preds = %39, %39
  %43 = getelementptr inbounds i16, ptr %32, i64 2
  %44 = load i16, ptr %43, align 2, !tbaa !153
  switch i16 %44, label %46 [
    i16 108, label %45
    i16 76, label %45
  ]

45:                                               ; preds = %42, %42
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 283)
          to label %46 unwind label %29

46:                                               ; preds = %45, %42, %39, %37, %31
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  %48 = load i8, ptr %47, align 2, !tbaa !122, !range !190, !noundef !191
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %32, i16 noundef zeroext 58)
          to label %52 unwind label %29

52:                                               ; preds = %50
  %53 = icmp eq i32 %51, -1
  br i1 %53, label %55, label %54

54:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 290)
          to label %55 unwind label %29

55:                                               ; preds = %52, %54, %46
  %56 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %57 unwind label %77

57:                                               ; preds = %55
  %58 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %59 unwind label %83

59:                                               ; preds = %57
  br i1 %58, label %60, label %139

60:                                               ; preds = %59
  %61 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext false)
          to label %62 unwind label %83

62:                                               ; preds = %60
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %56, i64 0, i32 1
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %56, i64 0, i32 6
  br label %66

66:                                               ; preds = %62, %136
  %67 = phi i8 [ %138, %136 ], [ 0, %62 ]
  %68 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %69 unwind label %85

69:                                               ; preds = %66
  %70 = icmp eq i16 %68, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %69
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 195)
          to label %72 unwind label %87

72:                                               ; preds = %71
  %73 = call ptr @__cxa_allocate_exception(i64 48) #19
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %75 = load ptr, ptr %74, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %73, ptr noundef nonnull @.str, i32 noundef 1136, i32 noundef 47, ptr noundef %75)
          to label %76 unwind label %89

76:                                               ; preds = %72
  invoke void @__cxa_throw(ptr nonnull %73, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
          to label %198 unwind label %87

77:                                               ; preds = %55
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %192

79:                                               ; preds = %150
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %187

81:                                               ; preds = %143
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %187

83:                                               ; preds = %162, %149, %146, %142, %139, %60, %57
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %187

85:                                               ; preds = %66, %94, %103, %108, %129
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %187

87:                                               ; preds = %71, %76
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %187

89:                                               ; preds = %72
  %90 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %73) #19
  br label %187

91:                                               ; preds = %69
  %92 = zext i16 %68 to i32
  %93 = icmp eq i16 %68, 63
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 62)
          to label %96 unwind label %85

96:                                               ; preds = %94
  br i1 %95, label %136, label %97

97:                                               ; preds = %96, %91
  %98 = and i16 %68, -1024
  %99 = icmp eq i16 %98, -10240
  %100 = and i8 %67, 1
  %101 = icmp eq i8 %100, 0
  br i1 %99, label %102, label %104

102:                                              ; preds = %97
  br i1 %101, label %124, label %103

103:                                              ; preds = %102
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %124 unwind label %85

104:                                              ; preds = %97
  br i1 %101, label %109, label %105

105:                                              ; preds = %104
  %106 = add i16 %68, 8192
  %107 = icmp ult i16 %106, -1024
  br i1 %107, label %108, label %124

108:                                              ; preds = %105
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %124 unwind label %85

109:                                              ; preds = %104
  %110 = load ptr, ptr %5, align 8, !tbaa !219
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %110, i64 0, i32 28
  %112 = load ptr, ptr %111, align 8, !tbaa !230
  %113 = zext i16 %68 to i64
  %114 = getelementptr inbounds i8, ptr %112, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !231
  %116 = and i8 %115, 64
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #19
  %119 = load ptr, ptr %63, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %92, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %119)
          to label %120 unwind label %122

120:                                              ; preds = %118
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %121 unwind label %122

121:                                              ; preds = %120
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #19
  br label %124

122:                                              ; preds = %120, %118
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #19
  br label %187

124:                                              ; preds = %108, %103, %105, %121, %109, %102
  %125 = phi i8 [ 1, %102 ], [ 0, %109 ], [ 0, %121 ], [ 0, %105 ], [ %67, %103 ], [ 0, %108 ]
  %126 = load i32, ptr %56, align 8, !tbaa !146
  %127 = load i32, ptr %64, align 4, !tbaa !147
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef 1)
          to label %130 unwind label %85

130:                                              ; preds = %129, %124
  %131 = load ptr, ptr %65, align 8, !tbaa !152
  %132 = load i32, ptr %56, align 8, !tbaa !146
  %133 = add i32 %132, 1
  store i32 %133, ptr %56, align 8, !tbaa !146
  %134 = zext i32 %132 to i64
  %135 = getelementptr inbounds i16, ptr %131, i64 %134
  store i16 %68, ptr %135, align 2, !tbaa !153
  br label %136

136:                                              ; preds = %130, %96
  %137 = phi i1 [ false, %96 ], [ true, %130 ]
  %138 = phi i8 [ %67, %96 ], [ %125, %130 ]
  br i1 %137, label %66, label %153

139:                                              ; preds = %59
  %140 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 63)
          to label %141 unwind label %83

141:                                              ; preds = %139
  br i1 %140, label %146, label %142

142:                                              ; preds = %141
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 195)
          to label %143 unwind label %83

143:                                              ; preds = %142, %145
  %144 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %145 unwind label %81

145:                                              ; preds = %143
  switch i16 %144, label %143 [
    i16 62, label %178
    i16 0, label %178
  ]

146:                                              ; preds = %141
  %147 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 62)
          to label %148 unwind label %83

148:                                              ; preds = %146
  br i1 %147, label %153, label %149

149:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 195)
          to label %150 unwind label %83

150:                                              ; preds = %149, %152
  %151 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %152 unwind label %79

152:                                              ; preds = %150
  switch i16 %151, label %150 [
    i16 62, label %178
    i16 0, label %178
  ]

153:                                              ; preds = %136, %148
  %154 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %56, i64 0, i32 6
  %155 = load ptr, ptr %154, align 8, !tbaa !152
  %156 = load i32, ptr %56, align 8, !tbaa !146
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i16, ptr %155, i64 %157
  store i16 0, ptr %158, align 2, !tbaa !153
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %160 = load ptr, ptr %159, align 8, !tbaa !187
  %161 = icmp eq ptr %160, null
  br i1 %161, label %166, label %162

162:                                              ; preds = %153
  %163 = load ptr, ptr %160, align 8, !tbaa !100
  %164 = getelementptr inbounds ptr, ptr %163, i64 4
  %165 = load ptr, ptr %164, align 8
  invoke void %165(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef %32, ptr noundef %155)
          to label %166 unwind label %83

166:                                              ; preds = %153, %162
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %168 = load i32, ptr %167, align 4, !tbaa !255
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %178, label %170

170:                                              ; preds = %166
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %172 = load ptr, ptr %171, align 8, !tbaa !256
  %173 = add i32 %168, -1
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds ptr, ptr %172, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !96
  %177 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %176, i64 0, i32 9
  store i8 1, ptr %177, align 1, !tbaa !257
  br label %178

178:                                              ; preds = %145, %145, %152, %152, %166, %170
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %56)
          to label %182 unwind label %179

179:                                              ; preds = %178
  %180 = landingpad { ptr, i32 }
          catch ptr null
  %181 = extractvalue { ptr, i32 } %180, 0
  call void @__clang_call_terminate(ptr %181) #20
  unreachable

182:                                              ; preds = %26, %26, %178
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %186 unwind label %183

183:                                              ; preds = %182
  %184 = landingpad { ptr, i32 }
          catch ptr null
  %185 = extractvalue { ptr, i32 } %184, 0
  call void @__clang_call_terminate(ptr %185) #20
  unreachable

186:                                              ; preds = %182
  ret void

187:                                              ; preds = %85, %87, %79, %83, %81, %89, %122
  %188 = phi { ptr, i32 } [ %123, %122 ], [ %90, %89 ], [ %80, %79 ], [ %82, %81 ], [ %84, %83 ], [ %86, %85 ], [ %88, %87 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %56)
          to label %192 unwind label %189

189:                                              ; preds = %187
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #20
  unreachable

192:                                              ; preds = %27, %29, %77, %187
  %193 = phi { ptr, i32 } [ %78, %77 ], [ %188, %187 ], [ %28, %27 ], [ %30, %29 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(40) %17)
          to label %197 unwind label %194

194:                                              ; preds = %192
  %195 = landingpad { ptr, i32 }
          catch ptr null
  %196 = extractvalue { ptr, i32 } %195, 0
  call void @__clang_call_terminate(ptr %196) #20
  unreachable

197:                                              ; preds = %192
  resume { ptr, i32 } %193

198:                                              ; preds = %76
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner11scanCommentEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = alloca [9 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %4 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  br label %12

12:                                               ; preds = %99, %1
  %13 = phi i8 [ 0, %1 ], [ %61, %99 ]
  %14 = phi i32 [ 0, %1 ], [ %100, %99 ]
  %15 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %16 unwind label %26

16:                                               ; preds = %12
  %17 = icmp eq i16 %15, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 193)
          to label %19 unwind label %28

19:                                               ; preds = %18
  %20 = call ptr @__cxa_allocate_exception(i64 48) #19
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 2133, i32 noundef 47, ptr noundef %22)
          to label %23 unwind label %30

23:                                               ; preds = %19
  invoke void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
          to label %140 unwind label %28

24:                                               ; preds = %88
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %134

26:                                               ; preds = %84, %75, %68, %87, %44, %39, %12
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %134

28:                                               ; preds = %23, %18
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %134

30:                                               ; preds = %19
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %20) #19
  br label %134

32:                                               ; preds = %16
  %33 = zext i16 %15 to i32
  %34 = and i16 %15, -1024
  %35 = icmp eq i16 %34, -10240
  %36 = and i8 %13, 1
  %37 = icmp eq i8 %36, 0
  br i1 %35, label %38, label %40

38:                                               ; preds = %32
  br i1 %37, label %60, label %39

39:                                               ; preds = %38
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %60 unwind label %26

40:                                               ; preds = %32
  br i1 %37, label %45, label %41

41:                                               ; preds = %40
  %42 = add i16 %15, 8192
  %43 = icmp ult i16 %42, -1024
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 249)
          to label %60 unwind label %26

45:                                               ; preds = %40
  %46 = load ptr, ptr %6, align 8, !tbaa !219
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %46, i64 0, i32 28
  %48 = load ptr, ptr %47, align 8, !tbaa !230
  %49 = zext i16 %15 to i64
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !231
  %52 = and i8 %51, 64
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %2) #19
  %55 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %33, ptr noundef nonnull %2, i32 noundef 8, i32 noundef 16, ptr noundef %55)
          to label %56 unwind label %58

56:                                               ; preds = %54
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 196, ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %57 unwind label %58

57:                                               ; preds = %56
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #19
  br label %60

58:                                               ; preds = %56, %54
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %2) #19
  br label %134

60:                                               ; preds = %44, %39, %41, %57, %45, %38
  %61 = phi i8 [ 1, %38 ], [ 0, %45 ], [ 0, %57 ], [ 0, %41 ], [ %13, %39 ], [ 0, %44 ]
  switch i32 %14, label %91 [
    i32 0, label %62
    i32 1, label %69
    i32 2, label %85
  ]

62:                                               ; preds = %60
  %63 = icmp eq i16 %15, 45
  br i1 %63, label %99, label %64

64:                                               ; preds = %62
  %65 = load i32, ptr %4, align 8, !tbaa !146
  %66 = load i32, ptr %10, align 4, !tbaa !147
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %92

68:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %92 unwind label %26

69:                                               ; preds = %60
  %70 = icmp eq i16 %15, 45
  br i1 %70, label %99, label %71

71:                                               ; preds = %69
  %72 = load i32, ptr %4, align 8, !tbaa !146
  %73 = load i32, ptr %8, align 4, !tbaa !147
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %76 unwind label %26

76:                                               ; preds = %75, %71
  %77 = load ptr, ptr %9, align 8, !tbaa !152
  %78 = load i32, ptr %4, align 8, !tbaa !146
  %79 = add i32 %78, 1
  store i32 %79, ptr %4, align 8, !tbaa !146
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds i16, ptr %77, i64 %80
  store i16 45, ptr %81, align 2, !tbaa !153
  %82 = load i32, ptr %8, align 4, !tbaa !147
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %76
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %92 unwind label %26

85:                                               ; preds = %60
  %86 = icmp eq i16 %15, 62
  br i1 %86, label %99, label %87

87:                                               ; preds = %85
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 263)
          to label %88 unwind label %26

88:                                               ; preds = %87, %90
  %89 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
          to label %90 unwind label %24

90:                                               ; preds = %88
  switch i16 %89, label %88 [
    i16 62, label %99
    i16 0, label %99
  ]

91:                                               ; preds = %60
  unreachable

92:                                               ; preds = %76, %84, %64, %68
  %93 = phi ptr [ %11, %68 ], [ %11, %64 ], [ %9, %84 ], [ %9, %76 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !152
  %95 = load i32, ptr %4, align 8, !tbaa !146
  %96 = add i32 %95, 1
  store i32 %96, ptr %4, align 8, !tbaa !146
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds i16, ptr %94, i64 %97
  store i16 %15, ptr %98, align 2, !tbaa !153
  br label %99

99:                                               ; preds = %90, %90, %92, %62, %69, %85
  %100 = phi i32 [ 2, %85 ], [ 1, %62 ], [ 2, %69 ], [ 0, %92 ], [ 2, %90 ], [ 2, %90 ]
  %101 = phi i32 [ 3, %85 ], [ 0, %62 ], [ 0, %69 ], [ 0, %92 ], [ 1, %90 ], [ 1, %90 ]
  switch i32 %101, label %129 [
    i32 0, label %12
    i32 3, label %102
  ], !llvm.loop !259

102:                                              ; preds = %99
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %104 = load ptr, ptr %103, align 8, !tbaa !187
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  %108 = load ptr, ptr %107, align 8, !tbaa !152
  %109 = load i32, ptr %4, align 8, !tbaa !146
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i16, ptr %108, i64 %110
  store i16 0, ptr %111, align 2, !tbaa !153
  %112 = load ptr, ptr %104, align 8, !tbaa !100
  %113 = getelementptr inbounds ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  invoke void %114(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %108)
          to label %117 unwind label %115

115:                                              ; preds = %106
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %134

117:                                              ; preds = %106, %102
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %119 = load i32, ptr %118, align 4, !tbaa !255
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !256
  %124 = add i32 %119, -1
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds ptr, ptr %123, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !96
  %128 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %127, i64 0, i32 9
  store i8 1, ptr %128, align 1, !tbaa !257
  br label %129

129:                                              ; preds = %99, %117, %121
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %133 unwind label %130

130:                                              ; preds = %129
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #20
  unreachable

133:                                              ; preds = %129
  ret void

134:                                              ; preds = %24, %28, %26, %30, %58, %115
  %135 = phi { ptr, i32 } [ %116, %115 ], [ %59, %58 ], [ %31, %30 ], [ %25, %24 ], [ %27, %26 ], [ %29, %28 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %139 unwind label %136

136:                                              ; preds = %134
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  call void @__clang_call_terminate(ptr %138) #20
  unreachable

139:                                              ; preds = %134
  resume { ptr, i32 } %135

140:                                              ; preds = %23
  unreachable
}

declare void @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #3

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
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

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !260 {
  %3 = alloca [4 x i32], align 16
  %4 = alloca [4 x ptr], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %6 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %7 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %8 unwind label %27, !prof !226

8:                                                ; preds = %2
  %9 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %10 unwind label %29, !prof !226

10:                                               ; preds = %8
  %11 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %12 unwind label %31, !prof !226

12:                                               ; preds = %10
  %13 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %14 unwind label %33, !prof !226

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #19
  store ptr %6, ptr %4, align 16, !tbaa !96
  %15 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 1
  store ptr %7, ptr %15, align 8, !tbaa !96
  %16 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 2
  store ptr %9, ptr %16, align 16, !tbaa !96
  %17 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 3
  store ptr %11, ptr %17, align 8, !tbaa !96
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %13, i64 0, i32 6
  br label %20

20:                                               ; preds = %289, %14
  %21 = phi i32 [ 0, %14 ], [ %290, %289 ]
  %22 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %18, i1 noundef zeroext true)
          to label %23 unwind label %37, !prof !217

23:                                               ; preds = %20
  %24 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %25 unwind label %37, !prof !217

25:                                               ; preds = %23
  %26 = icmp eq i16 %24, 63
  br i1 %26, label %289, label %39, !prof !218

27:                                               ; preds = %2
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %455

29:                                               ; preds = %8
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %450

31:                                               ; preds = %10
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %445

33:                                               ; preds = %12
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %440

35:                                               ; preds = %142
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %435

37:                                               ; preds = %121, %20, %42, %47, %130, %134, %135, %141, %23, %43
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %435

39:                                               ; preds = %25
  %40 = icmp eq i32 %21, 0
  %41 = select i1 %22, i1 true, i1 %40, !prof !261
  br i1 %41, label %43, label %42, !prof !136

42:                                               ; preds = %39
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 207)
          to label %43 unwind label %37

43:                                               ; preds = %42, %39
  invoke void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull align 8 dereferenceable(40) %13, i16 noundef zeroext 61)
          to label %44 unwind label %37, !prof !136

44:                                               ; preds = %43
  %45 = load i32, ptr %13, align 8, !tbaa !146
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48, !prof !156

47:                                               ; preds = %44
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 187)
          to label %48 unwind label %37

48:                                               ; preds = %47, %44
  %49 = load ptr, ptr %19, align 8, !tbaa !152
  %50 = load i32, ptr %13, align 8, !tbaa !146
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  store i16 0, ptr %52, align 2, !tbaa !153
  %53 = icmp eq ptr %49, null
  br i1 %53, label %58, label %54, !prof !156

54:                                               ; preds = %48
  %55 = load i16, ptr %49, align 2, !tbaa !153
  %56 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgVersionStringE, align 2, !tbaa !153
  %57 = icmp eq i16 %55, %56
  br i1 %57, label %61, label %72, !prof !262

58:                                               ; preds = %48
  %59 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgVersionStringE, align 2, !tbaa !153
  %60 = icmp eq i16 %59, 0
  br label %72

61:                                               ; preds = %54, %66
  %62 = phi i16 [ %69, %66 ], [ %55, %54 ]
  %63 = phi ptr [ %68, %66 ], [ @_ZN11xercesc_2_76XMLUni15fgVersionStringE, %54 ]
  %64 = phi ptr [ %67, %66 ], [ %49, %54 ]
  %65 = icmp eq i16 %62, 0
  br i1 %65, label %72, label %66, !prof !263

66:                                               ; preds = %61
  %67 = getelementptr inbounds i16, ptr %64, i64 1
  %68 = getelementptr inbounds i16, ptr %63, i64 1
  %69 = load i16, ptr %67, align 2, !tbaa !153
  %70 = load i16, ptr %68, align 2, !tbaa !153
  %71 = icmp eq i16 %69, %70
  br i1 %71, label %61, label %72, !prof !264, !llvm.loop !265

72:                                               ; preds = %61, %66, %54, %58
  %73 = phi i1 [ %60, %58 ], [ false, %54 ], [ %65, %66 ], [ %65, %61 ]
  br i1 %73, label %116, label %74, !prof !245

74:                                               ; preds = %72
  store i16 0, ptr %52, align 2, !tbaa !153
  br i1 %53, label %79, label %75, !prof !103

75:                                               ; preds = %74
  %76 = load i16, ptr %49, align 2, !tbaa !153
  %77 = load i16, ptr @_ZN11xercesc_2_76XMLUni16fgEncodingStringE, align 2, !tbaa !153
  %78 = icmp eq i16 %76, %77
  br i1 %78, label %82, label %93, !prof !103

79:                                               ; preds = %74
  %80 = load i16, ptr @_ZN11xercesc_2_76XMLUni16fgEncodingStringE, align 2, !tbaa !153
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %116, label %93

82:                                               ; preds = %75, %87
  %83 = phi i16 [ %90, %87 ], [ %76, %75 ]
  %84 = phi ptr [ %89, %87 ], [ @_ZN11xercesc_2_76XMLUni16fgEncodingStringE, %75 ]
  %85 = phi ptr [ %88, %87 ], [ %49, %75 ]
  %86 = icmp eq i16 %83, 0
  br i1 %86, label %116, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds i16, ptr %85, i64 1
  %89 = getelementptr inbounds i16, ptr %84, i64 1
  %90 = load i16, ptr %88, align 2, !tbaa !153
  %91 = load i16, ptr %89, align 2, !tbaa !153
  %92 = icmp eq i16 %90, %91
  br i1 %92, label %82, label %93, !prof !103, !llvm.loop !265

93:                                               ; preds = %87, %75, %79
  store i16 0, ptr %52, align 2, !tbaa !153
  br i1 %53, label %98, label %94, !prof !103

94:                                               ; preds = %93
  %95 = load i16, ptr %49, align 2, !tbaa !153
  %96 = load i16, ptr @_ZN11xercesc_2_76XMLUni18fgStandaloneStringE, align 2, !tbaa !153
  %97 = icmp eq i16 %95, %96
  br i1 %97, label %101, label %112, !prof !246

98:                                               ; preds = %93
  %99 = load i16, ptr @_ZN11xercesc_2_76XMLUni18fgStandaloneStringE, align 2, !tbaa !153
  %100 = icmp eq i16 %99, 0
  br label %112

101:                                              ; preds = %94, %106
  %102 = phi i16 [ %109, %106 ], [ %95, %94 ]
  %103 = phi ptr [ %108, %106 ], [ @_ZN11xercesc_2_76XMLUni18fgStandaloneStringE, %94 ]
  %104 = phi ptr [ %107, %106 ], [ %49, %94 ]
  %105 = icmp eq i16 %102, 0
  br i1 %105, label %112, label %106, !prof !266

106:                                              ; preds = %101
  %107 = getelementptr inbounds i16, ptr %104, i64 1
  %108 = getelementptr inbounds i16, ptr %103, i64 1
  %109 = load i16, ptr %107, align 2, !tbaa !153
  %110 = load i16, ptr %108, align 2, !tbaa !153
  %111 = icmp eq i16 %109, %110
  br i1 %111, label %101, label %112, !prof !267, !llvm.loop !265

112:                                              ; preds = %101, %106, %94, %98
  %113 = phi i1 [ %100, %98 ], [ false, %94 ], [ %105, %106 ], [ %105, %101 ]
  %114 = xor i1 %113, true
  %115 = select i1 %113, i32 2, i32 3, !prof !246
  br label %116

116:                                              ; preds = %82, %112, %79, %72
  %117 = phi i1 [ false, %72 ], [ false, %79 ], [ %114, %112 ], [ false, %82 ]
  %118 = phi i1 [ false, %72 ], [ true, %79 ], [ false, %112 ], [ true, %82 ]
  %119 = phi i1 [ false, %72 ], [ false, %79 ], [ %113, %112 ], [ false, %82 ]
  %120 = phi i32 [ 0, %72 ], [ 1, %79 ], [ %115, %112 ], [ 1, %82 ]
  br i1 %117, label %121, label %123, !prof !156

121:                                              ; preds = %116, %123
  %122 = phi i32 [ 268, %123 ], [ 187, %116 ]
  store i16 0, ptr %52, align 2, !tbaa !153
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %122, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %130 unwind label %37

123:                                              ; preds = %116
  %124 = zext nneg i32 %120 to i64
  %125 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !170
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %121, !prof !136

128:                                              ; preds = %123
  %129 = add nsw i32 %21, 1
  store i32 %129, ptr %125, align 4, !tbaa !170
  br label %130

130:                                              ; preds = %121, %128
  %131 = phi i32 [ %129, %128 ], [ %21, %121 ]
  %132 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext true)
          to label %133 unwind label %37, !prof !136

133:                                              ; preds = %130
  br i1 %132, label %135, label %134, !prof !136

134:                                              ; preds = %133
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 180)
          to label %135 unwind label %37

135:                                              ; preds = %134, %133
  %136 = zext nneg i32 %120 to i64
  %137 = getelementptr inbounds [4 x ptr], ptr %4, i64 0, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !96
  %139 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %138)
          to label %140 unwind label %37, !prof !136

140:                                              ; preds = %135
  br i1 %139, label %145, label %141, !prof !136

141:                                              ; preds = %140
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 209)
          to label %142 unwind label %37

142:                                              ; preds = %141, %144
  %143 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %144 unwind label %35

144:                                              ; preds = %142
  switch i16 %143, label %142 [
    i16 62, label %289
    i16 0, label %289
  ]

145:                                              ; preds = %140
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %138, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !152
  %148 = load i32, ptr %138, align 8, !tbaa !146
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds i16, ptr %147, i64 %149
  store i16 0, ptr %150, align 2, !tbaa !153
  br i1 %73, label %151, label %217, !prof !245

151:                                              ; preds = %145
  %152 = icmp eq ptr %147, null
  br i1 %152, label %157, label %153, !prof !232

153:                                              ; preds = %151
  %154 = load i16, ptr %147, align 2, !tbaa !153
  %155 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !153
  %156 = icmp eq i16 %154, %155
  br i1 %156, label %160, label %187, !prof !262

157:                                              ; preds = %151
  %158 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !153
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %171, label %187

160:                                              ; preds = %153, %165
  %161 = phi i16 [ %168, %165 ], [ %154, %153 ]
  %162 = phi ptr [ %167, %165 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %153 ]
  %163 = phi ptr [ %166, %165 ], [ %147, %153 ]
  %164 = icmp eq i16 %161, 0
  br i1 %164, label %171, label %165, !prof !268

165:                                              ; preds = %160
  %166 = getelementptr inbounds i16, ptr %163, i64 1
  %167 = getelementptr inbounds i16, ptr %162, i64 1
  %168 = load i16, ptr %166, align 2, !tbaa !153
  %169 = load i16, ptr %167, align 2, !tbaa !153
  %170 = icmp eq i16 %168, %169
  br i1 %170, label %160, label %187, !prof !269, !llvm.loop !265

171:                                              ; preds = %160, %157
  %172 = icmp eq i32 %1, 1
  br i1 %172, label %173, label %183

173:                                              ; preds = %171
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 8
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  store i32 1, ptr %174, align 8, !tbaa !270
  store i32 1, ptr %175, align 4, !tbaa !271
  %177 = load ptr, ptr %176, align 8, !tbaa !219
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %177, i64 0, i32 30
  store i32 1, ptr %178, align 4, !tbaa !272
  %179 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %177, i64 0, i32 29
  store i8 1, ptr %179, align 8, !tbaa !273
  %180 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %177, i64 0, i32 28
  store ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, ptr %180, align 8, !tbaa !230
  br label %289

181:                                              ; preds = %221, %267, %218
  %182 = landingpad { ptr, i32 }
          cleanup
  br label %435

183:                                              ; preds = %171
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %185 = load i32, ptr %184, align 8, !tbaa !270
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %289, label %221

187:                                              ; preds = %165, %153, %157
  br i1 %152, label %192, label %188, !prof !232

188:                                              ; preds = %187
  %189 = load i16, ptr %147, align 2, !tbaa !153
  %190 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, align 2, !tbaa !153
  %191 = icmp eq i16 %189, %190
  br i1 %191, label %195, label %221, !prof !246

192:                                              ; preds = %187
  %193 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, align 2, !tbaa !153
  %194 = icmp eq i16 %193, 0
  br i1 %194, label %206, label %221

195:                                              ; preds = %188, %200
  %196 = phi i16 [ %203, %200 ], [ %189, %188 ]
  %197 = phi ptr [ %202, %200 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_0E, %188 ]
  %198 = phi ptr [ %201, %200 ], [ %147, %188 ]
  %199 = icmp eq i16 %196, 0
  br i1 %199, label %206, label %200, !prof !274

200:                                              ; preds = %195
  %201 = getelementptr inbounds i16, ptr %198, i64 1
  %202 = getelementptr inbounds i16, ptr %197, i64 1
  %203 = load i16, ptr %201, align 2, !tbaa !153
  %204 = load i16, ptr %202, align 2, !tbaa !153
  %205 = icmp eq i16 %203, %204
  br i1 %205, label %195, label %221, !prof !275, !llvm.loop !265

206:                                              ; preds = %195, %192
  %207 = icmp eq i32 %1, 1
  br i1 %207, label %208, label %289, !prof !226

208:                                              ; preds = %206
  %209 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 61
  %210 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 8
  %211 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  store i32 0, ptr %209, align 8, !tbaa !270
  store i32 0, ptr %210, align 4, !tbaa !271
  %212 = load ptr, ptr %211, align 8, !tbaa !219
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %212, i64 0, i32 30
  store i32 0, ptr %213, align 4, !tbaa !272
  %214 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !tbaa !276, !range !190, !noundef !191
  %215 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %212, i64 0, i32 29
  store i8 %214, ptr %215, align 8, !tbaa !273
  %216 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %212, i64 0, i32 28
  store ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, ptr %216, align 8, !tbaa !230
  br label %289

217:                                              ; preds = %145
  br i1 %118, label %218, label %223, !prof !103

218:                                              ; preds = %217
  %219 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef %147)
          to label %220 unwind label %181

220:                                              ; preds = %218
  br i1 %219, label %289, label %221

221:                                              ; preds = %200, %220, %192, %188, %183
  %222 = phi i32 [ 189, %183 ], [ 189, %188 ], [ 189, %192 ], [ 191, %220 ], [ 189, %200 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %222, ptr noundef %147, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %289 unwind label %181

223:                                              ; preds = %217
  br i1 %119, label %224, label %289, !prof !246

224:                                              ; preds = %223
  %225 = icmp eq ptr %147, null
  br i1 %225, label %230, label %226, !prof !103

226:                                              ; preds = %224
  %227 = load i16, ptr %147, align 2, !tbaa !153
  %228 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgYesStringE, align 2, !tbaa !153
  %229 = icmp eq i16 %227, %228
  br i1 %229, label %233, label %246, !prof !246

230:                                              ; preds = %224
  %231 = load i16, ptr @_ZN11xercesc_2_76XMLUni11fgYesStringE, align 2, !tbaa !153
  %232 = icmp eq i16 %231, 0
  br i1 %232, label %244, label %246

233:                                              ; preds = %226, %238
  %234 = phi i16 [ %241, %238 ], [ %227, %226 ]
  %235 = phi ptr [ %240, %238 ], [ @_ZN11xercesc_2_76XMLUni11fgYesStringE, %226 ]
  %236 = phi ptr [ %239, %238 ], [ %147, %226 ]
  %237 = icmp eq i16 %234, 0
  br i1 %237, label %244, label %238, !prof !277

238:                                              ; preds = %233
  %239 = getelementptr inbounds i16, ptr %236, i64 1
  %240 = getelementptr inbounds i16, ptr %235, i64 1
  %241 = load i16, ptr %239, align 2, !tbaa !153
  %242 = load i16, ptr %240, align 2, !tbaa !153
  %243 = icmp eq i16 %241, %242
  br i1 %243, label %233, label %246, !prof !278, !llvm.loop !265

244:                                              ; preds = %233, %230
  %245 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 1, ptr %245, align 2, !tbaa !126
  br label %289

246:                                              ; preds = %238, %226, %230
  br i1 %225, label %251, label %247

247:                                              ; preds = %246
  %248 = load i16, ptr %147, align 2, !tbaa !153
  %249 = load i16, ptr @_ZN11xercesc_2_76XMLUni10fgNoStringE, align 2, !tbaa !153
  %250 = icmp eq i16 %248, %249
  br i1 %250, label %254, label %267

251:                                              ; preds = %246
  %252 = load i16, ptr @_ZN11xercesc_2_76XMLUni10fgNoStringE, align 2, !tbaa !153
  %253 = icmp eq i16 %252, 0
  br i1 %253, label %265, label %267

254:                                              ; preds = %247, %259
  %255 = phi i16 [ %262, %259 ], [ %248, %247 ]
  %256 = phi ptr [ %261, %259 ], [ @_ZN11xercesc_2_76XMLUni10fgNoStringE, %247 ]
  %257 = phi ptr [ %260, %259 ], [ %147, %247 ]
  %258 = icmp eq i16 %255, 0
  br i1 %258, label %265, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds i16, ptr %257, i64 1
  %261 = getelementptr inbounds i16, ptr %256, i64 1
  %262 = load i16, ptr %260, align 2, !tbaa !153
  %263 = load i16, ptr %261, align 2, !tbaa !153
  %264 = icmp eq i16 %262, %263
  br i1 %264, label %254, label %267, !llvm.loop !265

265:                                              ; preds = %254, %251
  %266 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %266, align 2, !tbaa !126
  br label %289

267:                                              ; preds = %259, %247, %251
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 192)
          to label %268 unwind label %181

268:                                              ; preds = %267
  %269 = load i32, ptr %138, align 8, !tbaa !146
  switch i32 %269, label %289 [
    i32 3, label %270
    i32 2, label %282
  ]

270:                                              ; preds = %268
  %271 = load i16, ptr %147, align 2, !tbaa !153
  switch i16 %271, label %280 [
    i16 121, label %272
    i16 89, label %272
  ]

272:                                              ; preds = %270, %270
  %273 = getelementptr inbounds i16, ptr %147, i64 1
  %274 = load i16, ptr %273, align 2, !tbaa !153
  switch i16 %274, label %280 [
    i16 101, label %275
    i16 69, label %275
  ]

275:                                              ; preds = %272, %272
  %276 = getelementptr inbounds i16, ptr %147, i64 2
  %277 = load i16, ptr %276, align 2, !tbaa !153
  switch i16 %277, label %280 [
    i16 115, label %278
    i16 83, label %278
  ]

278:                                              ; preds = %275, %275
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 1, ptr %279, align 2, !tbaa !126
  br label %289

280:                                              ; preds = %275, %272, %270
  %281 = icmp eq i32 %269, 2
  br i1 %281, label %282, label %289

282:                                              ; preds = %268, %280
  %283 = load i16, ptr %147, align 2, !tbaa !153
  switch i16 %283, label %289 [
    i16 110, label %284
    i16 78, label %284
  ]

284:                                              ; preds = %282, %282
  %285 = getelementptr inbounds i16, ptr %147, i64 1
  %286 = load i16, ptr %285, align 2, !tbaa !153
  switch i16 %286, label %289 [
    i16 111, label %287
    i16 79, label %287
  ]

287:                                              ; preds = %284, %284
  %288 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %288, align 2, !tbaa !126
  br label %289

289:                                              ; preds = %144, %144, %221, %284, %268, %208, %173, %206, %183, %223, %265, %280, %287, %278, %244, %220, %282, %25
  %290 = phi i32 [ %21, %25 ], [ %131, %282 ], [ %131, %220 ], [ %131, %244 ], [ %131, %278 ], [ %131, %287 ], [ %131, %280 ], [ %131, %265 ], [ %131, %223 ], [ %131, %183 ], [ %131, %173 ], [ %131, %206 ], [ %131, %208 ], [ %131, %268 ], [ %131, %284 ], [ %131, %221 ], [ %131, %144 ], [ %131, %144 ]
  %291 = phi i32 [ 3, %25 ], [ 0, %282 ], [ 0, %220 ], [ 0, %244 ], [ 0, %278 ], [ 0, %287 ], [ 0, %280 ], [ 0, %265 ], [ 0, %223 ], [ 0, %183 ], [ 0, %173 ], [ 0, %206 ], [ 0, %208 ], [ 0, %268 ], [ 0, %284 ], [ 0, %221 ], [ 1, %144 ], [ 1, %144 ]
  switch i32 %291, label %414 [
    i32 0, label %20
    i32 3, label %292
  ], !prof !279, !llvm.loop !280

292:                                              ; preds = %289, %304
  %293 = phi i64 [ %306, %304 ], [ 0, %289 ]
  %294 = phi i32 [ %305, %304 ], [ 0, %289 ]
  %295 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %293
  %296 = load i32, ptr %295, align 4, !tbaa !170
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %304, label %298, !prof !281

298:                                              ; preds = %292
  %299 = add nsw i32 %294, 1
  %300 = icmp eq i32 %296, %299
  br i1 %300, label %304, label %301, !prof !226

301:                                              ; preds = %298
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 269)
          to label %308 unwind label %302

302:                                              ; preds = %301
  %303 = landingpad { ptr, i32 }
          cleanup
  br label %435

304:                                              ; preds = %298, %292
  %305 = phi i32 [ %294, %292 ], [ %296, %298 ]
  %306 = add nuw nsw i64 %293, 1
  %307 = icmp eq i64 %293, 0
  br i1 %307, label %292, label %308, !prof !281, !llvm.loop !282

308:                                              ; preds = %304, %301
  %309 = icmp eq i32 %1, 1
  %310 = load i32, ptr %3, align 16
  %311 = icmp eq i32 %310, -1
  %312 = select i1 %309, i1 %311, i1 false, !prof !226
  br i1 %312, label %330, label %319, !prof !232

313:                                              ; preds = %343
  %314 = landingpad { ptr, i32 }
          cleanup
  br label %435

315:                                              ; preds = %336
  %316 = landingpad { ptr, i32 }
          cleanup
  br label %435

317:                                              ; preds = %330, %342, %339, %335, %332, %325
  %318 = landingpad { ptr, i32 }
          cleanup
  br label %435

319:                                              ; preds = %308
  %320 = icmp eq i32 %1, 0
  br i1 %320, label %321, label %332, !prof !232

321:                                              ; preds = %319
  %322 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 2
  %323 = load i32, ptr %322, align 8, !tbaa !170
  %324 = icmp eq i32 %323, -1
  br i1 %324, label %326, label %325

325:                                              ; preds = %321
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 286)
          to label %326 unwind label %317

326:                                              ; preds = %325, %321
  %327 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 1
  %328 = load i32, ptr %327, align 4, !tbaa !170
  %329 = icmp eq i32 %328, -1
  br i1 %329, label %330, label %332

330:                                              ; preds = %308, %326
  %331 = phi i32 [ 287, %326 ], [ 285, %308 ]
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %331)
          to label %332 unwind label %317

332:                                              ; preds = %330, %319, %326
  %333 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 63)
          to label %334 unwind label %317, !prof !226

334:                                              ; preds = %332
  br i1 %333, label %339, label %335, !prof !226

335:                                              ; preds = %334
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 190)
          to label %336 unwind label %317

336:                                              ; preds = %335, %338
  %337 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %338 unwind label %315

338:                                              ; preds = %336
  switch i16 %337, label %336 [
    i16 62, label %346
    i16 0, label %346
  ]

339:                                              ; preds = %334
  %340 = invoke noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %18, i16 noundef zeroext 62)
          to label %341 unwind label %317, !prof !226

341:                                              ; preds = %339
  br i1 %340, label %346, label %342, !prof !226

342:                                              ; preds = %341
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 190)
          to label %343 unwind label %317

343:                                              ; preds = %342, %345
  %344 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %345 unwind label %313

345:                                              ; preds = %343
  switch i16 %344, label %343 [
    i16 62, label %346
    i16 0, label %346
  ]

346:                                              ; preds = %338, %338, %345, %345, %341
  %347 = invoke noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80) %18)
          to label %348 unwind label %367, !prof !226

348:                                              ; preds = %346
  %349 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 1
  %350 = load i32, ptr %349, align 4, !tbaa !170
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %369, label %352, !prof !226

352:                                              ; preds = %348
  %353 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %354 = load ptr, ptr %353, align 8, !tbaa !219
  %355 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %7, i64 0, i32 6
  %356 = load ptr, ptr %355, align 8, !tbaa !152
  %357 = load i32, ptr %7, align 8, !tbaa !146
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds i16, ptr %356, i64 %358
  store i16 0, ptr %359, align 2, !tbaa !153
  %360 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %354, ptr noundef %356)
          to label %361 unwind label %367

361:                                              ; preds = %352
  %362 = load ptr, ptr %355, align 8, !tbaa !152
  %363 = load i32, ptr %7, align 8, !tbaa !146
  %364 = zext i32 %363 to i64
  %365 = getelementptr inbounds i16, ptr %362, i64 %364
  store i16 0, ptr %365, align 2, !tbaa !153
  br i1 %360, label %369, label %366

366:                                              ; preds = %361
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 4, ptr noundef %362, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %369 unwind label %367

367:                                              ; preds = %400, %375, %366, %352, %346
  %368 = landingpad { ptr, i32 }
          cleanup
  br label %435

369:                                              ; preds = %361, %366, %348
  %370 = phi ptr [ %347, %366 ], [ %347, %348 ], [ %362, %361 ]
  br i1 %309, label %371, label %394, !prof !226

371:                                              ; preds = %369
  %372 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %373 = load ptr, ptr %372, align 8, !tbaa !187
  %374 = icmp eq ptr %373, null
  br i1 %374, label %414, label %375, !prof !232

375:                                              ; preds = %371
  %376 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  %377 = load ptr, ptr %376, align 8, !tbaa !152
  %378 = load i32, ptr %6, align 8, !tbaa !146
  %379 = zext i32 %378 to i64
  %380 = getelementptr inbounds i16, ptr %377, i64 %379
  store i16 0, ptr %380, align 2, !tbaa !153
  %381 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %7, i64 0, i32 6
  %382 = load ptr, ptr %381, align 8, !tbaa !152
  %383 = load i32, ptr %7, align 8, !tbaa !146
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds i16, ptr %382, i64 %384
  store i16 0, ptr %385, align 2, !tbaa !153
  %386 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %9, i64 0, i32 6
  %387 = load ptr, ptr %386, align 8, !tbaa !152
  %388 = load i32, ptr %9, align 8, !tbaa !146
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i16, ptr %387, i64 %389
  store i16 0, ptr %390, align 2, !tbaa !153
  %391 = load ptr, ptr %373, align 8, !tbaa !100
  %392 = getelementptr inbounds ptr, ptr %391, i64 13
  %393 = load ptr, ptr %392, align 8
  invoke void %393(ptr noundef nonnull align 8 dereferenceable(8) %373, ptr noundef %377, ptr noundef %382, ptr noundef %387, ptr noundef %370)
          to label %414 unwind label %367, !prof !283

394:                                              ; preds = %369
  %395 = icmp eq i32 %1, 0
  br i1 %395, label %396, label %414

396:                                              ; preds = %394
  %397 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %398 = load ptr, ptr %397, align 8, !tbaa !188
  %399 = icmp eq ptr %398, null
  br i1 %399, label %414, label %400

400:                                              ; preds = %396
  %401 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %6, i64 0, i32 6
  %402 = load ptr, ptr %401, align 8, !tbaa !152
  %403 = load i32, ptr %6, align 8, !tbaa !146
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds i16, ptr %402, i64 %404
  store i16 0, ptr %405, align 2, !tbaa !153
  %406 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %7, i64 0, i32 6
  %407 = load ptr, ptr %406, align 8, !tbaa !152
  %408 = load i32, ptr %7, align 8, !tbaa !146
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i16, ptr %407, i64 %409
  store i16 0, ptr %410, align 2, !tbaa !153
  %411 = load ptr, ptr %398, align 8, !tbaa !100
  %412 = getelementptr inbounds ptr, ptr %411, i64 17
  %413 = load ptr, ptr %412, align 8
  invoke void %413(ptr noundef nonnull align 8 dereferenceable(8) %398, ptr noundef %402, ptr noundef %407)
          to label %414 unwind label %367

414:                                              ; preds = %289, %400, %375, %371, %396, %394
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %418 unwind label %415, !prof !226

415:                                              ; preds = %414
  %416 = landingpad { ptr, i32 }
          catch ptr null
  %417 = extractvalue { ptr, i32 } %416, 0
  tail call void @__clang_call_terminate(ptr %417) #20
  unreachable

418:                                              ; preds = %414
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %422 unwind label %419, !prof !226

419:                                              ; preds = %418
  %420 = landingpad { ptr, i32 }
          catch ptr null
  %421 = extractvalue { ptr, i32 } %420, 0
  tail call void @__clang_call_terminate(ptr %421) #20
  unreachable

422:                                              ; preds = %418
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %426 unwind label %423, !prof !226

423:                                              ; preds = %422
  %424 = landingpad { ptr, i32 }
          catch ptr null
  %425 = extractvalue { ptr, i32 } %424, 0
  tail call void @__clang_call_terminate(ptr %425) #20
  unreachable

426:                                              ; preds = %422
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %430 unwind label %427, !prof !226

427:                                              ; preds = %426
  %428 = landingpad { ptr, i32 }
          catch ptr null
  %429 = extractvalue { ptr, i32 } %428, 0
  tail call void @__clang_call_terminate(ptr %429) #20
  unreachable

430:                                              ; preds = %426
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %434 unwind label %431, !prof !226

431:                                              ; preds = %430
  %432 = landingpad { ptr, i32 }
          catch ptr null
  %433 = extractvalue { ptr, i32 } %432, 0
  tail call void @__clang_call_terminate(ptr %433) #20
  unreachable

434:                                              ; preds = %430
  ret void

435:                                              ; preds = %313, %317, %315, %35, %37, %302, %367, %181
  %436 = phi { ptr, i32 } [ %182, %181 ], [ %368, %367 ], [ %303, %302 ], [ %36, %35 ], [ %38, %37 ], [ %314, %313 ], [ %316, %315 ], [ %318, %317 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %13)
          to label %440 unwind label %437

437:                                              ; preds = %435
  %438 = landingpad { ptr, i32 }
          catch ptr null
  %439 = extractvalue { ptr, i32 } %438, 0
  tail call void @__clang_call_terminate(ptr %439) #20
  unreachable

440:                                              ; preds = %435, %33
  %441 = phi { ptr, i32 } [ %34, %33 ], [ %436, %435 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %445 unwind label %442

442:                                              ; preds = %440
  %443 = landingpad { ptr, i32 }
          catch ptr null
  %444 = extractvalue { ptr, i32 } %443, 0
  tail call void @__clang_call_terminate(ptr %444) #20
  unreachable

445:                                              ; preds = %440, %31
  %446 = phi { ptr, i32 } [ %32, %31 ], [ %441, %440 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %450 unwind label %447

447:                                              ; preds = %445
  %448 = landingpad { ptr, i32 }
          catch ptr null
  %449 = extractvalue { ptr, i32 } %448, 0
  tail call void @__clang_call_terminate(ptr %449) #20
  unreachable

450:                                              ; preds = %445, %29
  %451 = phi { ptr, i32 } [ %30, %29 ], [ %446, %445 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %455 unwind label %452

452:                                              ; preds = %450
  %453 = landingpad { ptr, i32 }
          catch ptr null
  %454 = extractvalue { ptr, i32 } %453, 0
  tail call void @__clang_call_terminate(ptr %454) #20
  unreachable

455:                                              ; preds = %450, %27
  %456 = phi { ptr, i32 } [ %28, %27 ], [ %451, %450 ]
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %460 unwind label %457

457:                                              ; preds = %455
  %458 = landingpad { ptr, i32 }
          catch ptr null
  %459 = extractvalue { ptr, i32 } %458, 0
  tail call void @__clang_call_terminate(ptr %459) #20
  unreachable

460:                                              ; preds = %455
  resume { ptr, i32 } %456
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner12scanUpToWSOrERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) local_unnamed_addr #5 align 2 !prof !95 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2)
  %5 = load i32, ptr %1, align 8, !tbaa !146
  ret i32 %5
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner6scanEqEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #14 align 2 !prof !284 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %1)
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %3, i16 noundef zeroext 61)
  br i1 %5, label %6, label %8, !prof !285

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %3, i1 noundef zeroext %1)
  br label %8

8:                                                ; preds = %2, %6
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #5 align 2 !prof !104 {
  %3 = alloca i16, align 2
  store i32 0, ptr %1, align 8, !tbaa !146
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  store i16 0, ptr %5, align 2, !tbaa !153
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #19
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %7 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef nonnull align 2 dereferenceable(2) %3)
  br i1 %7, label %8, label %30, !prof !136

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  br label %10

10:                                               ; preds = %8, %27
  %11 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %6)
  %12 = load i16, ptr %3, align 2, !tbaa !153
  %13 = icmp eq i16 %11, %12
  br i1 %13, label %27, label %14, !prof !286

14:                                               ; preds = %10
  %15 = icmp eq i16 %11, 0
  br i1 %15, label %27, label %16, !prof !287

16:                                               ; preds = %14
  %17 = load i32, ptr %1, align 8, !tbaa !146
  %18 = load i32, ptr %9, align 4, !tbaa !147
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21, !prof !287

20:                                               ; preds = %16
  call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %21

21:                                               ; preds = %16, %20
  %22 = load ptr, ptr %4, align 8, !tbaa !152
  %23 = load i32, ptr %1, align 8, !tbaa !146
  %24 = add i32 %23, 1
  store i32 %24, ptr %1, align 8, !tbaa !146
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds i16, ptr %22, i64 %25
  store i16 %11, ptr %26, align 2, !tbaa !153
  br label %27

27:                                               ; preds = %10, %14, %21
  %28 = phi i32 [ 0, %21 ], [ 1, %14 ], [ 3, %10 ]
  switch i32 %28, label %30 [
    i32 0, label %10
    i32 3, label %29
  ], !prof !288, !llvm.loop !289

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %27, %29, %2
  %31 = phi i1 [ false, %2 ], [ true, %29 ], [ false, %27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #19
  ret i1 %31
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString14isValidEncNameEPKt(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !290 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 8, !tbaa !291
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1), !prof !292
  br i1 %8, label %9, label %17, !prof !293

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !291
  %11 = load ptr, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %1), !prof !294
  %15 = icmp eq ptr %14, null
  %16 = select i1 %15, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %14, !prof !295
  br label %17

17:                                               ; preds = %2, %9
  %18 = phi ptr [ %16, %9 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %2 ]
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner10getURITextEjRNS_9XMLBufferE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #5 align 2 !prof !95 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 8, !tbaa !291
  %6 = load ptr, ptr %5, align 8, !tbaa !100
  %7 = getelementptr inbounds ptr, ptr %6, i64 7
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1)
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !291
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %1)
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 0, ptr %2, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %15)
  br label %18

18:                                               ; preds = %3, %17, %10
  %19 = phi i1 [ %16, %10 ], [ true, %17 ], [ false, %3 ]
  ret i1 %19
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %5 = alloca %"struct.xercesc_2_7::ReaderMgr::LastExtEntityInfo", align 8
  %6 = alloca %"class.xercesc_2_7::XMLResourceIdentifier", align 8
  %7 = alloca %"class.xercesc_2_7::XMLURL", align 8
  %8 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %9 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %10 = alloca %"class.xercesc_2_7::MalformedURLException", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %12 = load ptr, ptr %11, align 8, !tbaa !189
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  call void @_ZNK11xercesc_2_79ReaderMgr20getLastExtEntityInfoERNS0_17LastExtEntityInfoE(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull align 8 dereferenceable(32) %5)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #19
  %16 = load ptr, ptr %5, align 8, !tbaa !198
  store i32 4, ptr %6, align 8, !tbaa !296
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 1
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %17, align 8, !tbaa !299
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 2
  store ptr %1, ptr %18, align 8, !tbaa !300
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 3
  store ptr %16, ptr %19, align 8, !tbaa !301
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 4
  store ptr null, ptr %20, align 8, !tbaa !302
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %6, i64 0, i32 5
  store ptr %15, ptr %21, align 8, !tbaa !303
  %22 = load ptr, ptr %11, align 8, !tbaa !189
  %23 = load ptr, ptr %22, align 8, !tbaa !100
  %24 = getelementptr inbounds ptr, ptr %23, i64 6
  %25 = load ptr, ptr %24, align 8
  %26 = call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %27

27:                                               ; preds = %14, %4
  %28 = phi ptr [ %26, %14 ], [ null, %4 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %162

30:                                               ; preds = %27
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 23
  %32 = load i8, ptr %31, align 1, !tbaa !304, !range !190, !noundef !191
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %181

34:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #19
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %36 = load ptr, ptr %35, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_76XMLURLC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(81) %7, ptr noundef %36)
          to label %37 unwind label %52

37:                                               ; preds = %34
  %38 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLURL5parseEPKtRS0_(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(81) %7)
          to label %39 unwind label %54

39:                                               ; preds = %37
  br i1 %38, label %40, label %95

40:                                               ; preds = %39
  %41 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL10isRelativeEv(ptr noundef nonnull align 8 dereferenceable(81) %7)
          to label %42 unwind label %54

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %44 = load i8, ptr %43, align 8, !tbaa !120, !range !190, !noundef !191
  %45 = icmp eq i8 %44, 0
  br i1 %41, label %46, label %71

46:                                               ; preds = %42
  br i1 %45, label %47, label %58

47:                                               ; preds = %46
  %48 = load ptr, ptr %35, align 8, !tbaa !145
  %49 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %48)
          to label %50 unwind label %54

50:                                               ; preds = %47
  %51 = load ptr, ptr %35, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %49, ptr noundef %1, ptr noundef %51)
          to label %118 unwind label %56

52:                                               ; preds = %34
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %123

54:                                               ; preds = %99, %88, %72, %47, %40, %37
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %121

56:                                               ; preds = %50
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %49, ptr noundef %48) #19
  br label %121

58:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #19
  %59 = load ptr, ptr %35, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 1688, i32 noundef 103, ptr noundef %59)
          to label %60 unwind label %65

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %61, align 1, !tbaa !125
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %8, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %63, ptr noundef null, ptr noundef null)
          to label %64 unwind label %67

64:                                               ; preds = %60
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #19
  br label %118

65:                                               ; preds = %58
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %69

67:                                               ; preds = %60
  %68 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #19
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #19
  br label %121

71:                                               ; preds = %42
  br i1 %45, label %88, label %72

72:                                               ; preds = %71
  %73 = invoke noundef zeroext i1 @_ZNK11xercesc_2_76XMLURL14hasInvalidCharEv(ptr noundef nonnull align 8 dereferenceable(81) %7)
          to label %74 unwind label %54

74:                                               ; preds = %72
  br i1 %73, label %75, label %88

75:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %9) #19
  %76 = load ptr, ptr %35, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1702, i32 noundef 99, ptr noundef %76)
          to label %77 unwind label %82

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %78, align 1, !tbaa !125
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %9, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %80, ptr noundef null, ptr noundef null)
          to label %81 unwind label %84

81:                                               ; preds = %77
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #19
  br label %118

82:                                               ; preds = %75
  %83 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %86

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #19
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %83, %82 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %9) #19
  br label %121

88:                                               ; preds = %74, %71
  %89 = load ptr, ptr %35, align 8, !tbaa !145
  %90 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %89)
          to label %91 unwind label %54

91:                                               ; preds = %88
  %92 = load ptr, ptr %35, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_714URLInputSourceC1ERKNS_6XMLURLEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %90, ptr noundef nonnull align 8 dereferenceable(81) %7, ptr noundef %92)
          to label %118 unwind label %93

93:                                               ; preds = %91
  %94 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %90, ptr noundef %89) #19
  br label %121

95:                                               ; preds = %39
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 2
  %97 = load i8, ptr %96, align 8, !tbaa !120, !range !190, !noundef !191
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load ptr, ptr %35, align 8, !tbaa !145
  %101 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %100)
          to label %102 unwind label %54

102:                                              ; preds = %99
  %103 = load ptr, ptr %35, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_720LocalFileInputSourceC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(41) %101, ptr noundef %1, ptr noundef %103)
          to label %118 unwind label %104

104:                                              ; preds = %102
  %105 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %101, ptr noundef %100) #19
  br label %121

106:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 1723, i32 noundef 99, ptr noundef null)
          to label %107 unwind label %112

107:                                              ; preds = %106
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %108, align 1, !tbaa !125
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %10, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 292, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE, ptr noundef %110, ptr noundef null, ptr noundef null)
          to label %111 unwind label %114

111:                                              ; preds = %107
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  br label %118

112:                                              ; preds = %106
  %113 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %116

114:                                              ; preds = %107
  %115 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi { ptr, i32 } [ %115, %114 ], [ %113, %112 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  br label %121

118:                                              ; preds = %50, %91, %102, %111, %81, %64
  %119 = phi ptr [ null, %64 ], [ null, %81 ], [ null, %111 ], [ %49, %50 ], [ %90, %91 ], [ %101, %102 ]
  %120 = phi i1 [ false, %64 ], [ false, %81 ], [ false, %111 ], [ true, %50 ], [ true, %91 ], [ true, %102 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %7) #19
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #19
  br i1 %120, label %162, label %181

121:                                              ; preds = %116, %104, %93, %86, %69, %56, %54
  %122 = phi { ptr, i32 } [ %70, %69 ], [ %57, %56 ], [ %55, %54 ], [ %87, %86 ], [ %94, %93 ], [ %117, %116 ], [ %105, %104 ]
  call void @_ZN11xercesc_2_76XMLURLD1Ev(ptr noundef nonnull align 8 dereferenceable(81) %7) #19
  br label %123

123:                                              ; preds = %121, %52
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %53, %52 ]
  %125 = extractvalue { ptr, i32 } %124, 1
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #19
  %126 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %183

128:                                              ; preds = %123
  %129 = extractvalue { ptr, i32 } %124, 0
  %130 = call ptr @__cxa_begin_catch(ptr %129) #19
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 1, ptr %131, align 1, !tbaa !125
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %130, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !196
  %134 = add i32 %133, -1
  %135 = icmp ult i32 %134, 4
  br i1 %135, label %136, label %143

136:                                              ; preds = %128
  %137 = load ptr, ptr %130, align 8, !tbaa !100
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8
  %140 = invoke noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(48) %130)
          to label %156 unwind label %141

141:                                              ; preds = %156, %154, %152, %136
  %142 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %183 unwind label %185

143:                                              ; preds = %128
  %144 = add i32 %133, -5
  %145 = icmp ult i32 %144, 397
  %146 = and i32 %133, -2
  %147 = icmp ne i32 %146, 402
  %148 = or i1 %145, %147
  %149 = load ptr, ptr %130, align 8, !tbaa !100
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8
  br i1 %148, label %152, label %154

152:                                              ; preds = %143
  %153 = invoke noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(48) %130)
          to label %156 unwind label %141

154:                                              ; preds = %143
  %155 = invoke noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(48) %130)
          to label %156 unwind label %141

156:                                              ; preds = %154, %152, %136
  %157 = phi i32 [ 7, %136 ], [ 292, %152 ], [ 157, %154 ]
  %158 = phi ptr [ %140, %136 ], [ %153, %152 ], [ %155, %154 ]
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %130, i64 0, i32 4
  %160 = load ptr, ptr %159, align 8, !tbaa !193
  invoke void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %157, ptr noundef %158, ptr noundef %160, ptr noundef null, ptr noundef null)
          to label %161 unwind label %141

161:                                              ; preds = %156
  call void @__cxa_end_catch()
  br label %181

162:                                              ; preds = %118, %27
  %163 = phi ptr [ %28, %27 ], [ %119, %118 ]
  %164 = load ptr, ptr %0, align 8, !tbaa !100
  %165 = getelementptr inbounds ptr, ptr %164, i64 10
  %166 = load ptr, ptr %165, align 8
  %167 = invoke noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(41) %163, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %168 unwind label %174

168:                                              ; preds = %162
  %169 = icmp eq ptr %163, null
  br i1 %169, label %181, label %170

170:                                              ; preds = %168
  %171 = load ptr, ptr %163, align 8, !tbaa !100
  %172 = getelementptr inbounds ptr, ptr %171, i64 1
  %173 = load ptr, ptr %172, align 8
  call void %173(ptr noundef nonnull align 8 dereferenceable(41) %163) #19
  br label %181

174:                                              ; preds = %162
  %175 = landingpad { ptr, i32 }
          cleanup
  %176 = icmp eq ptr %163, null
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr %163, align 8, !tbaa !100
  %179 = getelementptr inbounds ptr, ptr %178, i64 1
  %180 = load ptr, ptr %179, align 8
  call void %180(ptr noundef nonnull align 8 dereferenceable(41) %163) #19
  br label %183

181:                                              ; preds = %170, %168, %30, %118, %161
  %182 = phi ptr [ null, %118 ], [ null, %161 ], [ null, %30 ], [ %167, %168 ], [ %167, %170 ]
  ret ptr %182

183:                                              ; preds = %141, %177, %174, %123
  %184 = phi { ptr, i32 } [ %124, %123 ], [ %175, %174 ], [ %175, %177 ], [ %142, %141 ]
  resume { ptr, i32 } %184

185:                                              ; preds = %141
  %186 = landingpad { ptr, i32 }
          catch ptr null
  %187 = extractvalue { ptr, i32 } %186, 0
  call void @__clang_call_terminate(ptr %187) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %7)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %9 = load ptr, ptr %6, align 8, !tbaa !145
  store ptr %8, ptr %5, align 8, !tbaa !205
  %10 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !207
  %11 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %8, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %12 unwind label %13

12:                                               ; preds = %4
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret ptr %11

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !104 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  store ptr %1, ptr %3, align 8, !tbaa !291
  %4 = load ptr, ptr %1, align 8, !tbaa !100
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE), !prof !305
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  store i32 %7, ptr %8, align 4, !tbaa !306
  %9 = load ptr, ptr %3, align 8, !tbaa !291
  %10 = load ptr, ptr %9, align 8, !tbaa !100
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgUnknownURINameE), !prof !305
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  store i32 %13, ptr %14, align 8, !tbaa !307
  %15 = load ptr, ptr %3, align 8, !tbaa !291
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgXMLURINameE), !prof !305
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  store i32 %19, ptr %20, align 4, !tbaa !308
  %21 = load ptr, ptr %3, align 8, !tbaa !291
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef i32 %24(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE), !prof !305
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  store i32 %25, ptr %26, align 8, !tbaa !309
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16checkInternalDTDEbPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %6 = load i8, ptr %5, align 1, !tbaa !129, !range !190, !noundef !191
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %11 = load ptr, ptr %10, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 1812, i32 noundef 118, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #19
  br label %67

15:                                               ; preds = %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %17 = load i8, ptr %16, align 2, !tbaa !130, !range !190, !noundef !191
  %18 = icmp ne i8 %17, 0
  %19 = and i1 %18, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %21 = load i8, ptr %20, align 1, !range !190
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %19, i1 %22, i1 false
  br i1 %23, label %24, label %66

24:                                               ; preds = %15
  %25 = load ptr, ptr %0, align 8, !tbaa !100
  %26 = getelementptr inbounds ptr, ptr %25, i64 17
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %2, ptr noundef %3)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %66, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %32 = load ptr, ptr %31, align 8, !tbaa !139
  %33 = load ptr, ptr %28, align 8, !tbaa !100
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(41) %28)
          to label %37 unwind label %53

37:                                               ; preds = %30
  %38 = invoke noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %32, ptr noundef %36)
          to label %39 unwind label %53

39:                                               ; preds = %37
  %40 = icmp eq ptr %38, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %38, align 8, !tbaa !100
  %43 = getelementptr inbounds ptr, ptr %42, i64 5
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %46 unwind label %53

46:                                               ; preds = %41
  %47 = icmp eq i32 %45, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %46
  %49 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %51 = load ptr, ptr %50, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %49, ptr noundef nonnull @.str, i32 noundef 1823, i32 noundef 118, ptr noundef %51)
          to label %52 unwind label %55

52:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %49, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
          to label %69 unwind label %53

53:                                               ; preds = %52, %41, %37, %30
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %61

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %49) #19
  br label %61

57:                                               ; preds = %39, %46
  %58 = load ptr, ptr %28, align 8, !tbaa !100
  %59 = getelementptr inbounds ptr, ptr %58, i64 1
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(41) %28) #19
  br label %66

61:                                               ; preds = %53, %55
  %62 = phi { ptr, i32 } [ %54, %53 ], [ %56, %55 ]
  %63 = load ptr, ptr %28, align 8, !tbaa !100
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(41) %28) #19
  br label %67

66:                                               ; preds = %24, %57, %15
  ret void

67:                                               ; preds = %61, %13
  %68 = phi { ptr, i32 } [ %14, %13 ], [ %62, %61 ]
  resume { ptr, i32 } %68

69:                                               ; preds = %52
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #19
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %4 = load ptr, ptr %3, align 8, !tbaa !159
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %4), !prof !310
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %10 = load ptr, ptr %9, align 8, !tbaa !145
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %8, i1 noundef zeroext false, ptr noundef %10)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 4
  br label %14

14:                                               ; preds = %42, %1
  %15 = load ptr, ptr %11, align 8, !tbaa !311
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23, !prof !246

17:                                               ; preds = %14
  %18 = load i32, ptr %12, align 8, !tbaa !314
  %19 = load ptr, ptr %13, align 8, !tbaa !315
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %19, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !316
  %22 = icmp eq i32 %18, %21
  br i1 %22, label %45, label %23, !prof !246

23:                                               ; preds = %17, %14
  %24 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %25 unwind label %43

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %24, i64 0, i32 1
  %27 = load i8, ptr %26, align 8, !tbaa !318, !range !190, !noundef !191
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %24, i64 0, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !320, !range !190, !noundef !191
  %33 = icmp eq i8 %32, 0
  %34 = load i8, ptr %30, align 8, !range !190
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLRefInfo", ptr %24, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !321
  invoke void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef 13, ptr noundef %41, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %42 unwind label %43

42:                                               ; preds = %37, %29, %25
  br label %14, !llvm.loop !322

43:                                               ; preds = %37, %23
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  resume { ptr, i32 } %44

45:                                               ; preds = %17
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !323
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !311
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !314
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !315
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !324
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18, !prof !103

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %14 = load ptr, ptr %10, align 8, !tbaa !324
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.4, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #19
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !311
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !314
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !315
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !316
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !324
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.4, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !311
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !325
  ret ptr %16
}

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !102 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !323, !range !190, !noundef !191
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !246

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !315
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #20
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #19
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 !prof !327 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 7
  %5 = load i8, ptr %4, align 8, !tbaa !328, !range !190, !noundef !191
  store i8 1, ptr %4, align 8, !tbaa !328
  %6 = invoke noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
          to label %7 unwind label %8, !prof !329

7:                                                ; preds = %2
  store i8 %5, ptr %4, align 8, !tbaa !328
  switch i16 %6, label %10 [
    i16 0, label %29
    i16 60, label %11
  ], !prof !330

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  store i8 %5, ptr %4, align 8, !tbaa !328
  resume { ptr, i32 } %9

10:                                               ; preds = %7
  br label %29

11:                                               ; preds = %7
  %12 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !219
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %14, i64 0, i32 15
  %16 = load i32, ptr %15, align 8, !tbaa !331
  store i32 %16, ptr %1, align 4, !tbaa !170
  %17 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  switch i16 %17, label %29 [
    i16 47, label %18
    i16 33, label %20
    i16 63, label %27
  ], !prof !332

18:                                               ; preds = %11
  %19 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  br label %29

20:                                               ; preds = %11
  %21 = load ptr, ptr %13, align 8, !tbaa !219
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %21, ptr noundef nonnull @_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE9gCDATAStr)
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %13, align 8, !tbaa !219
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %24, ptr noundef nonnull @_ZZN11xercesc_2_710XMLScanner14senseNextTokenERjE14gCommentString)
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 173)
  br label %29

27:                                               ; preds = %11
  %28 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  br label %29

29:                                               ; preds = %11, %23, %20, %7, %27, %26, %18, %10
  %30 = phi i32 [ 1, %10 ], [ 3, %18 ], [ 7, %26 ], [ 5, %27 ], [ 4, %7 ], [ 0, %20 ], [ 2, %23 ], [ 6, %11 ]
  ret i32 %30
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner11scanCharRefERtS1_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %4 = alloca [2 x i16], align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 120)
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %5, i16 noundef zeroext 88)
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 267)
  br label %10

10:                                               ; preds = %3, %7, %9
  %11 = phi i32 [ 16, %9 ], [ 10, %7 ], [ 16, %3 ]
  br label %12

12:                                               ; preds = %57, %10
  %13 = phi i32 [ 0, %10 ], [ %58, %57 ]
  %14 = phi i8 [ 0, %10 ], [ %59, %57 ]
  %15 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = call ptr @__cxa_allocate_exception(i64 48) #19
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_722UnexpectedEOFExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 2011, i32 noundef 47, ptr noundef %20)
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_722UnexpectedEOFExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #19
  resume { ptr, i32 } %23

24:                                               ; preds = %12
  %25 = zext i16 %15 to i32
  %26 = icmp eq i16 %15, 59
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
  br label %57

29:                                               ; preds = %24
  %30 = add i16 %15, -48
  %31 = icmp ult i16 %30, 10
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = add i16 %15, -65
  %34 = icmp ult i16 %33, 6
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = add i16 %15, -97
  %37 = icmp ult i16 %36, 6
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  store i16 0, ptr %1, align 2, !tbaa !153
  %39 = and i8 %14, 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 225)
  br label %57

42:                                               ; preds = %38
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 260)
  br label %57

43:                                               ; preds = %35, %32, %29
  %44 = phi i32 [ -48, %29 ], [ -55, %32 ], [ -87, %35 ]
  %45 = add nsw i32 %44, %25
  %46 = icmp ult i32 %45, %11
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds [2 x i16], ptr %4, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  store i16 %15, ptr %4, align 2, !tbaa !153
  store i16 0, ptr %48, align 2, !tbaa !153
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 273, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  br label %54

49:                                               ; preds = %43
  %50 = mul i32 %13, %11
  %51 = add i32 %45, %50
  %52 = icmp ugt i32 %51, 1114111
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 224)
  br label %57

54:                                               ; preds = %49, %47
  %55 = phi i32 [ %13, %47 ], [ %51, %49 ]
  %56 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %5)
  br label %57

57:                                               ; preds = %53, %54, %42, %41, %27
  %58 = phi i32 [ %13, %27 ], [ %55, %54 ], [ %51, %53 ], [ %13, %42 ], [ %13, %41 ]
  %59 = phi i8 [ %14, %27 ], [ 1, %54 ], [ %14, %53 ], [ %14, %42 ], [ %14, %41 ]
  %60 = phi i32 [ 3, %27 ], [ 0, %54 ], [ 1, %53 ], [ 1, %42 ], [ 1, %41 ]
  switch i32 %60, label %87 [
    i32 0, label %12
    i32 3, label %61
  ], !llvm.loop !333

61:                                               ; preds = %57
  %62 = add i32 %58, -65536
  %63 = icmp ult i32 %62, 1048576
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = lshr i32 %62, 10
  %66 = trunc i32 %65 to i16
  %67 = or disjoint i16 %66, -10240
  store i16 %67, ptr %1, align 2, !tbaa !153
  %68 = trunc i32 %58 to i16
  %69 = and i16 %68, 1023
  %70 = or disjoint i16 %69, -9216
  store i16 %70, ptr %2, align 2, !tbaa !153
  br label %87

71:                                               ; preds = %61
  %72 = icmp ult i32 %58, 65534
  br i1 %72, label %73, label %86

73:                                               ; preds = %71
  %74 = trunc i32 %58 to i16
  store i16 %74, ptr %1, align 2, !tbaa !153
  store i16 0, ptr %2, align 2, !tbaa !153
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !219
  %77 = load i16, ptr %1, align 2, !tbaa !153
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %76, i64 0, i32 28
  %79 = load ptr, ptr %78, align 8, !tbaa !230
  %80 = zext i16 %77 to i64
  %81 = getelementptr inbounds i8, ptr %79, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !231
  %83 = and i8 %82, 96
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 224)
  br label %87

86:                                               ; preds = %71
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 224)
  br label %87

87:                                               ; preds = %57, %64, %73, %86, %85
  %88 = phi i1 [ false, %85 ], [ false, %86 ], [ true, %73 ], [ true, %64 ], [ false, %57 ]
  ret i1 %88
}

declare void @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(40), i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner13getNewUIntPtrEv(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 !prof !334 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 35
  %3 = load i32, ptr %2, align 4, !tbaa !335
  %4 = icmp ult i32 %3, 64
  br i1 %4, label %5, label %16, !prof !336

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %9 = load i32, ptr %8, align 8, !tbaa !166
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = zext nneg i32 %3 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = add nuw nsw i32 %3, 1
  store i32 %15, ptr %2, align 4, !tbaa !335
  br label %79

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %18 = load i32, ptr %17, align 8, !tbaa !166
  %19 = add i32 %18, 1
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %21 = load i32, ptr %20, align 8, !tbaa !133
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %16
  %24 = shl i32 %21, 1
  store i32 %24, ptr %20, align 8, !tbaa !133
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %26 = load ptr, ptr %25, align 8, !tbaa !145
  %27 = zext i32 %24 to i64
  %28 = shl nuw nsw i64 %27, 3
  %29 = load ptr, ptr %26, align 8, !tbaa !100
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %26, i64 noundef %28)
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %34 = load ptr, ptr %33, align 8, !tbaa !165
  %35 = load i32, ptr %17, align 8, !tbaa !166
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %34, i64 %38, i1 false)
  %39 = load ptr, ptr %25, align 8, !tbaa !145
  %40 = load ptr, ptr %33, align 8, !tbaa !165
  %41 = load ptr, ptr %39, align 8, !tbaa !100
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %40)
  store ptr %32, ptr %33, align 8, !tbaa !165
  %44 = load i32, ptr %17, align 8, !tbaa !166
  %45 = add i32 %44, 2
  %46 = load i32, ptr %20, align 8, !tbaa !133
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %23
  %49 = zext i32 %45 to i64
  br label %50

50:                                               ; preds = %48, %50
  %51 = phi i64 [ %49, %48 ], [ %54, %50 ]
  %52 = load ptr, ptr %33, align 8, !tbaa !165
  %53 = getelementptr inbounds ptr, ptr %52, i64 %51
  store ptr null, ptr %53, align 8, !tbaa !96
  %54 = add nuw nsw i64 %51, 1
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %46, %55
  br i1 %56, label %57, label %50, !llvm.loop !337

57:                                               ; preds = %50, %23, %16
  %58 = load i32, ptr %17, align 8, !tbaa !166
  %59 = add i32 %58, 1
  store i32 %59, ptr %17, align 8, !tbaa !166
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %61 = load ptr, ptr %60, align 8, !tbaa !145
  %62 = load ptr, ptr %61, align 8, !tbaa !100
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %61, i64 noundef 256)
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %67 = load ptr, ptr %66, align 8, !tbaa !165
  %68 = load i32, ptr %17, align 8, !tbaa !166
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds ptr, ptr %67, i64 %69
  store ptr %65, ptr %70, align 8, !tbaa !96
  %71 = load ptr, ptr %66, align 8, !tbaa !165
  %72 = getelementptr inbounds ptr, ptr %71, i64 %69
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %73, i8 0, i64 256, i1 false)
  store i32 1, ptr %2, align 4, !tbaa !335
  %74 = load ptr, ptr %66, align 8, !tbaa !165
  %75 = load i32, ptr %17, align 8, !tbaa !166
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !96
  br label %79

79:                                               ; preds = %57, %5
  %80 = phi ptr [ %14, %5 ], [ %78, %57 ]
  ret ptr %80
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(776) %0) local_unnamed_addr #15 align 2 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  br label %5

4:                                                ; preds = %5
  ret void

5:                                                ; preds = %1, %5
  %6 = phi i32 [ 0, %1 ], [ %11, %5 ]
  %7 = load ptr, ptr %3, align 8, !tbaa !165
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %10, i8 0, i64 256, i1 false)
  %11 = add i32 %6, 1
  %12 = load i32, ptr %2, align 8, !tbaa !166
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %4, label %5, !prof !136, !llvm.loop !338
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr nocapture noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #5 align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  br label %34

5:                                                ; preds = %34
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 34
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %8 = load ptr, ptr %7, align 8, !tbaa !145
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 33
  %10 = load ptr, ptr %9, align 8, !tbaa !165
  %11 = load ptr, ptr %8, align 8, !tbaa !100
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %10)
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 35
  store i32 0, ptr %14, align 4, !tbaa !335
  store i32 0, ptr %6, align 8, !tbaa !166
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  store i32 2, ptr %15, align 8, !tbaa !133
  %16 = load ptr, ptr %7, align 8, !tbaa !145
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16)
  store ptr %20, ptr %9, align 8, !tbaa !165
  %21 = load ptr, ptr %7, align 8, !tbaa !145
  %22 = load ptr, ptr %21, align 8, !tbaa !100
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef 256)
  %26 = load ptr, ptr %9, align 8, !tbaa !165
  store ptr %25, ptr %26, align 8, !tbaa !96
  %27 = load ptr, ptr %9, align 8, !tbaa !165
  %28 = load i32, ptr %6, align 8, !tbaa !166
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %31, i8 0, i64 256, i1 false)
  %32 = load ptr, ptr %9, align 8, !tbaa !165
  %33 = getelementptr inbounds ptr, ptr %32, i64 1
  store ptr null, ptr %33, align 8, !tbaa !96
  ret void

34:                                               ; preds = %1, %34
  %35 = phi i32 [ 0, %1 ], [ %44, %34 ]
  %36 = load ptr, ptr %3, align 8, !tbaa !145
  %37 = load ptr, ptr %4, align 8, !tbaa !165
  %38 = zext i32 %35 to i64
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = load ptr, ptr %36, align 8, !tbaa !100
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %40)
  %44 = add i32 %35, 1
  %45 = load i32, ptr %2, align 8, !tbaa !166
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %5, label %34, !llvm.loop !339
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #5 comdat align 2 !prof !95 {
  %3 = load ptr, ptr %0, align 8, !tbaa !100
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(776) %0) unnamed_addr #16 comdat align 2 !prof !95 {
  ret i32 2
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr null
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !100
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !100
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnexpectedEOFExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUnexpectedEOFException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnexpectedEOFException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UnexpectedEOFExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !100
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #14 comdat align 2 !prof !341 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !342

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !153
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !343

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !153
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !344, !llvm.loop !345

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !146
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !147
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !346

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !152
  %24 = load i32, ptr %0, align 8, !tbaa !146
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !347
  %28 = load i32, ptr %0, align 8, !tbaa !146
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !146
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #17

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !348 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_7XMLAttrEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !171, !range !190, !noundef !191
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5, !prof !277

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !173
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !349

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !175
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !350

17:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %21 unwind label %18, !prof !351

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #19
  br label %22

22:                                               ; preds = %11, %21
  %23 = add nuw nsw i64 %12, 1
  %24 = load i32, ptr %6, align 4, !tbaa !173
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %11, label %27, !prof !352, !llvm.loop !353

27:                                               ; preds = %22, %5, %1
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !176
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !175
  %32 = load ptr, ptr %29, align 8, !tbaa !100
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
          to label %35 unwind label %36, !prof !354

35:                                               ; preds = %27
  ret void

36:                                               ; preds = %27
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !348 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !173
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !176
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.3, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !171, !range !190, !noundef !191
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !175
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %23)
          to label %29 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #20
  unreachable

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #19
  br label %30

30:                                               ; preds = %18, %29, %14
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !175
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr %1, ptr %34, align 8, !tbaa !96
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !173
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %25, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !173
  ret void

11:                                               ; preds = %5, %25
  %12 = phi i64 [ 0, %5 ], [ %28, %25 ]
  %13 = load i8, ptr %6, align 8, !tbaa !171, !range !190, !noundef !191
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !175
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %18)
          to label %24 unwind label %21

21:                                               ; preds = %20
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #20
  unreachable

24:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #19
  br label %25

25:                                               ; preds = %15, %24, %11
  %26 = load ptr, ptr %8, align 8, !tbaa !175
  %27 = getelementptr inbounds ptr, ptr %26, i64 %12
  store ptr null, ptr %27, align 8, !tbaa !96
  %28 = add nuw nsw i64 %12, 1
  %29 = load i32, ptr %2, align 4, !tbaa !173
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %11, label %9, !llvm.loop !355
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !173
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !171, !range !190, !noundef !191
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !175
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %22)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #20
  unreachable

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #19
  br label %29

29:                                               ; preds = %17, %28, %13
  %30 = load i32, ptr %3, align 4, !tbaa !173
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %37 = zext i32 %1 to i64
  %38 = zext i32 %31 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %37, %35 ], [ %42, %39 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !175
  %42 = add nuw nsw i64 %40, 1
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !96
  %45 = getelementptr inbounds ptr, ptr %41, i64 %40
  store ptr %44, ptr %45, align 8, !tbaa !96
  %46 = icmp eq i64 %42, %38
  br i1 %46, label %47, label %39, !llvm.loop !356

47:                                               ; preds = %39, %33, %29
  %48 = phi i32 [ %1, %29 ], [ %31, %33 ], [ %31, %39 ]
  %49 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !175
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr null, ptr %52, align 8, !tbaa !96
  store i32 %31, ptr %3, align 4, !tbaa !173
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !173
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !173
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !171, !range !190, !noundef !191
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !175
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %21 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #19
  br label %22

22:                                               ; preds = %10, %21, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !171, !range !190, !noundef !191
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !173
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !175
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %15)
          to label %21 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #19
  br label %22

22:                                               ; preds = %11, %21
  %23 = add nuw nsw i64 %12, 1
  %24 = load i32, ptr %6, align 4, !tbaa !173
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %11, label %27, !llvm.loop !357

27:                                               ; preds = %22, %5, %1
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !176
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !175
  %32 = load ptr, ptr %29, align 8, !tbaa !100
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

declare void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
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

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !100
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !358
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %46, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !359
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %39, %5
  store i32 0, ptr %2, align 4, !tbaa !358
  br label %46

13:                                               ; preds = %9, %39
  %14 = phi i64 [ 0, %9 ], [ %42, %39 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !249
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %17, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %13, %33
  %20 = phi ptr [ %22, %33 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !360
  %23 = load i8, ptr %11, align 8, !tbaa !362, !range !190, !noundef !191
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !363
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_77XMLAttr7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(49) %26)
          to label %32 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #20
  unreachable

32:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #19
  br label %33

33:                                               ; preds = %25, %32, %19
  %34 = load ptr, ptr %0, align 8, !tbaa !247
  %35 = load ptr, ptr %34, align 8, !tbaa !100
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull %20)
  %38 = icmp eq ptr %22, null
  br i1 %38, label %39, label %19, !llvm.loop !364

39:                                               ; preds = %33, %13
  %40 = load ptr, ptr %10, align 8, !tbaa !249
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !96
  %42 = add nuw nsw i64 %14, 1
  %43 = load i32, ptr %6, align 8, !tbaa !359
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %42, %44
  br i1 %45, label %13, label %12, !llvm.loop !365

46:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
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

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !311
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !246

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !366
  store ptr %7, ptr %2, align 8, !tbaa !311
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !311
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !246

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !314
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !314
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !315
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !316
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !103

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !367
  %23 = load i32, ptr %12, align 8, !tbaa !314
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !368

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !314
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !369, !llvm.loop !370

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !311
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !314
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !311
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !100
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !254 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !371
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !367
  %5 = load ptr, ptr %2, align 8, !tbaa !100
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !372
  store ptr null, ptr %3, align 8, !tbaa !367
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !373
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !374

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !100
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #19, !prof !375
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !376 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !377
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !275

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !316
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !377
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !367
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !96
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !366
  %23 = load i8, ptr %11, align 8, !tbaa !378, !range !190, !noundef !191
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !325
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !100
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(32) %26) #19
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !371
  %34 = load ptr, ptr %33, align 8, !tbaa !100
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !379

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !367
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !96
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !316
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !380

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !100
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !95 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !100
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XMLScanner.cpp() #18 section ".text.startup" !prof !102 !PGOFuncName !381 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19scannerMutexCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE)
  ret void
}

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!94}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!35 = !{ptr @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!36 = !{ptr @_ZN11xercesc_2_710XMLScanner18reinitScannerMutexEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79ReaderMgrC1EPNS_13MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712XMLBufferMgrC1EPNS_13MemoryManagerE, i64 3}
!39 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79ElemStackC1EPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_710XMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, i64 3}
!41 = !{ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, i64 3}
!42 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_7L13gScannerMutexEv, i64 3}
!43 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 3}
!44 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 3}
!45 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!46 = !{ptr @_ZN11xercesc_2_710XMLScanner10commonInitEv, ptr @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE, i64 3}
!47 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_710XMLScanner7cleanUpEv, i64 3}
!48 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_79ElemStackD1Ev, i64 3}
!49 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_712XMLBufferMgrD1Ev, i64 3}
!50 = !{ptr @_ZN11xercesc_2_710XMLScannerD2Ev, ptr @_ZN11xercesc_2_79ReaderMgrD1Ev, i64 3}
!51 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 3}
!52 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 7}
!53 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, i64 5}
!54 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, i64 2}
!55 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 9}
!56 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, i64 2}
!57 = !{ptr @_ZN11xercesc_2_710XMLScanner10scanPrologEv, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 3}
!58 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 1}
!59 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 1}
!60 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 1}
!62 = !{ptr @_ZN11xercesc_2_7L13gScannerMutexEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 1}
!63 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 3}
!64 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 5}
!65 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_79ReaderMgr9getSpacesERNS_9XMLBufferE, i64 2}
!66 = !{ptr @_ZN11xercesc_2_710XMLScanner17scanMiscellaneousEv, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 3}
!67 = !{ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, i64 5}
!68 = !{ptr @_ZN11xercesc_2_710XMLScanner12checkXMLDeclEb, ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, i64 2}
!69 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv, i64 10}
!70 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 5}
!71 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 5}
!72 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr15getUpToCharOrWSERNS_9XMLBufferEt, i64 3}
!73 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, i64 3}
!74 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, i64 3}
!75 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 4}
!76 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZNK11xercesc_2_79ReaderMgr21getCurrentEncodingStrEv, i64 2}
!77 = !{ptr @_ZN11xercesc_2_710XMLScanner11scanXMLDeclENS0_9DeclTypesE, ptr @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE, i64 10}
!78 = !{ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, ptr @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb, i64 384080}
!79 = !{ptr @_ZN11xercesc_2_710XMLScanner6scanEqEb, ptr @_ZN11xercesc_2_79ReaderMgr11skippedCharEt, i64 192040}
!80 = !{ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11skipIfQuoteERt, i64 3}
!81 = !{ptr @_ZN11xercesc_2_710XMLScanner15getQuotedStringERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 12}
!82 = !{ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xercesc_2_710XMLScanner11checkIDRefsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEED2Ev, i64 1}
!84 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEE8findNextEv, i64 1}
!85 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_79ReaderMgr12peekNextCharEv, i64 4541001}
!86 = !{ptr @_ZN11xercesc_2_710XMLScanner14senseNextTokenERj, ptr @_ZN11xercesc_2_79ReaderMgr11getNextCharEv, i64 2194501}
!87 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!88 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMLAttr7cleanUpEv, i64 10}
!89 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!90 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED2Ev, i64 4}
!91 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_7XMLAttrEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 4}
!92 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEE9removeAllEv, i64 5}
!93 = !{ptr @_GLOBAL__sub_I_XMLScanner.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!94 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C++ TBAA"}
!100 = !{!101, !101, i64 0}
!101 = !{!"vtable pointer", !99, i64 0}
!102 = !{!"function_entry_count", i64 1}
!103 = !{!"branch_weights", i32 0, i32 1}
!104 = !{!"function_entry_count", i64 3}
!105 = !{!106, !108, i64 8}
!106 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !107, i64 0, !108, i64 8, !109, i64 16, !109, i64 17, !109, i64 18, !109, i64 19, !109, i64 20, !109, i64 21, !109, i64 22, !109, i64 23, !109, i64 24, !109, i64 25, !109, i64 26, !109, i64 27, !109, i64 28, !109, i64 29, !109, i64 30, !109, i64 31, !109, i64 32, !109, i64 33, !109, i64 34, !109, i64 35, !109, i64 36, !109, i64 37, !109, i64 38, !110, i64 40, !110, i64 44, !110, i64 48, !110, i64 52, !110, i64 56, !110, i64 60, !110, i64 64, !110, i64 68, !97, i64 72, !110, i64 80, !110, i64 84, !110, i64 88, !110, i64 92, !110, i64 96, !97, i64 104, !97, i64 112, !97, i64 120, !97, i64 128, !97, i64 136, !97, i64 144, !97, i64 152, !97, i64 160, !97, i64 168, !109, i64 176, !111, i64 184, !97, i64 264, !114, i64 272, !97, i64 280, !97, i64 288, !97, i64 296, !97, i64 304, !97, i64 312, !97, i64 320, !97, i64 328, !97, i64 336, !97, i64 344, !113, i64 352, !97, i64 360, !115, i64 368, !116, i64 392, !116, i64 432, !116, i64 472, !116, i64 512, !116, i64 552, !116, i64 592, !116, i64 632, !117, i64 672}
!107 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!108 = !{!"long", !98, i64 0}
!109 = !{!"bool", !98, i64 0}
!110 = !{!"int", !98, i64 0}
!111 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !112, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !110, i64 40, !97, i64 48, !109, i64 56, !113, i64 60, !109, i64 64, !97, i64 72}
!112 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!113 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !98, i64 0}
!114 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !98, i64 0}
!115 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !110, i64 0, !97, i64 8, !97, i64 16}
!116 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !110, i64 0, !110, i64 4, !110, i64 8, !109, i64 12, !97, i64 16, !97, i64 24, !97, i64 32}
!117 = !{!"_ZTSN11xercesc_2_79ElemStackE", !110, i64 0, !110, i64 4, !118, i64 8, !97, i64 48, !110, i64 56, !110, i64 60, !110, i64 64, !110, i64 68, !110, i64 72, !110, i64 76, !110, i64 80, !97, i64 88, !97, i64 96}
!118 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !119, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !110, i64 32, !110, i64 36}
!119 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!120 = !{!106, !109, i64 16}
!121 = !{!106, !109, i64 17}
!122 = !{!106, !109, i64 18}
!123 = !{!106, !109, i64 19}
!124 = !{!106, !109, i64 20}
!125 = !{!106, !109, i64 21}
!126 = !{!106, !109, i64 22}
!127 = !{!106, !109, i64 23}
!128 = !{!106, !109, i64 28}
!129 = !{!106, !109, i64 29}
!130 = !{!106, !109, i64 30}
!131 = !{!106, !109, i64 31}
!132 = !{!106, !109, i64 32}
!133 = !{!106, !110, i64 88}
!134 = !{!106, !110, i64 92}
!135 = !{!106, !110, i64 96}
!136 = !{!"branch_weights", i32 3, i32 0}
!137 = !{!106, !97, i64 264}
!138 = !{!106, !114, i64 272}
!139 = !{!106, !97, i64 280}
!140 = !{!141, !97, i64 48}
!141 = !{!"_ZTSN11xercesc_2_715GrammarResolverE", !109, i64 0, !109, i64 1, !109, i64 2, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !97, i64 56, !97, i64 64, !97, i64 72}
!142 = !{!143, !97, i64 8}
!143 = !{!"_ZTSN11xercesc_2_714XMLGrammarPoolE", !97, i64 8, !109, i64 16}
!144 = !{!106, !97, i64 288}
!145 = !{!106, !97, i64 360}
!146 = !{!116, !110, i64 0}
!147 = !{!116, !110, i64 4}
!148 = !{!116, !110, i64 8}
!149 = !{!116, !109, i64 12}
!150 = !{!116, !97, i64 16}
!151 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!152 = !{!116, !97, i64 32}
!153 = !{!154, !154, i64 0}
!154 = !{!"short", !98, i64 0}
!155 = !{!106, !97, i64 104}
!156 = !{!"branch_weights", i32 0, i32 3}
!157 = !{!"VP", i32 0, i64 3, i64 9186359538477508285, i64 3}
!158 = !{!106, !97, i64 112}
!159 = !{!106, !97, i64 168}
!160 = !{!"VP", i32 0, i64 3, i64 -1114428841430657570, i64 3}
!161 = !{!106, !97, i64 320}
!162 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!163 = !{!106, !97, i64 328}
!164 = !{!106, !97, i64 336}
!165 = !{!106, !97, i64 72}
!166 = !{!106, !110, i64 80}
!167 = distinct !{!167, !168, !169}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !{!110, !110, i64 0}
!171 = !{!172, !109, i64 8}
!172 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_7XMLAttrEEE", !109, i64 8, !110, i64 12, !110, i64 16, !97, i64 24, !97, i64 32}
!173 = !{!172, !110, i64 12}
!174 = !{!172, !110, i64 16}
!175 = !{!172, !97, i64 24}
!176 = !{!172, !97, i64 32}
!177 = !{!"branch_weights", i32 3, i32 93}
!178 = distinct !{!178, !168, !169}
!179 = !{!116, !97, i64 24}
!180 = !{!106, !109, i64 25}
!181 = !{!182, !97, i64 32}
!182 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32}
!183 = !{!182, !97, i64 24}
!184 = !{!182, !97, i64 8}
!185 = !{!106, !97, i64 144}
!186 = !{!182, !97, i64 16}
!187 = !{!106, !97, i64 120}
!188 = !{!106, !97, i64 128}
!189 = !{!106, !97, i64 136}
!190 = !{i8 0, i8 2}
!191 = !{}
!192 = !{!"function_entry_count", i64 6}
!193 = !{!194, !97, i64 32}
!194 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !195, i64 8, !97, i64 16, !110, i64 24, !97, i64 32, !97, i64 40}
!195 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !98, i64 0}
!196 = !{!194, !195, i64 8}
!197 = !{!106, !110, i64 40}
!198 = !{!199, !97, i64 0}
!199 = !{!"_ZTSN11xercesc_2_79ReaderMgr17LastExtEntityInfoE", !97, i64 0, !97, i64 8, !108, i64 16, !108, i64 24}
!200 = !{!199, !97, i64 8}
!201 = !{!199, !108, i64 16}
!202 = !{!199, !108, i64 24}
!203 = !{!204, !204, i64 0}
!204 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !98, i64 0}
!205 = !{!206, !97, i64 0}
!206 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !97, i64 0, !97, i64 8}
!207 = !{!206, !97, i64 8}
!208 = !{!"function_entry_count", i64 243874}
!209 = !{!"branch_weights", i32 191815, i32 52059}
!210 = !{!"branch_weights", i32 0, i32 52059}
!211 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!212 = !{!213, !110, i64 0}
!213 = !{!"_ZTSN11xercesc_2_713XMLPScanTokenE", !110, i64 0, !110, i64 4}
!214 = !{!213, !110, i64 4}
!215 = !{!"branch_weights", i32 7, i32 0}
!216 = !{!"branch_weights", i32 5, i32 2}
!217 = !{!"branch_weights", i32 5, i32 0}
!218 = !{!"branch_weights", i32 2, i32 3}
!219 = !{!111, !97, i64 16}
!220 = !{!221, !108, i64 114704}
!221 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !110, i64 0, !98, i64 4, !110, i64 32772, !98, i64 32776, !98, i64 49160, !108, i64 114696, !108, i64 114704, !222, i64 114712, !97, i64 114720, !109, i64 114728, !109, i64 114729, !97, i64 114736, !110, i64 114744, !98, i64 114748, !110, i64 163900, !110, i64 163904, !223, i64 163908, !109, i64 163912, !224, i64 163916, !110, i64 163920, !109, i64 163924, !109, i64 163925, !97, i64 163928, !97, i64 163936, !109, i64 163944, !109, i64 163945, !97, i64 163952, !225, i64 163960, !97, i64 163968, !109, i64 163976, !113, i64 163980, !97, i64 163984}
!222 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !98, i64 0}
!223 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !98, i64 0}
!224 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !98, i64 0}
!225 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !98, i64 0}
!226 = !{!"branch_weights", i32 2, i32 0}
!227 = !{!221, !108, i64 114696}
!228 = !{!106, !109, i64 24}
!229 = !{!106, !97, i64 296}
!230 = !{!221, !97, i64 163968}
!231 = !{!98, !98, i64 0}
!232 = !{!"branch_weights", i32 0, i32 2}
!233 = !{!"VP", i32 0, i64 2, i64 1934475108968092020, i64 1, i64 -5679671549358174510, i64 1}
!234 = !{!106, !97, i64 152}
!235 = !{!111, !97, i64 24}
!236 = !{!106, !109, i64 26}
!237 = !{!111, !109, i64 64}
!238 = !{!106, !109, i64 27}
!239 = distinct !{!239, !168, !169}
!240 = !{!106, !97, i64 344}
!241 = !{!106, !110, i64 44}
!242 = !{!106, !110, i64 48}
!243 = !{!106, !97, i64 160}
!244 = !{!"XMLScanner.cpp;_ZN11xercesc_2_7L13gScannerMutexEv"}
!245 = !{!"branch_weights", i32 2, i32 1}
!246 = !{!"branch_weights", i32 1, i32 0}
!247 = !{!248, !97, i64 0}
!248 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_7XMLAttrEEE", !97, i64 0, !109, i64 8, !97, i64 16, !110, i64 24, !110, i64 28, !97, i64 32}
!249 = !{!248, !97, i64 16}
!250 = !{!248, !97, i64 32}
!251 = !{!"branch_weights", i32 2, i32 3, i32 0}
!252 = distinct !{!252, !168, !169}
!253 = !{!"VP", i32 0, i64 2, i64 -5679671549358174510, i64 1, i64 1934475108968092020, i64 1}
!254 = !{!"function_entry_count", i64 5}
!255 = !{!117, !110, i64 60}
!256 = !{!117, !97, i64 48}
!257 = !{!258, !109, i64 49}
!258 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !97, i64 0, !110, i64 8, !110, i64 12, !110, i64 16, !97, i64 24, !97, i64 32, !110, i64 40, !110, i64 44, !109, i64 48, !109, i64 49, !109, i64 50, !110, i64 52, !97, i64 56, !110, i64 64, !97, i64 72, !110, i64 80, !110, i64 84}
!259 = distinct !{!259, !168, !169}
!260 = !{!"function_entry_count", i64 2}
!261 = !{!"branch_weights", i32 1, i32 2}
!262 = !{!"branch_weights", i32 127, i32 1}
!263 = !{!"branch_weights", i32 2, i32 14}
!264 = !{!"branch_weights", i32 1921, i32 127}
!265 = distinct !{!265, !168, !169}
!266 = !{!"branch_weights", i32 1, i32 10}
!267 = !{!"branch_weights", i32 11, i32 0}
!268 = !{!"branch_weights", i32 0, i32 4}
!269 = !{!"branch_weights", i32 129, i32 127}
!270 = !{!106, !113, i64 352}
!271 = !{!111, !113, i64 60}
!272 = !{!221, !113, i64 163980}
!273 = !{!221, !109, i64 163976}
!274 = !{!"branch_weights", i32 2, i32 6}
!275 = !{!"branch_weights", i32 8, i32 0}
!276 = !{!109, !109, i64 0}
!277 = !{!"branch_weights", i32 1, i32 3}
!278 = !{!"branch_weights", i32 4, i32 0}
!279 = !{!"branch_weights", i32 0, i32 3, i32 2}
!280 = distinct !{!280, !168, !169}
!281 = !{!"branch_weights", i32 2, i32 2}
!282 = distinct !{!282, !168, !169}
!283 = !{!"VP", i32 0, i64 2, i64 5754830164013826573, i64 1, i64 2381296440454622230, i64 1}
!284 = !{!"function_entry_count", i64 192040}
!285 = !{!"branch_weights", i32 192040, i32 0}
!286 = !{!"branch_weights", i32 3, i32 9}
!287 = !{!"branch_weights", i32 0, i32 9}
!288 = !{!"branch_weights", i32 0, i32 9, i32 3}
!289 = distinct !{!289, !168, !169}
!290 = !{!"function_entry_count", i64 2059100}
!291 = !{!106, !97, i64 312}
!292 = !{!"VP", i32 0, i64 2059100, i64 -4952889264677586697, i64 2059100}
!293 = !{!"branch_weights", i32 2059100, i32 0}
!294 = !{!"VP", i32 0, i64 2059100, i64 4099110260104020874, i64 2059100}
!295 = !{!"branch_weights", i32 0, i32 2059100}
!296 = !{!297, !298, i64 0}
!297 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !298, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40}
!298 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !98, i64 0}
!299 = !{!297, !97, i64 8}
!300 = !{!297, !97, i64 16}
!301 = !{!297, !97, i64 24}
!302 = !{!297, !97, i64 32}
!303 = !{!297, !97, i64 40}
!304 = !{!106, !109, i64 37}
!305 = !{!"VP", i32 0, i64 3, i64 8828421665688538749, i64 3}
!306 = !{!106, !110, i64 52}
!307 = !{!106, !110, i64 56}
!308 = !{!106, !110, i64 60}
!309 = !{!106, !110, i64 64}
!310 = !{!"VP", i32 0, i64 1, i64 6302506377413670633, i64 1}
!311 = !{!312, !97, i64 16}
!312 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10XMLRefInfoEEE", !313, i64 0, !109, i64 8, !97, i64 16, !110, i64 24, !97, i64 32, !97, i64 40}
!313 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_10XMLRefInfoEEE"}
!314 = !{!312, !110, i64 24}
!315 = !{!312, !97, i64 32}
!316 = !{!317, !110, i64 24}
!317 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10XMLRefInfoEEE", !97, i64 0, !109, i64 8, !97, i64 16, !110, i64 24, !110, i64 28, !110, i64 32, !97, i64 40}
!318 = !{!319, !109, i64 8}
!319 = !{!"_ZTSN11xercesc_2_710XMLRefInfoE", !119, i64 0, !109, i64 8, !109, i64 9, !97, i64 16, !97, i64 24}
!320 = !{!319, !109, i64 9}
!321 = !{!319, !97, i64 16}
!322 = distinct !{!322, !168, !169}
!323 = !{!312, !109, i64 8}
!324 = !{!312, !97, i64 40}
!325 = !{!326, !97, i64 0}
!326 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10XMLRefInfoEEE", !97, i64 0, !97, i64 8, !97, i64 16}
!327 = !{!"function_entry_count", i64 3026825}
!328 = !{!111, !109, i64 56}
!329 = !{!"branch_weights", i32 3026825, i32 0}
!330 = !{!"branch_weights", i32 1512649, i32 0, i32 1514176}
!331 = !{!221, !110, i64 163904}
!332 = !{!"branch_weights", i32 833851, i32 680325, i32 0, i32 0}
!333 = distinct !{!333, !168, !169}
!334 = !{!"function_entry_count", i64 13}
!335 = !{!106, !110, i64 84}
!336 = !{!"branch_weights", i32 13, i32 0}
!337 = distinct !{!337, !168, !169}
!338 = distinct !{!338, !168, !169}
!339 = distinct !{!339, !168, !169}
!340 = !{!194, !97, i64 40}
!341 = !{!"function_entry_count", i64 789922}
!342 = !{!"branch_weights", i32 0, i32 789922}
!343 = !{!"branch_weights", i32 284, i32 789638}
!344 = !{!"branch_weights", i32 789638, i32 41628303}
!345 = distinct !{!345, !168, !169}
!346 = !{!"branch_weights", i32 789636, i32 2}
!347 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!348 = !{!"function_entry_count", i64 4}
!349 = !{!"branch_weights", i32 1, i32 191}
!350 = !{!"branch_weights", i32 0, i32 10}
!351 = !{!"branch_weights", i32 10, i32 0}
!352 = !{!"branch_weights", i32 449, i32 191}
!353 = distinct !{!353, !168, !169}
!354 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!355 = distinct !{!355, !168, !169}
!356 = distinct !{!356, !168, !169}
!357 = distinct !{!357, !168, !169}
!358 = !{!248, !110, i64 28}
!359 = !{!248, !110, i64 24}
!360 = !{!361, !97, i64 8}
!361 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_7XMLAttrEEE", !97, i64 0, !97, i64 8, !97, i64 16, !110, i64 24}
!362 = !{!248, !109, i64 8}
!363 = !{!361, !97, i64 0}
!364 = distinct !{!364, !168, !169}
!365 = distinct !{!365, !168, !169}
!366 = !{!326, !97, i64 8}
!367 = !{!317, !97, i64 16}
!368 = !{!"branch_weights", i32 109, i32 0}
!369 = !{!"branch_weights", i32 1, i32 108}
!370 = distinct !{!370, !168, !169}
!371 = !{!317, !97, i64 0}
!372 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!373 = !{!317, !97, i64 40}
!374 = !{!"branch_weights", i32 0, i32 5}
!375 = !{!"VP", i32 0, i64 5, i64 -5147776714887549805, i64 5}
!376 = !{!"function_entry_count", i64 8}
!377 = !{!317, !110, i64 32}
!378 = !{!317, !109, i64 8}
!379 = distinct !{!379, !168, !169}
!380 = distinct !{!380, !168, !169}
!381 = !{!"XMLScanner.cpp;_GLOBAL__sub_I_XMLScanner.cpp"}
