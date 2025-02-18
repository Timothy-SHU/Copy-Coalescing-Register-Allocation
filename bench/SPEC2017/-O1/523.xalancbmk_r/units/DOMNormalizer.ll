; ModuleID = 'DOMNormalizer.cpp'
source_filename = "DOMNormalizer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DOMNormalizer" = type { ptr, ptr, ptr, ptr, i32, ptr }
%"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces" = type { ptr, ptr }
%"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::DOMConfigurationImpl" = type { %"class.xercesc_2_7::DOMConfiguration", i16, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMConfiguration" = type { ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::DOMErrorImpl" = type { %"class.xercesc_2_7::DOMError", i8, i16, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DOMError" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE9removeKeyEPKv = comdat any

$__clang_call_terminate = comdat any

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

$_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE11nextElementEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorItE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfItE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev = comdat any

$_ZTSN11xercesc_2_77XMLErrs5CodesE = comdat any

$_ZTIN11xercesc_2_77XMLErrs5CodesE = comdat any

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

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZN11xercesc_2_7L22normalizerMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L16cleanupMsgLoaderE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L10gMsgLoaderE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L16sNormalizerMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L11sRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv116__enum_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_77XMLErrs5CodesE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMLErrs5CodesE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv116__enum_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMLErrs5CodesE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
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
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DOMNormalizer.cpp, ptr null }]

@_ZN11xercesc_2_713DOMNormalizerC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNormalizerC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713DOMNormalizerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNormalizerD2Ev
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD2Ev
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC1EPS2_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC2EPS2_
@_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer15reinitMsgLoaderEv() #2 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !43
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer21reinitNormalizerMutexEv() #2 align 2 !prof !38 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !39
  store i1 false, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer32initializeDOMNormalizerMsgLoaderEv() local_unnamed_addr #4 align 2 !prof !38 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE)
  store ptr %1, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_713DOMNormalizer15reinitMsgLoaderEv)
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizerC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  store i32 1, ptr %3, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  store ptr %1, ptr %4, align 8, !tbaa !48
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 16, ptr noundef %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %6)
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  store ptr %5, ptr %8, align 8, !tbaa !49
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %1) #14
  resume { ptr, i32 } %10
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizerD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(40) %6) #14
  br label %12

12:                                               ; preds = %5, %8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17normalizeDocumentEPNS_15DOMDocumentImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  store ptr %1, ptr %0, align 8, !tbaa !52
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = getelementptr inbounds ptr, ptr %3, i64 35
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(293) %1)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !53
  %8 = load ptr, ptr %0, align 8, !tbaa !52
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 35
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(293) %8)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call noundef ptr @_ZNK11xercesc_2_720DOMConfigurationImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
  br label %16

16:                                               ; preds = %2, %14
  %17 = phi ptr [ %15, %14 ], [ null, %2 ]
  %18 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !54
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 4
  store i32 1, ptr %19, align 8, !tbaa !45
  %20 = load ptr, ptr %1, align 8, !tbaa !43
  %21 = getelementptr inbounds ptr, ptr %20, i64 45
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(293) %1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %16, %25
  %26 = phi ptr [ %33, %25 ], [ %23, %16 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %26)
  %31 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer13normalizeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %26)
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %30, ptr %31
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %25, !llvm.loop !55

35:                                               ; preds = %25, %16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare noundef ptr @_ZNK11xercesc_2_720DOMConfigurationImpl15getErrorHandlerEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer13normalizeNodeEPNS_7DOMNodeE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = load ptr, ptr %1, align 8, !tbaa !43
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef signext i16 %5(ptr noundef nonnull align 8 dereferenceable(8) %1)
  switch i16 %6, label %235 [
    i16 1, label %7
    i16 8, label %76
    i16 4, label %130
    i16 3, label %178
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !49
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  store ptr %14, ptr %12, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %12, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %16 = load ptr, ptr %9, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !61
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !64
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds ptr, ptr %18, i64 %21
  store ptr %12, ptr %22, align 8, !tbaa !39
  %23 = add i32 %20, 1
  store i32 %23, ptr %19, align 4, !tbaa !64
  %24 = load ptr, ptr %1, align 8, !tbaa !43
  %25 = getelementptr inbounds ptr, ptr %24, i64 11
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !53
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMConfigurationImpl", ptr %29, i64 0, i32 1
  %31 = load i16, ptr %30, align 8, !tbaa !65
  %32 = and i16 %31, 128
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %7
  tail call void @_ZNK11xercesc_2_713DOMNormalizer14namespaceFixUpEPNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %1)
  br label %58

35:                                               ; preds = %7
  %36 = icmp eq ptr %27, null
  br i1 %36, label %58, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %27, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 5
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i64 %40(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %37, %43
  %44 = phi i64 [ %52, %43 ], [ 0, %37 ]
  %45 = load ptr, ptr %27, align 8, !tbaa !43
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef %44)
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = getelementptr inbounds ptr, ptr %49, i64 20
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %48)
  %52 = add nuw i64 %44, 1
  %53 = load ptr, ptr %27, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 5
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef i64 %55(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %43, label %58, !llvm.loop !69

58:                                               ; preds = %43, %37, %35, %34
  %59 = load ptr, ptr %1, align 8, !tbaa !43
  %60 = getelementptr inbounds ptr, ptr %59, i64 7
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %58, %64
  %65 = phi ptr [ %72, %64 ], [ %62, %58 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !43
  %67 = getelementptr inbounds ptr, ptr %66, i64 10
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65)
  %70 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer13normalizeNodeEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %65)
  %71 = icmp eq ptr %70, null
  %72 = select i1 %71, ptr %69, ptr %70
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %64, !llvm.loop !70

74:                                               ; preds = %64, %58
  %75 = load ptr, ptr %8, align 8, !tbaa !49
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces11removeScopeEv(ptr noundef nonnull align 8 dereferenceable(16) %75)
  br label %235

76:                                               ; preds = %2
  %77 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !53
  %79 = getelementptr inbounds %"class.xercesc_2_7::DOMConfigurationImpl", ptr %78, i64 0, i32 1
  %80 = load i16, ptr %79, align 8, !tbaa !65
  %81 = and i16 %80, 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %235

83:                                               ; preds = %76
  %84 = load ptr, ptr %1, align 8, !tbaa !43
  %85 = getelementptr inbounds ptr, ptr %84, i64 9
  %86 = load ptr, ptr %85, align 8
  %87 = tail call noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %88 = load ptr, ptr %1, align 8, !tbaa !43
  %89 = getelementptr inbounds ptr, ptr %88, i64 5
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  %93 = getelementptr inbounds ptr, ptr %92, i64 16
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull %1)
  %96 = icmp eq ptr %87, null
  br i1 %96, label %127, label %97

97:                                               ; preds = %83
  %98 = load ptr, ptr %87, align 8, !tbaa !43
  %99 = getelementptr inbounds ptr, ptr %98, i64 4
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef signext i16 %100(ptr noundef nonnull align 8 dereferenceable(8) %87)
  %102 = icmp eq i16 %101, 3
  br i1 %102, label %103, label %127

103:                                              ; preds = %97
  %104 = load ptr, ptr %87, align 8, !tbaa !43
  %105 = getelementptr inbounds ptr, ptr %104, i64 10
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef ptr %106(ptr noundef nonnull align 8 dereferenceable(8) %87)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %127, label %109

109:                                              ; preds = %103
  %110 = load ptr, ptr %107, align 8, !tbaa !43
  %111 = getelementptr inbounds ptr, ptr %110, i64 4
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef signext i16 %112(ptr noundef nonnull align 8 dereferenceable(8) %107)
  %114 = icmp eq i16 %113, 3
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load ptr, ptr %87, align 8, !tbaa !43
  %117 = getelementptr inbounds ptr, ptr %116, i64 3
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef ptr %118(ptr noundef nonnull align 8 dereferenceable(8) %87)
  %120 = load ptr, ptr %107, align 8, !tbaa !43
  %121 = getelementptr inbounds ptr, ptr %120, i64 44
  %122 = load ptr, ptr %121, align 8
  tail call void %122(ptr noundef nonnull align 8 dereferenceable(56) %107, i64 noundef 0, ptr noundef %119)
  %123 = load ptr, ptr %91, align 8, !tbaa !43
  %124 = getelementptr inbounds ptr, ptr %123, i64 16
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef ptr %125(ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull %87)
  br label %127

127:                                              ; preds = %83, %97, %103, %109, %115
  %128 = phi i1 [ false, %115 ], [ true, %109 ], [ true, %103 ], [ true, %97 ], [ true, %83 ]
  %129 = phi ptr [ %107, %115 ], [ %107, %109 ], [ %107, %103 ], [ undef, %97 ], [ undef, %83 ]
  br i1 %128, label %235, label %236

130:                                              ; preds = %2
  %131 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !53
  %133 = getelementptr inbounds %"class.xercesc_2_7::DOMConfigurationImpl", ptr %132, i64 0, i32 1
  %134 = load i16, ptr %133, align 8, !tbaa !65
  %135 = and i16 %134, 2
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %235

137:                                              ; preds = %130
  %138 = load ptr, ptr %0, align 8, !tbaa !52
  %139 = load ptr, ptr %1, align 8, !tbaa !43
  %140 = getelementptr inbounds ptr, ptr %139, i64 3
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %143 = load ptr, ptr %138, align 8, !tbaa !43
  %144 = getelementptr inbounds ptr, ptr %143, i64 5
  %145 = load ptr, ptr %144, align 8
  %146 = tail call noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(293) %138, ptr noundef %142)
  %147 = load ptr, ptr %1, align 8, !tbaa !43
  %148 = getelementptr inbounds ptr, ptr %147, i64 5
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef ptr %149(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %151 = load ptr, ptr %1, align 8, !tbaa !43
  %152 = getelementptr inbounds ptr, ptr %151, i64 9
  %153 = load ptr, ptr %152, align 8
  %154 = tail call noundef ptr %153(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %155 = load ptr, ptr %150, align 8, !tbaa !43
  %156 = getelementptr inbounds ptr, ptr %155, i64 15
  %157 = load ptr, ptr %156, align 8
  %158 = tail call noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef %146, ptr noundef nonnull %1)
  %159 = icmp eq ptr %154, null
  br i1 %159, label %236, label %160

160:                                              ; preds = %137
  %161 = load ptr, ptr %154, align 8, !tbaa !43
  %162 = getelementptr inbounds ptr, ptr %161, i64 4
  %163 = load ptr, ptr %162, align 8
  %164 = tail call noundef signext i16 %163(ptr noundef nonnull align 8 dereferenceable(8) %154)
  %165 = icmp eq i16 %164, 3
  br i1 %165, label %166, label %236

166:                                              ; preds = %160
  %167 = load ptr, ptr %154, align 8, !tbaa !43
  %168 = getelementptr inbounds ptr, ptr %167, i64 3
  %169 = load ptr, ptr %168, align 8
  %170 = tail call noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(8) %154)
  %171 = load ptr, ptr %146, align 8, !tbaa !43
  %172 = getelementptr inbounds ptr, ptr %171, i64 44
  %173 = load ptr, ptr %172, align 8
  tail call void %173(ptr noundef nonnull align 8 dereferenceable(8) %146, i64 noundef 0, ptr noundef %170)
  %174 = load ptr, ptr %150, align 8, !tbaa !43
  %175 = getelementptr inbounds ptr, ptr %174, i64 16
  %176 = load ptr, ptr %175, align 8
  %177 = tail call noundef ptr %176(ptr noundef nonnull align 8 dereferenceable(8) %150, ptr noundef nonnull %154)
  br label %236

178:                                              ; preds = %2
  %179 = load ptr, ptr %1, align 8, !tbaa !43
  %180 = getelementptr inbounds ptr, ptr %179, i64 10
  %181 = load ptr, ptr %180, align 8
  %182 = tail call noundef ptr %181(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %183 = icmp eq ptr %182, null
  br i1 %183, label %206, label %184

184:                                              ; preds = %178
  %185 = load ptr, ptr %182, align 8, !tbaa !43
  %186 = getelementptr inbounds ptr, ptr %185, i64 4
  %187 = load ptr, ptr %186, align 8
  %188 = tail call noundef signext i16 %187(ptr noundef nonnull align 8 dereferenceable(8) %182)
  %189 = icmp eq i16 %188, 3
  br i1 %189, label %190, label %206

190:                                              ; preds = %184
  %191 = load ptr, ptr %182, align 8, !tbaa !43
  %192 = getelementptr inbounds ptr, ptr %191, i64 3
  %193 = load ptr, ptr %192, align 8
  %194 = tail call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(8) %182)
  %195 = load ptr, ptr %1, align 8, !tbaa !43
  %196 = getelementptr inbounds ptr, ptr %195, i64 43
  %197 = load ptr, ptr %196, align 8
  tail call void %197(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %194)
  %198 = load ptr, ptr %1, align 8, !tbaa !43
  %199 = getelementptr inbounds ptr, ptr %198, i64 5
  %200 = load ptr, ptr %199, align 8
  %201 = tail call noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %202 = load ptr, ptr %201, align 8, !tbaa !43
  %203 = getelementptr inbounds ptr, ptr %202, i64 16
  %204 = load ptr, ptr %203, align 8
  %205 = tail call noundef ptr %204(ptr noundef nonnull align 8 dereferenceable(8) %201, ptr noundef nonnull %182)
  br label %236

206:                                              ; preds = %184, %178
  %207 = load ptr, ptr %1, align 8, !tbaa !43
  %208 = getelementptr inbounds ptr, ptr %207, i64 3
  %209 = load ptr, ptr %208, align 8
  %210 = tail call noundef ptr %209(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %211 = icmp eq ptr %210, null
  br i1 %211, label %226, label %212

212:                                              ; preds = %206
  %213 = load i16, ptr %210, align 2, !tbaa !71
  %214 = icmp eq i16 %213, 0
  br i1 %214, label %226, label %215

215:                                              ; preds = %212, %215
  %216 = phi ptr [ %217, %215 ], [ %210, %212 ]
  %217 = getelementptr inbounds i16, ptr %216, i64 1
  %218 = load i16, ptr %217, align 2, !tbaa !71
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %215, !llvm.loop !72

220:                                              ; preds = %215
  %221 = ptrtoint ptr %217 to i64
  %222 = ptrtoint ptr %210 to i64
  %223 = sub i64 %221, %222
  %224 = and i64 %223, 8589934590
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %212, %206, %220
  %227 = load ptr, ptr %1, align 8, !tbaa !43
  %228 = getelementptr inbounds ptr, ptr %227, i64 5
  %229 = load ptr, ptr %228, align 8
  %230 = tail call noundef ptr %229(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %231 = load ptr, ptr %230, align 8, !tbaa !43
  %232 = getelementptr inbounds ptr, ptr %231, i64 16
  %233 = load ptr, ptr %232, align 8
  %234 = tail call noundef ptr %233(ptr noundef nonnull align 8 dereferenceable(8) %230, ptr noundef %1)
  br label %235

235:                                              ; preds = %220, %226, %127, %130, %76, %2, %74
  br label %236

236:                                              ; preds = %190, %127, %137, %160, %166, %235
  %237 = phi ptr [ null, %235 ], [ %146, %166 ], [ %146, %160 ], [ %146, %137 ], [ %129, %127 ], [ %1, %190 ]
  ret ptr %237
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces8addScopeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %1)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  store ptr %5, ptr %3, align 8, !tbaa !59
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %3, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %7, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds ptr, ptr %9, i64 %12
  store ptr %3, ptr %13, align 8, !tbaa !39
  %14 = add i32 %11, 1
  store i32 %14, ptr %10, align 4, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_713DOMNormalizer14namespaceFixUpEPNS_14DOMElementImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i64 %7(ptr noundef nonnull align 8 dereferenceable(25) %4)
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %15 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %16 = and i64 %8, 4294967295
  br label %44

17:                                               ; preds = %133, %2
  %18 = load ptr, ptr %1, align 8, !tbaa !43
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %21
  %24 = load ptr, ptr %1, align 8, !tbaa !43
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %27
  %30 = load i16, ptr %29, align 2, !tbaa !71
  %31 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !71
  %32 = icmp eq i16 %30, %31
  br i1 %32, label %33, label %136

33:                                               ; preds = %17, %38
  %34 = phi i16 [ %41, %38 ], [ %30, %17 ]
  %35 = phi ptr [ %40, %38 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %17 ]
  %36 = phi ptr [ %39, %38 ], [ %29, %17 ]
  %37 = icmp eq i16 %34, 0
  br i1 %37, label %144, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds i16, ptr %36, i64 1
  %40 = getelementptr inbounds i16, ptr %35, i64 1
  %41 = load i16, ptr %39, align 2, !tbaa !71
  %42 = load i16, ptr %40, align 2, !tbaa !71
  %43 = icmp eq i16 %41, %42
  br i1 %43, label %33, label %136, !llvm.loop !82

44:                                               ; preds = %11, %133
  %45 = phi i64 [ 0, %11 ], [ %134, %133 ]
  %46 = load ptr, ptr %4, align 8, !tbaa !43
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %45)
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds ptr, ptr %50, i64 20
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(8) %49)
  %53 = load ptr, ptr %49, align 8, !tbaa !43
  %54 = getelementptr inbounds ptr, ptr %53, i64 22
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %49)
  %57 = load ptr, ptr %49, align 8, !tbaa !43
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %49)
  %61 = icmp eq ptr %56, null
  %62 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !71
  br i1 %61, label %66, label %63

63:                                               ; preds = %44
  %64 = load i16, ptr %56, align 2, !tbaa !71
  %65 = icmp eq i16 %62, %64
  br i1 %65, label %68, label %133

66:                                               ; preds = %44
  %67 = icmp eq i16 %62, 0
  br i1 %67, label %79, label %133

68:                                               ; preds = %63, %73
  %69 = phi i16 [ %76, %73 ], [ %62, %63 ]
  %70 = phi ptr [ %75, %73 ], [ %56, %63 ]
  %71 = phi ptr [ %74, %73 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %63 ]
  %72 = icmp eq i16 %69, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds i16, ptr %71, i64 1
  %75 = getelementptr inbounds i16, ptr %70, i64 1
  %76 = load i16, ptr %74, align 2, !tbaa !71
  %77 = load i16, ptr %75, align 2, !tbaa !71
  %78 = icmp eq i16 %76, %77
  br i1 %78, label %68, label %133, !llvm.loop !82

79:                                               ; preds = %68, %66
  %80 = icmp eq ptr %60, null
  %81 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !71
  br i1 %80, label %85, label %82

82:                                               ; preds = %79
  %83 = load i16, ptr %60, align 2, !tbaa !71
  %84 = icmp eq i16 %81, %83
  br i1 %84, label %87, label %99

85:                                               ; preds = %79
  %86 = icmp eq i16 %81, 0
  br i1 %86, label %98, label %99

87:                                               ; preds = %82, %92
  %88 = phi i16 [ %95, %92 ], [ %81, %82 ]
  %89 = phi ptr [ %94, %92 ], [ %60, %82 ]
  %90 = phi ptr [ %93, %92 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %82 ]
  %91 = icmp eq i16 %88, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds i16, ptr %90, i64 1
  %94 = getelementptr inbounds i16, ptr %89, i64 1
  %95 = load i16, ptr %93, align 2, !tbaa !71
  %96 = load i16, ptr %94, align 2, !tbaa !71
  %97 = icmp eq i16 %95, %96
  br i1 %97, label %87, label %99, !llvm.loop !82

98:                                               ; preds = %87, %85
  tail call void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 168, ptr noundef %1)
  br label %133

99:                                               ; preds = %92, %82, %85
  %100 = load ptr, ptr %49, align 8, !tbaa !43
  %101 = getelementptr inbounds ptr, ptr %100, i64 23
  %102 = load ptr, ptr %101, align 8
  %103 = tail call noundef ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %49)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = load i16, ptr %103, align 2, !tbaa !71
  %107 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !71
  %108 = icmp eq i16 %106, %107
  br i1 %108, label %112, label %130

109:                                              ; preds = %99
  %110 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !71
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %123, label %130

112:                                              ; preds = %105, %117
  %113 = phi i16 [ %120, %117 ], [ %106, %105 ]
  %114 = phi ptr [ %119, %117 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %105 ]
  %115 = phi ptr [ %118, %117 ], [ %103, %105 ]
  %116 = icmp eq i16 %113, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds i16, ptr %115, i64 1
  %119 = getelementptr inbounds i16, ptr %114, i64 1
  %120 = load i16, ptr %118, align 2, !tbaa !71
  %121 = load i16, ptr %119, align 2, !tbaa !71
  %122 = icmp eq i16 %120, %121
  br i1 %122, label %112, label %130, !llvm.loop !82

123:                                              ; preds = %112, %109
  %124 = load ptr, ptr %14, align 8, !tbaa !49
  %125 = load ptr, ptr %49, align 8, !tbaa !43
  %126 = getelementptr inbounds ptr, ptr %125, i64 24
  %127 = load ptr, ptr %126, align 8
  %128 = tail call noundef ptr %127(ptr noundef nonnull align 8 dereferenceable(8) %49)
  %129 = load ptr, ptr %15, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %124, ptr noundef %128, ptr noundef %60, ptr noundef %129)
  br label %133

130:                                              ; preds = %117, %105, %109
  %131 = load ptr, ptr %12, align 8, !tbaa !49
  %132 = load ptr, ptr %13, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %131, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %60, ptr noundef %132)
  br label %133

133:                                              ; preds = %73, %63, %66, %123, %130, %98
  %134 = add nuw nsw i64 %45, 1
  %135 = icmp eq i64 %134, %16
  br i1 %135, label %17, label %44, !llvm.loop !83

136:                                              ; preds = %38, %17
  %137 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !49
  %139 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr noundef nonnull align 8 dereferenceable(16) %138, ptr noundef nonnull %23, ptr noundef nonnull %29)
  br i1 %139, label %159, label %140

140:                                              ; preds = %136
  tail call void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %23, ptr noundef nonnull %29, ptr noundef nonnull %1)
  %141 = load ptr, ptr %137, align 8, !tbaa !49
  %142 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %143 = load ptr, ptr %142, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr noundef nonnull %23, ptr noundef nonnull %29, ptr noundef %143)
  br label %159

144:                                              ; preds = %33
  %145 = load ptr, ptr %1, align 8, !tbaa !43
  %146 = getelementptr inbounds ptr, ptr %145, i64 24
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(96) %1)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  tail call void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 169, ptr noundef nonnull %1)
  br label %159

151:                                              ; preds = %144
  %152 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !49
  %154 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr noundef nonnull align 8 dereferenceable(16) %153, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE)
  br i1 %154, label %159, label %155

155:                                              ; preds = %151
  tail call void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull %1)
  %156 = load ptr, ptr %152, align 8, !tbaa !49
  %157 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %158 = load ptr, ptr %157, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %156, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr noundef %158)
  br label %159

159:                                              ; preds = %150, %155, %151, %136, %140
  %160 = load ptr, ptr %4, align 8, !tbaa !43
  %161 = getelementptr inbounds ptr, ptr %160, i64 5
  %162 = load ptr, ptr %161, align 8
  %163 = tail call noundef i64 %162(ptr noundef nonnull align 8 dereferenceable(25) %4)
  %164 = trunc i64 %163 to i32
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = and i64 %163, 4294967295
  br label %169

168:                                              ; preds = %251, %159
  ret void

169:                                              ; preds = %166, %251
  %170 = phi i64 [ 0, %166 ], [ %252, %251 ]
  %171 = load ptr, ptr %4, align 8, !tbaa !43
  %172 = getelementptr inbounds ptr, ptr %171, i64 3
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(25) %4, i64 noundef %170)
  %175 = load ptr, ptr %174, align 8, !tbaa !43
  %176 = getelementptr inbounds ptr, ptr %175, i64 22
  %177 = load ptr, ptr %176, align 8
  %178 = tail call noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(8) %174)
  %179 = load ptr, ptr %174, align 8, !tbaa !43
  %180 = getelementptr inbounds ptr, ptr %179, i64 23
  %181 = load ptr, ptr %180, align 8
  %182 = tail call noundef ptr %181(ptr noundef nonnull align 8 dereferenceable(8) %174)
  %183 = icmp eq ptr %178, null
  %184 = load i16, ptr @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, align 2, !tbaa !71
  br i1 %183, label %188, label %185

185:                                              ; preds = %169
  %186 = load i16, ptr %178, align 2, !tbaa !71
  %187 = icmp eq i16 %184, %186
  br i1 %187, label %190, label %201

188:                                              ; preds = %169
  %189 = icmp eq i16 %184, 0
  br i1 %189, label %251, label %201

190:                                              ; preds = %185, %195
  %191 = phi i16 [ %198, %195 ], [ %184, %185 ]
  %192 = phi ptr [ %197, %195 ], [ %178, %185 ]
  %193 = phi ptr [ %196, %195 ], [ @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, %185 ]
  %194 = icmp eq i16 %191, 0
  br i1 %194, label %251, label %195

195:                                              ; preds = %190
  %196 = getelementptr inbounds i16, ptr %193, i64 1
  %197 = getelementptr inbounds i16, ptr %192, i64 1
  %198 = load i16, ptr %196, align 2, !tbaa !71
  %199 = load i16, ptr %197, align 2, !tbaa !71
  %200 = icmp eq i16 %198, %199
  br i1 %200, label %190, label %201, !llvm.loop !82

201:                                              ; preds = %195, %185, %188
  br i1 %183, label %244, label %202

202:                                              ; preds = %201
  %203 = icmp eq ptr %182, null
  br i1 %203, label %208, label %204

204:                                              ; preds = %202
  %205 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !49
  %207 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr noundef nonnull align 8 dereferenceable(16) %206, ptr noundef nonnull %182, ptr noundef nonnull %178)
  br i1 %207, label %251, label %208

208:                                              ; preds = %204, %202
  %209 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !49
  %211 = load ptr, ptr %210, align 8, !tbaa !50
  %212 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %211, i64 0, i32 2
  %213 = load i32, ptr %212, align 4, !tbaa !64
  %214 = add i32 %213, -1
  %215 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %211, i32 noundef %214)
  %216 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope9getPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(24) %215, ptr noundef nonnull %178)
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %208
  %219 = load ptr, ptr %174, align 8, !tbaa !43
  %220 = getelementptr inbounds ptr, ptr %219, i64 25
  %221 = load ptr, ptr %220, align 8
  tail call void %221(ptr noundef nonnull align 8 dereferenceable(8) %174, ptr noundef nonnull %216)
  br label %251

222:                                              ; preds = %208
  br i1 %203, label %236, label %223

223:                                              ; preds = %222
  %224 = load ptr, ptr %209, align 8, !tbaa !49
  %225 = load ptr, ptr %224, align 8, !tbaa !50
  %226 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %225, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !64
  %228 = add i32 %227, -1
  %229 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %225, i32 noundef %228)
  %230 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(24) %229, ptr noundef nonnull %182)
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %223
  %233 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %234 = load ptr, ptr %209, align 8, !tbaa !49
  %235 = load ptr, ptr %233, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %234, ptr noundef nonnull %182, ptr noundef nonnull %178, ptr noundef %235)
  tail call void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %182, ptr noundef nonnull %178, ptr noundef nonnull %1)
  br label %251

236:                                              ; preds = %223, %222
  %237 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %238 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer22addCustomNamespaceDeclEPKtPNS_14DOMElementImplE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull %178, ptr noundef nonnull %1)
  %239 = load ptr, ptr %209, align 8, !tbaa !49
  %240 = load ptr, ptr %237, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %239, ptr noundef %238, ptr noundef nonnull %178, ptr noundef %240)
  %241 = load ptr, ptr %174, align 8, !tbaa !43
  %242 = getelementptr inbounds ptr, ptr %241, i64 25
  %243 = load ptr, ptr %242, align 8
  tail call void %243(ptr noundef nonnull align 8 dereferenceable(8) %174, ptr noundef %238)
  br label %251

244:                                              ; preds = %201
  %245 = load ptr, ptr %174, align 8, !tbaa !43
  %246 = getelementptr inbounds ptr, ptr %245, i64 24
  %247 = load ptr, ptr %246, align 8
  %248 = tail call noundef ptr %247(ptr noundef nonnull align 8 dereferenceable(8) %174)
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %244
  tail call void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 169, ptr noundef nonnull %174)
  br label %251

251:                                              ; preds = %190, %188, %218, %236, %232, %204, %250, %244
  %252 = add nuw nsw i64 %170, 1
  %253 = icmp eq i64 %252, %167
  br i1 %253, label %168, label %169, !llvm.loop !84
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces11removeScopeEv(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = add i32 %4, -1
  %6 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %5)
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !58
  %9 = load ptr, ptr %0, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !64
  %12 = add i32 %11, -1
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef %12)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %13) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_713DOMNormalizer5errorENS_7XMLErrs5CodesEPKNS_7DOMNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %5 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %6 = alloca [2048 x i16], align 16
  %7 = alloca %"class.xercesc_2_7::DOMErrorImpl", align 8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %9, null
  br i1 %10, label %66, label %11

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %6) #14
  %12 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %48

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  %15 = load ptr, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %18 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !39
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %18)
  %19 = load i1, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %22 unwind label %26

22:                                               ; preds = %20
  %23 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %23)
          to label %24 unwind label %28

24:                                               ; preds = %22
  store ptr %21, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !39
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22normalizerMutexCleanupE, ptr noundef nonnull @_ZN11xercesc_2_713DOMNormalizer21reinitNormalizerMutexEv)
          to label %25 unwind label %26

25:                                               ; preds = %24
  store i1 true, ptr @_ZN11xercesc_2_7L11sRegisteredE, align 1
  br label %30

26:                                               ; preds = %24, %20
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %33

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %21) #14
  br label %33

30:                                               ; preds = %25, %17
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %35

31:                                               ; preds = %33, %44, %63
  %32 = phi { ptr, i32 } [ %64, %63 ], [ %34, %33 ], [ %45, %44 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %28, %26
  %34 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %31

35:                                               ; preds = %30, %14
  %36 = load ptr, ptr @_ZN11xercesc_2_7L16sNormalizerMutexE, align 8, !tbaa !39
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %36)
  %37 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = invoke noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils10loadMsgSetEPKt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLErrDomainE)
          to label %41 unwind label %44

41:                                               ; preds = %39
  store ptr %40, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  %42 = icmp eq ptr %40, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef 4)
          to label %46 unwind label %44

44:                                               ; preds = %46, %43, %39
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %31

46:                                               ; preds = %43, %41
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE, ptr noundef nonnull @_ZN11xercesc_2_713DOMNormalizer15reinitMsgLoaderEv)
          to label %47 unwind label %44

47:                                               ; preds = %46, %35
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %48

48:                                               ; preds = %11, %47
  %49 = load ptr, ptr @_ZN11xercesc_2_7L10gMsgLoaderE, align 8, !tbaa !39
  %50 = load ptr, ptr %49, align 8, !tbaa !43
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(8) %49, i32 noundef %1, ptr noundef nonnull %6, i32 noundef 2047)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #14
  %54 = trunc i32 %1 to i16
  call void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtS2_Pv(ptr noundef nonnull align 8 dereferenceable(48) %7, i16 noundef signext %54, ptr noundef null, ptr noundef nonnull %6, ptr noundef %2)
  %55 = load ptr, ptr %8, align 8, !tbaa !54
  %56 = load ptr, ptr %55, align 8, !tbaa !43
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %60 unwind label %63

60:                                               ; preds = %48
  br i1 %59, label %65, label %61

61:                                               ; preds = %60
  %62 = call ptr @__cxa_allocate_exception(i64 4) #14
  store i32 %1, ptr %62, align 16, !tbaa !85
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_77XMLErrs5CodesE, ptr null) #15
          to label %67 unwind label %63

63:                                               ; preds = %61, %48
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  br label %31

65:                                               ; preds = %60
  call void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %6) #14
  br label %66

66:                                               ; preds = %65, %3
  ret void

67:                                               ; preds = %61
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces18addOrChangeBindingEPKtS3_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = load ptr, ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %4
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %3)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  store ptr %12, ptr %10, align 8, !tbaa !59
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %10, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef 1)
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !64
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %16, i64 %19
  store ptr %10, ptr %20, align 8, !tbaa !39
  %21 = add i32 %18, 1
  store i32 %21, ptr %17, align 4, !tbaa !64
  br label %22

22:                                               ; preds = %9, %4
  %23 = load ptr, ptr %0, align 8, !tbaa !50
  %24 = add i32 %7, -1
  %25 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %24)
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope18addOrChangeBindingEPKtS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %26 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !58
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces14isValidBindingEPKtS3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #4 align 2 !prof !38 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = add i32 %6, -1
  %8 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %7)
  %9 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %3
  %12 = icmp eq ptr %2, null
  %13 = load i16, ptr %9, align 2, !tbaa !71
  br i1 %12, label %17, label %14

14:                                               ; preds = %11
  %15 = load i16, ptr %2, align 2, !tbaa !71
  %16 = icmp eq i16 %13, %15
  br i1 %16, label %19, label %30

17:                                               ; preds = %11
  %18 = icmp eq i16 %13, 0
  br label %30

19:                                               ; preds = %14, %24
  %20 = phi i16 [ %27, %24 ], [ %13, %14 ]
  %21 = phi ptr [ %26, %24 ], [ %2, %14 ]
  %22 = phi ptr [ %25, %24 ], [ %9, %14 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !71
  %28 = load i16, ptr %26, align 2, !tbaa !71
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !llvm.loop !82

30:                                               ; preds = %24, %19, %14, %17, %3
  %31 = phi i1 [ false, %3 ], [ %18, %17 ], [ false, %14 ], [ %23, %19 ], [ %23, %24 ]
  ret i1 %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_713DOMNormalizer24addOrChangeNamespaceDeclEPKtS2_PNS_14DOMElementImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i16, ptr %1, align 2, !tbaa !71
  %9 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !71
  %10 = icmp eq i16 %8, %9
  br i1 %10, label %14, label %29

11:                                               ; preds = %4
  %12 = load i16, ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, align 2, !tbaa !71
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %29

14:                                               ; preds = %7, %19
  %15 = phi i16 [ %22, %19 ], [ %8, %7 ]
  %16 = phi ptr [ %21, %19 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %7 ]
  %17 = phi ptr [ %20, %19 ], [ %1, %7 ]
  %18 = icmp eq i16 %15, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i16, ptr %17, i64 1
  %21 = getelementptr inbounds i16, ptr %16, i64 1
  %22 = load i16, ptr %20, align 2, !tbaa !71
  %23 = load i16, ptr %21, align 2, !tbaa !71
  %24 = icmp eq i16 %22, %23
  br i1 %24, label %14, label %29, !llvm.loop !82

25:                                               ; preds = %14, %11
  %26 = load ptr, ptr %3, align 8, !tbaa !43
  %27 = getelementptr inbounds ptr, ptr %26, i64 49
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, ptr noundef %2)
  br label %82

29:                                               ; preds = %19, %7, %11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  store i32 0, ptr %5, align 8, !tbaa !87
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  store i32 1023, ptr %32, align 4, !tbaa !89
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 2
  store i32 0, ptr %33, align 8, !tbaa !90
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 3
  store i8 0, ptr %34, align 4, !tbaa !91
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 4
  store ptr %31, ptr %35, align 8, !tbaa !92
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 5
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  %38 = load ptr, ptr %31, align 8, !tbaa !43
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %31, i64 noundef 2048)
  store ptr %41, ptr %37, align 8, !tbaa !93
  store i16 0, ptr %41, align 2, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
          to label %42 unwind label %71

42:                                               ; preds = %29
  %43 = load i32, ptr %5, align 8, !tbaa !87
  %44 = load i32, ptr %32, align 4, !tbaa !89
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %47 unwind label %71

47:                                               ; preds = %46, %42
  %48 = load ptr, ptr %37, align 8, !tbaa !93
  %49 = load i32, ptr %5, align 8, !tbaa !87
  %50 = add i32 %49, 1
  store i32 %50, ptr %5, align 8, !tbaa !87
  %51 = zext i32 %49 to i64
  %52 = getelementptr inbounds i16, ptr %48, i64 %51
  store i16 58, ptr %52, align 2, !tbaa !71
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %1)
          to label %53 unwind label %71

53:                                               ; preds = %47
  %54 = load ptr, ptr %37, align 8, !tbaa !93
  %55 = load i32, ptr %5, align 8, !tbaa !87
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i16, ptr %54, i64 %56
  store i16 0, ptr %57, align 2, !tbaa !71
  %58 = load ptr, ptr %3, align 8, !tbaa !43
  %59 = getelementptr inbounds ptr, ptr %58, i64 49
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %54, ptr noundef %2)
          to label %61 unwind label %71

61:                                               ; preds = %53
  %62 = load ptr, ptr %35, align 8, !tbaa !92
  %63 = load ptr, ptr %37, align 8, !tbaa !93
  %64 = load ptr, ptr %62, align 8, !tbaa !43
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef %63)
          to label %70 unwind label %67

67:                                               ; preds = %61
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  call void @__clang_call_terminate(ptr %69) #16
  unreachable

70:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %82

71:                                               ; preds = %46, %29, %53, %47
  %72 = landingpad { ptr, i32 }
          cleanup
  %73 = load ptr, ptr %35, align 8, !tbaa !92
  %74 = load ptr, ptr %37, align 8, !tbaa !93
  %75 = load ptr, ptr %73, align 8, !tbaa !43
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %73, ptr noundef %74)
          to label %81 unwind label %78

78:                                               ; preds = %71
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #16
  unreachable

81:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  resume { ptr, i32 } %72

82:                                               ; preds = %70, %25
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces9getPrefixEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = add i32 %5, -1
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %6)
  %8 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope9getPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %1)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces6getUriEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %3, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = add i32 %5, -1
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef %6)
  %8 = tail call noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef %1)
  ret ptr %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer22addCustomNamespaceDeclEPKtPNS_14DOMElementImplE(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  %5 = alloca %"class.xercesc_2_7::XMLBuffer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  store i32 0, ptr %4, align 8, !tbaa !87
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 1
  store i32 1023, ptr %8, align 4, !tbaa !89
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 2
  store i32 0, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 3
  store i8 0, ptr %10, align 4, !tbaa !91
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 4
  store ptr %7, ptr %11, align 8, !tbaa !92
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %4, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %14 = load ptr, ptr %7, align 8, !tbaa !43
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 2048)
  store ptr %17, ptr %13, align 8, !tbaa !93
  store i16 0, ptr %17, align 2, !tbaa !71
  %18 = load i32, ptr %4, align 8, !tbaa !87
  %19 = load i32, ptr %8, align 4, !tbaa !89
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %22 unwind label %85

22:                                               ; preds = %21, %3
  %23 = load ptr, ptr %13, align 8, !tbaa !93
  %24 = load i32, ptr %4, align 8, !tbaa !87
  %25 = add i32 %24, 1
  store i32 %25, ptr %4, align 8, !tbaa !87
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds i16, ptr %23, i64 %26
  store i16 78, ptr %27, align 2, !tbaa !71
  %28 = load i32, ptr %8, align 4, !tbaa !89
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %31 unwind label %85

31:                                               ; preds = %30, %22
  %32 = load ptr, ptr %13, align 8, !tbaa !93
  %33 = load i32, ptr %4, align 8, !tbaa !87
  %34 = add i32 %33, 1
  store i32 %34, ptr %4, align 8, !tbaa !87
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i16, ptr %32, i64 %35
  store i16 83, ptr %36, align 2, !tbaa !71
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 8, !tbaa !45
  %39 = invoke noundef ptr @_ZNK11xercesc_2_713DOMNormalizer14integerToXMLChEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %38)
          to label %40 unwind label %85

40:                                               ; preds = %31
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %39)
          to label %41 unwind label %85

41:                                               ; preds = %40
  %42 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 3
  br label %43

43:                                               ; preds = %41, %82
  %44 = load i32, ptr %37, align 8, !tbaa !45
  %45 = add i32 %44, 1
  store i32 %45, ptr %37, align 8, !tbaa !45
  %46 = load ptr, ptr %42, align 8, !tbaa !49
  %47 = load ptr, ptr %13, align 8, !tbaa !93
  %48 = load i32, ptr %4, align 8, !tbaa !87
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i16, ptr %47, i64 %49
  store i16 0, ptr %50, align 2, !tbaa !71
  %51 = load ptr, ptr %46, align 8, !tbaa !50
  %52 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %51, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !64
  %54 = add i32 %53, -1
  %55 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %51, i32 noundef %54)
          to label %56 unwind label %83

56:                                               ; preds = %43
  %57 = invoke noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef %47)
          to label %58 unwind label %83

58:                                               ; preds = %56
  %59 = icmp eq ptr %57, null
  br i1 %59, label %87, label %60

60:                                               ; preds = %58
  store i32 0, ptr %4, align 8, !tbaa !87
  %61 = load ptr, ptr %13, align 8, !tbaa !93
  store i16 0, ptr %61, align 2, !tbaa !71
  %62 = load i32, ptr %8, align 4, !tbaa !89
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %65 unwind label %83

65:                                               ; preds = %64, %60
  %66 = load ptr, ptr %13, align 8, !tbaa !93
  %67 = load i32, ptr %4, align 8, !tbaa !87
  %68 = add i32 %67, 1
  store i32 %68, ptr %4, align 8, !tbaa !87
  %69 = zext i32 %67 to i64
  %70 = getelementptr inbounds i16, ptr %66, i64 %69
  store i16 78, ptr %70, align 2, !tbaa !71
  %71 = load i32, ptr %8, align 4, !tbaa !89
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1)
          to label %74 unwind label %83

74:                                               ; preds = %73, %65
  %75 = load ptr, ptr %13, align 8, !tbaa !93
  %76 = load i32, ptr %4, align 8, !tbaa !87
  %77 = add i32 %76, 1
  store i32 %77, ptr %4, align 8, !tbaa !87
  %78 = zext i32 %76 to i64
  %79 = getelementptr inbounds i16, ptr %75, i64 %78
  store i16 83, ptr %79, align 2, !tbaa !71
  %80 = load i32, ptr %37, align 8, !tbaa !45
  %81 = invoke noundef ptr @_ZNK11xercesc_2_713DOMNormalizer14integerToXMLChEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %80)
          to label %82 unwind label %83

82:                                               ; preds = %74
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %81)
          to label %43 unwind label %83, !llvm.loop !94

83:                                               ; preds = %74, %82, %43, %56, %64, %73
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %170

85:                                               ; preds = %31, %40, %21, %30
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %170

87:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #14
  %88 = load ptr, ptr %6, align 8, !tbaa !48
  store i32 0, ptr %5, align 8, !tbaa !87
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 1
  store i32 1023, ptr %89, align 4, !tbaa !89
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 2
  store i32 0, ptr %90, align 8, !tbaa !90
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 3
  store i8 0, ptr %91, align 4, !tbaa !91
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 4
  store ptr %88, ptr %92, align 8, !tbaa !92
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 5
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %5, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %93, i8 0, i64 16, i1 false)
  %95 = load ptr, ptr %88, align 8, !tbaa !43
  %96 = getelementptr inbounds ptr, ptr %95, i64 2
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(8) %88, i64 noundef 2048)
          to label %99 unwind label %156

99:                                               ; preds = %87
  store ptr %98, ptr %94, align 8, !tbaa !93
  store i16 0, ptr %98, align 2, !tbaa !71
  store i32 0, ptr %5, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE)
          to label %100 unwind label %158

100:                                              ; preds = %99
  %101 = load i32, ptr %5, align 8, !tbaa !87
  %102 = load i32, ptr %89, align 4, !tbaa !89
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  invoke void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 1)
          to label %105 unwind label %158

105:                                              ; preds = %104, %100
  %106 = load ptr, ptr %94, align 8, !tbaa !93
  %107 = load i32, ptr %5, align 8, !tbaa !87
  %108 = add i32 %107, 1
  store i32 %108, ptr %5, align 8, !tbaa !87
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds i16, ptr %106, i64 %109
  store i16 58, ptr %110, align 2, !tbaa !71
  %111 = load ptr, ptr %13, align 8, !tbaa !93
  %112 = load i32, ptr %4, align 8, !tbaa !87
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i16, ptr %111, i64 %113
  store i16 0, ptr %114, align 2, !tbaa !71
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef %111)
          to label %115 unwind label %158

115:                                              ; preds = %105
  %116 = load ptr, ptr %94, align 8, !tbaa !93
  %117 = load i32, ptr %5, align 8, !tbaa !87
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i16, ptr %116, i64 %118
  store i16 0, ptr %119, align 2, !tbaa !71
  %120 = load ptr, ptr %2, align 8, !tbaa !43
  %121 = getelementptr inbounds ptr, ptr %120, i64 49
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %116, ptr noundef %1)
          to label %123 unwind label %158

123:                                              ; preds = %115
  %124 = load ptr, ptr %13, align 8, !tbaa !93
  %125 = load i32, ptr %4, align 8, !tbaa !87
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i16, ptr %124, i64 %126
  store i16 0, ptr %127, align 2, !tbaa !71
  %128 = load ptr, ptr %2, align 8, !tbaa !43
  %129 = getelementptr inbounds ptr, ptr %128, i64 51
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(96) %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %124)
          to label %132 unwind label %158

132:                                              ; preds = %123
  %133 = load ptr, ptr %131, align 8, !tbaa !43
  %134 = getelementptr inbounds ptr, ptr %133, i64 24
  %135 = load ptr, ptr %134, align 8
  %136 = invoke noundef ptr %135(ptr noundef nonnull align 8 dereferenceable(8) %131)
          to label %137 unwind label %158

137:                                              ; preds = %132
  %138 = load ptr, ptr %92, align 8, !tbaa !92
  %139 = load ptr, ptr %94, align 8, !tbaa !93
  %140 = load ptr, ptr %138, align 8, !tbaa !43
  %141 = getelementptr inbounds ptr, ptr %140, i64 3
  %142 = load ptr, ptr %141, align 8
  invoke void %142(ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef %139)
          to label %146 unwind label %143

143:                                              ; preds = %137
  %144 = landingpad { ptr, i32 }
          catch ptr null
  %145 = extractvalue { ptr, i32 } %144, 0
  call void @__clang_call_terminate(ptr %145) #16
  unreachable

146:                                              ; preds = %137
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  %147 = load ptr, ptr %11, align 8, !tbaa !92
  %148 = load ptr, ptr %13, align 8, !tbaa !93
  %149 = load ptr, ptr %147, align 8, !tbaa !43
  %150 = getelementptr inbounds ptr, ptr %149, i64 3
  %151 = load ptr, ptr %150, align 8
  invoke void %151(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef %148)
          to label %155 unwind label %152

152:                                              ; preds = %146
  %153 = landingpad { ptr, i32 }
          catch ptr null
  %154 = extractvalue { ptr, i32 } %153, 0
  call void @__clang_call_terminate(ptr %154) #16
  unreachable

155:                                              ; preds = %146
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  ret ptr %136

156:                                              ; preds = %87
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %168

158:                                              ; preds = %104, %99, %132, %123, %115, %105
  %159 = landingpad { ptr, i32 }
          cleanup
  %160 = load ptr, ptr %92, align 8, !tbaa !92
  %161 = load ptr, ptr %94, align 8, !tbaa !93
  %162 = load ptr, ptr %160, align 8, !tbaa !43
  %163 = getelementptr inbounds ptr, ptr %162, i64 3
  %164 = load ptr, ptr %163, align 8
  invoke void %164(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef %161)
          to label %168 unwind label %165

165:                                              ; preds = %158
  %166 = landingpad { ptr, i32 }
          catch ptr null
  %167 = extractvalue { ptr, i32 } %166, 0
  call void @__clang_call_terminate(ptr %167) #16
  unreachable

168:                                              ; preds = %158, %156
  %169 = phi { ptr, i32 } [ %157, %156 ], [ %159, %158 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #14
  br label %170

170:                                              ; preds = %83, %85, %168
  %171 = phi { ptr, i32 } [ %169, %168 ], [ %84, %83 ], [ %86, %85 ]
  %172 = load ptr, ptr %11, align 8, !tbaa !92
  %173 = load ptr, ptr %13, align 8, !tbaa !93
  %174 = load ptr, ptr %172, align 8, !tbaa !43
  %175 = getelementptr inbounds ptr, ptr %174, i64 3
  %176 = load ptr, ptr %175, align 8
  invoke void %176(ptr noundef nonnull align 8 dereferenceable(8) %172, ptr noundef %173)
          to label %180 unwind label %177

177:                                              ; preds = %170
  %178 = landingpad { ptr, i32 }
          catch ptr null
  %179 = extractvalue { ptr, i32 } %178, 0
  call void @__clang_call_terminate(ptr %179) #16
  unreachable

180:                                              ; preds = %170
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #14
  resume { ptr, i32 } %171
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer14integerToXMLChEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 30)
  %9 = getelementptr inbounds i16, ptr %8, i64 6
  store i16 0, ptr %9, align 2, !tbaa !71
  br label %10

10:                                               ; preds = %26, %2
  %11 = phi ptr [ %9, %2 ], [ %15, %26 ]
  %12 = phi i32 [ %1, %2 ], [ %14, %26 ]
  %13 = urem i32 %12, 10
  %14 = udiv i32 %12, 10
  %15 = getelementptr inbounds i16, ptr %11, i64 -1
  switch i32 %13, label %25 [
    i32 0, label %26
    i32 1, label %16
    i32 2, label %17
    i32 3, label %18
    i32 4, label %19
    i32 5, label %20
    i32 6, label %21
    i32 7, label %22
    i32 8, label %23
    i32 9, label %24
  ]

16:                                               ; preds = %10
  br label %26

17:                                               ; preds = %10
  br label %26

18:                                               ; preds = %10
  br label %26

19:                                               ; preds = %10
  br label %26

20:                                               ; preds = %10
  br label %26

21:                                               ; preds = %10
  br label %26

22:                                               ; preds = %10
  br label %26

23:                                               ; preds = %10
  br label %26

24:                                               ; preds = %10
  br label %26

25:                                               ; preds = %10
  unreachable

26:                                               ; preds = %10, %24, %23, %22, %21, %20, %19, %18, %17, %16
  %27 = phi i16 [ 57, %24 ], [ 56, %23 ], [ 55, %22 ], [ 54, %21 ], [ 53, %20 ], [ 52, %19 ], [ 51, %18 ], [ 50, %17 ], [ 49, %16 ], [ 48, %10 ]
  store i16 %27, ptr %15, align 2, !tbaa !71
  %28 = icmp ult i32 %12, 10
  br i1 %28, label %29, label %10, !llvm.loop !95

29:                                               ; preds = %26
  %30 = load ptr, ptr %0, align 8, !tbaa !52
  %31 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %30, ptr noundef nonnull %15)
  %32 = load ptr, ptr %3, align 8, !tbaa !48
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %8)
  ret ptr %31
}

declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !97

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !71
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !98

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !71
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !99, !llvm.loop !100

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !87
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !89
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !101

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = load i32, ptr %0, align 8, !tbaa !87
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !102
  %28 = load i32, ptr %0, align 8, !tbaa !87
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !87
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces4sizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) local_unnamed_addr #7 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  ret i32 %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !58
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 1
  store i8 1, ptr %5, align 8, !tbaa !103
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !64
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 3
  store i32 10, ptr %7, align 8, !tbaa !104
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  store ptr null, ptr %8, align 8, !tbaa !61
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  store ptr %1, ptr %9, align 8, !tbaa !105
  %10 = load ptr, ptr %1, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 80)
          to label %14 unwind label %22

14:                                               ; preds = %2
  store ptr %13, ptr %8, align 8, !tbaa !61
  br label %15

15:                                               ; preds = %14, %15
  %16 = phi i64 [ 0, %14 ], [ %19, %15 ]
  %17 = load ptr, ptr %8, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  store ptr null, ptr %18, align 8, !tbaa !39
  %19 = add nuw nsw i64 %16, 1
  %20 = icmp eq i64 %19, 10
  br i1 %20, label %21, label %15, !llvm.loop !106

21:                                               ; preds = %15
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !43
  store ptr %4, ptr %0, align 8, !tbaa !50
  ret void

22:                                               ; preds = %2
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef nonnull %1) #14
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespacesD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16) %0) unnamed_addr #2 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !50
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope18addOrChangeBindingEPKtS4_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %6 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !107
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %89

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, i32 noundef 10, i1 noundef zeroext false, ptr noundef %3)
          to label %12 unwind label %42

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !108
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, i32 noundef 10, i1 noundef zeroext false, ptr noundef %3)
          to label %15 unwind label %44

15:                                               ; preds = %12
  store ptr %14, ptr %7, align 8, !tbaa !107
  %16 = load ptr, ptr %0, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %89, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %20, i1 noundef zeroext false, ptr noundef %3)
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %5, i64 0, i32 2
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %5, i64 0, i32 3
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %5, i64 0, i32 4
  br label %24

24:                                               ; preds = %40, %18
  %25 = load ptr, ptr %21, align 8, !tbaa !109
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, ptr %22, align 8, !tbaa !112
  %29 = load ptr, ptr %23, align 8, !tbaa !113
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !114
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %50, label %33

33:                                               ; preds = %27, %24
  %34 = invoke noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %35 unwind label %46

35:                                               ; preds = %33
  %36 = load ptr, ptr %0, align 8, !tbaa !59
  %37 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  %39 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef %34)
          to label %40 unwind label %48

40:                                               ; preds = %35
  %41 = load ptr, ptr %13, align 8, !tbaa !108
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef %34, ptr noundef %39)
          to label %24 unwind label %48, !llvm.loop !116

42:                                               ; preds = %10
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %3) #14
  br label %99

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %3) #14
  br label %99

46:                                               ; preds = %33
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %87

48:                                               ; preds = %40, %35
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %87

50:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  %51 = load ptr, ptr %0, align 8, !tbaa !59
  %52 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %53, i1 noundef zeroext false, ptr noundef %3)
          to label %54 unwind label %76

54:                                               ; preds = %50
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 2
  %56 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 3
  %57 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 4
  br label %58

58:                                               ; preds = %54, %74
  %59 = load ptr, ptr %55, align 8, !tbaa !109
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i32, ptr %56, align 8, !tbaa !112
  %63 = load ptr, ptr %57, align 8, !tbaa !113
  %64 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %63, i64 0, i32 3
  %65 = load i32, ptr %64, align 8, !tbaa !114
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %84, label %67

67:                                               ; preds = %61, %58
  %68 = invoke noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %69 unwind label %78

69:                                               ; preds = %67
  %70 = load ptr, ptr %0, align 8, !tbaa !59
  %71 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !107
  %73 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %72, ptr noundef %68)
          to label %74 unwind label %80

74:                                               ; preds = %69
  %75 = load ptr, ptr %7, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef %68, ptr noundef %73)
          to label %58 unwind label %80, !llvm.loop !117

76:                                               ; preds = %50
  %77 = landingpad { ptr, i32 }
          cleanup
  br label %85

78:                                               ; preds = %67
  %79 = landingpad { ptr, i32 }
          cleanup
  br label %82

80:                                               ; preds = %74, %69
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  br label %85

84:                                               ; preds = %61
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  br label %89

85:                                               ; preds = %82, %76
  %86 = phi { ptr, i32 } [ %83, %82 ], [ %77, %76 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  br label %87

87:                                               ; preds = %46, %48, %85
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %49, %48 ], [ %47, %46 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  br label %99

89:                                               ; preds = %15, %84, %4
  %90 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !108
  %92 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %91, ptr noundef %1)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %89
  %95 = load ptr, ptr %7, align 8, !tbaa !107
  call void @_ZN11xercesc_2_714RefHashTableOfItE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %95, ptr noundef nonnull %92)
  br label %96

96:                                               ; preds = %94, %89
  %97 = load ptr, ptr %90, align 8, !tbaa !108
  call void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef %1, ptr noundef %2)
  %98 = load ptr, ptr %7, align 8, !tbaa !107
  call void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %98, ptr noundef %2, ptr noundef %1)
  ret void

99:                                               ; preds = %87, %44, %42
  %100 = phi { ptr, i32 } [ %88, %87 ], [ %45, %44 ], [ %43, %42 ]
  resume { ptr, i32 } %100
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !39
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
  %27 = load ptr, ptr %14, align 8, !tbaa !61
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  br label %38

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %24, %23 ], [ %33, %30 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !61
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !39
  %37 = icmp eq i64 %33, %25
  br i1 %37, label %26, label %30, !llvm.loop !118

38:                                               ; preds = %13, %26
  %39 = phi ptr [ %29, %26 ], [ %17, %13 ]
  store ptr null, ptr %39, align 8, !tbaa !39
  store i32 %19, ptr %3, align 4, !tbaa !64
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope6getUriEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1)
  br label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ null, %10 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_713DOMNormalizer17InScopeNamespaces5Scope9getPrefixEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !38 {
  br label %3

3:                                                ; preds = %10, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %10 ]
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1)
  br label %13

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %3

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ null, %10 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeC2EPS2_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #8 align 2 !prof !38 {
  store ptr %1, ptr %0, align 8, !tbaa !59
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %9 unwind label %6

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #16
  unreachable

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMNormalizer::InScopeNamespaces::Scope", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %12)
          to label %18 unwind label %15

15:                                               ; preds = %14
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #16
  unreachable

18:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %12) #14
  br label %19

19:                                               ; preds = %18, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = zext i1 %2 to i8
  store ptr %3, ptr %0, align 8, !tbaa !119
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !121
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !114
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %9, align 4, !tbaa !122
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %10, align 8, !tbaa !123
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %11, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_714RefHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %12 = load ptr, ptr %0, align 8, !tbaa !119
  %13 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %12)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %15

14:                                               ; preds = %4
  store ptr %13, ptr %11, align 8, !tbaa !124
  ret void

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #14
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItEC2EPNS_14RefHashTableOfItEEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = zext i1 %2 to i8
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !109
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !112
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !126
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %14 = load ptr, ptr %10, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.2, i32 noundef 527, i32 noundef 15, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #14
  resume { ptr, i32 } %17

18:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorItE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !112
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !114
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE14nextElementKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 591, i32 noundef 30, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfItE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = load ptr, ptr %0, align 8, !tbaa !119
  %8 = load ptr, ptr %4, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !124
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !127
  %22 = load ptr, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !129

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !130
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE3putEPvPt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !114
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfItE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = load i32, ptr %4, align 8, !tbaa !114
  %16 = load ptr, ptr %0, align 8, !tbaa !119
  %17 = load ptr, ptr %14, align 8, !tbaa !43
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !39
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !124
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = load ptr, ptr %28, align 8, !tbaa !43
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !129

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !120, !range !131, !noundef !132
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !130
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #17
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !130
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !127
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !119
  %54 = load ptr, ptr %53, align 8, !tbaa !43
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24)
  %58 = load ptr, ptr %20, align 8, !tbaa !121
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !39
  store ptr %2, ptr %57, align 8, !tbaa !130
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !133
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !127
  store ptr %57, ptr %59, align 8, !tbaa !39
  %63 = load i32, ptr %8, align 8, !tbaa !123
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !123
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorItEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !125, !range !131, !noundef !132
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !113
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !124
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !114
  %7 = load ptr, ptr %0, align 8, !tbaa !119
  %8 = load ptr, ptr %4, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !124
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = load ptr, ptr %18, align 8, !tbaa !43
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %33, label %58

25:                                               ; preds = %58
  %26 = load ptr, ptr %3, align 8, !tbaa !124
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %61, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !127
  %29 = load ptr, ptr %26, align 8, !tbaa !43
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28)
  br i1 %32, label %33, label %58, !llvm.loop !134

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %61, %25 ]
  %35 = phi ptr [ null, %17 ], [ %59, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !120, !range !131, !noundef !132
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 8, !tbaa !130
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #17
  br label %50

50:                                               ; preds = %46, %49, %33
  %51 = load ptr, ptr %0, align 8, !tbaa !119
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %34)
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !123
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 8, !tbaa !123
  ret void

58:                                               ; preds = %17, %25
  %59 = phi ptr [ %61, %25 ], [ %15, %17 ]
  %60 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !39
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %25, !llvm.loop !134

63:                                               ; preds = %58, %2
  %64 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %65 = load ptr, ptr %0, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str.2, i32 noundef 185, i32 noundef 50, ptr noundef %65)
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

declare void @_ZN11xercesc_2_712DOMErrorImplC1EsPKtS2_Pv(ptr noundef nonnull align 8 dereferenceable(48), i16 noundef signext, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOMErrorImplD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716XMLPlatformUtils5panicENS_12PanicHandler12PanicReasonsE(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !103, !range !131, !noundef !132
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !64
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !135

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = load ptr, ptr %25, align 8, !tbaa !43
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
          to label %31 unwind label %32

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
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE12setElementAtEPS3_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !103, !range !131, !noundef !132
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !39
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %23) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #14
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !39
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %21, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !64
  ret void

11:                                               ; preds = %5, %21
  %12 = phi i64 [ 0, %5 ], [ %24, %21 ]
  %13 = load i8, ptr %6, align 8, !tbaa !103, !range !131, !noundef !132
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !61
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %18) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #14
  br label %21

21:                                               ; preds = %15, %20, %11
  %22 = load ptr, ptr %8, align 8, !tbaa !61
  %23 = getelementptr inbounds ptr, ptr %22, i64 %12
  store ptr null, ptr %23, align 8, !tbaa !39
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %2, align 4, !tbaa !64
  %26 = zext i32 %25 to i64
  %27 = icmp ult i64 %24, %26
  br i1 %27, label %11, label %9, !llvm.loop !136
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !103, !range !131, !noundef !132
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %22) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #14
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !64
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
  %37 = load ptr, ptr %32, align 8, !tbaa !61
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !39
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !39
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !137

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !39
  store i32 %27, ptr %3, align 4, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !64
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !103, !range !131, !noundef !132
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !61
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !103, !range !131, !noundef !132
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !64
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !138

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !105
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  %28 = load ptr, ptr %25, align 8, !tbaa !43
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
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

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !43
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !43
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !64
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !39
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !61
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !39
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !39
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !142

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !105
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = load ptr, ptr %49, align 8, !tbaa !43
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !61
  store i32 %12, ptr %6, align 8, !tbaa !104
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !119
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !121
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !121
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !114
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !123
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !121
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !133
  %23 = load i8, ptr %11, align 8, !tbaa !120, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !130
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #17
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !119
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !143

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !121
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !39
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !114
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !144

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !119
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6)
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
  %11 = load ptr, ptr %0, align 8, !tbaa !119
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !114
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !43
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !121
  %21 = load i32, ptr %12, align 8, !tbaa !114
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !121
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !39
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !145
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !43
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  store ptr %7, ptr %2, align 8, !tbaa !109
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !109
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !112
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !112
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !113
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !114
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = load i32, ptr %12, align 8, !tbaa !112
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !112
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !llvm.loop !146

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !109
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !126
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 575, i32 noundef 30, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !130
  ret ptr %16
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !112
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !109
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorItE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !43
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !43
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfItE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !119
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !119
  store ptr %12, ptr %2, align 8, !tbaa !147
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !149
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !114
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !121
  %23 = load ptr, ptr %2, align 8, !tbaa !147
  store ptr null, ptr %2, align 8, !tbaa !147
  store ptr %23, ptr %21, align 8, !tbaa !121
  store i32 %5, ptr %3, align 8, !tbaa !114
  %24 = load ptr, ptr %0, align 8, !tbaa !119
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !121
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !39
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !133
  %38 = load ptr, ptr %19, align 8, !tbaa !124
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !127
  %41 = load ptr, ptr %0, align 8, !tbaa !119
  %42 = load ptr, ptr %38, align 8, !tbaa !43
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  store ptr %48, ptr %36, align 8, !tbaa !133
  store ptr %35, ptr %47, align 8, !tbaa !39
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !150

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !114
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !151

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !147
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #17
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
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DOMNormalizer.cpp() #12 section ".text.startup" !prof !152 !PGOFuncName !153 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22normalizerMutexCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L16cleanupMsgLoaderE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!36 = !{ptr @_GLOBAL__sub_I_DOMNormalizer.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !42, i64 0}
!45 = !{!46, !47, i64 32}
!46 = !{!"_ZTSN11xercesc_2_713DOMNormalizerE", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !47, i64 32, !40, i64 40}
!47 = !{!"int", !41, i64 0}
!48 = !{!46, !40, i64 40}
!49 = !{!46, !40, i64 24}
!50 = !{!51, !40, i64 0}
!51 = !{!"_ZTSN11xercesc_2_713DOMNormalizer17InScopeNamespacesE", !40, i64 0, !40, i64 8}
!52 = !{!46, !40, i64 0}
!53 = !{!46, !40, i64 8}
!54 = !{!46, !40, i64 16}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!51, !40, i64 8}
!59 = !{!60, !40, i64 0}
!60 = !{!"_ZTSN11xercesc_2_713DOMNormalizer17InScopeNamespaces5ScopeE", !40, i64 0, !40, i64 8, !40, i64 16}
!61 = !{!62, !40, i64 24}
!62 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_13DOMNormalizer17InScopeNamespaces5ScopeEEE", !63, i64 8, !47, i64 12, !47, i64 16, !40, i64 24, !40, i64 32}
!63 = !{!"bool", !41, i64 0}
!64 = !{!62, !47, i64 12}
!65 = !{!66, !68, i64 8}
!66 = !{!"_ZTSN11xercesc_2_720DOMConfigurationImplE", !67, i64 0, !68, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40}
!67 = !{!"_ZTSN11xercesc_2_716DOMConfigurationE"}
!68 = !{!"short", !41, i64 0}
!69 = distinct !{!69, !56, !57}
!70 = distinct !{!70, !56, !57}
!71 = !{!68, !68, i64 0}
!72 = distinct !{!72, !56, !57}
!73 = !{!74, !40, i64 72}
!74 = !{!"_ZTSN11xercesc_2_714DOMElementImplE", !75, i64 0, !77, i64 8, !78, i64 24, !81, i64 56, !40, i64 72, !40, i64 80, !40, i64 88}
!75 = !{!"_ZTSN11xercesc_2_710DOMElementE", !76, i64 0}
!76 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!77 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !40, i64 0, !68, i64 8}
!78 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !40, i64 0, !40, i64 8, !79, i64 16}
!79 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !80, i64 0, !40, i64 8}
!80 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!81 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !40, i64 0, !40, i64 8}
!82 = distinct !{!82, !56, !57}
!83 = distinct !{!83, !56, !57}
!84 = distinct !{!84, !56, !57}
!85 = !{!86, !86, i64 0}
!86 = !{!"_ZTSN11xercesc_2_77XMLErrs5CodesE", !41, i64 0}
!87 = !{!88, !47, i64 0}
!88 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !47, i64 0, !47, i64 4, !47, i64 8, !63, i64 12, !40, i64 16, !40, i64 24, !40, i64 32}
!89 = !{!88, !47, i64 4}
!90 = !{!88, !47, i64 8}
!91 = !{!88, !63, i64 12}
!92 = !{!88, !40, i64 16}
!93 = !{!88, !40, i64 32}
!94 = distinct !{!94, !56, !57}
!95 = distinct !{!95, !56, !57}
!96 = !{!"function_entry_count", i64 789922}
!97 = !{!"branch_weights", i32 0, i32 789922}
!98 = !{!"branch_weights", i32 284, i32 789638}
!99 = !{!"branch_weights", i32 789638, i32 41628303}
!100 = distinct !{!100, !56, !57}
!101 = !{!"branch_weights", i32 789636, i32 2}
!102 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!103 = !{!62, !63, i64 8}
!104 = !{!62, !47, i64 16}
!105 = !{!62, !40, i64 32}
!106 = distinct !{!106, !56, !57}
!107 = !{!60, !40, i64 16}
!108 = !{!60, !40, i64 8}
!109 = !{!110, !40, i64 16}
!110 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorItEE", !111, i64 0, !63, i64 8, !40, i64 16, !47, i64 24, !40, i64 32, !40, i64 40}
!111 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorItEE"}
!112 = !{!110, !47, i64 24}
!113 = !{!110, !40, i64 32}
!114 = !{!115, !47, i64 24}
!115 = !{!"_ZTSN11xercesc_2_714RefHashTableOfItEE", !40, i64 0, !63, i64 8, !40, i64 16, !47, i64 24, !47, i64 28, !47, i64 32, !40, i64 40}
!116 = distinct !{!116, !56, !57}
!117 = distinct !{!117, !56, !57}
!118 = distinct !{!118, !56, !57}
!119 = !{!115, !40, i64 0}
!120 = !{!115, !63, i64 8}
!121 = !{!115, !40, i64 16}
!122 = !{!115, !47, i64 28}
!123 = !{!115, !47, i64 32}
!124 = !{!115, !40, i64 40}
!125 = !{!110, !63, i64 8}
!126 = !{!110, !40, i64 40}
!127 = !{!128, !40, i64 16}
!128 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemItEE", !40, i64 0, !40, i64 8, !40, i64 16}
!129 = distinct !{!129, !56, !57}
!130 = !{!128, !40, i64 0}
!131 = !{i8 0, i8 2}
!132 = !{}
!133 = !{!128, !40, i64 8}
!134 = distinct !{!134, !56, !57}
!135 = distinct !{!135, !56, !57}
!136 = distinct !{!136, !56, !57}
!137 = distinct !{!137, !56, !57}
!138 = distinct !{!138, !56, !57}
!139 = !{!140, !40, i64 40}
!140 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !141, i64 8, !40, i64 16, !47, i64 24, !40, i64 32, !40, i64 40}
!141 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !41, i64 0}
!142 = distinct !{!142, !56, !57}
!143 = distinct !{!143, !56, !57}
!144 = distinct !{!144, !56, !57}
!145 = distinct !{!145, !56, !57}
!146 = distinct !{!146, !56, !57}
!147 = !{!148, !40, i64 0}
!148 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemItEEEE", !40, i64 0, !40, i64 8}
!149 = !{!148, !40, i64 8}
!150 = distinct !{!150, !56, !57}
!151 = distinct !{!151, !56, !57}
!152 = !{!"function_entry_count", i64 1}
!153 = !{!"DOMNormalizer.cpp;_GLOBAL__sub_I_DOMNormalizer.cpp"}
