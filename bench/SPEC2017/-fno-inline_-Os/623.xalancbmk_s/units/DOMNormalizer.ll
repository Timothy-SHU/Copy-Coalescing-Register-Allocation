; ModuleID = 'DOMNormalizer.cpp'
source_filename = "DOMNormalizer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMNormalizer" = type { ptr, ptr, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::DOMConfigurationImpl" = type { %"class.xercesc_2_7::DOMConfiguration", i16, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMConfiguration" = type { ptr }
%"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces" = type { ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMErrorImpl" = type { %"class.xercesc_2_7::DOMError", i8, i16, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMError" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLBuffer3setEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_79XMLBuffer12getRawBufferEv = comdat any

$_ZN11xercesc_2_79XMLBufferD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE12setElementAtEPS3_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE10addElementEPS3_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfItE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE9removeKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XMLEnumeratorItEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorItED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorItED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemItEC2EPvPtPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEEC2EPS3_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEE5resetEPS3_ = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorItEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorItEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorItEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorItEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorItEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorItEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_7L22normalizerMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L16cleanupMsgLoaderE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L10gMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L16sNormalizerMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L11sRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE12setElementAtEPS3_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = linkonce_odr dso_local constant [75 x i8] c"N11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = linkonce_odr dso_local constant [79 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE12setElementAtEPS3_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE7cleanupEv] }, comdat, align 8
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorItEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorItEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorItEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorItEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorItEE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_713XMLEnumeratorItEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorItEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorItEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorItEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorItEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorItEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorItEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorItEE, ptr @_ZN11xercesc_2_713XMLEnumeratorItED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorItED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMNormalizer.cpp, ptr null }]

@_ZN11xercesc_2_713DOMNormalizerC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNormalizerC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713DOMNormalizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNormalizerD2Ev
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD2Ev
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC1EPS2_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC2EPS2_
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22normalizerMutexCleanupE) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer15reinitMsgLoaderEv() #4 align 2 !prof !41 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !46
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer21reinitNormalizerMutexEv() #4 align 2 !prof !41 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !42
  store i1 false, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer32initializeDOMNormalizerMsgLoaderEv() local_unnamed_addr #6 align 2 !prof !41 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE) #12
  store ptr %1, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_713DOMNormalizer15reinitMsgLoaderEv) #12
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizerC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %1) #12
  %6 = load ptr, ptr %4, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %6) #12
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  store ptr %5, ptr %8, align 8, !tbaa !52
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %1) #13
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !53 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizerD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17normalizeDocumentEPNS_15DOMDocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  store ptr %1, ptr %0, align 8, !tbaa !54
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 35
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(293) %1) #12
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !55
  %8 = load ptr, ptr %0, align 8, !tbaa !54
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 35
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(293) %8) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call noundef ptr @_ZNK11xercesc_2_720DOMConfigurationImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(48) %12) #12
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ null, %2 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 4
  store i32 1, ptr %19, align 8, !tbaa !48
  %20 = load ptr, ptr %1, align 8, !tbaa !46
  %21 = getelementptr inbounds ptr, ptr %20, i64 45
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(293) %1) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %16, %25
  %26 = phi ptr [ %33, %25 ], [ %23, %16 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !46
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26) #12
  %31 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer13normalizeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %26) #12
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %30, ptr %31
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25, !llvm.loop !56

35:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMConfigurationImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer13normalizeNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  %3 = load ptr, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  switch i16 %6, label %207 [
    i16 1, label %7
    i16 8, label %64
    i16 4, label %115
    i16 3, label %163
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces8addScopeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %11) #12
  %12 = load ptr, ptr %1, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 11
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %16 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !55
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMConfigurationImpl", ptr %17, i64 0, i32 1
  %19 = load i16, ptr %18, align 8, !tbaa !58
  %20 = and i16 %19, 128
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %7
  tail call void @_ZNK11xercesc_2_713DOMNormalizer14namespaceFixUpEPNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1) #12
  br label %46

23:                                               ; preds = %7
  %24 = icmp eq ptr %15, null
  br i1 %24, label %46, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %15, align 8, !tbaa !46
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef i64 %28(ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %25, %31
  %32 = phi i64 [ %40, %31 ], [ 0, %25 ]
  %33 = load ptr, ptr %15, align 8, !tbaa !46
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %32) #12
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds ptr, ptr %37, i64 20
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(8) %36) #12
  %40 = add nuw i64 %32, 1
  %41 = load ptr, ptr %15, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 5
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef i64 %43(ptr noundef nonnull align 8 dereferenceable(8) %15) #12
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %31, label %46, !llvm.loop !62

46:                                               ; preds = %31, %25, %23, %22
  %47 = load ptr, ptr %1, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 7
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %46, %52
  %53 = phi ptr [ %60, %52 ], [ %50, %46 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = getelementptr inbounds ptr, ptr %54, i64 10
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53) #12
  %58 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer13normalizeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %53) #12
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr %57, ptr %58
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %52, !llvm.loop !63

62:                                               ; preds = %52, %46
  %63 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces11removeScopeEv(ptr noundef nonnull align 8 dereferenceable(16) %63) #12
  br label %207

64:                                               ; preds = %2
  %65 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !55
  %67 = getelementptr inbounds %"class.xercesc_2_7::DOMConfigurationImpl", ptr %66, i64 0, i32 1
  %68 = load i16, ptr %67, align 8, !tbaa !58
  %69 = and i16 %68, 4
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %207

71:                                               ; preds = %64
  %72 = load ptr, ptr %1, align 8, !tbaa !46
  %73 = getelementptr inbounds ptr, ptr %72, i64 9
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %76 = load ptr, ptr %1, align 8, !tbaa !46
  %77 = getelementptr inbounds ptr, ptr %76, i64 5
  %78 = load ptr, ptr %77, align 8
  %79 = tail call noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = getelementptr inbounds ptr, ptr %80, i64 16
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull %1) #12
  %84 = icmp eq ptr %75, null
  br i1 %84, label %207, label %85

85:                                               ; preds = %71
  %86 = load ptr, ptr %75, align 8, !tbaa !46
  %87 = getelementptr inbounds ptr, ptr %86, i64 4
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef signext i16 %88(ptr noundef nonnull align 8 dereferenceable(8) %75) #12
  %90 = icmp eq i16 %89, 3
  br i1 %90, label %91, label %207

91:                                               ; preds = %85
  %92 = load ptr, ptr %75, align 8, !tbaa !46
  %93 = getelementptr inbounds ptr, ptr %92, i64 10
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %75) #12
  %96 = icmp eq ptr %95, null
  br i1 %96, label %207, label %97

97:                                               ; preds = %91
  %98 = load ptr, ptr %95, align 8, !tbaa !46
  %99 = getelementptr inbounds ptr, ptr %98, i64 4
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef signext i16 %100(ptr noundef nonnull align 8 dereferenceable(8) %95) #12
  %102 = icmp eq i16 %101, 3
  br i1 %102, label %103, label %207

103:                                              ; preds = %97
  %104 = load ptr, ptr %75, align 8, !tbaa !46
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(8) %75) #12
  %108 = load ptr, ptr %95, align 8, !tbaa !46
  %109 = getelementptr inbounds ptr, ptr %108, i64 44
  %110 = load ptr, ptr %109, align 8
  tail call void %110(ptr noundef nonnull align 8 dereferenceable(56) %95, i64 noundef 0, ptr noundef %107) #12
  %111 = load ptr, ptr %79, align 8, !tbaa !46
  %112 = getelementptr inbounds ptr, ptr %111, i64 16
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull %75) #12
  br label %207

115:                                              ; preds = %2
  %116 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !55
  %118 = getelementptr inbounds %"class.xercesc_2_7::DOMConfigurationImpl", ptr %117, i64 0, i32 1
  %119 = load i16, ptr %118, align 8, !tbaa !58
  %120 = and i16 %119, 2
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %122, label %207

122:                                              ; preds = %115
  %123 = load ptr, ptr %0, align 8, !tbaa !54
  %124 = load ptr, ptr %1, align 8, !tbaa !46
  %125 = getelementptr inbounds ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef ptr %126(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %128 = load ptr, ptr %123, align 8, !tbaa !46
  %129 = getelementptr inbounds ptr, ptr %128, i64 5
  %130 = load ptr, ptr %129, align 8
  %131 = tail call noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(293) %123, ptr noundef %127) #12
  %132 = load ptr, ptr %1, align 8, !tbaa !46
  %133 = getelementptr inbounds ptr, ptr %132, i64 5
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %136 = load ptr, ptr %1, align 8, !tbaa !46
  %137 = getelementptr inbounds ptr, ptr %136, i64 9
  %138 = load ptr, ptr %137, align 8
  %139 = tail call noundef ptr %138(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %140 = load ptr, ptr %135, align 8, !tbaa !46
  %141 = getelementptr inbounds ptr, ptr %140, i64 15
  %142 = load ptr, ptr %141, align 8
  %143 = tail call noundef ptr %142(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef %131, ptr noundef nonnull %1) #12
  %144 = icmp eq ptr %139, null
  br i1 %144, label %207, label %145

145:                                              ; preds = %122
  %146 = load ptr, ptr %139, align 8, !tbaa !46
  %147 = getelementptr inbounds ptr, ptr %146, i64 4
  %148 = load ptr, ptr %147, align 8
  %149 = tail call noundef signext i16 %148(ptr noundef nonnull align 8 dereferenceable(8) %139) #12
  %150 = icmp eq i16 %149, 3
  br i1 %150, label %151, label %207

151:                                              ; preds = %145
  %152 = load ptr, ptr %139, align 8, !tbaa !46
  %153 = getelementptr inbounds ptr, ptr %152, i64 3
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(8) %139) #12
  %156 = load ptr, ptr %131, align 8, !tbaa !46
  %157 = getelementptr inbounds ptr, ptr %156, i64 44
  %158 = load ptr, ptr %157, align 8
  tail call void %158(ptr noundef nonnull align 8 dereferenceable(8) %131, i64 noundef 0, ptr noundef %155) #12
  %159 = load ptr, ptr %135, align 8, !tbaa !46
  %160 = getelementptr inbounds ptr, ptr %159, i64 16
  %161 = load ptr, ptr %160, align 8
  %162 = tail call noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef nonnull %139) #12
  br label %207

163:                                              ; preds = %2
  %164 = load ptr, ptr %1, align 8, !tbaa !46
  %165 = getelementptr inbounds ptr, ptr %164, i64 10
  %166 = load ptr, ptr %165, align 8
  %167 = tail call noundef ptr %166(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %168 = icmp eq ptr %167, null
  br i1 %168, label %175, label %169

169:                                              ; preds = %163
  %170 = load ptr, ptr %167, align 8, !tbaa !46
  %171 = getelementptr inbounds ptr, ptr %170, i64 4
  %172 = load ptr, ptr %171, align 8
  %173 = tail call noundef signext i16 %172(ptr noundef nonnull align 8 dereferenceable(8) %167) #12
  %174 = icmp eq i16 %173, 3
  br i1 %174, label %191, label %175

175:                                              ; preds = %169, %163
  %176 = load ptr, ptr %1, align 8, !tbaa !46
  %177 = getelementptr inbounds ptr, ptr %176, i64 3
  %178 = load ptr, ptr %177, align 8
  %179 = tail call noundef ptr %178(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %180 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %179) #12
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %207

182:                                              ; preds = %175
  %183 = load ptr, ptr %1, align 8, !tbaa !46
  %184 = getelementptr inbounds ptr, ptr %183, i64 5
  %185 = load ptr, ptr %184, align 8
  %186 = tail call noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %187 = load ptr, ptr %186, align 8, !tbaa !46
  %188 = getelementptr inbounds ptr, ptr %187, i64 16
  %189 = load ptr, ptr %188, align 8
  %190 = tail call noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef nonnull %1) #12
  br label %207

191:                                              ; preds = %169
  %192 = load ptr, ptr %167, align 8, !tbaa !46
  %193 = getelementptr inbounds ptr, ptr %192, i64 3
  %194 = load ptr, ptr %193, align 8
  %195 = tail call noundef ptr %194(ptr noundef nonnull align 8 dereferenceable(8) %167) #12
  %196 = load ptr, ptr %1, align 8, !tbaa !46
  %197 = getelementptr inbounds ptr, ptr %196, i64 43
  %198 = load ptr, ptr %197, align 8
  tail call void %198(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %195) #12
  %199 = load ptr, ptr %1, align 8, !tbaa !46
  %200 = getelementptr inbounds ptr, ptr %199, i64 5
  %201 = load ptr, ptr %200, align 8
  %202 = tail call noundef ptr %201(ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %203 = load ptr, ptr %202, align 8, !tbaa !46
  %204 = getelementptr inbounds ptr, ptr %203, i64 16
  %205 = load ptr, ptr %204, align 8
  %206 = tail call noundef ptr %205(ptr noundef nonnull align 8 dereferenceable(8) %202, ptr noundef nonnull %167) #12
  br label %207

207:                                              ; preds = %182, %175, %71, %85, %91, %97, %62, %2, %64, %115, %191, %103, %122, %145, %151
  %208 = phi ptr [ %1, %191 ], [ %95, %103 ], [ %131, %151 ], [ %131, %145 ], [ %131, %122 ], [ null, %115 ], [ null, %64 ], [ null, %2 ], [ null, %62 ], [ null, %97 ], [ null, %91 ], [ null, %85 ], [ null, %71 ], [ null, %175 ], [ null, %182 ]
  ret ptr %208
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces8addScopeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %1) #12
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC2EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %5) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE10addElementEPS3_(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull %3) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_713DOMNormalizer14namespaceFixUpEPNS_14DOMElementImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !67
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i64 %7(ptr noundef nonnull align 8 dereferenceable(25) %4) #12
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %14 = and i64 %8, 4294967295
  br label %29

15:                                               ; preds = %65, %2
  %16 = load ptr, ptr %1, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 23
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(96) %1) #12
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %19
  %22 = load ptr, ptr %1, align 8, !tbaa !46
  %23 = getelementptr inbounds ptr, ptr %22, i64 22
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(96) %1) #12
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %25
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %27, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #12
  br i1 %28, label %76, label %68

29:                                               ; preds = %11, %65
  %30 = phi i64 [ 0, %11 ], [ %66, %65 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %30) #12
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds ptr, ptr %35, i64 20
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %38 = load ptr, ptr %34, align 8, !tbaa !46
  %39 = getelementptr inbounds ptr, ptr %38, i64 22
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %42 = load ptr, ptr %34, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %46 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %41) #12
  br i1 %46, label %47, label %65

47:                                               ; preds = %29
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %45) #12
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  tail call void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 168, ptr noundef %1) #12
  br label %65

50:                                               ; preds = %47
  %51 = load ptr, ptr %34, align 8, !tbaa !46
  %52 = getelementptr inbounds ptr, ptr %51, i64 23
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %55 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %54, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
  %56 = load ptr, ptr %12, align 8, !tbaa !52
  br i1 %55, label %57, label %63

57:                                               ; preds = %50
  %58 = load ptr, ptr %34, align 8, !tbaa !46
  %59 = getelementptr inbounds ptr, ptr %58, i64 24
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %34) #12
  %62 = load ptr, ptr %13, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef %61, ptr noundef %45, ptr noundef %62) #12
  br label %65

63:                                               ; preds = %50
  %64 = load ptr, ptr %13, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %56, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %45, ptr noundef %64) #12
  br label %65

65:                                               ; preds = %57, %63, %49, %29
  %66 = add nuw nsw i64 %30, 1
  %67 = icmp eq i64 %66, %14
  br i1 %67, label %15, label %29, !llvm.loop !76

68:                                               ; preds = %15
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !52
  %71 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull %21, ptr noundef nonnull %27) #12
  br i1 %71, label %91, label %72

72:                                               ; preds = %68
  tail call void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %21, ptr noundef nonnull %27, ptr noundef nonnull %1) #12
  %73 = load ptr, ptr %69, align 8, !tbaa !52
  %74 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef nonnull %21, ptr noundef nonnull %27, ptr noundef %75) #12
  br label %91

76:                                               ; preds = %15
  %77 = load ptr, ptr %1, align 8, !tbaa !46
  %78 = getelementptr inbounds ptr, ptr %77, i64 24
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(96) %1) #12
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  tail call void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 169, ptr noundef nonnull %1) #12
  br label %91

83:                                               ; preds = %76
  %84 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  %86 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr noundef nonnull align 8 dereferenceable(16) %85, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #12
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  tail call void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull %1) #12
  %88 = load ptr, ptr %84, align 8, !tbaa !52
  %89 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %88, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %90) #12
  br label %91

91:                                               ; preds = %82, %87, %83, %68, %72
  %92 = load ptr, ptr %4, align 8, !tbaa !46
  %93 = getelementptr inbounds ptr, ptr %92, i64 5
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef i64 %94(ptr noundef nonnull align 8 dereferenceable(25) %4) #12
  %96 = trunc i64 %95 to i32
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %100 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %101 = and i64 %95, 4294967295
  br label %103

102:                                              ; preds = %158, %91
  ret void

103:                                              ; preds = %98, %158
  %104 = phi i64 [ 0, %98 ], [ %159, %158 ]
  %105 = load ptr, ptr %4, align 8, !tbaa !46
  %106 = getelementptr inbounds ptr, ptr %105, i64 3
  %107 = load ptr, ptr %106, align 8
  %108 = tail call noundef ptr %107(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %104) #12
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = getelementptr inbounds ptr, ptr %109, i64 22
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(8) %108) #12
  %113 = load ptr, ptr %108, align 8, !tbaa !46
  %114 = getelementptr inbounds ptr, ptr %113, i64 23
  %115 = load ptr, ptr %114, align 8
  %116 = tail call noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(8) %108) #12
  %117 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %112) #12
  br i1 %117, label %158, label %118

118:                                              ; preds = %103
  %119 = icmp eq ptr %112, null
  br i1 %119, label %151, label %120

120:                                              ; preds = %118
  %121 = icmp eq ptr %116, null
  %122 = load ptr, ptr %99, align 8, !tbaa !52
  br i1 %121, label %125, label %123

123:                                              ; preds = %120
  %124 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull %116, ptr noundef nonnull %112) #12
  br i1 %124, label %158, label %128

125:                                              ; preds = %120
  %126 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces9getPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(16) %122, ptr noundef nonnull %112) #12
  %127 = icmp eq ptr %126, null
  br i1 %127, label %144, label %132

128:                                              ; preds = %123
  %129 = load ptr, ptr %99, align 8, !tbaa !52
  %130 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces9getPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(16) %129, ptr noundef nonnull %112) #12
  %131 = icmp eq ptr %130, null
  br i1 %131, label %137, label %132

132:                                              ; preds = %128, %125
  %133 = phi ptr [ %130, %128 ], [ %126, %125 ]
  %134 = load ptr, ptr %108, align 8, !tbaa !46
  %135 = getelementptr inbounds ptr, ptr %134, i64 25
  %136 = load ptr, ptr %135, align 8
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef nonnull %133) #12
  br label %158

137:                                              ; preds = %128
  %138 = load ptr, ptr %99, align 8, !tbaa !52
  %139 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(16) %138, ptr noundef nonnull %116) #12
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load ptr, ptr %99, align 8, !tbaa !52
  %143 = load ptr, ptr %100, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %142, ptr noundef nonnull %116, ptr noundef nonnull %112, ptr noundef %143) #12
  tail call void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %116, ptr noundef nonnull %112, ptr noundef nonnull %1) #12
  br label %158

144:                                              ; preds = %125, %137
  %145 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer22addCustomNamespaceDeclEPKtPNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %112, ptr noundef nonnull %1) #12
  %146 = load ptr, ptr %99, align 8, !tbaa !52
  %147 = load ptr, ptr %100, align 8, !tbaa !51
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %146, ptr noundef %145, ptr noundef nonnull %112, ptr noundef %147) #12
  %148 = load ptr, ptr %108, align 8, !tbaa !46
  %149 = getelementptr inbounds ptr, ptr %148, i64 25
  %150 = load ptr, ptr %149, align 8
  tail call void %150(ptr noundef nonnull align 8 dereferenceable(8) %108, ptr noundef %145) #12
  br label %158

151:                                              ; preds = %118
  %152 = load ptr, ptr %108, align 8, !tbaa !46
  %153 = getelementptr inbounds ptr, ptr %152, i64 24
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(8) %108) #12
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  tail call void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 169, ptr noundef nonnull %108) #12
  br label %158

158:                                              ; preds = %132, %144, %141, %123, %157, %151, %103
  %159 = add nuw nsw i64 %104, 1
  %160 = icmp eq i64 %159, %101
  br i1 %160, label %102, label %103, !llvm.loop !77
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces11removeScopeEv(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  %4 = add i32 %3, -1
  %5 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %4) #12
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !64
  %8 = load ptr, ptr %0, align 8, !tbaa !66
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #12
  %10 = add i32 %9, -1
  %11 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %10) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #13
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !80 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !81

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !82
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !83

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !82
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !84, !llvm.loop !85

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !86 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !87

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !82
  %8 = load i16, ptr %1, align 2, !tbaa !82
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !88

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !89

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !82
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !90

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !91

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !82
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !92

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !93

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !82
  %28 = load i16, ptr %26, align 2, !tbaa !82
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !94, !llvm.loop !95

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = alloca [2048 x i16], align 16
  %5 = alloca %"class.xercesc_2_7::DOMErrorImpl", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #14
  %10 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L20gNormalizerMsgLoaderEv() #12
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef %1, ptr noundef nonnull %4, i32 noundef 2047) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  %15 = trunc i32 %1 to i16
  call void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtS2_Pv(ptr noundef nonnull align 8 dereferenceable(48) %5, i16 noundef signext %15, ptr noundef null, ptr noundef nonnull %4, ptr noundef %2) #12
  %16 = load ptr, ptr %6, align 8, !tbaa !96
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %5) #12
          to label %21 unwind label %24

21:                                               ; preds = %9
  br i1 %20, label %26, label %22

22:                                               ; preds = %21
  %23 = call ptr @__cxa_allocate_exception(i64 4) #14
  store i32 %1, ptr %23, align 16, !tbaa !97
  invoke void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #15
          to label %28 unwind label %24

24:                                               ; preds = %22, %9
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  resume { ptr, i32 } %25

26:                                               ; preds = %21
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #14
  br label %27

27:                                               ; preds = %26, %3
  ret void

28:                                               ; preds = %22
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 !prof !41 {
  %5 = load ptr, ptr %0, align 8, !tbaa !66
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces8addScopeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %3) #12
  br label %9

9:                                                ; preds = %8, %4
  %10 = load ptr, ptr %0, align 8, !tbaa !66
  %11 = add i32 %6, -1
  %12 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %11) #12
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope18addOrChangeBindingEPKtS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 !prof !41 {
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %6 = add i32 %5, -1
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %6) #12
  %8 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %1) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %3
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef nonnull %8, ptr noundef %2) #12
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i1 [ false, %3 ], [ %11, %10 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #12
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load ptr, ptr %3, align 8, !tbaa !46
  %9 = getelementptr inbounds ptr, ptr %8, i64 49
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, ptr noundef %2) #12
  br label %24

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1023, ptr noundef %13) #12
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
          to label %14 unwind label %22

14:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 58) #12
          to label %15 unwind label %22

15:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1) #12
          to label %16 unwind label %22

16:                                               ; preds = %15
  %17 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #12
  %18 = load ptr, ptr %3, align 8, !tbaa !46
  %19 = getelementptr inbounds ptr, ptr %18, i64 49
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %17, ptr noundef %2) #12
          to label %21 unwind label %22

21:                                               ; preds = %16
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %24

22:                                               ; preds = %16, %15, %14, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  resume { ptr, i32 } %23

24:                                               ; preds = %21, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces9getPrefixEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  %5 = add i32 %4, -1
  %6 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %5) #12
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope9getPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %1) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces6getUriEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  %3 = load ptr, ptr %0, align 8, !tbaa !66
  %4 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  %5 = add i32 %4, -1
  %6 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %5) #12
  %7 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %1) #12
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer22addCustomNamespaceDeclEPKtPNS_14DOMElementImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  call void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1023, ptr noundef %7) #12
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 78) #12
          to label %8 unwind label %32

8:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 83) #12
          to label %9 unwind label %32

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = invoke noundef ptr @_ZNK11xercesc_2_713DOMNormalizer14integerToXMLChEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %11) #12
          to label %13 unwind label %32

13:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %12) #12
          to label %14 unwind label %32

14:                                               ; preds = %13
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  br label %16

16:                                               ; preds = %14, %29
  %17 = load i32, ptr %10, align 8, !tbaa !48
  %18 = add i32 %17, 1
  store i32 %18, ptr %10, align 8, !tbaa !48
  %19 = load ptr, ptr %15, align 8, !tbaa !52
  %20 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %21 = invoke noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %20) #12
          to label %22 unwind label %30

22:                                               ; preds = %16
  %23 = icmp eq ptr %21, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 78) #12
          to label %25 unwind label %30

25:                                               ; preds = %24
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %4, i16 noundef zeroext 83) #12
          to label %26 unwind label %30

26:                                               ; preds = %25
  %27 = load i32, ptr %10, align 8, !tbaa !48
  %28 = invoke noundef ptr @_ZNK11xercesc_2_713DOMNormalizer14integerToXMLChEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %27) #12
          to label %29 unwind label %30

29:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %28) #12
          to label %16 unwind label %30, !llvm.loop !99

30:                                               ; preds = %16, %24, %25, %26, %29
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %63

32:                                               ; preds = %3, %8, %9, %13
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %63

34:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %35 = load ptr, ptr %6, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1023, ptr noundef %35) #12
          to label %36 unwind label %57

36:                                               ; preds = %34
  invoke void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE) #12
          to label %37 unwind label %59

37:                                               ; preds = %36
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %5, i16 noundef zeroext 58) #12
          to label %38 unwind label %59

38:                                               ; preds = %37
  %39 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %39) #12
          to label %40 unwind label %59

40:                                               ; preds = %38
  %41 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #12
  %42 = load ptr, ptr %2, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 49
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %41, ptr noundef %1) #12
          to label %45 unwind label %59

45:                                               ; preds = %40
  %46 = call noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %47 = load ptr, ptr %2, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 51
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %46) #12
          to label %51 unwind label %59

51:                                               ; preds = %45
  %52 = load ptr, ptr %50, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 24
  %54 = load ptr, ptr %53, align 8
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %50) #12
          to label %56 unwind label %59

56:                                               ; preds = %51
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  ret ptr %55

57:                                               ; preds = %34
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %61

59:                                               ; preds = %51, %45, %40, %38, %37, %36
  %60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %63

63:                                               ; preds = %30, %32, %61
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %31, %30 ], [ %33, %32 ]
  call void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer14integerToXMLChEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 30) #12
  %9 = getelementptr inbounds i16, ptr %8, i64 6
  store i16 0, ptr %9, align 2, !tbaa !82
  br label %10

10:                                               ; preds = %10, %2
  %11 = phi ptr [ %9, %2 ], [ %14, %10 ]
  %12 = phi i32 [ %1, %2 ], [ %17, %10 ]
  %13 = urem i32 %12, 10
  %14 = getelementptr inbounds i16, ptr %11, i64 -1
  %15 = trunc i32 %13 to i16
  %16 = or disjoint i16 %15, 48
  store i16 %16, ptr %14, align 2, !tbaa !82
  %17 = udiv i32 %12, 10
  %18 = icmp ult i32 %12, 10
  br i1 %18, label %19, label %10, !llvm.loop !100

19:                                               ; preds = %10
  %20 = load ptr, ptr %0, align 8, !tbaa !54
  %21 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %20, ptr noundef nonnull %14) #12
  %22 = load ptr, ptr %3, align 8, !tbaa !51
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %8) #12
  ret ptr %21
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !101 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %4, align 4, !tbaa !105
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 2
  store i32 0, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 3
  store i8 0, ptr %6, align 4, !tbaa !107
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  store ptr %2, ptr %7, align 8, !tbaa !108
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %10 = add i32 %1, 1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %13 = load ptr, ptr %2, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !109
  store i16 0, ptr %16, align 2, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer3setEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !110 {
  store i32 0, ptr %0, align 8, !tbaa !102
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !111 {
  %3 = load i32, ptr %0, align 8, !tbaa !102
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !105
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !112

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %8 = load i32, ptr %0, align 8, !tbaa !102
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !109
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !102
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !113 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !114

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !82
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !115

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !82
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !116, !llvm.loop !117

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !102
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !105
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !118

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #12
  %21 = load i32, ptr %0, align 8, !tbaa !102
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !102
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !102
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLBuffer12getRawBufferEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !119 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = load i32, ptr %0, align 8, !tbaa !102
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  store i16 0, ptr %6, align 2, !tbaa !82
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !109
  %6 = load ptr, ptr %3, align 8, !tbaa !46
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !120 {
  store i32 0, ptr %0, align 8, !tbaa !102
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  store i16 0, ptr %3, align 2, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #4 align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #12
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !121
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !64
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #12
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 10, i1 noundef zeroext true, ptr noundef %1) #12
          to label %5 unwind label %6

5:                                                ; preds = %2
  store ptr %4, ptr %0, align 8, !tbaa !66
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %1) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 !prof !41 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !123
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !121
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !124
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !125
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !126
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !125
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !125
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !42
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !127
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !123, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !125
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #13
  %19 = load i32, ptr %6, align 4, !tbaa !121
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !130

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !126
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !125
  %30 = load ptr, ptr %27, align 8, !tbaa !46
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #12
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE12setElementAtEPS3_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
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
  %16 = load i8, ptr %15, align 8, !tbaa !123, !range !128, !noundef !129
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !125
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #13
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !125
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !121
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !123, !range !128, !noundef !129
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !125
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #13
  %20 = load ptr, ptr %7, align 8, !tbaa !125
  %21 = load i32, ptr %2, align 4, !tbaa !121
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !42
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !llvm.loop !131
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
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
  %15 = load i8, ptr %14, align 8, !tbaa !123, !range !128, !noundef !129
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !125
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !42
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #13
  %25 = load i32, ptr %3, align 4, !tbaa !121
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
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !125
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !125
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !42
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !42
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !132

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !42
  store i32 %28, ptr %3, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !121
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !123, !range !128, !noundef !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !125
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #13
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !123, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !125
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %16) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #13
  %19 = load i32, ptr %6, align 4, !tbaa !121
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !133

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !126
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !125
  %30 = load ptr, ptr %27, align 8, !tbaa !46
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
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

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #4 align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !66
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
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
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope18addOrChangeBindingEPKtS4_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %68

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, i32 noundef 10, i1 noundef zeroext false, ptr noundef %3) #12
          to label %12 unwind label %32

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !138
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, i32 noundef 10, i1 noundef zeroext false, ptr noundef %3) #12
          to label %15 unwind label %34

15:                                               ; preds = %12
  store ptr %14, ptr %7, align 8, !tbaa !137
  %16 = load ptr, ptr %0, align 8, !tbaa !78
  %17 = icmp eq ptr %16, null
  br i1 %17, label %68, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !138
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %20, i1 noundef zeroext false, ptr noundef %3) #12
  br label %21

21:                                               ; preds = %30, %18
  %22 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #12
  br i1 %22, label %23, label %40

23:                                               ; preds = %21
  %24 = invoke noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #12
          to label %25 unwind label %36

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !78
  %27 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef %24) #12
          to label %30 unwind label %38

30:                                               ; preds = %25
  %31 = load ptr, ptr %13, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef %24, ptr noundef %29) #12
          to label %21 unwind label %38, !llvm.loop !139

32:                                               ; preds = %10
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %3) #13
  br label %78

34:                                               ; preds = %12
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %3) #13
  br label %78

36:                                               ; preds = %23
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %66

38:                                               ; preds = %30, %25
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %66

40:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  %41 = load ptr, ptr %0, align 8, !tbaa !78
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %43, i1 noundef zeroext false, ptr noundef %3) #12
          to label %44 unwind label %55

44:                                               ; preds = %40, %53
  %45 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  br i1 %45, label %46, label %63

46:                                               ; preds = %44
  %47 = invoke noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
          to label %48 unwind label %57

48:                                               ; preds = %46
  %49 = load ptr, ptr %0, align 8, !tbaa !78
  %50 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !137
  %52 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef %47) #12
          to label %53 unwind label %59

53:                                               ; preds = %48
  %54 = load ptr, ptr %7, align 8, !tbaa !137
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef %47, ptr noundef %52) #12
          to label %44 unwind label %59, !llvm.loop !140

55:                                               ; preds = %40
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %64

57:                                               ; preds = %46
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %61

59:                                               ; preds = %53, %48
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %60, %59 ], [ %58, %57 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  br label %64

63:                                               ; preds = %44
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  br label %68

64:                                               ; preds = %61, %55
  %65 = phi { ptr, i32 } [ %62, %61 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  br label %66

66:                                               ; preds = %36, %38, %64
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %39, %38 ], [ %37, %36 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  br label %78

68:                                               ; preds = %15, %63, %4
  %69 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !138
  %71 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef %1) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = load ptr, ptr %7, align 8, !tbaa !137
  call void @_ZN11xercesc_2_714RefHashTableOfItE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %74, ptr noundef nonnull %71) #12
  br label %75

75:                                               ; preds = %73, %68
  %76 = load ptr, ptr %69, align 8, !tbaa !138
  call void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %76, ptr noundef %1, ptr noundef %2) #12
  %77 = load ptr, ptr %7, align 8, !tbaa !137
  call void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef %2, ptr noundef %1) #12
  ret void

78:                                               ; preds = %66, %34, %32
  %79 = phi { ptr, i32 } [ %67, %66 ], [ %35, %34 ], [ %33, %32 ]
  resume { ptr, i32 } %79
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE10addElementEPS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !121
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !42
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !124
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !121
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !42
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !125
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !42
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !42
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !141

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !126
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !125
  %49 = load ptr, ptr %46, align 8, !tbaa !46
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !125
  store i32 %12, ptr %6, align 8, !tbaa !124
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 116, ptr noundef %9) #12
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
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %37, label %21

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  %23 = zext i32 %19 to i64
  br i1 %22, label %29, label %26

24:                                               ; preds = %29
  %25 = load ptr, ptr %14, align 8, !tbaa !125
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %32, %29 ], [ %16, %21 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !125
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !42
  %35 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !42
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %24, label %29, !llvm.loop !142

37:                                               ; preds = %13, %26
  %38 = phi ptr [ %28, %26 ], [ %17, %13 ]
  store ptr null, ptr %38, align 8, !tbaa !42
  store i32 %19, ptr %3, align 4, !tbaa !121
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1) #12
  br label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ null, %10 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope9getPrefixEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !41 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1) #12
  br label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ null, %10 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC2EPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !78
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !138
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_714RefHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %3) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_714RefHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #13
  br label %11

11:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %2 = load ptr, ptr %0, align 8, !tbaa !143
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !145
  %5 = load ptr, ptr %2, align 8, !tbaa !46
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #12
  store ptr null, ptr %3, align 8, !tbaa !145
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !146
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !46
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 !prof !41 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfItE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !147
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !148
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !145
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !42
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = load i8, ptr %9, align 8, !tbaa !151, !range !128, !noundef !129
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !152
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !143
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #12
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !153

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !145
  %37 = load i32, ptr %4, align 8, !tbaa !147
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !42
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !154

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfItE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !148
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %3, ptr %0, align 8, !tbaa !143
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !145
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !147
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !155
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !148
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_714RefHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #12
  %12 = load ptr, ptr %0, align 8, !tbaa !143
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12) #12
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #12
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !146
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #13
  resume { ptr, i32 } %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorItEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !156
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !159
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !160
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !161
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !162
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %14 = load ptr, ptr %10, align 8, !tbaa !162
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.2, i32 noundef 527, i32 noundef 15, ptr noundef %14) #12
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #14
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !160
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !147
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 591, i32 noundef 30, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %16 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !163
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !41 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !152
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !41 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !147
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !148
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfItE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !151, !range !128, !noundef !129
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !152
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #17
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !152
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !163
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !143
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #12
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !145
  %34 = load i32, ptr %4, align 4, !tbaa !164
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !42
  call void @_ZN11xercesc_2_722RefHashTableBucketElemItEC2EPvPtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #12
  %38 = load ptr, ptr %32, align 8, !tbaa !145
  %39 = load i32, ptr %4, align 4, !tbaa !164
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !42
  %42 = load i32, ptr %9, align 8, !tbaa !148
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !148
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !156, !range !128, !noundef !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !146
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !147
  %7 = load ptr, ptr %0, align 8, !tbaa !143
  %8 = load ptr, ptr %4, align 8, !tbaa !46
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7) #12
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !146
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !163
  %21 = load ptr, ptr %18, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20) #12
  br i1 %24, label %33, label %58

25:                                               ; preds = %58
  %26 = load ptr, ptr %3, align 8, !tbaa !146
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %61, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !163
  %29 = load ptr, ptr %26, align 8, !tbaa !46
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28) #12
  br i1 %32, label %33, label %58, !llvm.loop !165

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %61, %25 ]
  %35 = phi ptr [ null, %17 ], [ %59, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !149
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !42
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !151, !range !128, !noundef !129
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 8, !tbaa !152
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef nonnull %47) #17
  br label %50

50:                                               ; preds = %46, %49, %33
  %51 = load ptr, ptr %0, align 8, !tbaa !143
  %52 = load ptr, ptr %51, align 8, !tbaa !46
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %34) #12
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !148
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 8, !tbaa !148
  ret void

58:                                               ; preds = %17, %25
  %59 = phi ptr [ %61, %25 ], [ %15, %17 ]
  %60 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %25, !llvm.loop !165

63:                                               ; preds = %58, %2
  %64 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %65 = load ptr, ptr %0, align 8, !tbaa !143
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str.2, i32 noundef 185, i32 noundef 50, ptr noundef %65) #12
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

67:                                               ; preds = %63
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %64) #14
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !143
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6) #12
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !143
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !147
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !46
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #12
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !145
  %21 = load i32, ptr %12, align 8, !tbaa !147
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !145
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !42
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !166
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorItEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !159
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  store ptr %7, ptr %2, align 8, !tbaa !159
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !160
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !160
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !161
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !147
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !42
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !160
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !llvm.loop !167

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !159
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !46
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !162
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 575, i32 noundef 30, ptr noundef %9) #12
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !160
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorItED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !41 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !146
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !147
  %8 = load ptr, ptr %0, align 8, !tbaa !143
  %9 = load ptr, ptr %5, align 8, !tbaa !46
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #12
  store i32 %11, ptr %2, align 4, !tbaa !164
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !145
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !42
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !146
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !163
  %23 = load ptr, ptr %20, align 8, !tbaa !46
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #12
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !168

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !147
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !143
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !143
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #12
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !147
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !145
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  store ptr %22, ptr %20, align 8, !tbaa !145
  store i32 %5, ptr %3, align 8, !tbaa !147
  %23 = load ptr, ptr %0, align 8, !tbaa !143
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #12
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !145
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !42
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !149
  %38 = load ptr, ptr %18, align 8, !tbaa !146
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !163
  %41 = load ptr, ptr %0, align 8, !tbaa !143
  %42 = load ptr, ptr %38, align 8, !tbaa !46
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #12
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !42
  store ptr %48, ptr %36, align 8, !tbaa !149
  store ptr %35, ptr %47, align 8, !tbaa !42
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !169

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !147
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !170

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemItEC2EPvPtPS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !41 {
  store ptr %2, ptr %0, align 8, !tbaa !152
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !149
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !171
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !173
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !41 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  store ptr null, ptr %0, align 8, !tbaa !171
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !41 {
  %3 = load ptr, ptr %0, align 8, !tbaa !171
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !173
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !46
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #12
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !173
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L20gNormalizerMsgLoaderEv() unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !41 !PGOFuncName !174 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16gNormalizerMutexEv() #12
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #12
  %6 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE) #12
          to label %10 unwind label %13

10:                                               ; preds = %8
  store ptr %9, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4) #12
          to label %15 unwind label %13

13:                                               ; preds = %15, %12, %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  resume { ptr, i32 } %14

15:                                               ; preds = %12, %10
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_713DOMNormalizer15reinitMsgLoaderEv) #12
          to label %16 unwind label %13

16:                                               ; preds = %15, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  %17 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !42
  br label %18

18:                                               ; preds = %16, %0
  %19 = phi ptr [ %17, %16 ], [ %2, %0 ]
  ret ptr %19
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtS2_Pv(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L16gNormalizerMutexEv() unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !41 !PGOFuncName !175 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !42
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !42
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5) #12
  %6 = load i1, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #12
          to label %9 unwind label %13

9:                                                ; preds = %7
  %10 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %10) #12
          to label %11 unwind label %15

11:                                               ; preds = %9
  store ptr %8, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22normalizerMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_713DOMNormalizer21reinitNormalizerMutexEv) #12
          to label %12 unwind label %13

12:                                               ; preds = %11
  store i1 true, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br label %17

13:                                               ; preds = %11, %7
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %19

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %8) #13
  br label %19

17:                                               ; preds = %12, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  %18 = load ptr, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !42
  br label %21

19:                                               ; preds = %15, %13
  %20 = phi { ptr, i32 } [ %14, %13 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %17, %0
  %22 = phi ptr [ %18, %17 ], [ %2, %0 ]
  ret ptr %22
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DOMNormalizer.cpp() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_79XMLBufferC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 496321}
!37 = !{ptr @_ZN11xercesc_2_79XMLBuffer3setEPKt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 190774}
!38 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!39 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !45, i64 0}
!48 = !{!49, !50, i64 32}
!49 = !{!"_ZTSN11xercesc_2_713DOMNormalizerE", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !50, i64 32, !43, i64 40}
!50 = !{!"int", !44, i64 0}
!51 = !{!49, !43, i64 40}
!52 = !{!49, !43, i64 24}
!53 = !{!"function_entry_count", i64 5836268}
!54 = !{!49, !43, i64 0}
!55 = !{!49, !43, i64 8}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!59, !61, i64 8}
!59 = !{!"_ZTSN11xercesc_2_720DOMConfigurationImplE", !60, i64 0, !61, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40}
!60 = !{!"_ZTSN11xercesc_2_716DOMConfigurationE"}
!61 = !{!"short", !44, i64 0}
!62 = distinct !{!62, !57}
!63 = distinct !{!63, !57}
!64 = !{!65, !43, i64 8}
!65 = !{!"_ZTSN11xercesc_2_713DOMNormalizer17InScopeNamespacesE", !43, i64 0, !43, i64 8}
!66 = !{!65, !43, i64 0}
!67 = !{!68, !43, i64 72}
!68 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !69, i64 0, !71, i64 8, !72, i64 24, !75, i64 56, !43, i64 72, !43, i64 80, !43, i64 88}
!69 = !{!"_ZTSN11xercesc_2_710DOMElementE", !70, i64 0}
!70 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!71 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !43, i64 0, !61, i64 8}
!72 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !43, i64 0, !43, i64 8, !73, i64 16}
!73 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !74, i64 0, !43, i64 8}
!74 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!75 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !43, i64 0, !43, i64 8}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !57}
!78 = !{!79, !43, i64 0}
!79 = !{!"_ZTSN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeE", !43, i64 0, !43, i64 8, !43, i64 16}
!80 = !{!"function_entry_count", i64 2453164456}
!81 = !{!"branch_weights", i32 1, i32 -1841802839}
!82 = !{!61, !61, i64 0}
!83 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!84 = !{!"branch_weights", i32 408669070, i32 -279908792}
!85 = distinct !{!85, !57}
!86 = !{!"function_entry_count", i64 1231717351}
!87 = !{!"branch_weights", i32 621, i32 -1469098093}
!88 = !{!"branch_weights", i32 408901017, i32 1}
!89 = !{!"branch_weights", i32 267, i32 4}
!90 = !{!"branch_weights", i32 1, i32 4}
!91 = !{!"branch_weights", i32 156, i32 112}
!92 = !{!"branch_weights", i32 1, i32 112}
!93 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!94 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!95 = distinct !{!95, !57}
!96 = !{!49, !43, i64 16}
!97 = !{!98, !98, i64 0}
!98 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !44, i64 0}
!99 = distinct !{!99, !57}
!100 = distinct !{!100, !57}
!101 = !{!"function_entry_count", i64 496321}
!102 = !{!103, !50, i64 0}
!103 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !50, i64 0, !50, i64 4, !50, i64 8, !104, i64 12, !43, i64 16, !43, i64 24, !43, i64 32}
!104 = !{!"bool", !44, i64 0}
!105 = !{!103, !50, i64 4}
!106 = !{!103, !50, i64 8}
!107 = !{!103, !104, i64 12}
!108 = !{!103, !43, i64 16}
!109 = !{!103, !43, i64 32}
!110 = !{!"function_entry_count", i64 190774}
!111 = !{!"function_entry_count", i64 7992849}
!112 = !{!"branch_weights", i32 1, i32 7992850}
!113 = !{!"function_entry_count", i64 789922}
!114 = !{!"branch_weights", i32 1, i32 789923}
!115 = !{!"branch_weights", i32 285, i32 789639}
!116 = !{!"branch_weights", i32 789639, i32 41628304}
!117 = distinct !{!117, !57}
!118 = !{!"branch_weights", i32 789637, i32 3}
!119 = !{!"function_entry_count", i64 10769804}
!120 = !{!"function_entry_count", i64 8985736}
!121 = !{!122, !50, i64 12}
!122 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE", !104, i64 8, !50, i64 12, !50, i64 16, !43, i64 24, !43, i64 32}
!123 = !{!122, !104, i64 8}
!124 = !{!122, !50, i64 16}
!125 = !{!122, !43, i64 24}
!126 = !{!122, !43, i64 32}
!127 = distinct !{!127, !57}
!128 = !{i8 0, i8 2}
!129 = !{}
!130 = distinct !{!130, !57}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !57}
!133 = distinct !{!133, !57}
!134 = !{!135, !43, i64 40}
!135 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !136, i64 8, !43, i64 16, !50, i64 24, !43, i64 32, !43, i64 40}
!136 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !44, i64 0}
!137 = !{!79, !43, i64 16}
!138 = !{!79, !43, i64 8}
!139 = distinct !{!139, !57}
!140 = distinct !{!140, !57}
!141 = distinct !{!141, !57}
!142 = distinct !{!142, !57}
!143 = !{!144, !43, i64 0}
!144 = !{!"_ZTSN11xercesc_2_714RefHashTableOfItEE", !43, i64 0, !104, i64 8, !43, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !43, i64 40}
!145 = !{!144, !43, i64 16}
!146 = !{!144, !43, i64 40}
!147 = !{!144, !50, i64 24}
!148 = !{!144, !50, i64 32}
!149 = !{!150, !43, i64 8}
!150 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemItEE", !43, i64 0, !43, i64 8, !43, i64 16}
!151 = !{!144, !104, i64 8}
!152 = !{!150, !43, i64 0}
!153 = distinct !{!153, !57}
!154 = distinct !{!154, !57}
!155 = !{!144, !50, i64 28}
!156 = !{!157, !104, i64 8}
!157 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorItEE", !158, i64 0, !104, i64 8, !43, i64 16, !50, i64 24, !43, i64 32, !43, i64 40}
!158 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorItEE"}
!159 = !{!157, !43, i64 16}
!160 = !{!157, !50, i64 24}
!161 = !{!157, !43, i64 32}
!162 = !{!157, !43, i64 40}
!163 = !{!150, !43, i64 16}
!164 = !{!50, !50, i64 0}
!165 = distinct !{!165, !57}
!166 = distinct !{!166, !57}
!167 = distinct !{!167, !57}
!168 = distinct !{!168, !57}
!169 = distinct !{!169, !57}
!170 = distinct !{!170, !57}
!171 = !{!172, !43, i64 0}
!172 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEEE", !43, i64 0, !43, i64 8}
!173 = !{!172, !43, i64 8}
!174 = !{!"DOMNormalizer.cpp:_ZN11xercesc_2_7L20gNormalizerMsgLoaderEv"}
!175 = !{!"DOMNormalizer.cpp:_ZN11xercesc_2_7L16gNormalizerMutexEv"}
