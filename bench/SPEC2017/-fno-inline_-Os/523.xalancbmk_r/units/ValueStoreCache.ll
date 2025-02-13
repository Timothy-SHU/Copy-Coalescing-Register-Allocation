; ModuleID = 'ValueStoreCache.cpp'
source_filename = "ValueStoreCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefStackOf" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.0" }
%"class.xercesc_2_7::RefVectorOf.0" = type { %"class.xercesc_2_7::BaseRefVectorOf.1" }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::ValueStore" = type { i8, i32, ptr, %"class.xercesc_2_7::FieldValueMap", ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::FieldValueMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.4" = type { ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE5emptyEv = comdat any

$_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv = comdat any

$_ZNK11xercesc_2_710ValueStore21getIdentityConstraintEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE7isEmptyEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7isEmptyEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE10addElementEPS3_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE4sizeEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE10initializeEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv = comdat any

$_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEC2EPviPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEE5resetEPS4_ = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = comdat any

@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/RefStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local constant [69 x i8] c"N11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local constant [73 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_711RefVectorOfINS_10ValueStoreEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE7cleanupEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"./xercesc/util/RefHash2KeysTableOf.c\00", align 1
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_715ValueStoreCacheD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715ValueStoreCacheD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store ptr %1, ptr %4, align 8, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv to i64), i64 0) #11
  invoke void @_ZN11xercesc_2_715ValueStoreCache4initEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %15 unwind label %5

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %7 = extractvalue { ptr, i32 } %6, 1
  %8 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = extractvalue { ptr, i32 } %6, 0
  %12 = call ptr @__cxa_begin_catch(ptr %11) #12
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  invoke void @__cxa_rethrow() #13
          to label %21 unwind label %13

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %16 unwind label %18

15:                                               ; preds = %2
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  ret void

16:                                               ; preds = %13, %5
  %17 = phi { ptr, i32 } [ %6, %5 ], [ %14, %13 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  resume { ptr, i32 } %17

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #15
  unreachable

21:                                               ; preds = %10
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !150 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) #2 align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #14
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !152
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #14
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !153
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #14
  br label %16

16:                                               ; preds = %15, %11
  %17 = load ptr, ptr %0, align 8, !tbaa !154
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !155
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(40) %17) #14
  br label %23

23:                                               ; preds = %19, %16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #2 comdat align 2 !prof !144 {
  store ptr %1, ptr %0, align 8, !tbaa !157
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !159
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache4initEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3) #11
  %5 = load ptr, ptr %2, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 8, i1 noundef zeroext true, ptr noundef %5) #11
          to label %6 unwind label %30

6:                                                ; preds = %1
  store ptr %4, ptr %0, align 8, !tbaa !154
  %7 = load ptr, ptr %2, align 8, !tbaa !145
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7) #11
  %9 = load ptr, ptr %2, align 8, !tbaa !145
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %9) #11
          to label %11 unwind label %32

11:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
          to label %12 unwind label %34

12:                                               ; preds = %11
  %13 = load ptr, ptr %2, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 13, i1 noundef zeroext false, ptr noundef nonnull %10, ptr noundef %13) #11
          to label %14 unwind label %32

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  store ptr %8, ptr %15, align 8, !tbaa !152
  %16 = load ptr, ptr %2, align 8, !tbaa !145
  %17 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %16) #11
  %18 = load ptr, ptr %2, align 8, !tbaa !145
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %18) #11
          to label %20 unwind label %38

20:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #11
          to label %21 unwind label %40

21:                                               ; preds = %20
  %22 = load ptr, ptr %2, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %17, i32 noundef 13, i1 noundef zeroext false, ptr noundef nonnull %19, ptr noundef %22) #11
          to label %23 unwind label %38

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  store ptr %17, ptr %24, align 8, !tbaa !151
  %25 = load ptr, ptr %2, align 8, !tbaa !145
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %25) #11
  %27 = load ptr, ptr %2, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %26, i32 noundef 8, i1 noundef zeroext true, ptr noundef %27) #11
          to label %28 unwind label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  store ptr %26, ptr %29, align 8, !tbaa !153
  ret void

30:                                               ; preds = %1
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  br label %46

32:                                               ; preds = %12, %6
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %36

34:                                               ; preds = %11
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #14
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #14
  br label %46

38:                                               ; preds = %21, %14
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %20
  %41 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #14
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %41, %40 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %17, ptr noundef %16) #14
  br label %46

44:                                               ; preds = %23
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #14
  br label %46

46:                                               ; preds = %44, %42, %36, %30
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %43, %42 ], [ %37, %36 ], [ %31, %30 ]
  resume { ptr, i32 } %47
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !144 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %2 = load ptr, ptr %0, align 8, !tbaa !157
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !160

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !159
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !159
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !155
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !161
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(48) %11) #11
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCacheD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  tail call void @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %5) #11
  %6 = load ptr, ptr %0, align 8, !tbaa !154
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(40) %6) #11
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  tail call void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %11) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !162 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  br i1 %2, label %45, label %3, !prof !163

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !164
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !168

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !169
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !170
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !171
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !172

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !173
  %23 = load i8, ptr %9, align 8, !tbaa !175, !range !176, !noundef !161
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !177

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !178
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %26) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #14
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !179
  %31 = load ptr, ptr %30, align 8, !tbaa !155
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #11
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !180, !llvm.loop !181

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !170
  %37 = load i32, ptr %4, align 8, !tbaa !164
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !171
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !183, !llvm.loop !184

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !185 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  br i1 %2, label %45, label %3, !prof !186

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !187
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !168

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !189
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !190
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !171
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !191

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !192
  %23 = load i8, ptr %9, align 8, !tbaa !194, !range !176, !noundef !161
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !195

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !196
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %26) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #14
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !197
  %31 = load ptr, ptr %30, align 8, !tbaa !155
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #11
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !198, !llvm.loop !199

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !190
  %37 = load i32, ptr %4, align 8, !tbaa !187
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !171
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !prof !183, !llvm.loop !200

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !153
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !152
  tail call void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %5) #11
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !145
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %7) #11
  %9 = load ptr, ptr %6, align 8, !tbaa !145
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %9) #11
          to label %11 unwind label %15

11:                                               ; preds = %1
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #11
          to label %12 unwind label %17

12:                                               ; preds = %11
  %13 = load ptr, ptr %6, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef 13, i1 noundef zeroext false, ptr noundef nonnull %10, ptr noundef %13) #11
          to label %14 unwind label %15

14:                                               ; preds = %12
  store ptr %8, ptr %4, align 8, !tbaa !152
  ret void

15:                                               ; preds = %12, %1
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #14
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #14
  resume { ptr, i32 } %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !201 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE10addElementEPS3_(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !202 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %4, ptr %0, align 8, !tbaa !197
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !194
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !190
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !187
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !203
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !189
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !204
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #11
  store ptr %3, ptr %12, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !153
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %4) #11
  br i1 %5, label %36, label %6, !prof !205

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !tbaa !153
  %8 = tail call noundef ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #11
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !145
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef %8, i1 noundef zeroext false, ptr noundef %10) #11
  %11 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  br i1 %11, label %12, label %32, !prof !206

12:                                               ; preds = %6, %28
  %13 = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
          to label %14 unwind label %23

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %16 = call noundef ptr @_ZNK11xercesc_2_710ValueStore21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(80) %13) #11
  %17 = load ptr, ptr %15, align 8, !tbaa !152
  %18 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef %16) #11
          to label %19 unwind label %25

19:                                               ; preds = %14
  %20 = icmp eq ptr %18, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = load ptr, ptr %15, align 8, !tbaa !152
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %16, ptr noundef nonnull %13) #11
          to label %28 unwind label %25

23:                                               ; preds = %12
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %30

25:                                               ; preds = %27, %21, %14
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %30

27:                                               ; preds = %19
  invoke void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80) %18, ptr noundef nonnull %13) #11
          to label %28 unwind label %25

28:                                               ; preds = %27, %21
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  br i1 %29, label %12, label %32, !prof !207, !llvm.loop !208

30:                                               ; preds = %25, %23
  %31 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  resume { ptr, i32 } %31

32:                                               ; preds = %28, %6
  %33 = icmp eq ptr %8, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %8) #14
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #14
  br label %35

35:                                               ; preds = %34, %32
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %36

36:                                               ; preds = %1, %35
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !201 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #11
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  %3 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #11
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11, !prof !205

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %7 = tail call noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %2) #11
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.2, i32 noundef 77, i32 noundef 80, ptr noundef %7) #11
          to label %8 unwind label %9

8:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %10

11:                                               ; preds = %1
  %12 = add nsw i32 %3, -1
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %2, i32 noundef %12) #11
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !209
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !212
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !213
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !214
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !215
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20, !prof !205

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %14 = load ptr, ptr %10, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 15, ptr noundef %14) #11
          to label %15 unwind label %16

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %23 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #12
  br label %21

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !201 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !216

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !213
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !187
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !216

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = load ptr, ptr %0, align 8, !tbaa !155
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !215
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 575, i32 noundef 30, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !212
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  %16 = load ptr, ptr %15, align 8, !tbaa !196
  ret ptr %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710ValueStore21getIdentityConstraintEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !218
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !222

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !196
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !223 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !187
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !189
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !195

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16, !prof !195

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !194, !range !176, !noundef !161
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !196
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %21) #14
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #14
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !196
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !224
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !197
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #11
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !190
  %34 = load i32, ptr %4, align 4, !tbaa !225
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !171
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #11
  %38 = load ptr, ptr %32, align 8, !tbaa !190
  %39 = load i32, ptr %4, align 4, !tbaa !225
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !171
  %42 = load i32, ptr %9, align 8, !tbaa !189
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !189
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !201 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !209, !range !176, !noundef !161
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !216

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !214
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !179
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = load ptr, ptr %3, align 8, !tbaa !155
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #11
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !155
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !144 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #11
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 !prof !144 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %4, ptr %0, align 8, !tbaa !179
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !175
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !170
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !164
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %10, align 4, !tbaa !169
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !226
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) #11
  store ptr %3, ptr %11, align 8, !tbaa !226
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !144 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !227

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 4
  br label %10

9:                                                ; preds = %17, %3
  ret void

10:                                               ; preds = %6, %17
  %11 = phi i32 [ 0, %6 ], [ %21, %17 ]
  %12 = tail call noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %1, i32 noundef %11) #11
  %13 = load ptr, ptr %7, align 8, !tbaa !145
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %13) #11
  %15 = load ptr, ptr %8, align 8, !tbaa !228
  %16 = load ptr, ptr %7, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %14, ptr noundef %12, ptr noundef %15, ptr noundef %16) #11
          to label %17 unwind label %23

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %0, align 8, !tbaa !154
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %19, ptr noundef nonnull %14) #11
  %20 = load ptr, ptr %18, align 8, !tbaa !151
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %20, ptr noundef %12, i32 noundef %2, ptr noundef nonnull %14) #11
  %21 = add nuw i32 %11, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %9, label %10, !prof !229, !llvm.loop !230

23:                                               ; preds = %10
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #14
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #1 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !232
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !241

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #11
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj(ptr noundef nonnull align 8 dereferenceable(147) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !242 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !232
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !243

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef %1) #11
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !244 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !245
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !247
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !171
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !247
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 !prof !221 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !164
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !169
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !177

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16, !prof !177

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !175, !range !176, !noundef !161
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !178
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %21) #14
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #14
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !178
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !248
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !249
  br label %45

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !179
  %29 = load ptr, ptr %28, align 8, !tbaa !155
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32) #11
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !170
  %35 = load i32, ptr %5, align 4, !tbaa !225
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !171
  call void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %32, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %38) #11
  %39 = load ptr, ptr %33, align 8, !tbaa !170
  %40 = load i32, ptr %5, align 4, !tbaa !225
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %39, i64 %41
  store ptr %32, ptr %42, align 8, !tbaa !171
  %43 = load i32, ptr %9, align 4, !tbaa !169
  %44 = add i32 %43, 1
  store i32 %44, ptr %9, align 4, !tbaa !169
  br label %45

45:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %4 = load ptr, ptr %1, align 8, !tbaa !155
  %5 = getelementptr inbounds ptr, ptr %4, i64 5
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef signext i16 %6(ptr noundef nonnull align 8 dereferenceable(52) %1) #11
  %8 = icmp eq i16 %7, 2
  br i1 %8, label %30, label %9, !prof !250

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !151
  %12 = tail call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %1, i32 noundef %2) #11
  %13 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !152
  %15 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull %1) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !195

17:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef %12) #11
  br label %30

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %20) #11
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !228
  %24 = load ptr, ptr %19, align 8, !tbaa !145
  invoke void @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef nonnull %1, ptr noundef %23, ptr noundef %24) #11
          to label %25 unwind label %28

25:                                               ; preds = %18
  %26 = load ptr, ptr %0, align 8, !tbaa !154
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull %21) #11
  tail call void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef %12) #11
  %27 = load ptr, ptr %13, align 8, !tbaa !152
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull %1, ptr noundef nonnull %21) #11
  br label %30

28:                                               ; preds = %18
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #14
  resume { ptr, i32 } %29

30:                                               ; preds = %17, %25, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat align 2 !prof !251 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %5 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !252

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !178
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret ptr %10
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !253 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !254
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !242 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !254
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !256

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !257
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !258
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 !prof !262 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !226
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !164
  %9 = load ptr, ptr %0, align 8, !tbaa !179
  %10 = load ptr, ptr %6, align 8, !tbaa !155
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9) #11
  store i32 %12, ptr %3, align 4, !tbaa !225
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !170
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !171
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !263

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !249
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !264

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !226
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !248
  %28 = load ptr, ptr %25, align 8, !tbaa !155
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27) #11
  br i1 %31, label %36, label %32, !prof !265

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !266, !llvm.loop !267

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ null, %32 ], [ %20, %24 ]
  ret ptr %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !244 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !187
  %8 = load ptr, ptr %0, align 8, !tbaa !197
  %9 = load ptr, ptr %5, align 8, !tbaa !155
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #11
  store i32 %11, ptr %2, align 4, !tbaa !225
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !190
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18, !prof !268

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !204
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !224
  %23 = load ptr, ptr %20, align 8, !tbaa !155
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #11
  br i1 %26, label %31, label %27, !prof !269

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !171
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !prof !270, !llvm.loop !271

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !169
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !189
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !272
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !274

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !272
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !275, !range !176, !noundef !161
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !276
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !171
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #14
  %20 = load ptr, ptr %7, align 8, !tbaa !276
  %21 = load i32, ptr %2, align 4, !tbaa !272
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !171
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !prof !207, !llvm.loop !277
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE10addElementEPS3_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !201 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #11
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !272
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !171
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !272
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !201 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !272
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !278
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !279

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !280
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !155
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #11
  %21 = load i32, ptr %3, align 4, !tbaa !272
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !168

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !281

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !171
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !276
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !171
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !171
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !282, !llvm.loop !283

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !280
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !276
  %49 = load ptr, ptr %46, align 8, !tbaa !155
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #11
  store ptr %20, ptr %47, align 8, !tbaa !276
  store i32 %12, ptr %6, align 8, !tbaa !278
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !202 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !284

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !197
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 99, i32 noundef 48, ptr noundef %6) #11
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !197
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !187
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !155
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #11
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !190
  %21 = load i32, ptr %12, align 8, !tbaa !187
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !285

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !190
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !171
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !286, !llvm.loop !287
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !231 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !272
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !280
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !272
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !216

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !280
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 116, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !276
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !171
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %37, label %21, !prof !216

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  %23 = zext i32 %19 to i64
  br i1 %22, label %29, label %26

24:                                               ; preds = %29
  %25 = load ptr, ptr %14, align 8, !tbaa !276
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ %15, %21 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  br label %37

29:                                               ; preds = %21, %29
  %30 = phi i64 [ %32, %29 ], [ %16, %21 ]
  %31 = load ptr, ptr %14, align 8, !tbaa !276
  %32 = add nuw nsw i64 %30, 1
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !171
  %35 = getelementptr inbounds ptr, ptr %31, i64 %30
  store ptr %34, ptr %35, align 8, !tbaa !171
  %36 = icmp eq i64 %32, %23
  br i1 %36, label %24, label %29, !llvm.loop !288

37:                                               ; preds = %13, %26
  %38 = phi ptr [ %28, %26 ], [ %17, %13 ]
  store ptr null, ptr %38, align 8, !tbaa !171
  store i32 %19, ptr %3, align 4, !tbaa !272
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !201 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !201 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !212
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !216

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !192
  store ptr %7, ptr %2, align 8, !tbaa !212
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !289

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !213
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !213
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !214
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !187
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !205

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !190
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !290

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !213
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !291, !llvm.loop !292

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !212
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !213
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !212
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !201 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !259
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !187
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !197
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !155
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !197
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #11
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !187
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !190
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  store ptr %22, ptr %20, align 8, !tbaa !190
  store i32 %5, ptr %3, align 8, !tbaa !187
  %23 = load ptr, ptr %0, align 8, !tbaa !197
  %24 = load ptr, ptr %23, align 8, !tbaa !155
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #11
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !190
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !171
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !192
  %38 = load ptr, ptr %18, align 8, !tbaa !204
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !224
  %41 = load ptr, ptr %0, align 8, !tbaa !197
  %42 = load ptr, ptr %38, align 8, !tbaa !155
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #11
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !171
  store ptr %48, ptr %36, align 8, !tbaa !192
  store ptr %35, ptr %47, align 8, !tbaa !171
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !293

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !187
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !294

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !223 {
  store ptr %2, ptr %0, align 8, !tbaa !196
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !192
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !295
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = load ptr, ptr %0, align 8, !tbaa !295
  store ptr null, ptr %0, align 8, !tbaa !295
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !217 {
  %3 = load ptr, ptr %0, align 8, !tbaa !295
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !297
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !155
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #11
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !295
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !297
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 comdat align 2 !prof !202 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  %2 = load ptr, ptr %0, align 8, !tbaa !197
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !190
  %5 = load ptr, ptr %2, align 8, !tbaa !155
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #11
  store ptr null, ptr %3, align 8, !tbaa !190
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !204
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !155
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !275, !range !176, !noundef !161
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !298

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !272
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !274

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !276
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  %19 = load i32, ptr %6, align 4, !tbaa !272
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !207, !llvm.loop !299

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !280
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !276
  %30 = load ptr, ptr %27, align 8, !tbaa !155
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #11
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !272
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !280
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #11
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !275, !range !176, !noundef !161
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !276
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %25) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #14
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !276
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !272
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !280
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !275, !range !176, !noundef !161
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !276
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %22) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #14
  %25 = load i32, ptr %3, align 4, !tbaa !272
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
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %28 to i64
  br label %48

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !276
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !276
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !276
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !171
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !171
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !300

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !171
  store i32 %28, ptr %3, align 4, !tbaa !272
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !272
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !272
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !275, !range !176, !noundef !161
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !276
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !275, !range !176, !noundef !161
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !272
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !276
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  %19 = load i32, ptr %6, align 4, !tbaa !272
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !301

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !280
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !276
  %30 = load ptr, ptr %27, align 8, !tbaa !155
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !144 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !302
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !247
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !303
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !245
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !304
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !155
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #11
  store ptr %16, ptr %9, align 8, !tbaa !245
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !168

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !245
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !171
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !305, !llvm.loop !306
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !302, !range !176, !noundef !161
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5, !prof !298

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !247
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9, !prof !168

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !245
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  %19 = load i32, ptr %6, align 4, !tbaa !247
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !prof !307, !llvm.loop !308

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !304
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !245
  %30 = load ptr, ptr %27, align 8, !tbaa !155
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #11
          to label %33 unwind label %34

33:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  ret void

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  tail call void @__clang_call_terminate(ptr %36) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !247
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !304
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10) #11
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !302, !range !176, !noundef !161
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !245
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %25) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %25) #14
  br label %28

28:                                               ; preds = %18, %20, %27
  %29 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !245
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  store ptr %1, ptr %32, align 8, !tbaa !171
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !247
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !274

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %22, %1
  store i32 0, ptr %2, align 4, !tbaa !247
  ret void

9:                                                ; preds = %5, %22
  %10 = phi i32 [ %3, %5 ], [ %23, %22 ]
  %11 = phi i64 [ 0, %5 ], [ %26, %22 ]
  %12 = load i8, ptr %6, align 8, !tbaa !302, !range !176, !noundef !161
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !245
  br i1 %13, label %22, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !171
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %17) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #14
  %20 = load ptr, ptr %7, align 8, !tbaa !245
  %21 = load i32, ptr %2, align 4, !tbaa !247
  br label %22

22:                                               ; preds = %15, %19, %9
  %23 = phi i32 [ %10, %15 ], [ %21, %19 ], [ %10, %9 ]
  %24 = phi ptr [ %14, %15 ], [ %20, %19 ], [ %14, %9 ]
  %25 = getelementptr inbounds ptr, ptr %24, i64 %11
  store ptr null, ptr %25, align 8, !tbaa !171
  %26 = add nuw nsw i64 %11, 1
  %27 = zext i32 %23 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %9, label %8, !prof !207, !llvm.loop !309
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !247
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !304
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !302, !range !176, !noundef !161
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !245
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !171
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %22) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #14
  %25 = load i32, ptr %3, align 4, !tbaa !247
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
  %40 = load ptr, ptr %39, align 8, !tbaa !245
  %41 = zext i32 %1 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  br label %56

43:                                               ; preds = %48, %32
  %44 = phi i64 [ %33, %32 ], [ %37, %48 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !245
  %47 = getelementptr inbounds ptr, ptr %46, i64 %44
  br label %56

48:                                               ; preds = %34, %48
  %49 = phi i64 [ %36, %34 ], [ %51, %48 ]
  %50 = load ptr, ptr %35, align 8, !tbaa !245
  %51 = add nuw nsw i64 %49, 1
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !171
  %54 = getelementptr inbounds ptr, ptr %50, i64 %49
  store ptr %53, ptr %54, align 8, !tbaa !171
  %55 = icmp eq i64 %51, %37
  br i1 %55, label %43, label %48, !llvm.loop !310

56:                                               ; preds = %43, %38
  %57 = phi ptr [ %47, %43 ], [ %42, %38 ]
  store ptr null, ptr %57, align 8, !tbaa !171
  store i32 %28, ptr %3, align 4, !tbaa !247
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !247
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !247
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !302, !range !176, !noundef !161
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !245
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !171
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #14
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !217 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !302, !range !176, !noundef !161
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !247
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i32 [ %7, %9 ], [ %21, %20 ]
  %13 = phi i64 [ 0, %9 ], [ %22, %20 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !245
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %16) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #14
  %19 = load i32, ptr %6, align 4, !tbaa !247
  br label %20

20:                                               ; preds = %11, %18
  %21 = phi i32 [ %12, %11 ], [ %19, %18 ]
  %22 = add nuw nsw i64 %13, 1
  %23 = zext i32 %21 to i64
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %11, label %25, !llvm.loop !311

25:                                               ; preds = %20, %5, %1
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !304
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !245
  %30 = load ptr, ptr %27, align 8, !tbaa !155
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %29) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !144 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !298

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !179
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.3, i32 noundef 93, i32 noundef 48, ptr noundef %6) #11
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !179
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !164
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !155
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #11
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !170
  %21 = load i32, ptr %12, align 8, !tbaa !164
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !168

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !170
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !171
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !312, !llvm.loop !313
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !144 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #11
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #1 comdat align 2 !prof !144 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !275
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !272
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !278
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !276
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !280
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !155
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #11
  store ptr %16, ptr %9, align 8, !tbaa !276
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19, !prof !168

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !276
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !171
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !prof !305, !llvm.loop !314
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !144 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !244 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !247
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !303
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52, !prof !315

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !304
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !155
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #11
  %21 = load i32, ptr %3, align 4, !tbaa !247
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23, !prof !168

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45, !prof !281

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !171
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !245
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !171
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !171
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !prof !316, !llvm.loop !317

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !304
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !245
  %49 = load ptr, ptr %46, align 8, !tbaa !155
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #11
  store ptr %20, ptr %47, align 8, !tbaa !245
  store i32 %12, ptr %6, align 8, !tbaa !303
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.4", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !164
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !179
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !155
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %14 = load ptr, ptr %0, align 8, !tbaa !179
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %13, ptr noundef %14) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !164
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %28

20:                                               ; preds = %55, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !170
  %23 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  store ptr %23, ptr %21, align 8, !tbaa !170
  store i32 %6, ptr %3, align 8, !tbaa !164
  %24 = load ptr, ptr %0, align 8, !tbaa !179
  %25 = load ptr, ptr %24, align 8, !tbaa !155
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22) #11
          to label %60 unwind label %61

28:                                               ; preds = %17, %55
  %29 = phi i32 [ %15, %17 ], [ %56, %55 ]
  %30 = phi i64 [ 0, %17 ], [ %57, %55 ]
  %31 = load ptr, ptr %18, align 8, !tbaa !170
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !171
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %28 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !173
  %39 = load ptr, ptr %19, align 8, !tbaa !226
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !248
  %42 = load ptr, ptr %0, align 8, !tbaa !179
  %43 = load ptr, ptr %39, align 8, !tbaa !155
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42) #11
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !171
  store ptr %49, ptr %37, align 8, !tbaa !173
  store ptr %36, ptr %48, align 8, !tbaa !171
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !318

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %63

53:                                               ; preds = %46
  %54 = load i32, ptr %3, align 8, !tbaa !164
  br label %55

55:                                               ; preds = %53, %28
  %56 = phi i32 [ %54, %53 ], [ %29, %28 ]
  %57 = add nuw nsw i64 %30, 1
  %58 = zext i32 %56 to i64
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %28, label %20, !llvm.loop !319

60:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

61:                                               ; preds = %20
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %51
  %64 = phi { ptr, i32 } [ %52, %51 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEC2EPviPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 !prof !221 {
  store ptr %3, ptr %0, align 8, !tbaa !178
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !173
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !248
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %8, align 8, !tbaa !249
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !217 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store ptr %1, ptr %0, align 8, !tbaa !320
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !322
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #2 comdat align 2 !prof !217 {
  %2 = load ptr, ptr %0, align 8, !tbaa !320
  store ptr null, ptr %0, align 8, !tbaa !320
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !217 {
  %3 = load ptr, ptr %0, align 8, !tbaa !320
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !322
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !155
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #11
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #16
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !320
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !322
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!143}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142}
!35 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEEC2EPS1_MS1_FvvE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, i64 3}
!38 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEE7releaseEv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEED2Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev, i64 2}
!41 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 6}
!42 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev, i64 2}
!43 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, i64 2}
!44 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 18}
!45 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE, i64 3}
!46 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 6}
!47 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 3}
!48 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 3}
!49 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, i64 3}
!50 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheD2Ev, ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, i64 3}
!51 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!52 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!53 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, i64 3}
!54 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE7isEmptyEv, i64 6}
!55 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7isEmptyEv, i64 832917}
!56 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, ptr @_ZN11xercesc_2_710ValueStoreD1Ev, i64 1}
!57 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!58 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, i64 3}
!59 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_, i64 832911}
!60 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1665822}
!61 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 832910}
!62 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 832909}
!63 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE, i64 3}
!64 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE4pushEPS3_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE10addElementEPS3_, i64 832911}
!65 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 832914}
!66 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE10initializeEj, i64 832914}
!67 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE5emptyEv, i64 832911}
!68 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv, i64 832910}
!69 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, i64 832910}
!70 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv, i64 832911}
!71 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv, i64 1}
!72 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZNK11xercesc_2_710ValueStore21getIdentityConstraintEv, i64 1}
!73 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, i64 1}
!74 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, i64 1}
!75 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev, i64 520569}
!76 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 520569}
!77 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev, i64 832910}
!78 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE5emptyEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE4sizeEv, i64 832911}
!79 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE4sizeEv, i64 832911}
!80 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv, ptr @__cxa_allocate_exception, i64 1}
!81 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE16getMemoryManagerEv, i64 1}
!82 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv, ptr @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEE3popEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj, i64 832910}
!84 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEC2Ev, i64 832911}
!85 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 832911}
!86 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!87 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!88 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv, i64 832910}
!89 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev, i64 1}
!90 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj, i64 16}
!91 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv, i64 1}
!92 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE14findBucketElemEPKvRj, i64 4}
!93 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_, ptr @_ZN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEC2EPvPS1_PS2_, i64 3}
!94 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv, i64 832914}
!95 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev, ptr @__clang_call_terminate, i64 1}
!96 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEED2Ev, i64 1}
!97 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!98 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEED2Ev, i64 832911}
!99 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!100 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, i64 3}
!101 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE, i64 3}
!102 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!103 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE10initializeEj, i64 3}
!104 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!105 = !{ptr @_ZN11xercesc_2_710RefStackOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, i64 3}
!106 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, i64 832911}
!107 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, i64 17}
!108 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 17}
!109 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, i64 17}
!110 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_, i64 17}
!111 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_, i64 17}
!112 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl26getIdentityConstraintCountEv, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE4sizeEv, i64 3}
!113 = !{ptr @_ZNK11xercesc_2_717SchemaElementDecl23getIdentityConstraintAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 31}
!114 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj, i64 20}
!115 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv, i64 1}
!116 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 16}
!117 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_, ptr @_ZN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEC2EPviPS1_PS2_, i64 15}
!118 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, i64 3}
!119 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, i64 3}
!120 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, i64 4}
!121 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 3}
!122 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, i64 3}
!123 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE10addElementEPS1_, i64 3}
!124 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_, i64 3}
!125 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3getEPKvi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 475795}
!126 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!127 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!128 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE10addElementEPS3_, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE19ensureExtraCapacityEj, i64 832911}
!129 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!130 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!131 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj, ptr @__cxa_allocate_exception, i64 1}
!132 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!133 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, i64 832914}
!134 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, i64 3}
!135 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!136 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_710ValueStoreD1Ev, i64 8}
!137 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 8}
!138 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev, i64 3}
!139 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!140 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!141 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, i64 3}
!142 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEC2EjbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!143 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!144 = !{!"function_entry_count", i64 3}
!145 = !{!146, !147, i64 40}
!146 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !147, i64 0, !147, i64 8, !147, i64 16, !147, i64 24, !147, i64 32, !147, i64 40}
!147 = !{!"any pointer", !148, i64 0}
!148 = !{!"omnipotent char", !149, i64 0}
!149 = !{!"Simple C++ TBAA"}
!150 = !{!"function_entry_count", i64 5836268}
!151 = !{!146, !147, i64 16}
!152 = !{!146, !147, i64 8}
!153 = !{!146, !147, i64 24}
!154 = !{!146, !147, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"vtable pointer", !149, i64 0}
!157 = !{!158, !147, i64 0}
!158 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_15ValueStoreCacheEEE", !147, i64 0, !148, i64 8}
!159 = !{!158, !148, i64 8}
!160 = !{!"branch_weights", i32 4, i32 1}
!161 = !{}
!162 = !{!"function_entry_count", i64 6}
!163 = !{!"branch_weights", i32 6, i32 2}
!164 = !{!165, !167, i64 24}
!165 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !147, i64 0, !166, i64 8, !147, i64 16, !167, i64 24, !167, i64 28, !147, i64 32}
!166 = !{!"bool", !148, i64 0}
!167 = !{!"int", !148, i64 0}
!168 = !{!"branch_weights", i32 1, i32 127}
!169 = !{!165, !167, i64 28}
!170 = !{!165, !147, i64 16}
!171 = !{!147, !147, i64 0}
!172 = !{!"branch_weights", i32 1, i32 223}
!173 = !{!174, !147, i64 8}
!174 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !147, i64 0, !147, i64 8, !147, i64 16, !167, i64 24}
!175 = !{!165, !166, i64 8}
!176 = !{i8 0, i8 2}
!177 = !{!"branch_weights", i32 17, i32 1}
!178 = !{!174, !147, i64 0}
!179 = !{!165, !147, i64 0}
!180 = !{!"branch_weights", i32 223, i32 49}
!181 = distinct !{!181, !182}
!182 = !{!"llvm.loop.mustprogress"}
!183 = !{!"branch_weights", i32 769, i32 127}
!184 = distinct !{!184, !182}
!185 = !{!"function_entry_count", i64 832917}
!186 = !{!"branch_weights", i32 832917, i32 2}
!187 = !{!188, !167, i64 24}
!188 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !147, i64 0, !166, i64 8, !147, i64 16, !167, i64 24, !167, i64 28, !167, i64 32, !147, i64 40}
!189 = !{!188, !167, i64 32}
!190 = !{!188, !147, i64 16}
!191 = !{!"branch_weights", i32 9, i32 5}
!192 = !{!193, !147, i64 8}
!193 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEE", !147, i64 0, !147, i64 8, !147, i64 16}
!194 = !{!188, !166, i64 8}
!195 = !{!"branch_weights", i32 5, i32 1}
!196 = !{!193, !147, i64 0}
!197 = !{!188, !147, i64 0}
!198 = !{!"branch_weights", i32 5, i32 0}
!199 = distinct !{!199, !182}
!200 = distinct !{!200, !182}
!201 = !{!"function_entry_count", i64 832911}
!202 = !{!"function_entry_count", i64 832914}
!203 = !{!188, !167, i64 28}
!204 = !{!188, !147, i64 40}
!205 = !{!"branch_weights", i32 1, i32 832912}
!206 = !{!"branch_weights", i32 1, i32 832911}
!207 = !{!"branch_weights", i32 0, i32 1}
!208 = distinct !{!208, !182}
!209 = !{!210, !166, i64 8}
!210 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE", !211, i64 0, !166, i64 8, !147, i64 16, !167, i64 24, !147, i64 32, !147, i64 40}
!211 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE"}
!212 = !{!210, !147, i64 16}
!213 = !{!210, !167, i64 24}
!214 = !{!210, !147, i64 32}
!215 = !{!210, !147, i64 40}
!216 = !{!"branch_weights", i32 832912, i32 1}
!217 = !{!"function_entry_count", i64 0}
!218 = !{!219, !147, i64 8}
!219 = !{!"_ZTSN11xercesc_2_710ValueStoreE", !166, i64 0, !167, i64 4, !147, i64 8, !220, i64 16, !147, i64 48, !147, i64 56, !147, i64 64, !147, i64 72}
!220 = !{!"_ZTSN11xercesc_2_713FieldValueMapE", !147, i64 0, !147, i64 8, !147, i64 16, !147, i64 24}
!221 = !{!"function_entry_count", i64 16}
!222 = !{!"branch_weights", i32 5, i32 13}
!223 = !{!"function_entry_count", i64 4}
!224 = !{!193, !147, i64 16}
!225 = !{!167, !167, i64 0}
!226 = !{!165, !147, i64 32}
!227 = !{!"branch_weights", i32 832895, i32 17}
!228 = !{!146, !147, i64 32}
!229 = !{!"branch_weights", i32 17, i32 0}
!230 = distinct !{!230, !182}
!231 = !{!"function_entry_count", i64 1665822}
!232 = !{!233, !147, i64 112}
!233 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !234, i64 0, !237, i64 36, !238, i64 40, !239, i64 44, !240, i64 48, !167, i64 52, !167, i64 56, !167, i64 60, !167, i64 64, !147, i64 72, !147, i64 80, !147, i64 88, !147, i64 96, !147, i64 104, !147, i64 112, !147, i64 120, !147, i64 128, !147, i64 136, !166, i64 144, !166, i64 145, !166, i64 146}
!234 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !235, i64 0, !147, i64 8, !147, i64 16, !236, i64 24, !167, i64 28, !166, i64 32}
!235 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!236 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !148, i64 0}
!237 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !148, i64 0}
!238 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !148, i64 0}
!239 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !148, i64 0}
!240 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !148, i64 0}
!241 = !{!"branch_weights", i32 1665821, i32 3}
!242 = !{!"function_entry_count", i64 32}
!243 = !{!"branch_weights", i32 1, i32 33}
!244 = !{!"function_entry_count", i64 20}
!245 = !{!246, !147, i64 24}
!246 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE", !166, i64 8, !167, i64 12, !167, i64 16, !147, i64 24, !147, i64 32}
!247 = !{!246, !167, i64 12}
!248 = !{!174, !147, i64 16}
!249 = !{!174, !167, i64 24}
!250 = !{!"branch_weights", i32 1, i32 5}
!251 = !{!"function_entry_count", i64 475795}
!252 = !{!"branch_weights", i32 1, i32 475796}
!253 = !{!"function_entry_count", i64 2}
!254 = !{!255, !167, i64 12}
!255 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !166, i64 8, !167, i64 12, !167, i64 16, !147, i64 24, !147, i64 32}
!256 = !{!"branch_weights", i32 33, i32 1}
!257 = !{!255, !147, i64 32}
!258 = !{!255, !147, i64 24}
!259 = !{!260, !147, i64 40}
!260 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !261, i64 8, !147, i64 16, !167, i64 24, !147, i64 32, !147, i64 40}
!261 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !148, i64 0}
!262 = !{!"function_entry_count", i64 475811}
!263 = !{!"branch_weights", i32 1, i32 135}
!264 = !{!"branch_weights", i32 947746, i32 1}
!265 = !{!"branch_weights", i32 475796, i32 471951}
!266 = !{!"branch_weights", i32 135, i32 7581833}
!267 = distinct !{!267, !182}
!268 = !{!"branch_weights", i32 1, i32 143}
!269 = !{!"branch_weights", i32 13, i32 1}
!270 = !{!"branch_weights", i32 143, i32 65}
!271 = distinct !{!271, !182}
!272 = !{!273, !167, i64 12}
!273 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE", !166, i64 8, !167, i64 12, !167, i64 16, !147, i64 24, !147, i64 32}
!274 = !{!"branch_weights", i32 3, i32 1}
!275 = !{!273, !166, i64 8}
!276 = !{!273, !147, i64 24}
!277 = distinct !{!277, !182}
!278 = !{!273, !167, i64 16}
!279 = !{!"branch_weights", i32 2, i32 832911}
!280 = !{!273, !147, i64 32}
!281 = !{!"branch_weights", i32 127, i32 1}
!282 = !{!"branch_weights", i32 127, i32 449}
!283 = distinct !{!283, !182}
!284 = !{!"branch_weights", i32 1, i32 832915}
!285 = !{!"branch_weights", i32 1, i32 832914}
!286 = !{!"branch_weights", i32 832914, i32 9994969}
!287 = distinct !{!287, !182}
!288 = distinct !{!288, !182}
!289 = !{!"branch_weights", i32 0, i32 -2147483648}
!290 = !{!"branch_weights", i32 10827844, i32 1}
!291 = !{!"branch_weights", i32 832912, i32 9994933}
!292 = distinct !{!292, !182}
!293 = distinct !{!293, !182}
!294 = distinct !{!294, !182}
!295 = !{!296, !147, i64 0}
!296 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEEE", !147, i64 0, !147, i64 8}
!297 = !{!296, !147, i64 8}
!298 = !{!"branch_weights", i32 1, i32 4}
!299 = distinct !{!299, !182}
!300 = distinct !{!300, !182}
!301 = distinct !{!301, !182}
!302 = !{!246, !166, i64 8}
!303 = !{!246, !167, i64 16}
!304 = !{!246, !147, i64 32}
!305 = !{!"branch_weights", i32 127, i32 673}
!306 = distinct !{!306, !182}
!307 = !{!"branch_weights", i32 545, i32 127}
!308 = distinct !{!308, !182}
!309 = distinct !{!309, !182}
!310 = distinct !{!310, !182}
!311 = distinct !{!311, !182}
!312 = !{!"branch_weights", i32 127, i32 1153}
!313 = distinct !{!313, !182}
!314 = distinct !{!314, !182}
!315 = !{!"branch_weights", i32 4, i32 18}
!316 = !{!"branch_weights", i32 127, i32 1121}
!317 = distinct !{!317, !182}
!318 = distinct !{!318, !182}
!319 = distinct !{!319, !182}
!320 = !{!321, !147, i64 0}
!321 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEEE", !147, i64 0, !147, i64 8}
!322 = !{!321, !147, i64 8}
