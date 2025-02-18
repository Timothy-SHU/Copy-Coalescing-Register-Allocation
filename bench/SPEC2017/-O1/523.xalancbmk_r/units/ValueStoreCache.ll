; ModuleID = 'ValueStoreCache.cpp'
source_filename = "ValueStoreCache.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::ValueStoreCache" = type { ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefStackOf" = type { [8 x i8], %"class.xercesc_2_7::RefVectorOf.0" }
%"class.xercesc_2_7::RefVectorOf.0" = type { %"class.xercesc_2_7::BaseRefVectorOf.1" }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::ValueStore" = type { i8, i32, ptr, %"class.xercesc_2_7::FieldValueMap", ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::FieldValueMap" = type { ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.4" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE5ResetEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = comdat any

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
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE5ResetEv] }, comdat, align 8
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
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
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_715ValueStoreCacheC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_715ValueStoreCacheD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715ValueStoreCacheD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  store ptr %1, ptr %3, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_715ValueStoreCache4initEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %14 unwind label %4, !prof !80

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %6 = extractvalue { ptr, i32 } %5, 1
  %7 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = extractvalue { ptr, i32 } %5, 0
  %11 = tail call ptr @__cxa_begin_catch(ptr %10) #12
  invoke void @__cxa_rethrow() #13
          to label %29 unwind label %12

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %15 unwind label %26

14:                                               ; preds = %2
  ret void

15:                                               ; preds = %12, %4
  %16 = phi ptr [ null, %12 ], [ @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, %4 ]
  %17 = phi ptr [ null, %12 ], [ %0, %4 ]
  %18 = phi { ptr, i32 } [ %13, %12 ], [ %5, %4 ]
  %19 = icmp eq ptr %17, null
  %20 = or i1 %8, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(48) %17)
          to label %25 unwind label %22

22:                                               ; preds = %21
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #14
  unreachable

25:                                               ; preds = %15, %21
  resume { ptr, i32 } %18

26:                                               ; preds = %12
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #14
  unreachable

29:                                               ; preds = %9
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !82

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !82

10:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %14 unwind label %11, !prof !80

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #14
  unreachable

14:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #12
  br label %15

15:                                               ; preds = %14, %6
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !84
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !82

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %17, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %17) #12
  br label %21

21:                                               ; preds = %19, %15
  %22 = load ptr, ptr %0, align 8, !tbaa !85
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !82

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %22) #12, !prof !88
  br label %28

28:                                               ; preds = %24, %21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache4initEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %3)
  %5 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 1
  store i8 1, ptr %6, align 8, !tbaa !89
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !93
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 3
  store i32 8, ptr %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !95
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 5
  store ptr %5, ptr %10, align 8, !tbaa !96
  %11 = load ptr, ptr %5, align 8, !tbaa !86
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef 64)
          to label %15 unwind label %104, !prof !97

15:                                               ; preds = %1
  store ptr %14, ptr %9, align 8, !tbaa !95
  br label %16

16:                                               ; preds = %15, %16
  %17 = phi i64 [ 0, %15 ], [ %20, %16 ]
  %18 = load ptr, ptr %9, align 8, !tbaa !95
  %19 = getelementptr inbounds ptr, ptr %18, i64 %17
  store ptr null, ptr %19, align 8, !tbaa !98
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %16, !prof !99, !llvm.loop !100

22:                                               ; preds = %16
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  store ptr %4, ptr %0, align 8, !tbaa !85
  %23 = load ptr, ptr %2, align 8, !tbaa !75
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %23)
  %25 = load ptr, ptr %2, align 8, !tbaa !75
  %26 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %25)
          to label %27 unwind label %106, !prof !80

27:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %28 unwind label %108, !prof !80

28:                                               ; preds = %27
  %29 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %29, ptr %24, align 8, !tbaa !103
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %24, i64 0, i32 1
  store i8 0, ptr %30, align 8, !tbaa !105
  %31 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %24, i64 0, i32 2
  store ptr null, ptr %31, align 8, !tbaa !106
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %24, i64 0, i32 3
  store i32 13, ptr %32, align 8, !tbaa !107
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %24, i64 0, i32 4
  store i32 13, ptr %33, align 4, !tbaa !108
  %34 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %24, i64 0, i32 5
  store i32 0, ptr %34, align 8, !tbaa !109
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %24, i64 0, i32 6
  store ptr null, ptr %35, align 8, !tbaa !110
  %36 = load ptr, ptr %29, align 8, !tbaa !86
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef 104)
          to label %40 unwind label %106, !prof !97

40:                                               ; preds = %28
  store ptr %39, ptr %31, align 8, !tbaa !106
  %41 = load i32, ptr %32, align 8, !tbaa !107
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43, !prof !111

43:                                               ; preds = %40
  %44 = zext i32 %41 to i64
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi i64 [ 0, %43 ], [ %49, %45 ]
  %47 = load ptr, ptr %31, align 8, !tbaa !106
  %48 = getelementptr inbounds ptr, ptr %47, i64 %46
  store ptr null, ptr %48, align 8, !tbaa !98
  %49 = add nuw nsw i64 %46, 1
  %50 = icmp eq i64 %49, %44
  br i1 %50, label %51, label %45, !prof !112, !llvm.loop !113

51:                                               ; preds = %45, %40
  store ptr %26, ptr %35, align 8, !tbaa !110
  %52 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  store ptr %24, ptr %52, align 8, !tbaa !83
  %53 = load ptr, ptr %2, align 8, !tbaa !75
  %54 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %53)
  %55 = load ptr, ptr %2, align 8, !tbaa !75
  %56 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %55)
          to label %57 unwind label %112, !prof !80

57:                                               ; preds = %51
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %58 unwind label %114, !prof !80

58:                                               ; preds = %57
  %59 = load ptr, ptr %2, align 8, !tbaa !75
  store ptr %59, ptr %54, align 8, !tbaa !114
  %60 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %54, i64 0, i32 1
  store i8 0, ptr %60, align 8, !tbaa !116
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %54, i64 0, i32 2
  store ptr null, ptr %61, align 8, !tbaa !117
  %62 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %54, i64 0, i32 3
  store i32 13, ptr %62, align 8, !tbaa !118
  %63 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %54, i64 0, i32 4
  store i32 0, ptr %63, align 4, !tbaa !119
  %64 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %54, i64 0, i32 5
  store ptr null, ptr %64, align 8, !tbaa !120
  %65 = load ptr, ptr %59, align 8, !tbaa !86
  %66 = getelementptr inbounds ptr, ptr %65, i64 2
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(8) %59, i64 noundef 104)
          to label %69 unwind label %112, !prof !97

69:                                               ; preds = %58
  store ptr %68, ptr %61, align 8, !tbaa !117
  %70 = load i32, ptr %62, align 8, !tbaa !118
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %80, label %72, !prof !111

72:                                               ; preds = %69
  %73 = zext i32 %70 to i64
  br label %74

74:                                               ; preds = %72, %74
  %75 = phi i64 [ 0, %72 ], [ %78, %74 ]
  %76 = load ptr, ptr %61, align 8, !tbaa !117
  %77 = getelementptr inbounds ptr, ptr %76, i64 %75
  store ptr null, ptr %77, align 8, !tbaa !98
  %78 = add nuw nsw i64 %75, 1
  %79 = icmp eq i64 %78, %73
  br i1 %79, label %80, label %74, !prof !112, !llvm.loop !121

80:                                               ; preds = %74, %69
  store ptr %56, ptr %64, align 8, !tbaa !120
  %81 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  store ptr %54, ptr %81, align 8, !tbaa !81
  %82 = load ptr, ptr %2, align 8, !tbaa !75
  %83 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %82)
  %84 = load ptr, ptr %2, align 8, !tbaa !75
  %85 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %83, i64 0, i32 1
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, i64 0, inrange i32 0, i64 2), ptr %85, align 8, !tbaa !86
  %86 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %83, i64 0, i32 1, i32 0, i32 1
  store i8 1, ptr %86, align 8, !tbaa !122
  %87 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %83, i64 0, i32 1, i32 0, i32 2
  store i32 0, ptr %87, align 4, !tbaa !124
  %88 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %83, i64 0, i32 1, i32 0, i32 3
  store i32 8, ptr %88, align 8, !tbaa !125
  %89 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %83, i64 0, i32 1, i32 0, i32 4
  store ptr null, ptr %89, align 8, !tbaa !126
  %90 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %83, i64 0, i32 1, i32 0, i32 5
  store ptr %84, ptr %90, align 8, !tbaa !127
  %91 = load ptr, ptr %84, align 8, !tbaa !86
  %92 = getelementptr inbounds ptr, ptr %91, i64 2
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %84, i64 noundef 64)
          to label %95 unwind label %118, !prof !97

95:                                               ; preds = %80
  store ptr %94, ptr %89, align 8, !tbaa !126
  br label %96

96:                                               ; preds = %95, %96
  %97 = phi i64 [ 0, %95 ], [ %100, %96 ]
  %98 = load ptr, ptr %89, align 8, !tbaa !126
  %99 = getelementptr inbounds ptr, ptr %98, i64 %97
  store ptr null, ptr %99, align 8, !tbaa !98
  %100 = add nuw nsw i64 %97, 1
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %102, label %96, !prof !99, !llvm.loop !128

102:                                              ; preds = %96
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, i64 0, inrange i32 0, i64 2), ptr %85, align 8, !tbaa !86
  %103 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  store ptr %83, ptr %103, align 8, !tbaa !84
  ret void

104:                                              ; preds = %1
  %105 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %4, ptr noundef %3) #12
  br label %120

106:                                              ; preds = %28, %22
  %107 = landingpad { ptr, i32 }
          cleanup
  br label %110

108:                                              ; preds = %27
  %109 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #12
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi { ptr, i32 } [ %107, %106 ], [ %109, %108 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #12
  br label %120

112:                                              ; preds = %58, %51
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %116

114:                                              ; preds = %57
  %115 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %56, ptr noundef %55) #12
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi { ptr, i32 } [ %113, %112 ], [ %115, %114 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %54, ptr noundef %53) #12
  br label %120

118:                                              ; preds = %80
  %119 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %83, ptr noundef %82) #12
  br label %120

120:                                              ; preds = %118, %116, %110, %104
  %121 = phi { ptr, i32 } [ %119, %118 ], [ %117, %116 ], [ %111, %110 ], [ %105, %104 ]
  resume { ptr, i32 } %121
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #3

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat !prof !129 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCacheD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  tail call void @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #0 align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
  %6 = load ptr, ptr %0, align 8, !tbaa !85
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(40) %6), !prof !130
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %11, i64 0, i32 1
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !119
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !132

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !133

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 4, !tbaa !119
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !117
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !134

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !135
  %23 = load i8, ptr %11, align 8, !tbaa !116, !range !137, !noundef !138
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !139

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !140
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %26) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #12
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !114
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !141
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !142, !llvm.loop !143

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !117
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !98
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !118
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !144, !llvm.loop !145

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !131 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !109
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !146

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !107
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !133

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !109
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !106
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !147

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !148
  %23 = load i8, ptr %11, align 8, !tbaa !105, !range !137, !noundef !138
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !150

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !151
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %26) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #12
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !103
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !152
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !150, !llvm.loop !153

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !106
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !98
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !107
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !144, !llvm.loop !154

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache12startElementEv(ptr nocapture noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !124
  %8 = add i32 %7, 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !125
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %58, !prof !156

12:                                               ; preds = %1
  %13 = lshr i32 %10, 1
  %14 = add i32 %13, %10
  %15 = tail call i32 @llvm.umax.i32(i32 %8, i32 %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !127
  %18 = zext i32 %15 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = load ptr, ptr %17, align 8, !tbaa !86
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef %19), !prof !157
  %24 = load i32, ptr %6, align 4, !tbaa !124
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26, !prof !133

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 4
  %28 = zext i32 %24 to i64
  br label %43

29:                                               ; preds = %43
  %30 = trunc i64 %49 to i32
  br label %31

31:                                               ; preds = %29, %12
  %32 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %33 = icmp ult i32 %32, %15
  br i1 %33, label %34, label %51, !prof !158

34:                                               ; preds = %31
  %35 = zext i32 %32 to i64
  %36 = shl nuw nsw i64 %35, 3
  %37 = getelementptr i8, ptr %23, i64 %36
  %38 = xor i32 %32, -1
  %39 = add i32 %15, %38
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 3
  %42 = add nuw nsw i64 %41, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %37, i8 0, i64 %42, i1 false), !tbaa !98
  br label %51

43:                                               ; preds = %43, %26
  %44 = phi i64 [ 0, %26 ], [ %49, %43 ]
  %45 = load ptr, ptr %27, align 8, !tbaa !126
  %46 = getelementptr inbounds ptr, ptr %45, i64 %44
  %47 = load ptr, ptr %46, align 8, !tbaa !98
  %48 = getelementptr inbounds ptr, ptr %23, i64 %44
  store ptr %47, ptr %48, align 8, !tbaa !98
  %49 = add nuw nsw i64 %44, 1
  %50 = icmp eq i64 %49, %28
  br i1 %50, label %29, label %43, !prof !159, !llvm.loop !160

51:                                               ; preds = %34, %31
  %52 = load ptr, ptr %16, align 8, !tbaa !127
  %53 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  %55 = load ptr, ptr %52, align 8, !tbaa !86
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %54), !prof !161
  store ptr %23, ptr %53, align 8, !tbaa !126
  store i32 %15, ptr %9, align 8, !tbaa !125
  br label %58

58:                                               ; preds = %1, %51
  %59 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !126
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %3, i64 0, i32 1, i32 0, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !124
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds ptr, ptr %60, i64 %63
  store ptr %5, ptr %64, align 8, !tbaa !98
  %65 = add i32 %62, 1
  store i32 %65, ptr %61, align 4, !tbaa !124
  %66 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !75
  %68 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %67)
  %69 = load ptr, ptr %66, align 8, !tbaa !75
  %70 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %69)
          to label %71 unwind label %96, !prof !162

71:                                               ; preds = %58
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %70)
          to label %72 unwind label %98, !prof !162

72:                                               ; preds = %71
  %73 = load ptr, ptr %66, align 8, !tbaa !75
  store ptr %73, ptr %68, align 8, !tbaa !103
  %74 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %68, i64 0, i32 1
  store i8 0, ptr %74, align 8, !tbaa !105
  %75 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %68, i64 0, i32 2
  store ptr null, ptr %75, align 8, !tbaa !106
  %76 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %68, i64 0, i32 3
  store i32 13, ptr %76, align 8, !tbaa !107
  %77 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %68, i64 0, i32 4
  store i32 13, ptr %77, align 4, !tbaa !108
  %78 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %68, i64 0, i32 5
  store i32 0, ptr %78, align 8, !tbaa !109
  %79 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %68, i64 0, i32 6
  store ptr null, ptr %79, align 8, !tbaa !110
  %80 = load ptr, ptr %73, align 8, !tbaa !86
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %73, i64 noundef 104)
          to label %84 unwind label %96, !prof !163

84:                                               ; preds = %72
  store ptr %83, ptr %75, align 8, !tbaa !106
  %85 = load i32, ptr %76, align 8, !tbaa !107
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87, !prof !156

87:                                               ; preds = %84
  %88 = zext i32 %85 to i64
  br label %89

89:                                               ; preds = %87, %89
  %90 = phi i64 [ 0, %87 ], [ %93, %89 ]
  %91 = load ptr, ptr %75, align 8, !tbaa !106
  %92 = getelementptr inbounds ptr, ptr %91, i64 %90
  store ptr null, ptr %92, align 8, !tbaa !98
  %93 = add nuw nsw i64 %90, 1
  %94 = icmp eq i64 %93, %88
  br i1 %94, label %95, label %89, !prof !164, !llvm.loop !113

95:                                               ; preds = %89, %84
  store ptr %70, ptr %79, align 8, !tbaa !110
  store ptr %68, ptr %4, align 8, !tbaa !83
  ret void

96:                                               ; preds = %72, %58
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %71
  %99 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %70, ptr noundef %69) #12
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi { ptr, i32 } [ %97, %96 ], [ %99, %98 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %68, ptr noundef %67) #12
  resume { ptr, i32 } %101
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache10endElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %2 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %4, i64 0, i32 1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !124
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %152, label %8, !prof !165

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefStackOf", ptr %4, i64 0, i32 1
  %10 = add nsw i32 %6, -1
  %11 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef %10)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !75
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !86
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 1
  store i8 0, ptr %14, align 8, !tbaa !166
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !169
  %16 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 3
  store i32 -1, ptr %16, align 8, !tbaa !170
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 4
  store ptr %11, ptr %17, align 8, !tbaa !171
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %2, i64 0, i32 5
  store ptr %13, ptr %18, align 8, !tbaa !172
  %19 = icmp eq ptr %11, null
  br i1 %19, label %20, label %28, !prof !165

20:                                               ; preds = %8
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %22 = load ptr, ptr %18, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.1, i32 noundef 527, i32 noundef 15, ptr noundef %22)
          to label %23 unwind label %26

23:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

24:                                               ; preds = %74, %26
  %25 = phi { ptr, i32 } [ %27, %26 ], [ %75, %74 ]
  resume { ptr, i32 } %25

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %21) #12
  br label %24

28:                                               ; preds = %8
  store i32 0, ptr %16, align 8, !tbaa !170
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 3
  %30 = load i32, ptr %29, align 8, !tbaa !107
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %46, label %32, !prof !165

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = zext i32 %30 to i64
  br label %36

36:                                               ; preds = %41, %32
  %37 = phi i64 [ %42, %41 ], [ 0, %32 ]
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45, !prof !173

41:                                               ; preds = %36
  %42 = add nuw nsw i64 %37, 1
  %43 = trunc i64 %42 to i32
  store i32 %43, ptr %16, align 8, !tbaa !170
  %44 = icmp eq i64 %42, %35
  br i1 %44, label %46, label %36, !prof !174, !llvm.loop !175

45:                                               ; preds = %36
  store ptr %39, ptr %15, align 8, !tbaa !169
  br label %46

46:                                               ; preds = %41, %28, %45
  br label %47

47:                                               ; preds = %68, %46
  %48 = load ptr, ptr %15, align 8, !tbaa !169
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %56, !prof !162

50:                                               ; preds = %47
  %51 = load i32, ptr %16, align 8, !tbaa !170
  %52 = load ptr, ptr %17, align 8, !tbaa !171
  %53 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !107
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %76, label %56, !prof !162

56:                                               ; preds = %50, %47
  %57 = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
          to label %58 unwind label %69

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %60 = getelementptr inbounds %"class.xercesc_2_7::ValueStore", ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !176
  %62 = load ptr, ptr %59, align 8, !tbaa !83
  %63 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef %61)
          to label %64 unwind label %71

64:                                               ; preds = %58
  %65 = icmp eq ptr %63, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %64
  %67 = load ptr, ptr %59, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %67, ptr noundef %61, ptr noundef nonnull %57)
          to label %68 unwind label %71

68:                                               ; preds = %66, %73
  br label %47, !llvm.loop !179

69:                                               ; preds = %56
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %74

71:                                               ; preds = %73, %66, %58
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %74

73:                                               ; preds = %64
  invoke void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80) %63, ptr noundef nonnull %57)
          to label %68 unwind label %71

74:                                               ; preds = %71, %69
  %75 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %2) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %24

76:                                               ; preds = %50
  %77 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !109
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %118, label %80, !prof !146

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 3
  %82 = load i32, ptr %81, align 8, !tbaa !107
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84, !prof !133

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 2
  %86 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 1
  br label %88

87:                                               ; preds = %111, %80
  store i32 0, ptr %77, align 8, !tbaa !109
  br label %118

88:                                               ; preds = %111, %84
  %89 = phi i64 [ 0, %84 ], [ %114, %111 ]
  %90 = load ptr, ptr %85, align 8, !tbaa !106
  %91 = getelementptr inbounds ptr, ptr %90, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !98
  %93 = icmp eq ptr %92, null
  br i1 %93, label %111, label %94, !prof !147

94:                                               ; preds = %88, %109
  %95 = phi ptr [ %97, %109 ], [ %92, %88 ]
  %96 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !148
  %98 = load i8, ptr %86, align 8, !tbaa !105, !range !137, !noundef !138
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %104, label %100, !prof !150

100:                                              ; preds = %94
  %101 = load ptr, ptr %95, align 8, !tbaa !151
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %101) #12
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %101) #12
  br label %104

104:                                              ; preds = %103, %100, %94
  %105 = load ptr, ptr %11, align 8, !tbaa !103
  %106 = load ptr, ptr %105, align 8, !tbaa !86
  %107 = getelementptr inbounds ptr, ptr %106, i64 3
  %108 = load ptr, ptr %107, align 8
  invoke void %108(ptr noundef nonnull align 8 dereferenceable(8) %105, ptr noundef nonnull %95)
          to label %109 unwind label %133, !prof !180

109:                                              ; preds = %104
  %110 = icmp eq ptr %97, null
  br i1 %110, label %111, label %94, !prof !150, !llvm.loop !153

111:                                              ; preds = %109, %88
  %112 = load ptr, ptr %85, align 8, !tbaa !106
  %113 = getelementptr inbounds ptr, ptr %112, i64 %89
  store ptr null, ptr %113, align 8, !tbaa !98
  %114 = add nuw nsw i64 %89, 1
  %115 = load i32, ptr %81, align 8, !tbaa !107
  %116 = zext i32 %115 to i64
  %117 = icmp ult i64 %114, %116
  br i1 %117, label %88, label %87, !prof !144, !llvm.loop !154

118:                                              ; preds = %87, %76
  %119 = load ptr, ptr %11, align 8, !tbaa !103
  %120 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !106
  %122 = load ptr, ptr %119, align 8, !tbaa !86
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  invoke void %124(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef %121)
          to label %125 unwind label %135, !prof !181

125:                                              ; preds = %118
  store ptr null, ptr %120, align 8, !tbaa !106
  %126 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %11, i64 0, i32 6
  %127 = load ptr, ptr %126, align 8, !tbaa !110
  %128 = icmp eq ptr %127, null
  br i1 %128, label %140, label %129, !prof !182

129:                                              ; preds = %125
  %130 = load ptr, ptr %127, align 8, !tbaa !86
  %131 = getelementptr inbounds ptr, ptr %130, i64 3
  %132 = load ptr, ptr %131, align 8
  call void %132(ptr noundef nonnull align 8 dereferenceable(8) %127) #12, !prof !183
  br label %140

133:                                              ; preds = %104
  %134 = landingpad { ptr, i32 }
          catch ptr null
  br label %137

135:                                              ; preds = %118
  %136 = landingpad { ptr, i32 }
          catch ptr null
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi { ptr, i32 } [ %134, %133 ], [ %136, %135 ]
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #14
  unreachable

140:                                              ; preds = %129, %125
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %11) #12
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !86
  %141 = load i8, ptr %14, align 8, !tbaa !166, !range !137, !noundef !138
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %151, label %143, !prof !162

143:                                              ; preds = %140
  %144 = load ptr, ptr %17, align 8, !tbaa !171
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %144)
          to label %150 unwind label %147

147:                                              ; preds = %146
  %148 = landingpad { ptr, i32 }
          catch ptr null
  %149 = extractvalue { ptr, i32 } %148, 0
  call void @__clang_call_terminate(ptr %149) #14
  unreachable

150:                                              ; preds = %146
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %144) #12
  br label %151

151:                                              ; preds = %140, %143, %150
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #12
  br label %152

152:                                              ; preds = %1, %151
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !170
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !171
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !107
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(80) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = load ptr, ptr %0, align 8, !tbaa !86
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 575, i32 noundef 30, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !151
  ret ptr %16
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !107
  %7 = load ptr, ptr %0, align 8, !tbaa !103
  %8 = load ptr, ptr %4, align 8, !tbaa !86
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !185
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !133

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !110
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !186
  %22 = load ptr, ptr %19, align 8, !tbaa !86
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !187
  br i1 %25, label %30, label %26, !prof !188

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !189, !llvm.loop !190

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !191

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !151
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !192 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !109
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !150

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  %15 = load i32, ptr %4, align 8, !tbaa !107
  %16 = load ptr, ptr %0, align 8, !tbaa !103
  %17 = load ptr, ptr %14, align 8, !tbaa !86
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !193
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !98
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !194

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !110
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !186
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !98
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !194, !llvm.loop !190

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42, !prof !150

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !105, !range !137, !noundef !138
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !151
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %47) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %47) #12
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !151
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !186
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !103
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24), !prof !195
  %58 = load ptr, ptr %20, align 8, !tbaa !106
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !98
  store ptr %2, ptr %57, align 8, !tbaa !151
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !148
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !186
  store ptr %57, ptr %59, align 8, !tbaa !98
  %63 = load i32, ptr %8, align 8, !tbaa !109
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !109
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

declare void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !166, !range !137, !noundef !138
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !162

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !171
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #14
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #12
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18, !prof !80

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !114
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !117
  %6 = load ptr, ptr %3, align 8, !tbaa !86
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !180

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !82

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !86
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #12, !prof !196
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #14
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !197
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !206

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %5, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !207
  br label %10

10:                                               ; preds = %3, %7
  %11 = phi i32 [ %9, %7 ], [ 0, %3 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13, !prof !209

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 4
  br label %17

16:                                               ; preds = %29, %10
  ret void

17:                                               ; preds = %13, %29
  %18 = phi i32 [ 0, %13 ], [ %40, %29 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !197
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !210

21:                                               ; preds = %17
  %22 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef %18)
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi ptr [ %22, %21 ], [ null, %17 ]
  %25 = load ptr, ptr %14, align 8, !tbaa !75
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %25)
  %27 = load ptr, ptr %15, align 8, !tbaa !211
  %28 = load ptr, ptr %14, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %26, ptr noundef %24, ptr noundef %27, ptr noundef %28)
          to label %29 unwind label %42, !prof !139

29:                                               ; preds = %23
  %30 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %0, align 8, !tbaa !85
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef 1)
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %31, i64 0, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !93
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %33, i64 %36
  store ptr %26, ptr %37, align 8, !tbaa !98
  %38 = add i32 %35, 1
  store i32 %38, ptr %34, align 4, !tbaa !93
  %39 = load ptr, ptr %30, align 8, !tbaa !81
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef %24, i32 noundef %2, ptr noundef nonnull %26)
  %40 = add nuw i32 %18, 1
  %41 = icmp eq i32 %40, %11
  br i1 %41, label %16, label %17, !prof !139, !llvm.loop !212

42:                                               ; preds = %23
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #12
  resume { ptr, i32 } %43
}

declare void @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 !prof !184 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !118
  %8 = shl i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !119
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12, !prof !139

12:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  br label %13

13:                                               ; preds = %12, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %14 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16, !prof !139

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !116, !range !137, !noundef !138
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !140
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %21) #12
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %21) #12
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %3, ptr %14, align 8, !tbaa !140
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !213
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %14, i64 0, i32 3
  store i32 %2, ptr %26, align 8, !tbaa !214
  br label %44

27:                                               ; preds = %13
  %28 = load ptr, ptr %0, align 8, !tbaa !114
  %29 = load ptr, ptr %28, align 8, !tbaa !86
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %28, i64 noundef 32), !prof !215
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !117
  %35 = load i32, ptr %5, align 4, !tbaa !216
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !98
  store ptr %3, ptr %32, align 8, !tbaa !140
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %32, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !135
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !213
  %41 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %32, i64 0, i32 3
  store i32 %2, ptr %41, align 8, !tbaa !214
  store ptr %32, ptr %37, align 8, !tbaa !98
  %42 = load i32, ptr %9, align 4, !tbaa !119
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 4, !tbaa !119
  br label %44

44:                                               ; preds = %27, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !192 {
  %4 = alloca i32, align 4
  %5 = load ptr, ptr %1, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef signext i16 %7(ptr noundef nonnull align 8 dereferenceable(52) %1), !prof !217
  %9 = icmp eq i16 %8, 2
  br i1 %9, label %43, label %10, !prof !218

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %13 = call noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !218

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !140
  br label %17

17:                                               ; preds = %10, %15
  %18 = phi ptr [ %16, %15 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %19 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull %1)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23, !prof !150

23:                                               ; preds = %17
  call void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80) %21, ptr noundef %18)
  br label %43

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !75
  %27 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %26)
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStoreCache", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !211
  %30 = load ptr, ptr %25, align 8, !tbaa !75
  invoke void @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef nonnull %1, ptr noundef %29, ptr noundef %30)
          to label %31 unwind label %41, !prof !150

31:                                               ; preds = %24
  %32 = load ptr, ptr %0, align 8, !tbaa !85
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef 1)
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !95
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %32, i64 0, i32 2
  %36 = load i32, ptr %35, align 4, !tbaa !93
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds ptr, ptr %34, i64 %37
  store ptr %27, ptr %38, align 8, !tbaa !98
  %39 = add i32 %36, 1
  store i32 %39, ptr %35, align 4, !tbaa !93
  call void @_ZN11xercesc_2_710ValueStore6appendEPKS0_(ptr noundef nonnull align 8 dereferenceable(80) %27, ptr noundef %18)
  %40 = load ptr, ptr %19, align 8, !tbaa !83
  call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull %1, ptr noundef nonnull %27)
  br label %43

41:                                               ; preds = %24
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #12
  resume { ptr, i32 } %42

43:                                               ; preds = %23, %31, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !219 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !207
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !220

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !221
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !222
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  ret ptr %18
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #5 comdat align 2 !prof !226 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = load ptr, ptr %0, align 8, !tbaa !114
  %10 = load ptr, ptr %6, align 8, !tbaa !86
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef i32 %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, i32 noundef %8, ptr noundef %9), !prof !227
  store i32 %12, ptr %3, align 4, !tbaa !216
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !117
  %15 = zext i32 %12 to i64
  %16 = getelementptr inbounds ptr, ptr %14, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !98
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19, !prof !133

19:                                               ; preds = %4, %32
  %20 = phi ptr [ %34, %32 ], [ %17, %4 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !214
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %32, !prof !228

24:                                               ; preds = %19
  %25 = load ptr, ptr %5, align 8, !tbaa !120
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !213
  %28 = load ptr, ptr %25, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef %27), !prof !229
  br i1 %31, label %36, label %32, !prof !230

32:                                               ; preds = %24, %19
  %33 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !98
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %19, !prof !231, !llvm.loop !232

36:                                               ; preds = %24, %32, %4
  %37 = phi ptr [ null, %4 ], [ %20, %24 ], [ null, %32 ]
  ret ptr %37
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !124
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !194

5:                                                ; preds = %23, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !124
  ret void

7:                                                ; preds = %1, %23
  %8 = phi i64 [ %27, %23 ], [ 0, %1 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !122, !range !137, !noundef !138
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !126
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %16)
          to label %22 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #14
  unreachable

22:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #12
  br label %23

23:                                               ; preds = %12, %22, %7
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !126
  %26 = getelementptr inbounds ptr, ptr %25, i64 %8
  store ptr null, ptr %26, align 8, !tbaa !98
  %27 = add nuw nsw i64 %8, 1
  %28 = load i32, ptr %2, align 4, !tbaa !124
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %7, label %5, !prof !233, !llvm.loop !234
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !124
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !162

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !98
  %19 = add i32 %4, -1
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %38, label %21, !prof !162

21:                                               ; preds = %13
  %22 = icmp ugt i32 %19, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = zext i32 %1 to i64
  %25 = zext i32 %19 to i64
  br label %30

26:                                               ; preds = %30, %21
  %27 = load ptr, ptr %14, align 8, !tbaa !126
  %28 = zext i32 %19 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  br label %38

30:                                               ; preds = %23, %30
  %31 = phi i64 [ %24, %23 ], [ %33, %30 ]
  %32 = load ptr, ptr %14, align 8, !tbaa !126
  %33 = add nuw nsw i64 %31, 1
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !98
  %36 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr %35, ptr %36, align 8, !tbaa !98
  %37 = icmp eq i64 %33, %25
  br i1 %37, label %26, label %30, !llvm.loop !235

38:                                               ; preds = %13, %26
  %39 = phi ptr [ %29, %26 ], [ %17, %13 ]
  store ptr null, ptr %39, align 8, !tbaa !98
  store i32 %19, ptr %3, align 4, !tbaa !124
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #8 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !169
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !162

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !148
  store ptr %7, ptr %2, align 8, !tbaa !169
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !169
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !162

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !170
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !170
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !171
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !107
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !165

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = load i32, ptr %12, align 8, !tbaa !170
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !173

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !170
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !174, !llvm.loop !175

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !169
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !170
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !169
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !86
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !107
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !103
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %13 = load ptr, ptr %0, align 8, !tbaa !103
  store ptr %12, ptr %2, align 8, !tbaa !236
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !238
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !107
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = load ptr, ptr %2, align 8, !tbaa !236
  store ptr null, ptr %2, align 8, !tbaa !236
  store ptr %23, ptr %21, align 8, !tbaa !106
  store i32 %5, ptr %3, align 8, !tbaa !107
  %24 = load ptr, ptr %0, align 8, !tbaa !103
  %25 = load ptr, ptr %24, align 8, !tbaa !86
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !106
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !148
  %38 = load ptr, ptr %19, align 8, !tbaa !110
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !186
  %41 = load ptr, ptr %0, align 8, !tbaa !103
  %42 = load ptr, ptr %38, align 8, !tbaa !86
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  store ptr %48, ptr %36, align 8, !tbaa !148
  store ptr %35, ptr %47, align 8, !tbaa !98
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !239

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !107
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !240

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = load ptr, ptr %0, align 8, !tbaa !236
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !238
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #15
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !103
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = load ptr, ptr %2, align 8, !tbaa !86
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !180
  store ptr null, ptr %3, align 8, !tbaa !106
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !110
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !182

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12, !prof !196
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !122, !range !137, !noundef !138
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !82

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !124
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !194

9:                                                ; preds = %5, %21
  %10 = phi i64 [ %22, %21 ], [ 0, %5 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !98
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
          to label %20 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #14
  unreachable

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %14) #12
  br label %21

21:                                               ; preds = %9, %20
  %22 = add nuw nsw i64 %10, 1
  %23 = load i32, ptr %6, align 4, !tbaa !124
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %9, label %26, !prof !233, !llvm.loop !241

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !127
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !126
  %31 = load ptr, ptr %28, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !180

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE12setElementAtEPS3_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !124
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !122, !range !137, !noundef !138
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !126
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %23)
          to label %29 unwind label %26

26:                                               ; preds = %25
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #14
  unreachable

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #12
  br label %30

30:                                               ; preds = %18, %29, %14
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !126
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  store ptr %1, ptr %34, align 8, !tbaa !98
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !124
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !122, !range !137, !noundef !138
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %22)
          to label %28 unwind label %25

25:                                               ; preds = %24
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #14
  unreachable

28:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #12
  br label %29

29:                                               ; preds = %17, %28, %13
  %30 = load i32, ptr %3, align 4, !tbaa !124
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %47, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %35, label %47

35:                                               ; preds = %33
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %37 = zext i32 %1 to i64
  %38 = zext i32 %31 to i64
  br label %39

39:                                               ; preds = %35, %39
  %40 = phi i64 [ %37, %35 ], [ %42, %39 ]
  %41 = load ptr, ptr %36, align 8, !tbaa !126
  %42 = add nuw nsw i64 %40, 1
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !98
  %45 = getelementptr inbounds ptr, ptr %41, i64 %40
  store ptr %44, ptr %45, align 8, !tbaa !98
  %46 = icmp eq i64 %42, %38
  br i1 %46, label %47, label %39, !llvm.loop !242

47:                                               ; preds = %39, %33, %29
  %48 = phi i32 [ %1, %29 ], [ %31, %33 ], [ %31, %39 ]
  %49 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !126
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  store ptr null, ptr %52, align 8, !tbaa !98
  store i32 %31, ptr %3, align 4, !tbaa !124
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !124
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !124
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !122, !range !137, !noundef !138
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !126
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %21 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #14
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #12
  br label %22

22:                                               ; preds = %10, %21, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !122, !range !137, !noundef !138
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !124
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi i64 [ 0, %9 ], [ %23, %22 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !126
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %15)
          to label %21 unwind label %18

18:                                               ; preds = %17
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #14
  unreachable

21:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #12
  br label %22

22:                                               ; preds = %11, %21
  %23 = add nuw nsw i64 %12, 1
  %24 = load i32, ptr %6, align 4, !tbaa !124
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %11, label %27, !llvm.loop !243

27:                                               ; preds = %22, %5, %1
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !127
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !126
  %32 = load ptr, ptr %29, align 8, !tbaa !86
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_10ValueStoreEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !86
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !89, !range !137, !noundef !138
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5, !prof !82

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9, !prof !111

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !95
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !244

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !93
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !prof !245, !llvm.loop !246

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = load ptr, ptr %25, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
          to label %31 unwind label %32, !prof !180

31:                                               ; preds = %23
  ret void

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !74 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 116, ptr noundef %10)
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
  %16 = load i8, ptr %15, align 8, !tbaa !89, !range !137, !noundef !138
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !98
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %23) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %23) #12
  br label %26

26:                                               ; preds = %18, %25, %14
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !95
  %29 = zext i32 %2 to i64
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  store ptr %1, ptr %30, align 8, !tbaa !98
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !194

5:                                                ; preds = %19, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !93
  ret void

7:                                                ; preds = %1, %19
  %8 = phi i64 [ %23, %19 ], [ 0, %1 ]
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !89, !range !137, !noundef !138
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  %16 = load ptr, ptr %15, align 8, !tbaa !98
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %16) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %16) #12
  br label %19

19:                                               ; preds = %12, %18, %7
  %20 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  %22 = getelementptr inbounds ptr, ptr %21, i64 %8
  store ptr null, ptr %22, align 8, !tbaa !98
  %23 = add nuw nsw i64 %8, 1
  %24 = load i32, ptr %2, align 4, !tbaa !93
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %7, label %5, !prof !233, !llvm.loop !247
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 116, ptr noundef %9)
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
  %15 = load i8, ptr %14, align 8, !tbaa !89, !range !137, !noundef !138
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !95
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %22) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #12
  br label %25

25:                                               ; preds = %17, %24, %13
  %26 = load i32, ptr %3, align 4, !tbaa !93
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
  %37 = load ptr, ptr %32, align 8, !tbaa !95
  %38 = add nuw nsw i64 %36, 1
  %39 = getelementptr inbounds ptr, ptr %37, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !98
  %41 = getelementptr inbounds ptr, ptr %37, i64 %36
  store ptr %40, ptr %41, align 8, !tbaa !98
  %42 = icmp eq i64 %38, %34
  br i1 %42, label %43, label %35, !llvm.loop !248

43:                                               ; preds = %35, %29, %25
  %44 = phi i32 [ %1, %25 ], [ %27, %29 ], [ %27, %35 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !95
  %47 = zext i32 %44 to i64
  %48 = getelementptr inbounds ptr, ptr %46, i64 %47
  store ptr null, ptr %48, align 8, !tbaa !98
  store i32 %27, ptr %3, align 4, !tbaa !93
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !93
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !89, !range !137, !noundef !138
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !89, !range !137, !noundef !138
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %18
  %12 = phi i64 [ 0, %9 ], [ %19, %18 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !95
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710ValueStoreD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %11, %17
  %19 = add nuw nsw i64 %12, 1
  %20 = load i32, ptr %6, align 4, !tbaa !93
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %11, label %23, !llvm.loop !249

23:                                               ; preds = %18, %5, %1
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !95
  %28 = load ptr, ptr %25, align 8, !tbaa !86
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !250 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !251

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !86
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16), !prof !97
  %21 = load i32, ptr %3, align 4, !tbaa !93
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23, !prof !111

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
  br i1 %30, label %31, label %48, !prof !252

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !98
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !95
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !98
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !98
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !prof !253, !llvm.loop !254

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !96
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !95
  %52 = load ptr, ptr %49, align 8, !tbaa !86
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51), !prof !180
  store ptr %20, ptr %50, align 8, !tbaa !95
  store i32 %12, ptr %6, align 8, !tbaa !94
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.4", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !118
  %5 = shl i32 %4, 3
  %6 = or disjoint i32 %5, 1
  %7 = load ptr, ptr %0, align 8, !tbaa !114
  %8 = zext i32 %6 to i64
  %9 = shl nuw nsw i64 %8, 3
  %10 = load ptr, ptr %7, align 8, !tbaa !86
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef %9)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  %14 = load ptr, ptr %0, align 8, !tbaa !114
  store ptr %13, ptr %2, align 8, !tbaa !255
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %2, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !257
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %9, i1 false)
  %16 = load i32, ptr %3, align 8, !tbaa !118
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  br label %29

21:                                               ; preds = %53, %1
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !117
  %24 = load ptr, ptr %2, align 8, !tbaa !255
  store ptr null, ptr %2, align 8, !tbaa !255
  store ptr %24, ptr %22, align 8, !tbaa !117
  store i32 %6, ptr %3, align 8, !tbaa !118
  %25 = load ptr, ptr %0, align 8, !tbaa !114
  %26 = load ptr, ptr %25, align 8, !tbaa !86
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %23)
          to label %58 unwind label %59

29:                                               ; preds = %18, %53
  %30 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %31 = load ptr, ptr %19, align 8, !tbaa !117
  %32 = getelementptr inbounds ptr, ptr %31, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  %34 = icmp eq ptr %33, null
  br i1 %34, label %53, label %35

35:                                               ; preds = %29, %46
  %36 = phi ptr [ %38, %46 ], [ %33, %29 ]
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !135
  %39 = load ptr, ptr %20, align 8, !tbaa !120
  %40 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !213
  %42 = load ptr, ptr %0, align 8, !tbaa !114
  %43 = load ptr, ptr %39, align 8, !tbaa !86
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %41, i32 noundef %6, ptr noundef %42)
          to label %46 unwind label %51

46:                                               ; preds = %35
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds ptr, ptr %13, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !98
  store ptr %49, ptr %37, align 8, !tbaa !135
  store ptr %36, ptr %48, align 8, !tbaa !98
  %50 = icmp eq ptr %38, null
  br i1 %50, label %53, label %35, !llvm.loop !258

51:                                               ; preds = %35
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %61

53:                                               ; preds = %46, %29
  %54 = add nuw nsw i64 %30, 1
  %55 = load i32, ptr %3, align 8, !tbaa !118
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %29, label %21, !llvm.loop !259

58:                                               ; preds = %21
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void

59:                                               ; preds = %21
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %61

61:                                               ; preds = %59, %51
  %62 = phi { ptr, i32 } [ %52, %51 ], [ %60, %59 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  resume { ptr, i32 } %62
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = load ptr, ptr %0, align 8, !tbaa !255
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.4", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !257
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !86
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #15
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #14
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind memory(none) }
attributes #4 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!73}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72}
!35 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, i64 3}
!36 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev, i64 3}
!37 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 9}
!38 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEED2Ev, i64 3}
!40 = !{ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev, i64 3}
!41 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 18}
!42 = !{ptr @_ZN11xercesc_2_715ValueStoreCache4initEv, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 6}
!43 = !{ptr @_ZN11xercesc_2_715ValueStoreCacheD2Ev, ptr @_ZN11xercesc_2_715ValueStoreCache7cleanUpEv, i64 3}
!44 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!45 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!46 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE17removeAllElementsEv, i64 3}
!47 = !{ptr @_ZN11xercesc_2_715ValueStoreCache13startDocumentEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE17removeAllElementsEv, i64 3}
!48 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1665822}
!49 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 832911}
!50 = !{ptr @_ZN11xercesc_2_715ValueStoreCache12startElementEv, ptr @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEE15orphanElementAtEj, i64 832911}
!52 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @__clang_call_terminate, i64 1}
!53 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10endElementEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 832910}
!54 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!55 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEE9elementAtEj, i64 16}
!56 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 16}
!57 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, i64 16}
!58 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj, i64 16}
!59 = !{ptr @_ZN11xercesc_2_715ValueStoreCache18initValueStoresForEPNS_17SchemaElementDeclEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_, i64 16}
!60 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE3putEPviPS1_, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 16}
!61 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEE14findBucketElemEPKviRj, i64 4}
!62 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3getEPKv, i64 4}
!63 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 4}
!64 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStoreC1EPNS_18IdentityConstraintEPNS_10XMLScannerEPNS_13MemoryManagerE, i64 4}
!65 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEE19ensureExtraCapacityEj, i64 4}
!66 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_710ValueStore6appendEPKS0_, i64 4}
!67 = !{ptr @_ZN11xercesc_2_715ValueStoreCache10transplantEPNS_18IdentityConstraintEi, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE3putEPvPS1_, i64 4}
!68 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_10ValueStoreEE9removeAllEv, i64 3}
!69 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_710ValueStoreD1Ev, i64 20}
!70 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 20}
!71 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED2Ev, i64 3}
!72 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_10ValueStoreEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!73 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!74 = !{!"function_entry_count", i64 3}
!75 = !{!76, !77, i64 40}
!76 = !{!"_ZTSN11xercesc_2_715ValueStoreCacheE", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C++ TBAA"}
!80 = !{!"branch_weights", i32 3, i32 0}
!81 = !{!76, !77, i64 16}
!82 = !{!"branch_weights", i32 0, i32 3}
!83 = !{!76, !77, i64 8}
!84 = !{!76, !77, i64 24}
!85 = !{!76, !77, i64 0}
!86 = !{!87, !87, i64 0}
!87 = !{!"vtable pointer", !79, i64 0}
!88 = !{!"VP", i32 0, i64 3, i64 6033754907854041468, i64 3}
!89 = !{!90, !91, i64 8}
!90 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_10ValueStoreEEE", !91, i64 8, !92, i64 12, !92, i64 16, !77, i64 24, !77, i64 32}
!91 = !{!"bool", !78, i64 0}
!92 = !{!"int", !78, i64 0}
!93 = !{!90, !92, i64 12}
!94 = !{!90, !92, i64 16}
!95 = !{!90, !77, i64 24}
!96 = !{!90, !77, i64 32}
!97 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!98 = !{!77, !77, i64 0}
!99 = !{!"branch_weights", i32 3, i32 21}
!100 = distinct !{!100, !101, !102}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = !{!104, !77, i64 0}
!104 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_10ValueStoreEEE", !77, i64 0, !91, i64 8, !77, i64 16, !92, i64 24, !92, i64 28, !92, i64 32, !77, i64 40}
!105 = !{!104, !91, i64 8}
!106 = !{!104, !77, i64 16}
!107 = !{!104, !92, i64 24}
!108 = !{!104, !92, i64 28}
!109 = !{!104, !92, i64 32}
!110 = !{!104, !77, i64 40}
!111 = !{!"branch_weights", i32 1, i32 191}
!112 = !{!"branch_weights", i32 191, i32 2305}
!113 = distinct !{!113, !101, !102}
!114 = !{!115, !77, i64 0}
!115 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_10ValueStoreEEE", !77, i64 0, !91, i64 8, !77, i64 16, !92, i64 24, !92, i64 28, !77, i64 32}
!116 = !{!115, !91, i64 8}
!117 = !{!115, !77, i64 16}
!118 = !{!115, !92, i64 24}
!119 = !{!115, !92, i64 28}
!120 = !{!115, !77, i64 32}
!121 = distinct !{!121, !101, !102}
!122 = !{!123, !91, i64 8}
!123 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14RefHashTableOfINS_10ValueStoreEEEEE", !91, i64 8, !92, i64 12, !92, i64 16, !77, i64 24, !77, i64 32}
!124 = !{!123, !92, i64 12}
!125 = !{!123, !92, i64 16}
!126 = !{!123, !77, i64 24}
!127 = !{!123, !77, i64 32}
!128 = distinct !{!128, !101, !102}
!129 = !{!"function_entry_count", i64 0}
!130 = !{!"VP", i32 0, i64 3, i64 3442879727845388312, i64 3}
!131 = !{!"function_entry_count", i64 6}
!132 = !{!"branch_weights", i32 5, i32 1}
!133 = !{!"branch_weights", i32 1, i32 127}
!134 = !{!"branch_weights", i32 1, i32 207}
!135 = !{!136, !77, i64 8}
!136 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_10ValueStoreEEE", !77, i64 0, !77, i64 8, !77, i64 16, !92, i64 24}
!137 = !{i8 0, i8 2}
!138 = !{}
!139 = !{!"branch_weights", i32 16, i32 0}
!140 = !{!136, !77, i64 0}
!141 = !{!"VP", i32 0, i64 16, i64 -7405368087501025645, i64 16}
!142 = !{!"branch_weights", i32 207, i32 49}
!143 = distinct !{!143, !101, !102}
!144 = !{!"branch_weights", i32 1537, i32 127}
!145 = distinct !{!145, !101, !102}
!146 = !{!"branch_weights", i32 832916, i32 1}
!147 = !{!"branch_weights", i32 9, i32 4}
!148 = !{!149, !77, i64 8}
!149 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_10ValueStoreEEE", !77, i64 0, !77, i64 8, !77, i64 16}
!150 = !{!"branch_weights", i32 4, i32 0}
!151 = !{!149, !77, i64 0}
!152 = !{!"VP", i32 0, i64 0, i64 -7405368087501025645, i64 0}
!153 = distinct !{!153, !101, !102}
!154 = distinct !{!154, !101, !102}
!155 = !{!"function_entry_count", i64 832911}
!156 = !{!"branch_weights", i32 1, i32 832910}
!157 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!158 = !{!"branch_weights", i32 127, i32 1}
!159 = !{!"branch_weights", i32 127, i32 897}
!160 = distinct !{!160, !101, !102}
!161 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!162 = !{!"branch_weights", i32 832911, i32 0}
!163 = !{!"VP", i32 0, i64 832911, i64 8345045103670217670, i64 832911}
!164 = !{!"branch_weights", i32 832910, i32 9994933}
!165 = !{!"branch_weights", i32 0, i32 832911}
!166 = !{!167, !91, i64 8}
!167 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_10ValueStoreEEE", !168, i64 0, !91, i64 8, !77, i64 16, !92, i64 24, !77, i64 32, !77, i64 40}
!168 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_10ValueStoreEEE"}
!169 = !{!167, !77, i64 16}
!170 = !{!167, !92, i64 24}
!171 = !{!167, !77, i64 32}
!172 = !{!167, !77, i64 40}
!173 = !{!"branch_weights", i32 10827843, i32 0}
!174 = !{!"branch_weights", i32 832911, i32 9994932}
!175 = distinct !{!175, !101, !102}
!176 = !{!177, !77, i64 8}
!177 = !{!"_ZTSN11xercesc_2_710ValueStoreE", !91, i64 0, !92, i64 4, !77, i64 8, !178, i64 16, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72}
!178 = !{!"_ZTSN11xercesc_2_713FieldValueMapE", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!179 = distinct !{!179, !101, !102}
!180 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!181 = !{!"VP", i32 0, i64 832911, i64 -7405368087501025645, i64 832911}
!182 = !{!"branch_weights", i32 0, i32 832914}
!183 = !{!"VP", i32 0, i64 832911, i64 -1480571424701097013, i64 832911}
!184 = !{!"function_entry_count", i64 16}
!185 = !{!"VP", i32 0, i64 16, i64 4592451362407133634, i64 16}
!186 = !{!149, !77, i64 16}
!187 = !{!"VP", i32 0, i64 12, i64 2119983950972065349, i64 12}
!188 = !{!"branch_weights", i32 12, i32 0}
!189 = !{!"branch_weights", i32 127, i32 257}
!190 = distinct !{!190, !101, !102}
!191 = !{!"branch_weights", i32 4, i32 12}
!192 = !{!"function_entry_count", i64 4}
!193 = !{!"VP", i32 0, i64 4, i64 4592451362407133634, i64 4}
!194 = !{!"branch_weights", i32 1, i32 0}
!195 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!196 = !{!"VP", i32 0, i64 3, i64 -1480571424701097013, i64 3}
!197 = !{!198, !77, i64 112}
!198 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !199, i64 0, !202, i64 36, !203, i64 40, !204, i64 44, !205, i64 48, !92, i64 52, !92, i64 56, !92, i64 60, !92, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !91, i64 144, !91, i64 145, !91, i64 146}
!199 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !200, i64 0, !77, i64 8, !77, i64 16, !201, i64 24, !92, i64 28, !91, i64 32}
!200 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!201 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !78, i64 0}
!202 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !78, i64 0}
!203 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !78, i64 0}
!204 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !78, i64 0}
!205 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !78, i64 0}
!206 = !{!"branch_weights", i32 832910, i32 1}
!207 = !{!208, !92, i64 12}
!208 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_18IdentityConstraintEEE", !91, i64 8, !92, i64 12, !92, i64 16, !77, i64 24, !77, i64 32}
!209 = !{!"branch_weights", i32 832895, i32 16}
!210 = !{!"branch_weights", i32 0, i32 16}
!211 = !{!76, !77, i64 32}
!212 = distinct !{!212, !101, !102}
!213 = !{!136, !77, i64 16}
!214 = !{!136, !92, i64 24}
!215 = !{!"VP", i32 0, i64 16, i64 8345045103670217670, i64 16}
!216 = !{!92, !92, i64 0}
!217 = !{!"VP", i32 0, i64 4, i64 4362298837943119911, i64 4}
!218 = !{!"branch_weights", i32 0, i32 4}
!219 = !{!"function_entry_count", i64 32}
!220 = !{!"branch_weights", i32 32, i32 0}
!221 = !{!208, !77, i64 32}
!222 = !{!208, !77, i64 24}
!223 = !{!224, !77, i64 40}
!224 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !225, i64 8, !77, i64 16, !92, i64 24, !77, i64 32, !77, i64 40}
!225 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !78, i64 0}
!226 = !{!"function_entry_count", i64 475811}
!227 = !{!"VP", i32 0, i64 475811, i64 4592451362407133634, i64 475811}
!228 = !{!"branch_weights", i32 947745, i32 0}
!229 = !{!"VP", i32 0, i64 947745, i64 2119983950972065349, i64 947745}
!230 = !{!"branch_weights", i32 475795, i32 471950}
!231 = !{!"branch_weights", i32 127, i32 7581833}
!232 = distinct !{!232, !101, !102}
!233 = !{!"branch_weights", i32 0, i32 1}
!234 = distinct !{!234, !101, !102}
!235 = distinct !{!235, !101, !102}
!236 = !{!237, !77, i64 0}
!237 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_10ValueStoreEEEEE", !77, i64 0, !77, i64 8}
!238 = !{!237, !77, i64 8}
!239 = distinct !{!239, !101, !102}
!240 = distinct !{!240, !101, !102}
!241 = distinct !{!241, !101, !102}
!242 = distinct !{!242, !101, !102}
!243 = distinct !{!243, !101, !102}
!244 = !{!"branch_weights", i32 0, i32 20}
!245 = !{!"branch_weights", i32 1089, i32 191}
!246 = distinct !{!246, !101, !102}
!247 = distinct !{!247, !101, !102}
!248 = distinct !{!248, !101, !102}
!249 = distinct !{!249, !101, !102}
!250 = !{!"function_entry_count", i64 20}
!251 = !{!"branch_weights", i32 3, i32 17}
!252 = !{!"branch_weights", i32 191, i32 1}
!253 = !{!"branch_weights", i32 191, i32 2241}
!254 = distinct !{!254, !101, !102}
!255 = !{!256, !77, i64 0}
!256 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_27RefHash2KeysTableBucketElemINS_10ValueStoreEEEEE", !77, i64 0, !77, i64 8}
!257 = !{!256, !77, i64 8}
!258 = distinct !{!258, !101, !102}
!259 = distinct !{!259, !101, !102}
