; ModuleID = 'UnionDatatypeValidator.cpp'
source_filename = "UnionDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::UnionDatatypeValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
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

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_722UnionDatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE = comdat any

$_ZN11xercesc_2_722UnionDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev = comdat any

$_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

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

$_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = comdat any

$_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = comdat any

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
@_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE = external local_unnamed_addr constant [0 x i16], align 2
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
@_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant [62 x i8] c"N11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE\00", comdat, align 1
@_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE }, comdat, align 8
@_ZTIN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE = linkonce_odr dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, comdat, align 8
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_722UnionDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_722UnionDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev
@_ZN11xercesc_2_722UnionDatatypeValidatorC1EPNS_11RefVectorOfINS_17DatatypeValidatorEEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_11RefVectorOfINS_17DatatypeValidatorEEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_722UnionDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr, ptr, i1), ptr @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 25, ptr noundef %1)
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  store i8 0, ptr %4, align 1, !tbaa !58
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !47, !range !59, !noundef !60
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !58, !range !59, !noundef !60
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !44
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #14
  br label %25

25:                                               ; preds = %13, %17, %21
  tail call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #5 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !47, !range !59, !noundef !60
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !44
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %7) #14
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !58, !range !59, !noundef !60
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !62
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !44
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #14
  br label %25

25:                                               ; preds = %21, %17, %13
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #4 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_722UnionDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_11RefVectorOfINS_17DatatypeValidatorEEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null, ptr noundef null, i32 noundef %2, i32 noundef 25, ptr noundef %3)
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  store i8 0, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  store i8 0, ptr %6, align 1, !tbaa !58
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %8 = icmp eq ptr %1, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 67, i32 noundef 235, ptr noundef %3)
          to label %11 unwind label %12

11:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %20 unwind label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #14
  br label %18

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %4
  %17 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !62
  ret void

18:                                               ; preds = %14, %12
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
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

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %9 = alloca [65 x i16], align 16
  %10 = zext i1 %7 to i8
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 25, ptr noundef %5)
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %11 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  store i8 0, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  store i8 %10, ptr %12, align 1, !tbaa !58
  %13 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  store ptr null, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  store ptr %6, ptr %14, align 8, !tbaa !62
  %15 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !63
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %8
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 100, i32 noundef 236, ptr noundef %5)
          to label %19 unwind label %21

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %20 unwind label %25

20:                                               ; preds = %19
  unreachable

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  tail call void @__cxa_free_exception(ptr %18) #14
  br label %73

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = extractvalue { ptr, i32 } %26, 0
  %28 = extractvalue { ptr, i32 } %26, 1
  br label %73

29:                                               ; preds = %8
  %30 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 9
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = icmp eq i32 %31, 25
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #14
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %31, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %5)
          to label %34 unwind label %38

34:                                               ; preds = %33
  %35 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 110, i32 noundef 237, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5)
          to label %36 unwind label %40

36:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %37 unwind label %38

37:                                               ; preds = %36
  unreachable

38:                                               ; preds = %36, %33
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %42

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #14
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %41, %40 ]
  %44 = extractvalue { ptr, i32 } %43, 0
  %45 = extractvalue { ptr, i32 } %43, 1
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #14
  br label %73

46:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_722UnionDatatypeValidator4initEPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %5)
          to label %61 unwind label %47

47:                                               ; preds = %46
  %48 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %49 = extractvalue { ptr, i32 } %48, 0
  %50 = extractvalue { ptr, i32 } %48, 1
  %51 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = tail call ptr @__cxa_begin_catch(ptr %49) #14
  invoke void @__cxa_rethrow() #16
          to label %55 unwind label %56

55:                                               ; preds = %53
  unreachable

56:                                               ; preds = %53
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %58 unwind label %78

58:                                               ; preds = %56
  %59 = extractvalue { ptr, i32 } %57, 1
  %60 = extractvalue { ptr, i32 } %57, 0
  br label %62

61:                                               ; preds = %46
  ret void

62:                                               ; preds = %58, %47
  %63 = phi ptr [ null, %58 ], [ @_ZN11xercesc_2_722UnionDatatypeValidator7cleanUpEv, %47 ]
  %64 = phi ptr [ null, %58 ], [ %0, %47 ]
  %65 = phi i32 [ %59, %58 ], [ %50, %47 ]
  %66 = phi ptr [ %60, %58 ], [ %49, %47 ]
  %67 = icmp eq ptr %64, null
  %68 = or i1 %52, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(136) %64)
          to label %73 unwind label %70

70:                                               ; preds = %69
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  tail call void @__clang_call_terminate(ptr %72) #15
  unreachable

73:                                               ; preds = %69, %62, %42, %25, %21
  %74 = phi i32 [ %45, %42 ], [ %28, %25 ], [ %24, %21 ], [ %65, %62 ], [ %65, %69 ]
  %75 = phi ptr [ %44, %42 ], [ %27, %25 ], [ %23, %21 ], [ %66, %62 ], [ %66, %69 ]
  call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #14
  %76 = insertvalue { ptr, i32 } poison, ptr %75, 0
  %77 = insertvalue { ptr, i32 } %76, i32 %74, 1
  resume { ptr, i32 } %77

78:                                               ; preds = %56
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  tail call void @__clang_call_terminate(ptr %80) #15
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator4initEPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = alloca %"class.xercesc_2_7::RefHashTableOfEnumerator", align 8
  %7 = alloca %"class.xercesc_2_7::KVStringPair", align 8
  %8 = icmp eq ptr %3, null
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !47, !range !59, !noundef !60
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !44
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %15) #14
  br label %21

21:                                               ; preds = %17, %13, %9
  %22 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  store ptr %3, ptr %22, align 8, !tbaa !61
  store i8 0, ptr %10, align 8, !tbaa !47
  %23 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !65
  %25 = or i32 %24, 16
  store i32 %25, ptr %23, align 4, !tbaa !65
  br label %26

26:                                               ; preds = %21, %5
  %27 = icmp eq ptr %2, null
  br i1 %27, label %197, label %28

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !44
  %29 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 1
  store i8 0, ptr %29, align 8, !tbaa !66
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !69
  %31 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 3
  store i32 -1, ptr %31, align 8, !tbaa !70
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 4
  store ptr %2, ptr %32, align 8, !tbaa !71
  %33 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %6, i64 0, i32 5
  store ptr %4, ptr %33, align 8, !tbaa !72
  %34 = load ptr, ptr %30, align 8, !tbaa !69
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %28
  store i32 0, ptr %31, align 8, !tbaa !70
  %37 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %2, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !73
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !75
  %43 = load i32, ptr %31, align 8, !tbaa !70
  br label %44

44:                                               ; preds = %40, %50
  %45 = phi i32 [ %43, %40 ], [ %51, %50 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds ptr, ptr %42, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !76
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = add i32 %45, 1
  store i32 %51, ptr %31, align 8, !tbaa !70
  %52 = icmp eq i32 %51, %38
  br i1 %52, label %54, label %44, !llvm.loop !77

53:                                               ; preds = %44
  store ptr %48, ptr %30, align 8, !tbaa !69
  br label %54

54:                                               ; preds = %50, %28, %36, %53
  %55 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %7, i64 0, i32 3
  %56 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %7, i64 0, i32 4
  %57 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %58 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %59 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %60 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  br label %61

61:                                               ; preds = %145, %54
  %62 = load ptr, ptr %30, align 8, !tbaa !69
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = load i32, ptr %31, align 8, !tbaa !70
  %66 = load ptr, ptr %32, align 8, !tbaa !71
  %67 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %66, i64 0, i32 3
  %68 = load i32, ptr %67, align 8, !tbaa !73
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %150, label %70

70:                                               ; preds = %64, %61
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %7) #14
  %71 = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %72 unwind label %133

72:                                               ; preds = %70
  invoke void @_ZN11xercesc_2_712KVStringPairC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %71)
          to label %73 unwind label %133

73:                                               ; preds = %72
  %74 = load ptr, ptr %55, align 8, !tbaa !80
  %75 = load ptr, ptr %56, align 8, !tbaa !83
  %76 = icmp eq ptr %74, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i16, ptr %74, align 2, !tbaa !84
  %79 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, align 2, !tbaa !84
  %80 = icmp eq i16 %78, %79
  br i1 %80, label %84, label %139

81:                                               ; preds = %73
  %82 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, align 2, !tbaa !84
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %95, label %139

84:                                               ; preds = %77, %89
  %85 = phi i16 [ %92, %89 ], [ %78, %77 ]
  %86 = phi ptr [ %91, %89 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgELT_PATTERNE, %77 ]
  %87 = phi ptr [ %90, %89 ], [ %74, %77 ]
  %88 = icmp eq i16 %85, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds i16, ptr %87, i64 1
  %91 = getelementptr inbounds i16, ptr %86, i64 1
  %92 = load i16, ptr %90, align 2, !tbaa !84
  %93 = load i16, ptr %91, align 2, !tbaa !84
  %94 = icmp eq i16 %92, %93
  br i1 %94, label %84, label %139, !llvm.loop !85

95:                                               ; preds = %84, %81
  %96 = load ptr, ptr %57, align 8, !tbaa !86
  %97 = icmp eq ptr %96, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %58, align 8, !tbaa !87
  %100 = load ptr, ptr %99, align 8, !tbaa !44
  %101 = getelementptr inbounds ptr, ptr %100, i64 3
  %102 = load ptr, ptr %101, align 8
  invoke void %102(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull %96)
          to label %103 unwind label %135

103:                                              ; preds = %98, %95
  %104 = load ptr, ptr %59, align 8, !tbaa !87
  %105 = icmp eq ptr %75, null
  br i1 %105, label %127, label %106

106:                                              ; preds = %103
  %107 = load i16, ptr %75, align 2, !tbaa !84
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %120, label %109

109:                                              ; preds = %106, %109
  %110 = phi ptr [ %111, %109 ], [ %75, %106 ]
  %111 = getelementptr inbounds i16, ptr %110, i64 1
  %112 = load i16, ptr %111, align 2, !tbaa !84
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %114, label %109, !llvm.loop !88

114:                                              ; preds = %109
  %115 = ptrtoint ptr %111 to i64
  %116 = ptrtoint ptr %75 to i64
  %117 = sub i64 %115, %116
  %118 = add i64 %117, 2
  %119 = and i64 %118, 8589934590
  br label %120

120:                                              ; preds = %114, %106
  %121 = phi i64 [ %119, %114 ], [ 2, %106 ]
  %122 = load ptr, ptr %104, align 8, !tbaa !44
  %123 = getelementptr inbounds ptr, ptr %122, i64 2
  %124 = load ptr, ptr %123, align 8
  %125 = invoke noundef ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %104, i64 noundef %121)
          to label %126 unwind label %135

126:                                              ; preds = %120
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %125, ptr nonnull align 2 %75, i64 %121, i1 false)
  br label %127

127:                                              ; preds = %103, %126
  %128 = phi ptr [ %125, %126 ], [ null, %103 ]
  store ptr %128, ptr %57, align 8, !tbaa !86
  %129 = icmp eq ptr %128, null
  br i1 %129, label %145, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr %60, align 4, !tbaa !65
  %132 = or i32 %131, 8
  store i32 %132, ptr %60, align 4, !tbaa !65
  br label %145

133:                                              ; preds = %72, %70
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %148

135:                                              ; preds = %98, %120
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %146

137:                                              ; preds = %141
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %146

139:                                              ; preds = %81, %77, %89
  %140 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %140, ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 171, ptr noundef %74, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %141 unwind label %143

141:                                              ; preds = %139
  invoke void @__cxa_throw(ptr nonnull %140, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %142 unwind label %137

142:                                              ; preds = %141
  unreachable

143:                                              ; preds = %139
  %144 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %140) #14
  br label %146

145:                                              ; preds = %127, %130
  call void @_ZN11xercesc_2_712KVStringPairD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  br label %61, !llvm.loop !89

146:                                              ; preds = %135, %137, %143
  %147 = phi { ptr, i32 } [ %144, %143 ], [ %136, %135 ], [ %138, %137 ]
  call void @_ZN11xercesc_2_712KVStringPairD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  br label %148

148:                                              ; preds = %146, %133
  %149 = phi { ptr, i32 } [ %147, %146 ], [ %134, %133 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %7) #14
  br label %195

150:                                              ; preds = %64
  %151 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %152 = load i32, ptr %151, align 4, !tbaa !65
  %153 = and i32 %152, 16
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %194, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !61
  %158 = icmp eq ptr %157, null
  br i1 %158, label %194, label %159

159:                                              ; preds = %155
  %160 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %157, i64 0, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !90
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %194

163:                                              ; preds = %159, %171
  %164 = phi i32 [ %172, %171 ], [ 0, %159 ]
  %165 = load ptr, ptr %156, align 8, !tbaa !61
  %166 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %165, i32 noundef %164)
          to label %167 unwind label %174

167:                                              ; preds = %163
  %168 = load ptr, ptr %1, align 8, !tbaa !44
  %169 = getelementptr inbounds ptr, ptr %168, i64 8
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef %166, ptr noundef null, ptr noundef %4)
          to label %171 unwind label %174

171:                                              ; preds = %167
  %172 = add nuw nsw i32 %164, 1
  %173 = icmp eq i32 %172, %161
  br i1 %173, label %194, label %163, !llvm.loop !92

174:                                              ; preds = %167, %163
  %175 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %176 = extractvalue { ptr, i32 } %175, 1
  %177 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %195

179:                                              ; preds = %174
  %180 = extractvalue { ptr, i32 } %175, 0
  %181 = call ptr @__cxa_begin_catch(ptr %180) #14
  %182 = call ptr @__cxa_allocate_exception(i64 48) #14
  %183 = load ptr, ptr %156, align 8, !tbaa !61
  %184 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %183, i32 noundef %164)
          to label %185 unwind label %188

185:                                              ; preds = %179
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %182, ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 181, ptr noundef %184, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %186 unwind label %188

186:                                              ; preds = %185
  invoke void @__cxa_throw(ptr nonnull %182, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %187 unwind label %190

187:                                              ; preds = %186
  unreachable

188:                                              ; preds = %185, %179
  %189 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %182) #14
  br label %192

190:                                              ; preds = %186
  %191 = landingpad { ptr, i32 }
          cleanup
  br label %192

192:                                              ; preds = %190, %188
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %189, %188 ]
  invoke void @__cxa_end_catch()
          to label %195 unwind label %228

194:                                              ; preds = %171, %159, %155, %150
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  br label %197

195:                                              ; preds = %192, %174, %148
  %196 = phi { ptr, i32 } [ %149, %148 ], [ %175, %174 ], [ %193, %192 ]
  call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #14
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  resume { ptr, i32 } %196

197:                                              ; preds = %194, %26
  %198 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 7
  %199 = load i32, ptr %198, align 4, !tbaa !65
  %200 = and i32 %199, 16
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %227, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %204 = load i32, ptr %203, align 4, !tbaa !65
  %205 = and i32 %204, 16
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %227

207:                                              ; preds = %202
  %208 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %1, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !61
  %210 = icmp eq ptr %209, null
  br i1 %210, label %227, label %211

211:                                              ; preds = %207
  %212 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  %213 = load i8, ptr %212, align 8, !tbaa !47, !range !59, !noundef !60
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %211
  %216 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !61
  %218 = icmp eq ptr %217, null
  br i1 %218, label %223, label %219

219:                                              ; preds = %215
  %220 = load ptr, ptr %217, align 8, !tbaa !44
  %221 = getelementptr inbounds ptr, ptr %220, i64 1
  %222 = load ptr, ptr %221, align 8
  call void %222(ptr noundef nonnull align 8 dereferenceable(40) %217) #14
  br label %223

223:                                              ; preds = %219, %215, %211
  %224 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  store ptr %209, ptr %224, align 8, !tbaa !61
  store i8 1, ptr %212, align 8, !tbaa !47
  %225 = load i32, ptr %203, align 4, !tbaa !65
  %226 = or i32 %225, 16
  store i32 %226, ptr %203, align 4, !tbaa !65
  br label %227

227:                                              ; preds = %223, %207, %202, %197
  ret void

228:                                              ; preds = %192
  %229 = landingpad { ptr, i32 }
          catch ptr null
  %230 = extractvalue { ptr, i32 } %229, 0
  call void @__clang_call_terminate(ptr %230) #15
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !94

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !70
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %9, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !73
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %5, %1
  br label %14

14:                                               ; preds = %5, %13
  %15 = phi i1 [ true, %13 ], [ false, %5 ]
  ret i1 %15
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  %2 = load ptr, ptr %0, align 8, !tbaa !44
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(48) %0), !prof !95
  br i1 %5, label %13, label %6, !prof !96

6:                                                ; preds = %1
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 30, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  ret ptr %16
}

declare void @_ZN11xercesc_2_712KVStringPairC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712KVStringPairD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !99 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !100

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !102
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  ret ptr %18
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !66, !range !59, !noundef !60
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5, !prof !104

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %13 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable

13:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %7) #14
  br label %14

14:                                               ; preds = %5, %13, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %7 = load ptr, ptr %6, align 8, !tbaa !105
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !106
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %63, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %17 = icmp eq ptr %2, null
  br label %22

18:                                               ; preds = %5
  %19 = load ptr, ptr %7, align 8, !tbaa !44
  %20 = getelementptr inbounds ptr, ptr %19, i64 12
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(136) %7, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4)
  br label %68

22:                                               ; preds = %15, %52
  %23 = phi ptr [ %11, %15 ], [ %55, %52 ]
  %24 = phi i8 [ 0, %15 ], [ %53, %52 ]
  %25 = phi i32 [ 0, %15 ], [ %54, %52 ]
  %26 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %23, i32 noundef %25)
          to label %27 unwind label %39

27:                                               ; preds = %22
  %28 = load ptr, ptr %26, align 8, !tbaa !44
  %29 = getelementptr inbounds ptr, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(104) %26, ptr noundef %1, ptr noundef %2, ptr noundef %4)
          to label %31 unwind label %39

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 8, !tbaa !62
  %33 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef %25)
          to label %34 unwind label %41

34:                                               ; preds = %31
  store ptr %33, ptr %16, align 8, !tbaa !63
  br i1 %17, label %52, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %2, align 8, !tbaa !44
  %37 = getelementptr inbounds ptr, ptr %36, i64 12
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %33)
          to label %52 unwind label %41

39:                                               ; preds = %27, %22
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %43

41:                                               ; preds = %35, %31
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  %45 = phi i8 [ 1, %41 ], [ %24, %39 ]
  %46 = extractvalue { ptr, i32 } %44, 1
  %47 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %177

49:                                               ; preds = %43
  %50 = extractvalue { ptr, i32 } %44, 0
  %51 = tail call ptr @__cxa_begin_catch(ptr %50) #14
  tail call void @__cxa_end_catch()
  br label %52

52:                                               ; preds = %34, %35, %49
  %53 = phi i8 [ %45, %49 ], [ 1, %35 ], [ 1, %34 ]
  %54 = add nuw i32 %25, 1
  %55 = load ptr, ptr %10, align 8, !tbaa !62
  %56 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !106
  %58 = icmp ult i32 %54, %57
  %59 = and i8 %53, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %22, label %62, !llvm.loop !108

62:                                               ; preds = %52
  br i1 %60, label %63, label %68

63:                                               ; preds = %9, %62
  %64 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str, i32 noundef 280, i32 noundef 259, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %65 unwind label %66

65:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

66:                                               ; preds = %63
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %174

68:                                               ; preds = %62, %18
  %69 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %70 = load i32, ptr %69, align 4, !tbaa !65
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %118, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %75 = load ptr, ptr %74, align 8, !tbaa !109
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %79 = load ptr, ptr %78, align 8, !tbaa !87
  %80 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %79)
          to label %81 unwind label %86

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %83 = load ptr, ptr %82, align 8, !tbaa !86
  %84 = load ptr, ptr %78, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %80, ptr noundef %83, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %84)
          to label %85 unwind label %88

85:                                               ; preds = %81
  store ptr %80, ptr %74, align 8, !tbaa !109
  br label %108

86:                                               ; preds = %77
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %90

88:                                               ; preds = %81
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %80, ptr noundef %79) #14
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %87, %86 ]
  %92 = extractvalue { ptr, i32 } %91, 1
  %93 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %177

95:                                               ; preds = %90
  %96 = extractvalue { ptr, i32 } %91, 0
  %97 = tail call ptr @__cxa_begin_catch(ptr %96) #14
  %98 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %97, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %98, ptr noundef nonnull @.str, i32 noundef 296, i32 noundef 299, ptr noundef %100, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %101 unwind label %102

101:                                              ; preds = %95
  invoke void @__cxa_throw(ptr nonnull %98, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %182 unwind label %104

102:                                              ; preds = %95
  %103 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %98) #14
  br label %106

104:                                              ; preds = %101
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ]
  invoke void @__cxa_end_catch()
          to label %177 unwind label %179

108:                                              ; preds = %85, %73
  %109 = load ptr, ptr %74, align 8, !tbaa !109
  %110 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %109, ptr noundef %1, ptr noundef %4)
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %113 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %114 = load ptr, ptr %113, align 8, !tbaa !86
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %112, ptr noundef nonnull @.str, i32 noundef 306, i32 noundef 238, ptr noundef %1, ptr noundef %114, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %115 unwind label %116

115:                                              ; preds = %111
  tail call void @__cxa_throw(ptr nonnull %112, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

116:                                              ; preds = %111
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %174

118:                                              ; preds = %108, %68
  br i1 %3, label %173, label %119

119:                                              ; preds = %118
  %120 = load i32, ptr %69, align 4, !tbaa !65
  %121 = and i32 %120, 16
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %173, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = icmp eq ptr %125, null
  br i1 %126, label %173, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !62
  %130 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %129, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !106
  %132 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %125, i64 0, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !90
  %134 = icmp ne i32 %131, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %127
  %136 = icmp eq i32 %133, 0
  br label %137

137:                                              ; preds = %135, %163
  %138 = phi i1 [ %134, %135 ], [ %165, %163 ]
  %139 = phi i32 [ 0, %135 ], [ %164, %163 ]
  br i1 %136, label %163, label %140

140:                                              ; preds = %137, %160
  %141 = phi i32 [ %161, %160 ], [ 0, %137 ]
  %142 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %129, i32 noundef %139)
          to label %143 unwind label %152

143:                                              ; preds = %140
  %144 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %125, i32 noundef %141)
          to label %145 unwind label %152

145:                                              ; preds = %143
  %146 = load ptr, ptr %142, align 8, !tbaa !44
  %147 = getelementptr inbounds ptr, ptr %146, i64 10
  %148 = load ptr, ptr %147, align 8
  %149 = invoke noundef i32 %148(ptr noundef nonnull align 8 dereferenceable(104) %142, ptr noundef %1, ptr noundef %144, ptr noundef %4)
          to label %150 unwind label %152

150:                                              ; preds = %145
  %151 = icmp eq i32 %149, 0
  br i1 %151, label %167, label %160

152:                                              ; preds = %145, %143, %140
  %153 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %154 = extractvalue { ptr, i32 } %153, 1
  %155 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %152
  %158 = extractvalue { ptr, i32 } %153, 0
  %159 = tail call ptr @__cxa_begin_catch(ptr %158) #14
  tail call void @__cxa_end_catch()
  br label %160

160:                                              ; preds = %150, %157
  %161 = add nuw i32 %141, 1
  %162 = icmp eq i32 %161, %133
  br i1 %162, label %163, label %140, !llvm.loop !113

163:                                              ; preds = %160, %137
  %164 = add nuw i32 %139, 1
  %165 = icmp ult i32 %164, %131
  %166 = icmp eq i32 %164, %131
  br i1 %166, label %168, label %137, !llvm.loop !114

167:                                              ; preds = %150
  br i1 %138, label %173, label %168

168:                                              ; preds = %163, %127, %167
  %169 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %169, ptr noundef nonnull @.str, i32 noundef 343, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %170 unwind label %171

170:                                              ; preds = %168
  tail call void @__cxa_throw(ptr nonnull %169, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

171:                                              ; preds = %168
  %172 = landingpad { ptr, i32 }
          cleanup
  br label %174

173:                                              ; preds = %119, %123, %167, %118
  ret void

174:                                              ; preds = %116, %66, %171
  %175 = phi ptr [ %169, %171 ], [ %64, %66 ], [ %112, %116 ]
  %176 = phi { ptr, i32 } [ %172, %171 ], [ %67, %66 ], [ %117, %116 ]
  tail call void @__cxa_free_exception(ptr %175) #14
  br label %177

177:                                              ; preds = %43, %152, %174, %106, %90
  %178 = phi { ptr, i32 } [ %91, %90 ], [ %107, %106 ], [ %176, %174 ], [ %153, %152 ], [ %44, %43 ]
  resume { ptr, i32 } %178

179:                                              ; preds = %106
  %180 = landingpad { ptr, i32 }
          catch ptr null
  %181 = extractvalue { ptr, i32 } %180, 0
  tail call void @__clang_call_terminate(ptr %181) #15
  unreachable

182:                                              ; preds = %101
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !106
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #14
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !116
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !76
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722UnionDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !43 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !106
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef 0)
  %12 = load ptr, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds ptr, ptr %12, i64 10
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(104) %11, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %10, %21
  %18 = phi i32 [ %19, %21 ], [ 0, %10 ]
  %19 = add nuw i32 %18, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %28, label %21, !llvm.loop !117

21:                                               ; preds = %17
  %22 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %19)
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds ptr, ptr %23, i64 10
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(104) %22, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %17, !llvm.loop !117

28:                                               ; preds = %17, %21
  %29 = icmp uge i32 %19, %8
  br label %30

30:                                               ; preds = %28, %10, %4
  %31 = phi i1 [ %9, %4 ], [ %9, %10 ], [ %29, %28 ]
  %32 = sext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator13getEnumStringEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(136) %0) unnamed_addr #9 align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_722UnionDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr %2
  br i1 %3, label %10, label %9

9:                                                ; preds = %10, %4
  br label %18

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !44
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %8)
          to label %9 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #14
  tail call void @__cxa_end_catch()
  br label %64

18:                                               ; preds = %9, %18
  %19 = phi ptr [ %21, %18 ], [ %0, %9 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %19, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %18, !llvm.loop !118

23:                                               ; preds = %18
  %24 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %19, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !62
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !106
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %23, %51
  %30 = phi i1 [ %58, %51 ], [ %28, %23 ]
  %31 = phi ptr [ %55, %51 ], [ %25, %23 ]
  %32 = phi i32 [ %54, %51 ], [ 0, %23 ]
  %33 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %31, i32 noundef %32)
          to label %34 unwind label %46

34:                                               ; preds = %29
  %35 = load ptr, ptr %33, align 8, !tbaa !44
  %36 = getelementptr inbounds ptr, ptr %35, i64 8
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(104) %33, ptr noundef %1, ptr noundef null, ptr noundef %8)
          to label %38 unwind label %46

38:                                               ; preds = %34
  %39 = load ptr, ptr %24, align 8, !tbaa !62
  %40 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %39, i32 noundef %32)
          to label %41 unwind label %46

41:                                               ; preds = %38
  %42 = load ptr, ptr %40, align 8, !tbaa !44
  %43 = getelementptr inbounds ptr, ptr %42, i64 7
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(104) %40, ptr noundef %1, ptr noundef %8, i1 noundef zeroext false)
          to label %59 unwind label %46

46:                                               ; preds = %41, %38, %34, %29
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %48 = extractvalue { ptr, i32 } %47, 1
  %49 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = extractvalue { ptr, i32 } %47, 0
  %53 = tail call ptr @__cxa_begin_catch(ptr %52) #14
  tail call void @__cxa_end_catch()
  %54 = add nuw i32 %32, 1
  %55 = load ptr, ptr %24, align 8, !tbaa !62
  %56 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %55, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !106
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %29, label %59, !llvm.loop !119

59:                                               ; preds = %41, %51
  %60 = phi i1 [ %58, %51 ], [ %30, %41 ]
  %61 = phi ptr [ undef, %51 ], [ %45, %41 ]
  %62 = select i1 %60, ptr %61, ptr null
  br label %64

63:                                               ; preds = %46
  resume { ptr, i32 } %47

64:                                               ; preds = %23, %59, %14
  %65 = phi ptr [ null, %14 ], [ null, %23 ], [ %62, %59 ]
  ret ptr %65
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722UnionDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %0)
  invoke void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 25, ptr noundef %0)
          to label %3 unwind label %7

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [15 x ptr] }, ptr @_ZTVN11xercesc_2_722UnionDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !44
  %4 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %2, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !47
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %2, i64 0, i32 2
  store i8 0, ptr %5, align 1, !tbaa !58
  %6 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %2, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  ret ptr %2

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722UnionDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !43 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_722UnionDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #10 align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_722UnionDatatypeValidator27classUnionDatatypeValidatorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %3 = load i16, ptr %1, align 8, !tbaa !120
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 1
  br i1 %4, label %6, label %20

6:                                                ; preds = %2
  %7 = load i8, ptr %5, align 8, !tbaa !47, !range !59, !noundef !60
  %8 = icmp ne i8 %7, 0
  %9 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %8)
  %10 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %11 = load i8, ptr %10, align 1, !tbaa !58, !range !59, !noundef !60
  %12 = icmp ne i8 %11, 0
  %13 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !61
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_16RefArrayVectorOfItEERNS_16XSerializeEngineE(ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %16 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !62
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17DatatypeValidatorEEERNS_16XSerializeEngineE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %18 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %19)
  br label %28

20:                                               ; preds = %2
  %21 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %22 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 2
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %22)
  %24 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_16RefArrayVectorOfItEEibRNS_16XSerializeEngineE(ptr noundef nonnull %24, i32 noundef 8, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %25 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17DatatypeValidatorEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %25, i32 noundef 4, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %26 = tail call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %27 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !63
  br label %28

28:                                               ; preds = %20, %6
  ret void
}

declare void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_16RefArrayVectorOfItEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_11RefVectorOfINS_17DatatypeValidatorEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_16RefArrayVectorOfItEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_11RefVectorOfINS_17DatatypeValidatorEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_722UnionDatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #11 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %3, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !106
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %12

9:                                                ; preds = %12
  %10 = add nuw i32 %13, 1
  %11 = icmp eq i32 %10, %7
  br i1 %11, label %20, label %12, !llvm.loop !122

12:                                               ; preds = %5, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %5 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !62
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13)
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef zeroext i1 %18(ptr noundef nonnull align 8 dereferenceable(104) %15)
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %12, %5, %1
  %21 = phi i1 [ false, %1 ], [ %8, %5 ], [ true, %9 ], [ false, %12 ]
  ret i1 %21
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UnionDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 comdat align 2 !prof !43 {
  %5 = load ptr, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds ptr, ptr %5, i64 12
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3)
  ret void
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_722UnionDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !43 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %6, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !106
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load ptr, ptr %5, align 8, !tbaa !62
  %14 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 0)
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds ptr, ptr %15, i64 9
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef %1)
  br i1 %18, label %32, label %19

19:                                               ; preds = %12, %23
  %20 = phi i32 [ %21, %23 ], [ 0, %12 ]
  %21 = add nuw i32 %20, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %34, label %23, !llvm.loop !123

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8, !tbaa !62
  %25 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %21)
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds ptr, ptr %26, i64 9
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef zeroext i1 %28(ptr noundef nonnull align 8 dereferenceable(104) %25, ptr noundef %1)
  br i1 %29, label %30, label %19, !llvm.loop !123

30:                                               ; preds = %23
  %31 = icmp ult i32 %21, %10
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i1 [ %31, %30 ], [ %11, %12 ]
  br i1 %33, label %35, label %34

34:                                               ; preds = %19, %8, %32, %4
  br label %35

35:                                               ; preds = %32, %2, %34
  %36 = phi i1 [ true, %32 ], [ false, %34 ], [ true, %2 ]
  ret i1 %36
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_722UnionDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %4)
  %7 = getelementptr inbounds %"class.xercesc_2_7::UnionDatatypeValidator", ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  invoke void @_ZN11xercesc_2_722UnionDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerEPNS_11RefVectorOfIS1_EEb(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %8, i1 noundef zeroext true)
          to label %9 unwind label %10

9:                                                ; preds = %5
  ret ptr %6

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #14
  resume { ptr, i32 } %11
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !44
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !44
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !44
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !94

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  store ptr %7, ptr %2, align 8, !tbaa !69
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8, !tbaa !69
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %34, !prof !96

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !70
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !71
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %34, label %20, !prof !126

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %16, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !75
  %23 = load i32, ptr %12, align 8, !tbaa !70
  br label %24

24:                                               ; preds = %20, %30
  %25 = phi i32 [ %23, %20 ], [ %31, %30 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33, !prof !127

30:                                               ; preds = %24
  %31 = add i32 %25, 1
  store i32 %31, ptr %12, align 8, !tbaa !70
  %32 = icmp eq i32 %31, %18
  br i1 %32, label %34, label %24, !prof !128, !llvm.loop !77

33:                                               ; preds = %24
  store ptr %28, ptr %2, align 8, !tbaa !69
  br label %34

34:                                               ; preds = %30, %11, %33, %8
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE5ResetEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 3
  store i32 -1, ptr %2, align 8, !tbaa !70
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOfEnumerator", ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !69
  tail call void @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !103 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !129
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = load ptr, ptr %2, align 8, !tbaa !44
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !130
  store ptr null, ptr %3, align 8, !tbaa !75
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !132

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !44
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #14, !prof !133
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !103 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !134
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !135

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !136

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !134
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !75
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !137

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !125
  %23 = load i8, ptr %11, align 8, !tbaa !138, !range !59, !noundef !60
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !94

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !97
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !94

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !44
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #14, !prof !139
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !129
  %34 = load ptr, ptr %33, align 8, !tbaa !44
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !140
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !96, !llvm.loop !141

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !75
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !76
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !73
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !142, !llvm.loop !143

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !124
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !44
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZNK11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE15hasMoreElementsEv, i64 35}
!36 = !{ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE11nextElementEv, ptr @_ZN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEE8findNextEv, i64 35}
!37 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!38 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!40 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!48, !51, i64 104}
!48 = !{!"_ZTSN11xercesc_2_722UnionDatatypeValidatorE", !49, i64 0, !51, i64 104, !51, i64 105, !57, i64 112, !57, i64 120, !57, i64 128}
!49 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !50, i64 0, !51, i64 8, !51, i64 9, !51, i64 10, !51, i64 11, !53, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !55, i64 28, !56, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96}
!50 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!51 = !{!"bool", !52, i64 0}
!52 = !{!"omnipotent char", !46, i64 0}
!53 = !{!"short", !52, i64 0}
!54 = !{!"int", !52, i64 0}
!55 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !52, i64 0}
!56 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !52, i64 0}
!57 = !{!"any pointer", !52, i64 0}
!58 = !{!48, !51, i64 105}
!59 = !{i8 0, i8 2}
!60 = !{}
!61 = !{!48, !57, i64 112}
!62 = !{!48, !57, i64 120}
!63 = !{!48, !57, i64 128}
!64 = !{!49, !55, i64 28}
!65 = !{!49, !54, i64 20}
!66 = !{!67, !51, i64 8}
!67 = !{!"_ZTSN11xercesc_2_724RefHashTableOfEnumeratorINS_12KVStringPairEEE", !68, i64 0, !51, i64 8, !57, i64 16, !54, i64 24, !57, i64 32, !57, i64 40}
!68 = !{!"_ZTSN11xercesc_2_713XMLEnumeratorINS_12KVStringPairEEE"}
!69 = !{!67, !57, i64 16}
!70 = !{!67, !54, i64 24}
!71 = !{!67, !57, i64 32}
!72 = !{!67, !57, i64 40}
!73 = !{!74, !54, i64 24}
!74 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !57, i64 0, !51, i64 8, !57, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !57, i64 40}
!75 = !{!74, !57, i64 16}
!76 = !{!57, !57, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!81, !57, i64 24}
!81 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !50, i64 0, !82, i64 8, !82, i64 16, !57, i64 24, !57, i64 32, !57, i64 40}
!82 = !{!"long", !52, i64 0}
!83 = !{!81, !57, i64 32}
!84 = !{!53, !53, i64 0}
!85 = distinct !{!85, !78, !79}
!86 = !{!49, !57, i64 56}
!87 = !{!49, !57, i64 96}
!88 = distinct !{!88, !78, !79}
!89 = distinct !{!89, !78, !79}
!90 = !{!91, !54, i64 12}
!91 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !51, i64 8, !54, i64 12, !54, i64 16, !57, i64 24, !57, i64 32}
!92 = distinct !{!92, !78, !79}
!93 = !{!"function_entry_count", i64 35}
!94 = !{!"branch_weights", i32 0, i32 35}
!95 = !{!"VP", i32 0, i64 35, i64 8042189608553320560, i64 35}
!96 = !{!"branch_weights", i32 35, i32 0}
!97 = !{!98, !57, i64 0}
!98 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!99 = !{!"function_entry_count", i64 2444437052}
!100 = !{!"branch_weights", i32 -1850530244, i32 0}
!101 = !{!91, !57, i64 32}
!102 = !{!91, !57, i64 24}
!103 = !{!"function_entry_count", i64 34}
!104 = !{!"branch_weights", i32 34, i32 0}
!105 = !{!49, !57, i64 40}
!106 = !{!107, !54, i64 12}
!107 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_17DatatypeValidatorEEE", !51, i64 8, !54, i64 12, !54, i64 16, !57, i64 24, !57, i64 32}
!108 = distinct !{!108, !78, !79}
!109 = !{!49, !57, i64 64}
!110 = !{!111, !57, i64 32}
!111 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !112, i64 8, !57, i64 16, !54, i64 24, !57, i64 32, !57, i64 40}
!112 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !52, i64 0}
!113 = distinct !{!113, !78, !79}
!114 = distinct !{!114, !78, !79}
!115 = !{!107, !57, i64 32}
!116 = !{!107, !57, i64 24}
!117 = distinct !{!117, !78, !79}
!118 = distinct !{!118, !78, !79}
!119 = distinct !{!119, !78, !79}
!120 = !{!121, !53, i64 0}
!121 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !53, i64 0, !53, i64 2, !57, i64 8, !57, i64 16, !57, i64 24, !82, i64 32, !82, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !54, i64 96}
!122 = distinct !{!122, !78, !79}
!123 = distinct !{!123, !78, !79}
!124 = !{!111, !57, i64 40}
!125 = !{!98, !57, i64 8}
!126 = !{!"branch_weights", i32 15, i32 20}
!127 = !{!"branch_weights", i32 304, i32 6}
!128 = !{!"branch_weights", i32 14, i32 290}
!129 = !{!74, !57, i64 0}
!130 = !{!"VP", i32 0, i64 34, i64 -7405368087501025645, i64 34}
!131 = !{!74, !57, i64 40}
!132 = !{!"branch_weights", i32 0, i32 34}
!133 = !{!"VP", i32 0, i64 34, i64 -5147776714887549805, i64 34}
!134 = !{!74, !54, i64 32}
!135 = !{!"branch_weights", i32 5, i32 29}
!136 = !{!"branch_weights", i32 1, i32 231}
!137 = !{!"branch_weights", i32 360, i32 35}
!138 = !{!74, !51, i64 8}
!139 = !{!"VP", i32 0, i64 35, i64 -2769809254715685994, i64 35}
!140 = !{!"VP", i32 0, i64 35, i64 -7405368087501025645, i64 35}
!141 = distinct !{!141, !78, !79}
!142 = !{!"branch_weights", i32 2929, i32 231}
!143 = distinct !{!143, !78, !79}
