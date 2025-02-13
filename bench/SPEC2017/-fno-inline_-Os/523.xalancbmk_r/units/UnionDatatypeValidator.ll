; ModuleID = 'UnionDatatypeValidator.cpp'
source_filename = "UnionDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::UnionDatatypeValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::RefHashTableOfEnumerator" = type { %"class.xercesc_2_7::XMLEnumerator", i8, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLEnumerator" = type { ptr }
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator7cleanUpEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEED2Ev = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator14setEnumerationEPNS_16RefArrayVectorOfItEEb = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv = comdat any

$_ZN11xercesc_2_712KVStringPair6getKeyEv = comdat any

$_ZN11xercesc_2_712KVStringPair8getValueEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_717DatatypeValidator10setPatternEPKt = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getPatternEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getRegexEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_720NullPointerExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720NullPointerException7getTypeEv = comdat any

$_ZNK11xercesc_2_720NullPointerException9duplicateEv = comdat any

$_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTIN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTVN11xercesc_2_720NullPointerExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZTVN11xercesc_2_722UnionDatatypeValidatorE = dso_local unnamed_addr constant { [15 x ptr] } { [15 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UnionDatatypeValidatorE, ptr @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_722UnionDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_722UnionDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_722UnionDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_722UnionDatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_722UnionDatatypeValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_722UnionDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_722UnionDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722UnionDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE, ptr @_ZN11xercesc_2_722UnionDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722UnionDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722UnionDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE] }, align 8
@.str = private unnamed_addr constant [27 x i8] c"UnionDatatypeValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeFacetExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [23 x i8] c"UnionDatatypeValidator\00", align 1
@_ZN11xercesc_2_722UnionDatatypeValidator27classUnionDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_722UnionDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722UnionDatatypeValidatorE = dso_local constant [40 x i8] c"N11xercesc_2_722UnionDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_717DatatypeValidatorE = external constant ptr
@_ZTIN11xercesc_2_722UnionDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UnionDatatypeValidatorE, ptr @_ZTIN11xercesc_2_717DatatypeValidatorE }, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv] }, comdat, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720NullPointerExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720NullPointerExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant [62 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_720NullPointerExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720NullPointerExceptionD0Ev, ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv, ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_722UnionDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_722UnionDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev
@_ZN11xercesc_2_722UnionDatatypeValidatorC1EPNS_11RefVectorOfINS_17DatatypeValidatorEEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_11RefVectorOfINS_17DatatypeValidatorEEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_722UnionDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr, ptr, i1), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #3 align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 25, ptr noundef %1) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 1, !tbaa !72
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  tail call void @_ZN11xercesc_2_722UnionDatatypeValidator7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  tail call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !61, !range !73, !noundef !74
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !75
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !58
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !72, !range !73, !noundef !74
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !58
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #14
  br label %25

25:                                               ; preds = %21, %17, %13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 align 2 {
  tail call void @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_11RefVectorOfINS_17DatatypeValidatorEEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null, ptr noundef null, i32 noundef %2, i32 noundef 25, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !61
  %6 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  store i8 0, ptr %6, align 1, !tbaa !72
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 235, ptr noundef %3) #13
          to label %11 unwind label %12

11:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %20 unwind label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #11
  br label %18

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !76
  ret void

18:                                               ; preds = %14, %12
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %9 = alloca [65 x i16], align 16
  %10 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %11 = zext i1 %7 to i8
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 25, ptr noundef %5) #13
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %12 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  store i8 0, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  store i8 %11, ptr %13, align 1, !tbaa !72
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !75
  %15 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  store ptr %6, ptr %15, align 8, !tbaa !76
  %16 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  store ptr null, ptr %16, align 8, !tbaa !77
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %8
  %19 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 236, ptr noundef %5) #13
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %71 unwind label %25

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  tail call void @__cxa_free_exception(ptr %19) #11
  br label %63

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  br label %63

29:                                               ; preds = %8
  %30 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %31 = icmp eq i32 %30, 25
  br i1 %31, label %45, label %32

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #11
  %33 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %33, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %5) #13
          to label %34 unwind label %37

34:                                               ; preds = %32
  %35 = call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 237, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5) #13
          to label %36 unwind label %39

36:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %71 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #11
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %38, %37 ], [ %40, %39 ]
  %43 = extractvalue { ptr, i32 } %42, 0
  %44 = extractvalue { ptr, i32 } %42, 1
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #11
  br label %63

45:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_722UnionDatatypeValidator7cleanUpEv to i64), i64 0) #13
  invoke void @_ZN11xercesc_2_722UnionDatatypeValidator4initEPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %5) #13
          to label %59 unwind label %46

46:                                               ; preds = %45
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %48 = extractvalue { ptr, i32 } %47, 0
  %49 = extractvalue { ptr, i32 } %47, 1
  %50 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = call ptr @__cxa_begin_catch(ptr %48) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #13
  invoke void @__cxa_rethrow() #15
          to label %71 unwind label %54

54:                                               ; preds = %52
  %55 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %56 unwind label %68

56:                                               ; preds = %54
  %57 = extractvalue { ptr, i32 } %55, 1
  %58 = extractvalue { ptr, i32 } %55, 0
  br label %60

59:                                               ; preds = %45
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %10) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  ret void

60:                                               ; preds = %56, %46
  %61 = phi i32 [ %57, %56 ], [ %49, %46 ]
  %62 = phi ptr [ %58, %56 ], [ %48, %46 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %10) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  br label %63

63:                                               ; preds = %60, %41, %25, %21
  %64 = phi i32 [ %44, %41 ], [ %61, %60 ], [ %28, %25 ], [ %24, %21 ]
  %65 = phi ptr [ %43, %41 ], [ %62, %60 ], [ %27, %25 ], [ %23, %21 ]
  call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  %66 = insertvalue { ptr, i32 } poison, ptr %65, 0
  %67 = insertvalue { ptr, i32 } %66, i32 %64, 1
  resume { ptr, i32 } %67

68:                                               ; preds = %54
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #12
  unreachable

71:                                               ; preds = %52, %36, %20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !79
  ret i32 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #5 comdat align 2 !prof !57 {
  store ptr %1, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !82
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator4initEPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %6 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %7 = alloca %"class.xercesc_2_7::KVStringPair", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_722UnionDatatypeValidator14setEnumerationEPNS_16RefArrayVectorOfItEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %3, i1 noundef zeroext false) #13
  br label %10

10:                                               ; preds = %9, %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #11
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull %2, i1 noundef zeroext false, ptr noundef %4) #13
  %13 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  br i1 %13, label %14, label %43

14:                                               ; preds = %12, %37
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #11
  %15 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
          to label %16 unwind label %26

16:                                               ; preds = %14
  invoke void @_ZN11xercesc_2_712KVStringPairC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %15) #13
          to label %17 unwind label %26

17:                                               ; preds = %16
  %18 = call noundef ptr @_ZN11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %19 = call noundef ptr @_ZN11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  %20 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %18, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE) #13
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  invoke void @_ZN11xercesc_2_717DatatypeValidator10setPatternEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %19) #13
          to label %22 unwind label %28

22:                                               ; preds = %21
  %23 = call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %24 = icmp eq ptr %23, null
  br i1 %24, label %37, label %25

25:                                               ; preds = %22
  call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 8) #13
  br label %37

26:                                               ; preds = %16, %14
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %41

28:                                               ; preds = %21
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %39

30:                                               ; preds = %34
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %39

32:                                               ; preds = %17
  %33 = call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 171, ptr noundef %18, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #13
          to label %34 unwind label %35

34:                                               ; preds = %32
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %101 unwind label %30

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %33) #11
  br label %39

37:                                               ; preds = %22, %25
  call void @_ZN11xercesc_2_712KVStringPairD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  %38 = call noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  br i1 %38, label %14, label %43, !llvm.loop !83

39:                                               ; preds = %28, %30, %35
  %40 = phi { ptr, i32 } [ %36, %35 ], [ %29, %28 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_712KVStringPairD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  br label %41

41:                                               ; preds = %39, %26
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #11
  br label %85

43:                                               ; preds = %37, %12
  %44 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %84, label %47

47:                                               ; preds = %43
  %48 = call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %49 = icmp eq ptr %48, null
  br i1 %49, label %84, label %50

50:                                               ; preds = %47
  %51 = call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %52 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %51) #13
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %84

54:                                               ; preds = %50, %62
  %55 = phi i32 [ %63, %62 ], [ 0, %50 ]
  %56 = call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %57 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %56, i32 noundef %55) #13
          to label %58 unwind label %65

58:                                               ; preds = %54
  %59 = load ptr, ptr %1, align 8, !tbaa !58
  %60 = getelementptr inbounds ptr, ptr %59, i64 8
  %61 = load ptr, ptr %60, align 8
  invoke void %61(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %57, ptr noundef null, ptr noundef %4) #13
          to label %62 unwind label %65

62:                                               ; preds = %58
  %63 = add nuw nsw i32 %55, 1
  %64 = icmp eq i32 %63, %52
  br i1 %64, label %84, label %54, !llvm.loop !85

65:                                               ; preds = %58, %54
  %66 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %67 = extractvalue { ptr, i32 } %66, 1
  %68 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = extractvalue { ptr, i32 } %66, 0
  %72 = call ptr @__cxa_begin_catch(ptr %71) #11
  %73 = call ptr @__cxa_allocate_exception(i64 48) #11
  %74 = call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %75 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %74, i32 noundef %55) #13
          to label %76 unwind label %78

76:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %73, ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 181, ptr noundef %75, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #13
          to label %77 unwind label %78

77:                                               ; preds = %76
  invoke void @__cxa_throw(ptr nonnull %73, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %101 unwind label %80

78:                                               ; preds = %76, %70
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %73) #11
  br label %82

80:                                               ; preds = %77
  %81 = landingpad { ptr, i32 }
          cleanup
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ]
  invoke void @__cxa_end_catch()
          to label %85 unwind label %98

84:                                               ; preds = %62, %50, %47, %43
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  br label %87

85:                                               ; preds = %82, %65, %41
  %86 = phi { ptr, i32 } [ %42, %41 ], [ %66, %65 ], [ %83, %82 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #11
  resume { ptr, i32 } %86

87:                                               ; preds = %84, %10
  %88 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %1) #13
  %89 = and i32 %88, 16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %93 = and i32 %92, 16
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %1) #13
  call void @_ZN11xercesc_2_722UnionDatatypeValidator14setEnumerationEPNS_16RefArrayVectorOfItEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %96, i1 noundef zeroext true) #13
  br label %97

97:                                               ; preds = %95, %91, %87
  ret void

98:                                               ; preds = %82
  %99 = landingpad { ptr, i32 }
          catch ptr null
  %100 = extractvalue { ptr, i32 } %99, 0
  call void @__clang_call_terminate(ptr %100) #12
  unreachable

101:                                              ; preds = %77, %34
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !82
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !82
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !58
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !74
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(136) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator14setEnumerationEPNS_16RefArrayVectorOfItEEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 !prof !57 {
  %4 = zext i1 %2 to i8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !61, !range !73, !noundef !74
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !75
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !58
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(40) %12) #14
  br label %18

18:                                               ; preds = %14, %10, %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  store ptr %1, ptr %19, align 8, !tbaa !75
  store i8 %4, ptr %7, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 16) #13
  br label %20

20:                                               ; preds = %18, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !87
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !90
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %8, align 8, !tbaa !91
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %9, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !93
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %20, !prof !94

12:                                               ; preds = %4
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %14 = load ptr, ptr %10, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str.3, i32 noundef 527, i32 noundef 15, ptr noundef %14) #13
          to label %15 unwind label %18

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_720NullPointerExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %23 unwind label %16

16:                                               ; preds = %15
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %12
  %19 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #11
  br label %21

20:                                               ; preds = %4
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %17, %16 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  resume { ptr, i32 } %22

23:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !96

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !92
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !97
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13, !prof !99

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %5, label %13, label %6, !prof !101

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  ret ptr %16
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712KVStringPairC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair6getKeyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !100 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712KVStringPair8getValueEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !100 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !108 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !109

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !110
  %8 = load i16, ptr %1, align 2, !tbaa !110
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !111

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !112

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !110
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !113

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !114

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !110
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !115

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !116

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !110
  %28 = load i16, ptr %26, align 2, !tbaa !110
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !117, !llvm.loop !118

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setPatternEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !121

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4) #13
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %14 = load ptr, ptr %13, align 8, !tbaa !122
  %15 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %14) #13
  store ptr %15, ptr %3, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !123 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 !prof !124 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !125
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !125
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712KVStringPairD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !125
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !127 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !128
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !128
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !131

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !133
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !87, !range !73, !noundef !74
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !99

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !92
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %10

10:                                               ; preds = %5, %9, %1
  tail call void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !76
  %11 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %15 = icmp eq ptr %2, null
  br label %20

16:                                               ; preds = %5
  %17 = load ptr, ptr %6, align 8, !tbaa !58
  %18 = getelementptr inbounds ptr, ptr %17, i64 12
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4) #13
  br label %65

20:                                               ; preds = %13, %50
  %21 = phi i8 [ 0, %13 ], [ %51, %50 ]
  %22 = phi i32 [ 0, %13 ], [ %52, %50 ]
  %23 = load ptr, ptr %9, align 8, !tbaa !76
  %24 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %22) #13
          to label %25 unwind label %37

25:                                               ; preds = %20
  %26 = load ptr, ptr %24, align 8, !tbaa !58
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  invoke void %28(ptr noundef nonnull align 8 dereferenceable(104) %24, ptr noundef %1, ptr noundef %2, ptr noundef %4) #13
          to label %29 unwind label %37

29:                                               ; preds = %25
  %30 = load ptr, ptr %9, align 8, !tbaa !76
  %31 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %30, i32 noundef %22) #13
          to label %32 unwind label %39

32:                                               ; preds = %29
  store ptr %31, ptr %14, align 8, !tbaa !77
  br i1 %15, label %50, label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %2, align 8, !tbaa !58
  %35 = getelementptr inbounds ptr, ptr %34, i64 12
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %31) #13
          to label %50 unwind label %39

37:                                               ; preds = %25, %20
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %41

39:                                               ; preds = %33, %29
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  %43 = phi i8 [ 1, %39 ], [ %21, %37 ]
  %44 = extractvalue { ptr, i32 } %42, 1
  %45 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %163

47:                                               ; preds = %41
  %48 = extractvalue { ptr, i32 } %42, 0
  %49 = tail call ptr @__cxa_begin_catch(ptr %48) #11
  tail call void @__cxa_end_catch()
  br label %50

50:                                               ; preds = %32, %33, %47
  %51 = phi i8 [ %43, %47 ], [ 1, %33 ], [ 1, %32 ]
  %52 = add nuw i32 %22, 1
  %53 = load ptr, ptr %9, align 8, !tbaa !76
  %54 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %53) #13
  %55 = icmp ult i32 %52, %54
  %56 = and i8 %51, 1
  %57 = icmp eq i8 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  br i1 %58, label %20, label %59, !llvm.loop !135

59:                                               ; preds = %50
  br i1 %57, label %60, label %65

60:                                               ; preds = %8, %59
  %61 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 259, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #13
          to label %62 unwind label %63

62:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %160

65:                                               ; preds = %59, %16
  %66 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %110, label %69

69:                                               ; preds = %65
  %70 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %101

72:                                               ; preds = %69
  %73 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %74 = load ptr, ptr %73, align 8, !tbaa !122
  %75 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %74) #13
          to label %76 unwind label %80

76:                                               ; preds = %72
  %77 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %78 = load ptr, ptr %73, align 8, !tbaa !122
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %75, ptr noundef %77, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %78) #13
          to label %79 unwind label %82

79:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %75) #13
  br label %101

80:                                               ; preds = %72
  %81 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %84

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %75, ptr noundef %74) #14
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %81, %80 ]
  %86 = extractvalue { ptr, i32 } %85, 1
  %87 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %163

89:                                               ; preds = %84
  %90 = extractvalue { ptr, i32 } %85, 0
  %91 = tail call ptr @__cxa_begin_catch(ptr %90) #11
  %92 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %93 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %91) #13
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %92, ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 299, ptr noundef %93, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #13
          to label %94 unwind label %95

94:                                               ; preds = %89
  invoke void @__cxa_throw(ptr nonnull %92, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %168 unwind label %97

95:                                               ; preds = %89
  %96 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %92) #11
  br label %99

97:                                               ; preds = %94
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi { ptr, i32 } [ %98, %97 ], [ %96, %95 ]
  invoke void @__cxa_end_catch()
          to label %163 unwind label %165

101:                                              ; preds = %79, %69
  %102 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %103 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %102, ptr noundef %1, ptr noundef %4) #13
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %106 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 238, ptr noundef %1, ptr noundef %106, ptr noundef null, ptr noundef null, ptr noundef %4) #13
          to label %107 unwind label %108

107:                                              ; preds = %104
  tail call void @__cxa_throw(ptr nonnull %105, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

108:                                              ; preds = %104
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %160

110:                                              ; preds = %101, %65
  br i1 %3, label %159, label %111

111:                                              ; preds = %110
  %112 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %113 = and i32 %112, 16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %159, label %115

115:                                              ; preds = %111
  %116 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %117 = icmp eq ptr %116, null
  br i1 %117, label %159, label %118

118:                                              ; preds = %115
  %119 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %120 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %121 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %119) #13
  %122 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %120) #13
  %123 = icmp eq i32 %121, 0
  br i1 %123, label %154, label %124

124:                                              ; preds = %118
  %125 = icmp eq i32 %122, 0
  br label %126

126:                                              ; preds = %124, %151
  %127 = phi i32 [ 0, %124 ], [ %152, %151 ]
  br i1 %125, label %151, label %128

128:                                              ; preds = %126, %148
  %129 = phi i32 [ %149, %148 ], [ 0, %126 ]
  %130 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %119, i32 noundef %127) #13
          to label %131 unwind label %140

131:                                              ; preds = %128
  %132 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %120, i32 noundef %129) #13
          to label %133 unwind label %140

133:                                              ; preds = %131
  %134 = load ptr, ptr %130, align 8, !tbaa !58
  %135 = getelementptr inbounds ptr, ptr %134, i64 10
  %136 = load ptr, ptr %135, align 8
  %137 = invoke noundef i32 %136(ptr noundef nonnull align 8 dereferenceable(104) %130, ptr noundef %1, ptr noundef %132, ptr noundef %4) #13
          to label %138 unwind label %140

138:                                              ; preds = %133
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %159, label %148

140:                                              ; preds = %133, %131, %128
  %141 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %142 = extractvalue { ptr, i32 } %141, 1
  %143 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %140
  %146 = extractvalue { ptr, i32 } %141, 0
  %147 = tail call ptr @__cxa_begin_catch(ptr %146) #11
  tail call void @__cxa_end_catch()
  br label %148

148:                                              ; preds = %138, %145
  %149 = add nuw i32 %129, 1
  %150 = icmp eq i32 %149, %122
  br i1 %150, label %151, label %128, !llvm.loop !136

151:                                              ; preds = %148, %126
  %152 = add nuw i32 %127, 1
  %153 = icmp eq i32 %152, %121
  br i1 %153, label %154, label %126, !llvm.loop !137

154:                                              ; preds = %151, %118
  %155 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %155, ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #13
          to label %156 unwind label %157

156:                                              ; preds = %154
  tail call void @__cxa_throw(ptr nonnull %155, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

157:                                              ; preds = %154
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %160

159:                                              ; preds = %138, %111, %115, %110
  ret void

160:                                              ; preds = %108, %63, %157
  %161 = phi ptr [ %155, %157 ], [ %61, %63 ], [ %105, %108 ]
  %162 = phi { ptr, i32 } [ %158, %157 ], [ %64, %63 ], [ %109, %108 ]
  tail call void @__cxa_free_exception(ptr %161) #11
  br label %163

163:                                              ; preds = %41, %140, %160, %99, %84
  %164 = phi { ptr, i32 } [ %85, %84 ], [ %100, %99 ], [ %162, %160 ], [ %141, %140 ], [ %42, %41 ]
  resume { ptr, i32 } %164

165:                                              ; preds = %99
  %166 = landingpad { ptr, i32 }
          catch ptr null
  %167 = extractvalue { ptr, i32 } %166, 0
  tail call void @__clang_call_terminate(ptr %167) #12
  unreachable

168:                                              ; preds = %94
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !139
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !140
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !140
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #13
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !134
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !146 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !145
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !147
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722UnionDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 align 2 !prof !57 {
  %5 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator23getMemberTypeValidatorsEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef 0) #13
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds ptr, ptr %10, i64 10
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %8, %19
  %16 = phi i32 [ %17, %19 ], [ 0, %8 ]
  %17 = add nuw i32 %16, 1
  %18 = icmp eq i32 %17, %6
  br i1 %18, label %26, label %19, !llvm.loop !150

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %5, i32 noundef %17) #13
  %21 = load ptr, ptr %20, align 8, !tbaa !58
  %22 = getelementptr inbounds ptr, ptr %21, i64 10
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(104) %20, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %15, !llvm.loop !150

26:                                               ; preds = %19, %15
  %27 = icmp uge i32 %17, %6
  %28 = sext i1 %27 to i32
  br label %29

29:                                               ; preds = %8, %26, %4
  %30 = phi i32 [ -1, %4 ], [ 0, %8 ], [ %28, %26 ]
  ret i32 %30
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #5 align 2 !prof !57 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi ptr [ %7, %6 ], [ %2, %4 ]
  br i1 %3, label %10, label %18

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !58
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %9) #13
          to label %18 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #11
  tail call void @__cxa_end_catch()
  br label %60

18:                                               ; preds = %10, %8
  %19 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #13
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %27, %18
  %22 = phi ptr [ %0, %18 ], [ %28, %27 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %22, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  %25 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %24) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %60, label %31

27:                                               ; preds = %18, %27
  %28 = phi ptr [ %29, %27 ], [ %19, %18 ]
  %29 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %28) #13
  %30 = icmp eq ptr %29, null
  br i1 %30, label %21, label %27, !llvm.loop !151

31:                                               ; preds = %21, %52
  %32 = phi i32 [ %55, %52 ], [ 0, %21 ]
  %33 = load ptr, ptr %23, align 8, !tbaa !76
  %34 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef %32) #13
          to label %35 unwind label %47

35:                                               ; preds = %31
  %36 = load ptr, ptr %34, align 8, !tbaa !58
  %37 = getelementptr inbounds ptr, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef %1, ptr noundef null, ptr noundef %9) #13
          to label %39 unwind label %47

39:                                               ; preds = %35
  %40 = load ptr, ptr %23, align 8, !tbaa !76
  %41 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %40, i32 noundef %32) #13
          to label %42 unwind label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr %41, align 8, !tbaa !58
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(104) %41, ptr noundef %1, ptr noundef %9, i1 noundef zeroext false) #13
          to label %60 unwind label %47

47:                                               ; preds = %42, %39, %35, %31
  %48 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %49 = extractvalue { ptr, i32 } %48, 1
  %50 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = extractvalue { ptr, i32 } %48, 0
  %54 = tail call ptr @__cxa_begin_catch(ptr %53) #11
  tail call void @__cxa_end_catch()
  %55 = add nuw i32 %32, 1
  %56 = load ptr, ptr %23, align 8, !tbaa !76
  %57 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %56) #13
  %58 = icmp ult i32 %55, %57
  br i1 %58, label %31, label %60, !llvm.loop !152

59:                                               ; preds = %47
  resume { ptr, i32 } %48

60:                                               ; preds = %42, %52, %21, %14
  %61 = phi ptr [ null, %14 ], [ null, %21 ], [ %46, %42 ], [ null, %52 ]
  ret ptr %61
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722UnionDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #3 align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %0) #13
  invoke void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef %0) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #14
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722UnionDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !57 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_722UnionDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !57 {
  ret ptr @_ZN11xercesc_2_722UnionDatatypeValidator27classUnionDatatypeValidatorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #3 align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %19

5:                                                ; preds = %2
  %6 = load i8, ptr %4, align 8, !tbaa !61, !range !73, !noundef !74
  %7 = icmp ne i8 %6, 0
  %8 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %7) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 1, !tbaa !72, !range !73, !noundef !74
  %11 = icmp ne i8 %10, 0
  %12 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %11) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !75
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_16RefArrayVectorOfItEERNS_16XSerializeEngineE(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17DatatypeValidatorEEERNS_16XSerializeEngineE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %17 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %18) #13
  br label %27

19:                                               ; preds = %2
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %21) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_16RefArrayVectorOfItEEibRNS_16XSerializeEngineE(ptr noundef nonnull %23, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %24 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17DatatypeValidatorEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %24, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %25 = tail call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  store ptr %25, ptr %26, align 8, !tbaa !77
  br label %27

27:                                               ; preds = %19, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = load i16, ptr %0, align 8, !tbaa !153
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_16RefArrayVectorOfItEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17DatatypeValidatorEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_16RefArrayVectorOfItEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17DatatypeValidatorEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #4

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_722UnionDatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %5, %8
  %9 = phi i32 [ %16, %8 ], [ 0, %5 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !76
  %11 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %9) #13
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(104) %11) #13
  %16 = add nuw i32 %9, 1
  %17 = icmp ne i32 %16, %6
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %8, label %19, !llvm.loop !155

19:                                               ; preds = %8, %5, %1
  %20 = phi i1 [ false, %1 ], [ true, %5 ], [ %15, %8 ]
  ret i1 %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 comdat align 2 !prof !57 {
  %5 = load ptr, ptr %0, align 8, !tbaa !58
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_722UnionDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !57 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %6) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %19, %11 ], [ 0, %8 ]
  %13 = load ptr, ptr %5, align 8, !tbaa !76
  %14 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %12) #13
  %15 = load ptr, ptr %14, align 8, !tbaa !58
  %16 = getelementptr inbounds ptr, ptr %15, i64 9
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef %1) #13
  %19 = add nuw i32 %12, 1
  %20 = icmp eq i32 %19, %9
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %22, label %11, !llvm.loop !156

22:                                               ; preds = %11, %8, %4, %2
  %23 = phi i1 [ true, %2 ], [ false, %4 ], [ false, %8 ], [ %18, %11 ]
  ret i1 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722UnionDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %4) #13
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !76
  invoke void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %8, i1 noundef zeroext true) #13
          to label %9 unwind label %10

9:                                                ; preds = %5
  ret ptr %6

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #14
  resume { ptr, i32 } %11
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !158 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !159

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !58
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #5 comdat align 2 !prof !160 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !161

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !110
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !162

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !110
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !163, !llvm.loop !164

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

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #5 comdat align 2 !prof !165 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !167

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !168
  store ptr %7, ptr %2, align 8, !tbaa !90
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %31, !prof !169

9:                                                ; preds = %1, %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !91
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !91
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !92
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !97
  %17 = icmp eq i32 %12, %16
  br i1 %17, label %31, label %18, !prof !170

18:                                               ; preds = %9
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %14, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !171
  br label %21

21:                                               ; preds = %18, %27
  %22 = phi i32 [ %12, %18 ], [ %28, %27 ]
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %20, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !134
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30, !prof !172

27:                                               ; preds = %21
  %28 = add i32 %22, 1
  store i32 %28, ptr %10, align 8, !tbaa !91
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %31, label %21, !prof !173, !llvm.loop !174

30:                                               ; preds = %21
  store ptr %25, ptr %2, align 8, !tbaa !90
  br label %31

31:                                               ; preds = %27, %9, %30, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !91
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !86 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
  tail call void @llvm.trap() #12
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgNullPointerException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720NullPointerException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NullPointerExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720NullPointerExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !86 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !86 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !175
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = load ptr, ptr %2, align 8, !tbaa !58
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !176
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !58
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !86 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !177

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !97
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !178

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !179
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !171
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !134
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !180

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !168
  %23 = load i8, ptr %9, align 8, !tbaa !181, !range !73, !noundef !74
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !182

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !102
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !58
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #14
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !175
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !183, !llvm.loop !184

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !171
  %40 = load i32, ptr %4, align 8, !tbaa !97
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !134
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !185, !llvm.loop !186

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !179
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !57 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !57 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !157
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
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
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 !prof !57 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEC2Ev, i64 34}
!36 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 34}
!37 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!38 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720NullPointerExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 33}
!40 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEC2EPNS_14RefHashTableOfIS1_EEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @__cxa_allocate_exception, i64 1}
!42 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 34}
!44 = !{ptr @_ZN11xercesc_2_717DatatypeValidator10setPatternEPKt, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 13}
!45 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!46 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!47 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!48 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEED2Ev, i64 34}
!52 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, i64 34}
!54 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!55 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv, i64 34}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"vtable pointer", !60, i64 0}
!60 = !{!"Simple C++ TBAA"}
!61 = !{!62, !65, i64 104}
!62 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !63, i64 0, !65, i64 104, !65, i64 105, !71, i64 112, !71, i64 120, !71, i64 128}
!63 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !64, i64 0, !65, i64 8, !65, i64 9, !65, i64 10, !65, i64 11, !67, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !69, i64 28, !70, i64 32, !71, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !71, i64 96}
!64 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!65 = !{!"bool", !66, i64 0}
!66 = !{!"omnipotent char", !60, i64 0}
!67 = !{!"short", !66, i64 0}
!68 = !{!"int", !66, i64 0}
!69 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !66, i64 0}
!70 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !66, i64 0}
!71 = !{!"any pointer", !66, i64 0}
!72 = !{!62, !65, i64 105}
!73 = !{i8 0, i8 2}
!74 = !{}
!75 = !{!62, !71, i64 112}
!76 = !{!62, !71, i64 120}
!77 = !{!62, !71, i64 128}
!78 = !{!"function_entry_count", i64 874884}
!79 = !{!63, !69, i64 28}
!80 = !{!81, !71, i64 0}
!81 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_22UnionDatatypeValidatorEEE", !71, i64 0, !66, i64 8}
!82 = !{!81, !66, i64 8}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = distinct !{!85, !84}
!86 = !{!"function_entry_count", i64 34}
!87 = !{!88, !65, i64 8}
!88 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE", !89, i64 0, !65, i64 8, !71, i64 16, !68, i64 24, !71, i64 32, !71, i64 40}
!89 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE"}
!90 = !{!88, !71, i64 16}
!91 = !{!88, !68, i64 24}
!92 = !{!88, !71, i64 32}
!93 = !{!88, !71, i64 40}
!94 = !{!"branch_weights", i32 1, i32 35}
!95 = !{!"function_entry_count", i64 104}
!96 = !{!"branch_weights", i32 35, i32 71}
!97 = !{!98, !68, i64 24}
!98 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !71, i64 0, !65, i64 8, !71, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !71, i64 40}
!99 = !{!"branch_weights", i32 35, i32 1}
!100 = !{!"function_entry_count", i64 35}
!101 = !{!"branch_weights", i32 36, i32 1}
!102 = !{!103, !71, i64 0}
!103 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !71, i64 0, !71, i64 8, !71, i64 16}
!104 = !{!105, !71, i64 24}
!105 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !64, i64 0, !106, i64 8, !106, i64 16, !71, i64 24, !71, i64 32, !71, i64 40}
!106 = !{!"long", !66, i64 0}
!107 = !{!105, !71, i64 32}
!108 = !{!"function_entry_count", i64 1231717351}
!109 = !{!"branch_weights", i32 621, i32 -1469098093}
!110 = !{!67, !67, i64 0}
!111 = !{!"branch_weights", i32 408901017, i32 1}
!112 = !{!"branch_weights", i32 267, i32 4}
!113 = !{!"branch_weights", i32 1, i32 4}
!114 = !{!"branch_weights", i32 156, i32 112}
!115 = !{!"branch_weights", i32 1, i32 112}
!116 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!117 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!118 = distinct !{!118, !84}
!119 = !{!"function_entry_count", i64 13}
!120 = !{!63, !71, i64 56}
!121 = !{!"branch_weights", i32 14, i32 1}
!122 = !{!63, !71, i64 96}
!123 = !{!"function_entry_count", i64 23}
!124 = !{!"function_entry_count", i64 67}
!125 = !{!63, !68, i64 20}
!126 = !{!"function_entry_count", i64 2082808}
!127 = !{!"function_entry_count", i64 240751}
!128 = !{!129, !68, i64 12}
!129 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !65, i64 8, !68, i64 12, !68, i64 16, !71, i64 24, !71, i64 32}
!130 = !{!"function_entry_count", i64 2444437052}
!131 = !{!"branch_weights", i32 -1850530243, i32 1}
!132 = !{!129, !71, i64 32}
!133 = !{!129, !71, i64 24}
!134 = !{!71, !71, i64 0}
!135 = distinct !{!135, !84}
!136 = distinct !{!136, !84}
!137 = distinct !{!137, !84}
!138 = !{!"function_entry_count", i64 1580484}
!139 = !{!63, !71, i64 40}
!140 = !{!141, !68, i64 12}
!141 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEEE", !65, i64 8, !68, i64 12, !68, i64 16, !71, i64 24, !71, i64 32}
!142 = !{!141, !71, i64 32}
!143 = !{!141, !71, i64 24}
!144 = !{!"function_entry_count", i64 645404}
!145 = !{!63, !71, i64 64}
!146 = !{!"function_entry_count", i64 10}
!147 = !{!148, !71, i64 32}
!148 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !149, i64 8, !71, i64 16, !68, i64 24, !71, i64 32, !71, i64 40}
!149 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !66, i64 0}
!150 = distinct !{!150, !84}
!151 = distinct !{!151, !84}
!152 = distinct !{!152, !84}
!153 = !{!154, !67, i64 0}
!154 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !67, i64 0, !67, i64 2, !71, i64 8, !71, i64 16, !71, i64 24, !106, i64 32, !106, i64 40, !71, i64 48, !71, i64 56, !71, i64 64, !71, i64 72, !71, i64 80, !71, i64 88, !68, i64 96}
!155 = distinct !{!155, !84}
!156 = distinct !{!156, !84}
!157 = !{!148, !71, i64 40}
!158 = !{!"function_entry_count", i64 558789}
!159 = !{!"branch_weights", i32 158605, i32 400186}
!160 = !{!"function_entry_count", i64 2453164456}
!161 = !{!"branch_weights", i32 1, i32 -1841802839}
!162 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!163 = !{!"branch_weights", i32 408669070, i32 -279908794}
!164 = distinct !{!164, !84}
!165 = !{!"function_entry_count", i64 5836268}
!166 = !{!"function_entry_count", i64 69}
!167 = !{!"branch_weights", i32 35, i32 36}
!168 = !{!103, !71, i64 8}
!169 = !{!"branch_weights", i32 2087831324, i32 59652324}
!170 = !{!"branch_weights", i32 16, i32 55}
!171 = !{!98, !71, i64 16}
!172 = !{!"branch_weights", i32 506, i32 36}
!173 = !{!"branch_weights", i32 20, i32 487}
!174 = distinct !{!174, !84}
!175 = !{!98, !71, i64 0}
!176 = !{!98, !71, i64 40}
!177 = !{!"branch_weights", i32 6, i32 30}
!178 = !{!"branch_weights", i32 1, i32 239}
!179 = !{!98, !68, i64 32}
!180 = !{!"branch_weights", i32 360, i32 36}
!181 = !{!98, !65, i64 8}
!182 = !{!"branch_weights", i32 1, i32 36}
!183 = !{!"branch_weights", i32 36, i32 0}
!184 = distinct !{!184, !84}
!185 = !{!"branch_weights", i32 2929, i32 239}
!186 = distinct !{!186, !84}
