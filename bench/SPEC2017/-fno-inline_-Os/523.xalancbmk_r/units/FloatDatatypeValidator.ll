; ModuleID = 'FloatDatatypeValidator.cpp'
source_filename = "FloatDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLFloat" = type { %"class.xercesc_2_7::XMLAbstractDoubleFloat" }
%"class.xercesc_2_7::XMLAbstractDoubleFloat" = type { %"class.xercesc_2_7::XMLNumber", double, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::AbstractNumericFacetValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE = comdat any

$_ZN11xercesc_2_717DatatypeValidator10setBoundedEb = comdat any

$_ZN11xercesc_2_717DatatypeValidator9setFiniteEb = comdat any

$_ZN11xercesc_2_717DatatypeValidator10setNumericEb = comdat any

$_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_78XMLFloat13compareValuesEPKS0_S2_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getRegexEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getPatternEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = comdat any

@_ZTVN11xercesc_2_722FloatDatatypeValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722FloatDatatypeValidatorE, ptr @_ZN11xercesc_2_722FloatDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_722FloatDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_722FloatDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_722FloatDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_722FloatDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_724AbstractNumericValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_722FloatDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722FloatDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722FloatDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_722FloatDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_722FloatDatatypeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_722FloatDatatypeValidator15setMaxExclusiveEPKt, ptr @_ZN11xercesc_2_722FloatDatatypeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_722FloatDatatypeValidator15setMinExclusiveEPKt, ptr @_ZN11xercesc_2_722FloatDatatypeValidator14setEnumerationEPNS_13MemoryManagerE] }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [27 x i8] c"FloatDatatypeValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeFacetExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"FloatDatatypeValidator\00", align 1
@_ZN11xercesc_2_722FloatDatatypeValidator27classFloatDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_722FloatDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_722FloatDatatypeValidatorE = dso_local constant [40 x i8] c"N11xercesc_2_722FloatDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_724AbstractNumericValidatorE = external constant ptr
@_ZTIN11xercesc_2_722FloatDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722FloatDatatypeValidatorE, ptr @_ZTIN11xercesc_2_724AbstractNumericValidatorE }, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_711RefVectorOfINS_9XMLNumberEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_722FloatDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_722FloatDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_722FloatDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_722FloatDatatypeValidatorD2Ev
@_ZN11xercesc_2_722FloatDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 6, ptr noundef %1) #10
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_722FloatDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  tail call void @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 1) #10
  tail call void @_ZN11xercesc_2_717DatatypeValidator10setBoundedEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext true) #10
  tail call void @_ZN11xercesc_2_717DatatypeValidator9setFiniteEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext true) #10
  tail call void @_ZN11xercesc_2_717DatatypeValidator10setNumericEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext true) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !51 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 8, !tbaa !52
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setBoundedEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 3
  store i8 %3, ptr %4, align 2, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator9setFiniteEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !64 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 1, !tbaa !65
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setNumericEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !66 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 1, !tbaa !67
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 6, ptr noundef %5) #10
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_722FloatDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef %5) #10
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret void

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !69 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_722FloatDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722FloatDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %5 = alloca %"class.xercesc_2_7::XMLFloat", align 8
  %6 = alloca %"class.xercesc_2_7::XMLFloat", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #12
  call void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, ptr noundef %3) #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #12
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %2, ptr noundef %3) #10
          to label %7 unwind label %13

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
          to label %12 unwind label %15

12:                                               ; preds = %7
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #12
  ret i32 %11

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #11
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #12
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722FloatDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %4) #10
  invoke void @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #11
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #10
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_722FloatDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_722FloatDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !68 {
  %4 = tail call noundef i32 @_ZN11xercesc_2_78XMLFloat13compareValuesEPKS0_S2_(ptr noundef %1, ptr noundef %2) #10
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_78XMLFloat13compareValuesEPKS0_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !68 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #10
  %4 = tail call noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %3) #10
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator15setMaxInclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, ptr noundef %6) #10
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 6
  store ptr %5, ptr %8, align 8, !tbaa !71
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #11
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator15setMaxExclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, ptr noundef %6) #10
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 7
  store ptr %5, ptr %8, align 8, !tbaa !73
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #11
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator15setMinInclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, ptr noundef %6) #10
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 8
  store ptr %5, ptr %8, align 8, !tbaa !74
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #11
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator15setMinExclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #10
  %6 = load ptr, ptr %3, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %1, ptr noundef %6) #10
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 9
  store ptr %5, ptr %8, align 8, !tbaa !75
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #11
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator14setEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %76, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #10
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %7, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %6, %20
  %13 = phi i32 [ %21, %20 ], [ 0, %6 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !76
  %15 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #10
          to label %16 unwind label %23

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(160) %8, ptr noundef %15, ptr noundef null, i1 noundef zeroext false, ptr noundef %1) #10
          to label %20 unwind label %23

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %42, label %12, !llvm.loop !77

23:                                               ; preds = %16, %12
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #12
  %31 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %32 = load ptr, ptr %3, align 8, !tbaa !76
  %33 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef %13) #10
          to label %34 unwind label %36

34:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str, i32 noundef 148, i32 noundef 181, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1) #10
          to label %35 unwind label %36

35:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %82 unwind label %38

36:                                               ; preds = %34, %28
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #12
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  invoke void @__cxa_end_catch()
          to label %77 unwind label %79

42:                                               ; preds = %20, %6
  br i1 %10, label %43, label %52

43:                                               ; preds = %42, %43
  %44 = phi i32 [ %50, %43 ], [ 0, %42 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !76
  %46 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef %44) #10
  %47 = load ptr, ptr %0, align 8, !tbaa !48
  %48 = getelementptr inbounds ptr, ptr %47, i64 17
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %46, ptr noundef null, i1 noundef zeroext false, ptr noundef %1) #10
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq i32 %50, %7
  br i1 %51, label %52, label %43, !llvm.loop !79

52:                                               ; preds = %43, %42
  %53 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !70
  %55 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %54) #10
  %56 = load ptr, ptr %53, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef %7, i1 noundef zeroext true, ptr noundef %56) #10
          to label %57 unwind label %72

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  store ptr %55, ptr %58, align 8, !tbaa !80
  %59 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %59, align 4, !tbaa !81
  br i1 %10, label %60, label %76

60:                                               ; preds = %57, %69
  %61 = phi i32 [ %70, %69 ], [ 0, %57 ]
  %62 = load ptr, ptr %58, align 8, !tbaa !80
  %63 = load ptr, ptr %53, align 8, !tbaa !70
  %64 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %63) #10
  %65 = load ptr, ptr %3, align 8, !tbaa !76
  %66 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %65, i32 noundef %61) #10
          to label %67 unwind label %74

67:                                               ; preds = %60
  %68 = load ptr, ptr %53, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %64, ptr noundef %66, ptr noundef %68) #10
          to label %69 unwind label %74

69:                                               ; preds = %67
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %62, ptr noundef nonnull %64, i32 noundef %61) #10
  %70 = add nuw nsw i32 %61, 1
  %71 = icmp eq i32 %70, %7
  br i1 %71, label %76, label %60, !llvm.loop !82

72:                                               ; preds = %52
  %73 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %55, ptr noundef %54) #11
  br label %77

74:                                               ; preds = %67, %60
  %75 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %64, ptr noundef %63) #11
  br label %77

76:                                               ; preds = %69, %57, %2
  ret void

77:                                               ; preds = %40, %74, %72, %23
  %78 = phi { ptr, i32 } [ %24, %23 ], [ %75, %74 ], [ %73, %72 ], [ %41, %40 ]
  resume { ptr, i32 } %78

79:                                               ; preds = %40
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  tail call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !83 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !84
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !86 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !88 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !89

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #10
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !91
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #10
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #10
  br label %40

8:                                                ; preds = %3
  %9 = icmp ult i32 %5, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 84, i32 noundef 116, ptr noundef %13) #10
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #12
  resume { ptr, i32 } %16

17:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #10
  %18 = load i32, ptr %4, align 4, !tbaa !93
  %19 = icmp ugt i32 %18, %2
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = zext i32 %2 to i64
  br label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %24 = zext i32 %18 to i64
  %25 = zext i32 %2 to i64
  br label %32

26:                                               ; preds = %32, %20
  %27 = phi i64 [ %21, %20 ], [ %25, %32 ]
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  %30 = getelementptr inbounds ptr, ptr %29, i64 %27
  store ptr %1, ptr %30, align 8, !tbaa !92
  %31 = add i32 %18, 1
  store i32 %31, ptr %4, align 4, !tbaa !93
  br label %40

32:                                               ; preds = %22, %32
  %33 = phi i64 [ %24, %22 ], [ %35, %32 ]
  %34 = load ptr, ptr %23, align 8, !tbaa !96
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !92
  %38 = getelementptr inbounds ptr, ptr %34, i64 %33
  store ptr %37, ptr %38, align 8, !tbaa !92
  %39 = icmp ugt i64 %35, %25
  br i1 %39, label %32, label %26, !llvm.loop !97

40:                                               ; preds = %26, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %6 = alloca %"class.xercesc_2_7::XMLFloat", align 8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(160) %7, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4) #10
  br label %13

13:                                               ; preds = %9, %5
  %14 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %59, label %17

17:                                               ; preds = %13
  %18 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %50

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %22 = load ptr, ptr %21, align 8, !tbaa !70
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %22) #10
          to label %24 unwind label %28

24:                                               ; preds = %20
  %25 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %26 = load ptr, ptr %21, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %23, ptr noundef %25, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %26) #10
          to label %27 unwind label %30

27:                                               ; preds = %24
  tail call void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %23) #10
  br label %50

28:                                               ; preds = %20
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %32

30:                                               ; preds = %24
  %31 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #11
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  %34 = extractvalue { ptr, i32 } %33, 1
  %35 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %120

37:                                               ; preds = %32
  %38 = extractvalue { ptr, i32 } %33, 0
  %39 = tail call ptr @__cxa_begin_catch(ptr %38) #12
  %40 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %41 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %39) #10
  %42 = load ptr, ptr %21, align 8, !tbaa !70
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 299, ptr noundef %41, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %42) #10
          to label %43 unwind label %44

43:                                               ; preds = %37
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %125 unwind label %46

44:                                               ; preds = %37
  %45 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %40) #12
  br label %48

46:                                               ; preds = %43
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  invoke void @__cxa_end_catch()
          to label %120 unwind label %122

50:                                               ; preds = %27, %17
  %51 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %51, ptr noundef %1, ptr noundef %4) #10
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %55 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 238, ptr noundef %1, ptr noundef %55, ptr noundef null, ptr noundef null, ptr noundef %4) #10
          to label %56 unwind label %57

56:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %54) #12
  br label %120

59:                                               ; preds = %50, %13
  br i1 %3, label %119, label %60

60:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #12
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %1, ptr noundef %4) #10
          to label %61 unwind label %79

61:                                               ; preds = %60
  %62 = call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #10
  %63 = icmp eq ptr %62, null
  br i1 %63, label %98, label %64

64:                                               ; preds = %61
  %65 = call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #10
  %66 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %65) #10
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %64, %87
  %69 = phi i32 [ %88, %87 ], [ 0, %64 ]
  %70 = call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #10
  %71 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %70, i32 noundef %69) #10
          to label %72 unwind label %83

72:                                               ; preds = %68
  %73 = load ptr, ptr %0, align 8, !tbaa !48
  %74 = getelementptr inbounds ptr, ptr %73, i64 16
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef i32 %75(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %71) #10
          to label %77 unwind label %83

77:                                               ; preds = %72
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %90, label %87

79:                                               ; preds = %60
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %102

81:                                               ; preds = %98
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %100

83:                                               ; preds = %68, %72
  %84 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %100

85:                                               ; preds = %95
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %100

87:                                               ; preds = %77
  %88 = add nuw nsw i32 %69, 1
  %89 = icmp eq i32 %88, %66
  br i1 %89, label %93, label %68, !llvm.loop !98

90:                                               ; preds = %77, %64
  %91 = phi i32 [ 0, %64 ], [ %69, %77 ]
  %92 = icmp eq i32 %91, %66
  br i1 %92, label %93, label %98

93:                                               ; preds = %87, %90
  %94 = call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %94, ptr noundef nonnull @.str, i32 noundef 228, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #10
          to label %95 unwind label %96

95:                                               ; preds = %93
  invoke void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %125 unwind label %85

96:                                               ; preds = %93
  %97 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %94) #12
  br label %100

98:                                               ; preds = %90, %61
  invoke void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %4) #10
          to label %99 unwind label %81

99:                                               ; preds = %98
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  br label %119

100:                                              ; preds = %83, %85, %96, %81
  %101 = phi { ptr, i32 } [ %82, %81 ], [ %97, %96 ], [ %84, %83 ], [ %86, %85 ]
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #11
  br label %102

102:                                              ; preds = %100, %79
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %80, %79 ]
  %104 = extractvalue { ptr, i32 } %103, 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #12
  %105 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = extractvalue { ptr, i32 } %103, 0
  %109 = call ptr @__cxa_begin_catch(ptr %108) #12
  %110 = call ptr @__cxa_allocate_exception(i64 48) #12
  %111 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %109) #10
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull @.str, i32 noundef 235, i32 noundef 299, ptr noundef %111, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #10
          to label %112 unwind label %113

112:                                              ; preds = %107
  invoke void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %125 unwind label %115

113:                                              ; preds = %107
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %110) #12
  br label %117

115:                                              ; preds = %112
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi { ptr, i32 } [ %116, %115 ], [ %114, %113 ]
  invoke void @__cxa_end_catch()
          to label %120 unwind label %122

119:                                              ; preds = %59, %99
  ret void

120:                                              ; preds = %117, %48, %102, %57, %32
  %121 = phi { ptr, i32 } [ %58, %57 ], [ %103, %102 ], [ %33, %32 ], [ %49, %48 ], [ %118, %117 ]
  resume { ptr, i32 } %121

122:                                              ; preds = %117, %48
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  call void @__clang_call_terminate(ptr %124) #14
  unreachable

125:                                              ; preds = %112, %95, %43
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !100
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !103 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !104 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #2 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #10
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !92
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_722FloatDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %0) #10
  invoke void @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %0) #10
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #11
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_722FloatDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !68 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_722FloatDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_722FloatDatatypeValidator27classFloatDatatypeValidatorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_722FloatDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !68 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef 0) #10
  br label %6

6:                                                ; preds = %4, %2
  tail call void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = load i16, ptr %0, align 8, !tbaa !110
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_724AbstractNumericValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !68 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %7) #10
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %8, %0
  %11 = and i1 %10, %9
  br i1 %11, label %6, label %12, !llvm.loop !113

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_722XMLAbstractDoubleFloat13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722XMLAbstractDoubleFloat16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #10
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #10
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #10
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #11
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !68 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !120
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !93
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !121
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !95
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !48
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #10
  store ptr %16, ptr %9, align 8, !tbaa !96
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !96
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !92
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !122
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !48
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !120, !range !123, !noundef !124
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !96
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #11
  %22 = load i32, ptr %6, align 4, !tbaa !93
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !125

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = load ptr, ptr %30, align 8, !tbaa !48
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #10
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !93
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10) #10
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !120, !range !123, !noundef !124
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !92
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !48
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25) #11
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !93
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !120, !range !123, !noundef !124
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !96
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !92
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !48
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %17) #11
  %23 = load ptr, ptr %7, align 8, !tbaa !96
  %24 = load i32, ptr %2, align 4, !tbaa !93
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !92
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !126
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9) #10
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !120, !range !123, !noundef !124
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !92
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !48
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #11
  %28 = load i32, ptr %3, align 4, !tbaa !93
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
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !96
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !96
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !92
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !92
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !127

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !92
  store i32 %31, ptr %3, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !93
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !93
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !120, !range !123, !noundef !124
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !48
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #11
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !120, !range !123, !noundef !124
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !96
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !92
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !48
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #11
  %22 = load i32, ptr %6, align 4, !tbaa !93
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !128

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = load ptr, ptr %30, align 8, !tbaa !48
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !129 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !68 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !68 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #10
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !93
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !92
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !68 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !93
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !48
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #10
  %21 = load i32, ptr %3, align 4, !tbaa !93
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !92
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !96
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !92
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !92
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !130

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !95
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = load ptr, ptr %46, align 8, !tbaa !48
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #10
  store ptr %20, ptr %47, align 8, !tbaa !96
  store i32 %12, ptr %6, align 8, !tbaa !121
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator10setBoundedEb, i64 1}
!38 = !{ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator9setFiniteEb, i64 1}
!39 = !{ptr @_ZN11xercesc_2_722FloatDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator10setNumericEb, i64 1}
!40 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 14}
!41 = !{ptr @_ZN11xercesc_2_722FloatDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!45 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!49, !49, i64 0}
!49 = !{!"vtable pointer", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"function_entry_count", i64 49}
!52 = !{!53, !60, i64 32}
!53 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !54, i64 0, !55, i64 8, !55, i64 9, !55, i64 10, !55, i64 11, !57, i64 12, !58, i64 16, !58, i64 20, !58, i64 24, !59, i64 28, !60, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !61, i64 96}
!54 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!55 = !{!"bool", !56, i64 0}
!56 = !{!"omnipotent char", !50, i64 0}
!57 = !{!"short", !56, i64 0}
!58 = !{!"int", !56, i64 0}
!59 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !56, i64 0}
!60 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !56, i64 0}
!61 = !{!"any pointer", !56, i64 0}
!62 = !{!"function_entry_count", i64 39}
!63 = !{!53, !55, i64 10}
!64 = !{!"function_entry_count", i64 41}
!65 = !{!53, !55, i64 9}
!66 = !{!"function_entry_count", i64 40}
!67 = !{!53, !55, i64 11}
!68 = !{!"function_entry_count", i64 0}
!69 = !{!"function_entry_count", i64 14}
!70 = !{!53, !61, i64 96}
!71 = !{!72, !61, i64 112}
!72 = !{!"_ZTSN11xercesc_2_729AbstractNumericFacetValidatorE", !53, i64 0, !55, i64 104, !55, i64 105, !55, i64 106, !55, i64 107, !55, i64 108, !61, i64 112, !61, i64 120, !61, i64 128, !61, i64 136, !61, i64 144, !61, i64 152}
!73 = !{!72, !61, i64 120}
!74 = !{!72, !61, i64 128}
!75 = !{!72, !61, i64 136}
!76 = !{!72, !61, i64 152}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = distinct !{!79, !78}
!80 = !{!72, !61, i64 144}
!81 = !{!72, !55, i64 108}
!82 = distinct !{!82, !78}
!83 = !{!"function_entry_count", i64 240751}
!84 = !{!85, !58, i64 12}
!85 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !55, i64 8, !58, i64 12, !58, i64 16, !61, i64 24, !61, i64 32}
!86 = !{!"function_entry_count", i64 1580484}
!87 = !{!53, !61, i64 40}
!88 = !{!"function_entry_count", i64 2444437052}
!89 = !{!"branch_weights", i32 -1850530243, i32 1}
!90 = !{!85, !61, i64 32}
!91 = !{!85, !61, i64 24}
!92 = !{!61, !61, i64 0}
!93 = !{!94, !58, i64 12}
!94 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE", !55, i64 8, !58, i64 12, !58, i64 16, !61, i64 24, !61, i64 32}
!95 = !{!94, !61, i64 32}
!96 = !{!94, !61, i64 24}
!97 = distinct !{!97, !78}
!98 = distinct !{!98, !78}
!99 = !{!"function_entry_count", i64 2082808}
!100 = !{!53, !58, i64 20}
!101 = !{!"function_entry_count", i64 645404}
!102 = !{!53, !61, i64 64}
!103 = !{!"function_entry_count", i64 10}
!104 = !{!"function_entry_count", i64 23}
!105 = !{!53, !61, i64 56}
!106 = !{!107, !61, i64 32}
!107 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !108, i64 8, !61, i64 16, !58, i64 24, !61, i64 32, !61, i64 40}
!108 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !56, i64 0}
!109 = !{!"function_entry_count", i64 91734}
!110 = !{!111, !57, i64 0}
!111 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !57, i64 0, !57, i64 2, !61, i64 8, !61, i64 16, !61, i64 24, !112, i64 32, !112, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !58, i64 96}
!112 = !{!"long", !56, i64 0}
!113 = distinct !{!113, !78}
!114 = !{!115, !61, i64 48}
!115 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE", !116, i64 0, !117, i64 8, !118, i64 16, !55, i64 20, !55, i64 21, !58, i64 24, !61, i64 32, !61, i64 40, !61, i64 48}
!116 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !54, i64 0}
!117 = !{!"double", !56, i64 0}
!118 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloat11LiteralTypeE", !56, i64 0}
!119 = !{!107, !61, i64 40}
!120 = !{!94, !55, i64 8}
!121 = !{!94, !58, i64 16}
!122 = distinct !{!122, !78}
!123 = !{i8 0, i8 2}
!124 = !{}
!125 = distinct !{!125, !78}
!126 = distinct !{!126, !78}
!127 = distinct !{!127, !78}
!128 = distinct !{!128, !78}
!129 = !{!"function_entry_count", i64 5836268}
!130 = distinct !{!130, !78}
