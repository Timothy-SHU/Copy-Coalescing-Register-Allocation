; ModuleID = 'DecimalDatatypeValidator.cpp'
source_filename = "DecimalDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DecimalDatatypeValidator" = type { %"class.xercesc_2_7::AbstractNumericValidator", i32, i32 }
%"class.xercesc_2_7::AbstractNumericValidator" = type { %"class.xercesc_2_7::AbstractNumericFacetValidator" }
%"class.xercesc_2_7::AbstractNumericFacetValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBigDecimal" = type { %"class.xercesc_2_7::XMLNumber", i32, i32, i32, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

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

$_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

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

@_ZTVN11xercesc_2_724DecimalDatatypeValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724DecimalDatatypeValidatorE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxExclusiveEPKt, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinExclusiveEPKt, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator14setEnumerationEPNS_13MemoryManagerE] }, align 8
@_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str = private unnamed_addr constant [29 x i8] c"DecimalDatatypeValidator.cpp\00", align 1
@_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeFacetExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"DecimalDatatypeValidator\00", align 1
@_ZN11xercesc_2_724DecimalDatatypeValidator29classDecimalDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_724DecimalDatatypeValidatorE = dso_local constant [42 x i8] c"N11xercesc_2_724DecimalDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_724AbstractNumericValidatorE = external constant ptr
@_ZTIN11xercesc_2_724DecimalDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724DecimalDatatypeValidatorE, ptr @_ZTIN11xercesc_2_724AbstractNumericValidatorE }, align 8
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

@_ZN11xercesc_2_724DecimalDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_724DecimalDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_724DecimalDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorD2Ev
@_ZN11xercesc_2_724DecimalDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 8, ptr noundef %1)
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !64
  %4 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !77
  %5 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 2, ptr %5, align 8, !tbaa !78
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 4
  store i8 1, ptr %6, align 1, !tbaa !79
  ret void
}

declare void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 8, ptr noundef %5)
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !77
  invoke void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef %5)
          to label %9 unwind label %10, !prof !81

9:                                                ; preds = %6
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #3 align 2 !prof !83 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_724DecimalDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %5 = alloca %"class.xercesc_2_7::XMLBigDecimal", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBigDecimal", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #17
  call void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %2, ptr noundef %3)
          to label %7 unwind label %13

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !61
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %5, ptr noundef nonnull %6)
          to label %12 unwind label %15

12:                                               ; preds = %7
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #17
  ret i32 %11

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #17
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %4)
  invoke void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %7 unwind label %8, !prof !81

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #17
  resume { ptr, i32 } %9
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !84 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6, !prof !85

6:                                                ; preds = %4
  %7 = load i16, ptr %1, align 2, !tbaa !86
  %8 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, align 2, !tbaa !86
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %13, label %51, !prof !87

10:                                               ; preds = %4
  %11 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, align 2, !tbaa !86
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %51

13:                                               ; preds = %6, %18
  %14 = phi i16 [ %21, %18 ], [ %7, %6 ]
  %15 = phi ptr [ %20, %18 ], [ @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE, %6 ]
  %16 = phi ptr [ %19, %18 ], [ %1, %6 ]
  %17 = icmp eq i16 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  %20 = getelementptr inbounds i16, ptr %15, i64 1
  %21 = load i16, ptr %19, align 2, !tbaa !86
  %22 = load i16, ptr %20, align 2, !tbaa !86
  %23 = icmp eq i16 %21, %22
  br i1 %23, label %13, label %51, !prof !87, !llvm.loop !88

24:                                               ; preds = %13, %10
  %25 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
          to label %26 unwind label %28

26:                                               ; preds = %24
  %27 = icmp slt i32 %25, 1
  br i1 %27, label %44, label %49

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  %30 = extractvalue { ptr, i32 } %29, 1
  %31 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #17
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %111

33:                                               ; preds = %28
  %34 = extractvalue { ptr, i32 } %29, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #17
  %36 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 189, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3)
          to label %37 unwind label %38

37:                                               ; preds = %33
  invoke void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %116 unwind label %40

38:                                               ; preds = %33
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %36) #17
  br label %42

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  invoke void @__cxa_end_catch()
          to label %111 unwind label %113

44:                                               ; preds = %26
  %45 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 191, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3)
          to label %46 unwind label %47

46:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

47:                                               ; preds = %44
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %108

49:                                               ; preds = %26
  %50 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 %25, ptr %50, align 8, !tbaa !64
  br label %103

51:                                               ; preds = %18, %6, %10
  br i1 %5, label %56, label %52, !prof !85

52:                                               ; preds = %51
  %53 = load i16, ptr %1, align 2, !tbaa !86
  %54 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, align 2, !tbaa !86
  %55 = icmp eq i16 %53, %54
  br i1 %55, label %59, label %98, !prof !91

56:                                               ; preds = %51
  %57 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, align 2, !tbaa !86
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %70, label %98

59:                                               ; preds = %52, %64
  %60 = phi i16 [ %67, %64 ], [ %53, %52 ]
  %61 = phi ptr [ %66, %64 ], [ @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE, %52 ]
  %62 = phi ptr [ %65, %64 ], [ %1, %52 ]
  %63 = icmp eq i16 %60, 0
  br i1 %63, label %70, label %64, !prof !92

64:                                               ; preds = %59
  %65 = getelementptr inbounds i16, ptr %62, i64 1
  %66 = getelementptr inbounds i16, ptr %61, i64 1
  %67 = load i16, ptr %65, align 2, !tbaa !86
  %68 = load i16, ptr %66, align 2, !tbaa !86
  %69 = icmp eq i16 %67, %68
  br i1 %69, label %59, label %98, !prof !93, !llvm.loop !88

70:                                               ; preds = %59, %56
  %71 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
          to label %72 unwind label %74, !prof !94

72:                                               ; preds = %70
  %73 = icmp slt i32 %71, 0
  br i1 %73, label %91, label %96, !prof !85

74:                                               ; preds = %70
  %75 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  %76 = extractvalue { ptr, i32 } %75, 1
  %77 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #17
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %74
  %80 = extractvalue { ptr, i32 } %75, 0
  %81 = tail call ptr @__cxa_begin_catch(ptr %80) #17
  %82 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %82, ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 190, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3)
          to label %83 unwind label %85

83:                                               ; preds = %79
  invoke void @__cxa_throw(ptr nonnull %82, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %84 unwind label %87

84:                                               ; preds = %83
  unreachable

85:                                               ; preds = %79
  %86 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %82) #17
  br label %89

87:                                               ; preds = %83
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %86, %85 ]
  invoke void @__cxa_end_catch()
          to label %111 unwind label %113

91:                                               ; preds = %72
  %92 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %92, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 192, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3)
          to label %93 unwind label %94

93:                                               ; preds = %91
  tail call void @__cxa_throw(ptr nonnull %92, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

94:                                               ; preds = %91
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %108

96:                                               ; preds = %72
  %97 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 %71, ptr %97, align 4, !tbaa !77
  br label %103

98:                                               ; preds = %64, %52, %56
  %99 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %99, ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 171, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3)
          to label %100 unwind label %101

100:                                              ; preds = %98
  tail call void @__cxa_throw(ptr nonnull %99, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

101:                                              ; preds = %98
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %108

103:                                              ; preds = %96, %49
  %104 = phi i32 [ 1024, %96 ], [ 512, %49 ]
  %105 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %106 = load i32, ptr %105, align 4, !tbaa !95
  %107 = or i32 %106, %104
  store i32 %107, ptr %105, align 4, !tbaa !95
  ret void

108:                                              ; preds = %101, %47, %94
  %109 = phi ptr [ %92, %94 ], [ %45, %47 ], [ %99, %101 ]
  %110 = phi { ptr, i32 } [ %95, %94 ], [ %48, %47 ], [ %102, %101 ]
  tail call void @__cxa_free_exception(ptr %109) #17
  br label %111

111:                                              ; preds = %108, %89, %42, %74, %28
  %112 = phi { ptr, i32 } [ %29, %28 ], [ %75, %74 ], [ %43, %42 ], [ %90, %89 ], [ %110, %108 ]
  resume { ptr, i32 } %112

113:                                              ; preds = %89, %42
  %114 = landingpad { ptr, i32 }
          catch ptr null
  %115 = extractvalue { ptr, i32 } %114, 0
  tail call void @__clang_call_terminate(ptr %115) #19
  unreachable

116:                                              ; preds = %37
  unreachable
}

declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !82 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #7 align 2 !prof !80 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5, !prof !97

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 4, !tbaa !95
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %3, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !95
  %10 = and i32 %9, 512
  %11 = icmp ne i32 %10, 0
  %12 = and i32 %7, 512
  %13 = icmp eq i32 %12, 0
  %14 = and i1 %13, %11
  br i1 %14, label %15, label %20, !prof !97

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !64
  %19 = or i32 %7, 512
  store i32 %19, ptr %6, align 4, !tbaa !95
  br label %20

20:                                               ; preds = %15, %5
  %21 = and i32 %9, 1024
  %22 = icmp ne i32 %21, 0
  %23 = and i32 %7, 1024
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %32, !prof !98

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %3, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 %28, ptr %29, align 4, !tbaa !77
  %30 = load i32, ptr %6, align 4, !tbaa !95
  %31 = or i32 %30, 1024
  store i32 %31, ptr %6, align 4, !tbaa !95
  br label %32

32:                                               ; preds = %20, %26, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_724DecimalDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !95
  %7 = and i32 %6, 1536
  %8 = icmp eq i32 %7, 1536
  br i1 %8, label %9, label %21, !prof !97

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !64
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #17
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %11, ptr noundef nonnull %3, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %16 = load i32, ptr %12, align 8, !tbaa !64
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %16, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %17 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 199, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %18 unwind label %19

18:                                               ; preds = %15
  call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #17
  resume { ptr, i32 } %20

21:                                               ; preds = %9, %2
  ret void
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xercesc_2_724DecimalDatatypeValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !80 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = alloca [65 x i16], align 16
  %6 = alloca [65 x i16], align 16
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = alloca [65 x i16], align 16
  %12 = alloca [65 x i16], align 16
  %13 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = icmp eq ptr %14, null
  br i1 %15, label %100, label %16, !prof !97

16:                                               ; preds = %2
  %17 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 4, !tbaa !95
  %19 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %14, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !95
  %21 = and i32 %18, 512
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %20, 512
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 true, i1 %24, !prof !81
  br i1 %25, label %51, label %26, !prof !81

26:                                               ; preds = %16
  %27 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !64
  %29 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %14, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !64
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #17
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %28, ptr noundef nonnull %3, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %33 = load i32, ptr %29, align 8, !tbaa !64
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %33, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %34 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %34, ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 220, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %35 unwind label %36

35:                                               ; preds = %32
  call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %34) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #17
  br label %101

38:                                               ; preds = %26
  %39 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %14, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !99
  %41 = and i32 %40, 512
  %42 = icmp eq i32 %41, 0
  %43 = icmp eq i32 %28, %30
  %44 = or i1 %43, %42
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %6) #17
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %28, ptr noundef nonnull %5, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %46 = load i32, ptr %29, align 8, !tbaa !64
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %46, ptr noundef nonnull %6, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %47 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 227, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %48 unwind label %49

48:                                               ; preds = %45
  call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

49:                                               ; preds = %45
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %47) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #17
  br label %101

51:                                               ; preds = %38, %16
  %52 = and i32 %18, 1024
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %100, label %54, !prof !98

54:                                               ; preds = %51
  %55 = and i32 %20, 1024
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %69, label %57, !prof !94

57:                                               ; preds = %54
  %58 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !77
  %60 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %14, i64 0, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !77
  %62 = icmp ugt i32 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #17
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %59, ptr noundef nonnull %7, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %64 = load i32, ptr %60, align 4, !tbaa !77
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %64, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %65 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 222, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %66 unwind label %67

66:                                               ; preds = %63
  call void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

67:                                               ; preds = %63
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %65) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #17
  br label %101

69:                                               ; preds = %57, %54
  br i1 %24, label %82, label %70, !prof !94

70:                                               ; preds = %69
  %71 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %72 = load i32, ptr %71, align 4, !tbaa !77
  %73 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %14, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !64
  %75 = icmp ugt i32 %72, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #17
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %72, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %77 = load i32, ptr %73, align 8, !tbaa !64
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %77, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %78 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %78, ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 221, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %79 unwind label %80

79:                                               ; preds = %76
  call void @__cxa_throw(ptr nonnull %78, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

80:                                               ; preds = %76
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %78) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #17
  br label %101

82:                                               ; preds = %70, %69
  br i1 %56, label %100, label %83, !prof !94

83:                                               ; preds = %82
  %84 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %14, i64 0, i32 8
  %85 = load i32, ptr %84, align 8, !tbaa !99
  %86 = and i32 %85, 1024
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !77
  %91 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %14, i64 0, i32 2
  %92 = load i32, ptr %91, align 4, !tbaa !77
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %12) #17
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %90, ptr noundef nonnull %11, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %95 = load i32, ptr %91, align 4, !tbaa !77
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %95, ptr noundef nonnull %12, i32 noundef 64, i32 noundef 10, ptr noundef %1)
  %96 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 228, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %97 unwind label %98

97:                                               ; preds = %94
  call void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

98:                                               ; preds = %94
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %96) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %11) #17
  br label %101

100:                                              ; preds = %51, %88, %83, %82, %2
  ret void

101:                                              ; preds = %98, %80, %67, %49, %36
  %102 = phi { ptr, i32 } [ %37, %36 ], [ %50, %49 ], [ %68, %67 ], [ %81, %80 ], [ %99, %98 ]
  resume { ptr, i32 } %102
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_724DecimalDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 align 2 !prof !100 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %1, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !101
  %6 = tail call noundef i32 @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %5)
  ret i32 %6
}

declare noundef i32 @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !104 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6)
          to label %7 unwind label %9, !prof !106

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 6
  store ptr %5, ptr %8, align 8, !tbaa !107
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #17
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxExclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6)
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 7
  store ptr %5, ptr %8, align 8, !tbaa !108
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #17
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6)
          to label %7 unwind label %9, !prof !110

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 8
  store ptr %5, ptr %8, align 8, !tbaa !111
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #17
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinExclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6)
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 9
  store ptr %5, ptr %8, align 8, !tbaa !112
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #17
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator14setEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !114
  %9 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp ne ptr %10, null
  %12 = icmp sgt i32 %8, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %44

14:                                               ; preds = %6, %22
  %15 = phi i32 [ %23, %22 ], [ 0, %6 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !113
  %17 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %15)
          to label %18 unwind label %25

18:                                               ; preds = %14
  %19 = load ptr, ptr %10, align 8, !tbaa !61
  %20 = getelementptr inbounds ptr, ptr %19, i64 17
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(168) %10, ptr noundef %17, ptr noundef null, i1 noundef zeroext false, ptr noundef %1)
          to label %22 unwind label %25

22:                                               ; preds = %18
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %44, label %14, !llvm.loop !116

25:                                               ; preds = %18, %14
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %27 = extractvalue { ptr, i32 } %26, 1
  %28 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #17
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %97

30:                                               ; preds = %25
  %31 = extractvalue { ptr, i32 } %26, 0
  %32 = tail call ptr @__cxa_begin_catch(ptr %31) #17
  %33 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %34 = load ptr, ptr %3, align 8, !tbaa !113
  %35 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef %15)
          to label %36 unwind label %38

36:                                               ; preds = %30
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 181, ptr noundef %35, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %37 unwind label %38

37:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %102 unwind label %40

38:                                               ; preds = %36, %30
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %33) #17
  br label %42

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi { ptr, i32 } [ %41, %40 ], [ %39, %38 ]
  invoke void @__cxa_end_catch()
          to label %97 unwind label %99

44:                                               ; preds = %22, %6
  %45 = icmp sgt i32 %8, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %44, %46
  %47 = phi i32 [ %53, %46 ], [ 0, %44 ]
  %48 = load ptr, ptr %3, align 8, !tbaa !113
  %49 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %48, i32 noundef %47)
  %50 = load ptr, ptr %0, align 8, !tbaa !61
  %51 = getelementptr inbounds ptr, ptr %50, i64 17
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %49, ptr noundef null, i1 noundef zeroext false, ptr noundef %1)
  %53 = add nuw nsw i32 %47, 1
  %54 = icmp eq i32 %53, %8
  br i1 %54, label %55, label %46, !llvm.loop !117

55:                                               ; preds = %46, %44
  %56 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %56, align 8, !tbaa !61
  %57 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %56, i64 0, i32 1
  store i8 1, ptr %57, align 8, !tbaa !118
  %58 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %56, i64 0, i32 2
  store i32 0, ptr %58, align 4, !tbaa !120
  %59 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %56, i64 0, i32 3
  store i32 %8, ptr %59, align 8, !tbaa !121
  %60 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %56, i64 0, i32 4
  store ptr null, ptr %60, align 8, !tbaa !122
  %61 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %56, i64 0, i32 5
  store ptr %1, ptr %61, align 8, !tbaa !123
  %62 = zext i32 %8 to i64
  %63 = shl nuw nsw i64 %62, 3
  %64 = load ptr, ptr %1, align 8, !tbaa !61
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %63)
          to label %68 unwind label %92

68:                                               ; preds = %55
  store ptr %67, ptr %60, align 8, !tbaa !122
  %69 = icmp eq i32 %8, 0
  br i1 %69, label %78, label %70

70:                                               ; preds = %68
  %71 = zext i32 %8 to i64
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i64 [ 0, %70 ], [ %76, %72 ]
  %74 = load ptr, ptr %60, align 8, !tbaa !122
  %75 = getelementptr inbounds ptr, ptr %74, i64 %73
  store ptr null, ptr %75, align 8, !tbaa !124
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, %71
  br i1 %77, label %78, label %72, !llvm.loop !125

78:                                               ; preds = %72, %68
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %56, align 8, !tbaa !61
  %79 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  store ptr %56, ptr %79, align 8, !tbaa !126
  %80 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %80, align 4, !tbaa !127
  %81 = icmp sgt i32 %8, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %78, %89
  %83 = phi i32 [ %90, %89 ], [ 0, %78 ]
  %84 = load ptr, ptr %79, align 8, !tbaa !126
  %85 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef nonnull %1)
  %86 = load ptr, ptr %3, align 8, !tbaa !113
  %87 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %86, i32 noundef %83)
          to label %88 unwind label %94

88:                                               ; preds = %82
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %85, ptr noundef %87, ptr noundef nonnull %1)
          to label %89 unwind label %94

89:                                               ; preds = %88
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %84, ptr noundef nonnull %85, i32 noundef %83)
  %90 = add nuw nsw i32 %83, 1
  %91 = icmp eq i32 %90, %8
  br i1 %91, label %96, label %82, !llvm.loop !128

92:                                               ; preds = %55
  %93 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %56, ptr noundef nonnull %1) #17
  br label %97

94:                                               ; preds = %88, %82
  %95 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %85, ptr noundef nonnull %1) #17
  br label %97

96:                                               ; preds = %89, %78, %2
  ret void

97:                                               ; preds = %42, %94, %92, %25
  %98 = phi { ptr, i32 } [ %26, %25 ], [ %95, %94 ], [ %93, %92 ], [ %43, %42 ]
  resume { ptr, i32 } %98

99:                                               ; preds = %42
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  tail call void @__clang_call_terminate(ptr %101) #19
  unreachable

102:                                              ; preds = %37
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !114
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !130

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !132
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1)
  %8 = load i32, ptr %4, align 4, !tbaa !120
  br label %34

9:                                                ; preds = %3
  %10 = icmp ult i32 %5, %2
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.2, i32 noundef 84, i32 noundef 116, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #17
  resume { ptr, i32 } %17

18:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1)
  %19 = load i32, ptr %4, align 4, !tbaa !120
  %20 = icmp ugt i32 %19, %2
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %23 = zext i32 %19 to i64
  %24 = zext i32 %2 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %23, %21 ], [ %29, %25 ]
  %27 = load ptr, ptr %22, align 8, !tbaa !122
  %28 = add nsw i64 %26, -1
  %29 = add nsw i64 %26, -1
  %30 = getelementptr inbounds ptr, ptr %27, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !124
  %32 = getelementptr inbounds ptr, ptr %27, i64 %26
  store ptr %31, ptr %32, align 8, !tbaa !124
  %33 = icmp ugt i64 %28, %24
  br i1 %33, label %25, label %34, !llvm.loop !133

34:                                               ; preds = %18, %25, %7
  %35 = phi i32 [ %8, %7 ], [ %2, %25 ], [ %2, %18 ]
  %36 = phi i32 [ %8, %7 ], [ %19, %25 ], [ %19, %18 ]
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !122
  %39 = zext i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %1, ptr %40, align 8, !tbaa !124
  %41 = add i32 %36, 1
  store i32 %41, ptr %4, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %6 = alloca %"class.xercesc_2_7::XMLBigDecimal", align 8
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = alloca [65 x i16], align 16
  %12 = alloca [65 x i16], align 16
  %13 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %14 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !135

17:                                               ; preds = %5
  %18 = load ptr, ptr %15, align 8, !tbaa !61
  %19 = getelementptr inbounds ptr, ptr %18, i64 17
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(168) %15, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4), !prof !136
  br label %21

21:                                               ; preds = %17, %5
  %22 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !95
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %71, label %26, !prof !137

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !138
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %61, !prof !139

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  %33 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %32)
          to label %34 unwind label %39, !prof !91

34:                                               ; preds = %30
  %35 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !140
  %37 = load ptr, ptr %31, align 8, !tbaa !105
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %33, ptr noundef %36, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %37)
          to label %38 unwind label %41, !prof !91

38:                                               ; preds = %34
  store ptr %33, ptr %27, align 8, !tbaa !138
  br label %61

39:                                               ; preds = %30
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %43

41:                                               ; preds = %34
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %33, ptr noundef %32) #17
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %40, %39 ]
  %45 = extractvalue { ptr, i32 } %44, 1
  %46 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #17
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %243

48:                                               ; preds = %43
  %49 = extractvalue { ptr, i32 } %44, 0
  %50 = tail call ptr @__cxa_begin_catch(ptr %49) #17
  %51 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %50, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !141
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %51, ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 299, ptr noundef %53, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %54 unwind label %55

54:                                               ; preds = %48
  invoke void @__cxa_throw(ptr nonnull %51, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %248 unwind label %57

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %51) #17
  br label %59

57:                                               ; preds = %54
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi { ptr, i32 } [ %58, %57 ], [ %56, %55 ]
  invoke void @__cxa_end_catch()
          to label %243 unwind label %245

61:                                               ; preds = %38, %26
  %62 = load ptr, ptr %27, align 8, !tbaa !138
  %63 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %62, ptr noundef %1, ptr noundef %4)
  br i1 %63, label %71, label %64, !prof !144

64:                                               ; preds = %61
  %65 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %66 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %67 = load ptr, ptr %66, align 8, !tbaa !140
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull @.str, i32 noundef 419, i32 noundef 238, ptr noundef %1, ptr noundef %67, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %68 unwind label %69

68:                                               ; preds = %64
  tail call void @__cxa_throw(ptr nonnull %65, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %65) #17
  br label %243

71:                                               ; preds = %61, %21
  br i1 %3, label %242, label %72, !prof !145

72:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #17
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef %4)
          to label %73 unwind label %92, !prof !146

73:                                               ; preds = %72
  %74 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  %75 = load ptr, ptr %74, align 8, !tbaa !126
  %76 = icmp eq ptr %75, null
  br i1 %76, label %112, label %77, !prof !146

77:                                               ; preds = %73
  %78 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %75, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !120
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %77, %100
  %82 = phi i32 [ %101, %100 ], [ 0, %77 ]
  %83 = load ptr, ptr %74, align 8, !tbaa !126
  %84 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %83, i32 noundef %82)
          to label %85 unwind label %96

85:                                               ; preds = %81
  %86 = load ptr, ptr %0, align 8, !tbaa !61
  %87 = getelementptr inbounds ptr, ptr %86, i64 16
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef i32 %88(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %6, ptr noundef %84)
          to label %90 unwind label %96

90:                                               ; preds = %85
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %103, label %100

92:                                               ; preds = %72
  %93 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %192

94:                                               ; preds = %112
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %190

96:                                               ; preds = %81, %85
  %97 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %190

98:                                               ; preds = %108
  %99 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %190

100:                                              ; preds = %90
  %101 = add nuw nsw i32 %82, 1
  %102 = icmp eq i32 %101, %79
  br i1 %102, label %103, label %81, !llvm.loop !147

103:                                              ; preds = %100, %90, %77
  %104 = phi i32 [ 0, %77 ], [ %79, %100 ], [ %82, %90 ]
  %105 = icmp eq i32 %104, %79
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %107, ptr noundef nonnull @.str, i32 noundef 443, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %108 unwind label %110

108:                                              ; preds = %106
  invoke void @__cxa_throw(ptr nonnull %107, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %109 unwind label %98

109:                                              ; preds = %108
  unreachable

110:                                              ; preds = %106
  %111 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %107) #17
  br label %190

112:                                              ; preds = %103, %73
  invoke void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %4)
          to label %113 unwind label %94, !prof !146

113:                                              ; preds = %112
  %114 = and i32 %23, 1024
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %140, label %116, !prof !148

116:                                              ; preds = %113
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %6, i64 0, i32 3
  %118 = load i32, ptr %117, align 8, !tbaa !149
  %119 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %120 = load i32, ptr %119, align 4, !tbaa !77
  %121 = icmp ugt i32 %118, %120
  br i1 %121, label %122, label %140, !prof !148

122:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #17
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %118, ptr noundef nonnull %7, i32 noundef 64, i32 noundef 10, ptr noundef %4)
          to label %123 unwind label %134

123:                                              ; preds = %122
  %124 = load i32, ptr %119, align 4, !tbaa !77
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %124, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 10, ptr noundef %4)
          to label %125 unwind label %134

125:                                              ; preds = %123
  %126 = call ptr @__cxa_allocate_exception(i64 48) #17
  %127 = load ptr, ptr %6, align 8, !tbaa !61
  %128 = getelementptr inbounds ptr, ptr %127, i64 6
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %131 unwind label %136

131:                                              ; preds = %125
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %126, ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 246, ptr noundef %130, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef %4)
          to label %132 unwind label %136

132:                                              ; preds = %131
  invoke void @__cxa_throw(ptr nonnull %126, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %133 unwind label %134

133:                                              ; preds = %132
  unreachable

134:                                              ; preds = %132, %123, %122
  %135 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %138

136:                                              ; preds = %131, %125
  %137 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %126) #17
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi { ptr, i32 } [ %135, %134 ], [ %137, %136 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #17
  br label %190

140:                                              ; preds = %116, %113
  %141 = and i32 %23, 512
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %189, label %143, !prof !146

143:                                              ; preds = %140
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %6, i64 0, i32 2
  %145 = load i32, ptr %144, align 4, !tbaa !150
  %146 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !64
  %148 = icmp ugt i32 %145, %147
  br i1 %148, label %149, label %167

149:                                              ; preds = %143
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #17
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %145, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %4)
          to label %150 unwind label %161

150:                                              ; preds = %149
  %151 = load i32, ptr %146, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %151, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 10, ptr noundef %4)
          to label %152 unwind label %161

152:                                              ; preds = %150
  %153 = call ptr @__cxa_allocate_exception(i64 48) #17
  %154 = load ptr, ptr %6, align 8, !tbaa !61
  %155 = getelementptr inbounds ptr, ptr %154, i64 6
  %156 = load ptr, ptr %155, align 8
  %157 = invoke noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %158 unwind label %163

158:                                              ; preds = %152
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %153, ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 245, ptr noundef %157, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef %4)
          to label %159 unwind label %163

159:                                              ; preds = %158
  invoke void @__cxa_throw(ptr nonnull %153, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %160 unwind label %161

160:                                              ; preds = %159
  unreachable

161:                                              ; preds = %159, %150, %149
  %162 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %165

163:                                              ; preds = %158, %152
  %164 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %153) #17
  br label %165

165:                                              ; preds = %163, %161
  %166 = phi { ptr, i32 } [ %162, %161 ], [ %164, %163 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #17
  br label %190

167:                                              ; preds = %143
  %168 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %6, i64 0, i32 3
  %169 = load i32, ptr %168, align 8, !tbaa !149
  %170 = icmp ugt i32 %169, %147
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %11) #17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %12) #17
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %169, ptr noundef nonnull %11, i32 noundef 64, i32 noundef 10, ptr noundef %4)
          to label %172 unwind label %183

172:                                              ; preds = %171
  %173 = load i32, ptr %146, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %173, ptr noundef nonnull %12, i32 noundef 64, i32 noundef 10, ptr noundef %4)
          to label %174 unwind label %183

174:                                              ; preds = %172
  %175 = call ptr @__cxa_allocate_exception(i64 48) #17
  %176 = load ptr, ptr %6, align 8, !tbaa !61
  %177 = getelementptr inbounds ptr, ptr %176, i64 6
  %178 = load ptr, ptr %177, align 8
  %179 = invoke noundef ptr %178(ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %180 unwind label %185

180:                                              ; preds = %174
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %175, ptr noundef nonnull @.str, i32 noundef 499, i32 noundef 245, ptr noundef %179, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef %4)
          to label %181 unwind label %185

181:                                              ; preds = %180
  invoke void @__cxa_throw(ptr nonnull %175, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %182 unwind label %183

182:                                              ; preds = %181
  unreachable

183:                                              ; preds = %181, %172, %171
  %184 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %187

185:                                              ; preds = %180, %174
  %186 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %175) #17
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi { ptr, i32 } [ %184, %183 ], [ %186, %185 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %11) #17
  br label %190

189:                                              ; preds = %167, %140
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  br label %226

190:                                              ; preds = %96, %98, %110, %187, %165, %138, %94
  %191 = phi { ptr, i32 } [ %139, %138 ], [ %166, %165 ], [ %188, %187 ], [ %95, %94 ], [ %111, %110 ], [ %97, %96 ], [ %99, %98 ]
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #17
  br label %192

192:                                              ; preds = %190, %92
  %193 = phi { ptr, i32 } [ %191, %190 ], [ %93, %92 ]
  %194 = extractvalue { ptr, i32 } %193, 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #17
  %195 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #17
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %243

197:                                              ; preds = %192
  %198 = extractvalue { ptr, i32 } %193, 0
  %199 = call ptr @__cxa_begin_catch(ptr %198) #17
  %200 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %199, i64 0, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !141
  %202 = icmp eq ptr %201, null
  br i1 %202, label %224, label %203

203:                                              ; preds = %197
  %204 = load i16, ptr %201, align 2, !tbaa !86
  %205 = icmp eq i16 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %203, %206
  %207 = phi ptr [ %208, %206 ], [ %201, %203 ]
  %208 = getelementptr inbounds i16, ptr %207, i64 1
  %209 = load i16, ptr %208, align 2, !tbaa !86
  %210 = icmp eq i16 %209, 0
  br i1 %210, label %211, label %206, !llvm.loop !151

211:                                              ; preds = %206
  %212 = ptrtoint ptr %208 to i64
  %213 = ptrtoint ptr %201 to i64
  %214 = sub i64 %212, %213
  %215 = add i64 %214, 2
  %216 = and i64 %215, 8589934590
  br label %217

217:                                              ; preds = %211, %203
  %218 = phi i64 [ %216, %211 ], [ 2, %203 ]
  %219 = load ptr, ptr %4, align 8, !tbaa !61
  %220 = getelementptr inbounds ptr, ptr %219, i64 2
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %218)
          to label %223 unwind label %234

223:                                              ; preds = %217
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %222, ptr nonnull align 2 %201, i64 %218, i1 false)
  br label %224

224:                                              ; preds = %223, %197
  %225 = phi ptr [ %222, %223 ], [ null, %197 ]
  call void @__cxa_end_catch()
  br label %226

226:                                              ; preds = %224, %189
  %227 = phi ptr [ %225, %224 ], [ null, %189 ]
  %228 = icmp eq ptr %227, null
  br i1 %228, label %242, label %229, !prof !146

229:                                              ; preds = %226
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #17
  store ptr %227, ptr %13, align 8, !tbaa !152
  %230 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %13, i64 0, i32 1
  store ptr %4, ptr %230, align 8, !tbaa !154
  %231 = call ptr @__cxa_allocate_exception(i64 48) #17
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %231, ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 299, ptr noundef nonnull %227, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %232 unwind label %236

232:                                              ; preds = %229
  invoke void @__cxa_throw(ptr nonnull %231, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
          to label %233 unwind label %238

233:                                              ; preds = %232
  unreachable

234:                                              ; preds = %217
  %235 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %243 unwind label %245

236:                                              ; preds = %229
  %237 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %231) #17
  br label %240

238:                                              ; preds = %232
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %237, %236 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #17
  br label %243

242:                                              ; preds = %226, %71
  ret void

243:                                              ; preds = %234, %59, %192, %240, %69, %43
  %244 = phi { ptr, i32 } [ %70, %69 ], [ %44, %43 ], [ %241, %240 ], [ %193, %192 ], [ %60, %59 ], [ %235, %234 ]
  resume { ptr, i32 } %244

245:                                              ; preds = %234, %59
  %246 = landingpad { ptr, i32 }
          catch ptr null
  %247 = extractvalue { ptr, i32 } %246, 0
  call void @__clang_call_terminate(ptr %247) #19
  unreachable

248:                                              ; preds = %54
  unreachable
}

declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %12
}

declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !122
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  ret ptr %18
}

declare void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %2 = load ptr, ptr %0, align 8, !tbaa !152
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !156

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !154
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !157

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !61
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !158

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #20
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #19
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr %2
  br i1 %3, label %9, label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !61
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %8)
          to label %17 unwind label %13

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #17
  tail call void @__cxa_end_catch()
  br label %50

17:                                               ; preds = %9, %4
  %18 = tail call noundef i32 @_ZN11xercesc_2_724DatatypeValidatorFactory14getCanRepGroupEPKNS_17DatatypeValidatorE(ptr noundef nonnull %0)
  %19 = add i32 %18, -5
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 7
  %23 = tail call noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef %1, ptr noundef %8, i1 noundef zeroext %22)
  br label %50

24:                                               ; preds = %17
  %25 = icmp eq i32 %18, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %8)
  br label %50

28:                                               ; preds = %24
  %29 = icmp eq ptr %1, null
  br i1 %29, label %50, label %30

30:                                               ; preds = %28
  %31 = load i16, ptr %1, align 2, !tbaa !86
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30, %33
  %34 = phi ptr [ %35, %33 ], [ %1, %30 ]
  %35 = getelementptr inbounds i16, ptr %34, i64 1
  %36 = load i16, ptr %35, align 2, !tbaa !86
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %33, !llvm.loop !151

38:                                               ; preds = %33
  %39 = ptrtoint ptr %35 to i64
  %40 = ptrtoint ptr %1 to i64
  %41 = sub i64 %39, %40
  %42 = add i64 %41, 2
  %43 = and i64 %42, 8589934590
  br label %44

44:                                               ; preds = %38, %30
  %45 = phi i64 [ %43, %38 ], [ 2, %30 ]
  %46 = load ptr, ptr %8, align 8, !tbaa !61
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %45)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %49, ptr nonnull align 2 %1, i64 %45, i1 false)
  br label %50

50:                                               ; preds = %44, %28, %21, %26, %13
  %51 = phi ptr [ null, %13 ], [ %23, %21 ], [ %27, %26 ], [ %49, %44 ], [ null, %28 ]
  ret ptr %51
}

declare noundef i32 @_ZN11xercesc_2_724DatatypeValidatorFactory14getCanRepGroupEPKNS_17DatatypeValidatorE(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %0)
  invoke void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 8, ptr noundef %0)
          to label %3 unwind label %8

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %2, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !64
  %5 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %2, i64 0, i32 2
  store i32 0, ptr %5, align 4, !tbaa !77
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %2, i64 0, i32 10
  store i32 2, ptr %6, align 8, !tbaa !78
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %2, i64 0, i32 4
  store i8 1, ptr %7, align 1, !tbaa !79
  ret ptr %2

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #17
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_724DecimalDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !82 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !82 {
  ret ptr @_ZN11xercesc_2_724DecimalDatatypeValidator29classDecimalDatatypeValidatorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !82 {
  %3 = load i16, ptr %1, align 8, !tbaa !159
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef 2)
  br label %7

7:                                                ; preds = %5, %2
  tail call void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %8 = load i16, ptr %1, align 8, !tbaa !159
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  br i1 %9, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, ptr %10, align 8, !tbaa !64
  %13 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %12)
  %14 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !77
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %15)
  br label %21

17:                                               ; preds = %7
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %10)
  %19 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %20 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %19)
  br label %21

21:                                               ; preds = %17, %11
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 !prof !82 {
  ret i1 true
}

declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare void @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !82 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, %0
  %12 = and i1 %11, %10
  br i1 %12, label %6, label %13, !llvm.loop !162

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  ret i1 %14
}

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !61
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !61
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !61
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #17
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !118, !range !164, !noundef !165
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !120
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !122
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !61
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !120
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !166

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !122
  %31 = load ptr, ptr %28, align 8, !tbaa !61
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #19
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !120
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #17
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !118, !range !164, !noundef !165
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !61
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #17
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !122
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !124
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !120
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !120
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !118, !range !164, !noundef !165
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !122
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !61
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #17
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !122
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !124
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !120
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !167
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #17
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #17
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !118, !range !164, !noundef !165
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !122
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !124
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !61
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #17
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !120
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !122
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !124
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !124
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !168

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !122
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !124
  store i32 %30, ptr %3, align 4, !tbaa !120
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !120
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !120
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !118, !range !164, !noundef !165
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !61
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !118, !range !164, !noundef !165
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !120
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !122
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !61
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #17
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !120
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !169

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !122
  %31 = load ptr, ptr %28, align 8, !tbaa !61
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !82 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !82 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !120
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !121
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !123
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !120
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !124
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !122
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !124
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !124
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !170

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !123
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !122
  %52 = load ptr, ptr %49, align 8, !tbaa !61
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !122
  store i32 %12, ptr %6, align 8, !tbaa !121
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn nounwind }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 14}
!37 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 14}
!38 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorD0Ev, ptr @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev, i64 15}
!39 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 15}
!40 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 14}
!41 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, i64 14}
!42 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE, i64 2}
!43 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, i64 24978}
!44 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!45 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE, i64 10}
!46 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!47 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE, i64 6}
!48 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!49 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!51 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!52 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, i64 141603}
!53 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!54 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE, i64 1}
!55 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE, i64 35823}
!56 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE, i64 91734}
!57 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, i64 91734}
!58 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLBigDecimalD1Ev, i64 91734}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 1}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!65, !73, i64 160}
!65 = !{!"_ZTSN11xercesc_2_724DecimalDatatypeValidatorE", !66, i64 0, !73, i64 160, !73, i64 164}
!66 = !{!"_ZTSN11xercesc_2_724AbstractNumericValidatorE", !67, i64 0}
!67 = !{!"_ZTSN11xercesc_2_729AbstractNumericFacetValidatorE", !68, i64 0, !70, i64 104, !70, i64 105, !70, i64 106, !70, i64 107, !70, i64 108, !76, i64 112, !76, i64 120, !76, i64 128, !76, i64 136, !76, i64 144, !76, i64 152}
!68 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !69, i64 0, !70, i64 8, !70, i64 9, !70, i64 10, !70, i64 11, !72, i64 12, !73, i64 16, !73, i64 20, !73, i64 24, !74, i64 28, !75, i64 32, !76, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !76, i64 96}
!69 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!70 = !{!"bool", !71, i64 0}
!71 = !{!"omnipotent char", !63, i64 0}
!72 = !{!"short", !71, i64 0}
!73 = !{!"int", !71, i64 0}
!74 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !71, i64 0}
!75 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !71, i64 0}
!76 = !{!"any pointer", !71, i64 0}
!77 = !{!65, !73, i64 164}
!78 = !{!68, !75, i64 32}
!79 = !{!68, !70, i64 11}
!80 = !{!"function_entry_count", i64 14}
!81 = !{!"branch_weights", i32 14, i32 0}
!82 = !{!"function_entry_count", i64 0}
!83 = !{!"function_entry_count", i64 15}
!84 = !{!"function_entry_count", i64 2}
!85 = !{!"branch_weights", i32 0, i32 2}
!86 = !{!72, !72, i64 0}
!87 = !{!"branch_weights", i32 0, i32 1}
!88 = distinct !{!88, !89, !90}
!89 = !{!"llvm.loop.mustprogress"}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = !{!"branch_weights", i32 1, i32 0}
!92 = !{!"branch_weights", i32 2, i32 28}
!93 = !{!"branch_weights", i32 30, i32 0}
!94 = !{!"branch_weights", i32 2, i32 0}
!95 = !{!68, !73, i64 20}
!96 = !{!68, !76, i64 40}
!97 = !{!"branch_weights", i32 0, i32 14}
!98 = !{!"branch_weights", i32 12, i32 2}
!99 = !{!68, !73, i64 24}
!100 = !{!"function_entry_count", i64 24978}
!101 = !{!102, !76, i64 40}
!102 = !{!"_ZTSN11xercesc_2_713XMLBigDecimalE", !103, i64 0, !73, i64 8, !73, i64 12, !73, i64 16, !73, i64 20, !76, i64 24, !76, i64 32, !76, i64 40}
!103 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !69, i64 0}
!104 = !{!"function_entry_count", i64 10}
!105 = !{!68, !76, i64 96}
!106 = !{!"branch_weights", i32 10, i32 0}
!107 = !{!67, !76, i64 112}
!108 = !{!67, !76, i64 120}
!109 = !{!"function_entry_count", i64 6}
!110 = !{!"branch_weights", i32 6, i32 0}
!111 = !{!67, !76, i64 128}
!112 = !{!67, !76, i64 136}
!113 = !{!67, !76, i64 152}
!114 = !{!115, !73, i64 12}
!115 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !70, i64 8, !73, i64 12, !73, i64 16, !76, i64 24, !76, i64 32}
!116 = distinct !{!116, !89, !90}
!117 = distinct !{!117, !89, !90}
!118 = !{!119, !70, i64 8}
!119 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE", !70, i64 8, !73, i64 12, !73, i64 16, !76, i64 24, !76, i64 32}
!120 = !{!119, !73, i64 12}
!121 = !{!119, !73, i64 16}
!122 = !{!119, !76, i64 24}
!123 = !{!119, !76, i64 32}
!124 = !{!76, !76, i64 0}
!125 = distinct !{!125, !89, !90}
!126 = !{!67, !76, i64 144}
!127 = !{!67, !70, i64 108}
!128 = distinct !{!128, !89, !90}
!129 = !{!"function_entry_count", i64 2444437052}
!130 = !{!"branch_weights", i32 -1850530244, i32 0}
!131 = !{!115, !76, i64 32}
!132 = !{!115, !76, i64 24}
!133 = distinct !{!133, !89, !90}
!134 = !{!"function_entry_count", i64 233337}
!135 = !{!"branch_weights", i32 91734, i32 141603}
!136 = !{!"VP", i32 0, i64 141603, i64 -3111892383945358671, i64 141603}
!137 = !{!"branch_weights", i32 197514, i32 35823}
!138 = !{!68, !76, i64 64}
!139 = !{!"branch_weights", i32 1, i32 35822}
!140 = !{!68, !76, i64 56}
!141 = !{!142, !76, i64 32}
!142 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !143, i64 8, !76, i64 16, !73, i64 24, !76, i64 32, !76, i64 40}
!143 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !71, i64 0}
!144 = !{!"branch_weights", i32 35823, i32 0}
!145 = !{!"branch_weights", i32 141603, i32 91734}
!146 = !{!"branch_weights", i32 91734, i32 0}
!147 = distinct !{!147, !89, !90}
!148 = !{!"branch_weights", i32 0, i32 91734}
!149 = !{!102, !73, i64 16}
!150 = !{!102, !73, i64 12}
!151 = distinct !{!151, !89, !90}
!152 = !{!153, !76, i64 0}
!153 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !76, i64 0, !76, i64 8}
!154 = !{!153, !76, i64 8}
!155 = !{!"function_entry_count", i64 243874}
!156 = !{!"branch_weights", i32 191815, i32 52059}
!157 = !{!"branch_weights", i32 0, i32 52059}
!158 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!159 = !{!160, !72, i64 0}
!160 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !72, i64 0, !72, i64 2, !76, i64 8, !76, i64 16, !76, i64 24, !161, i64 32, !161, i64 40, !76, i64 48, !76, i64 56, !76, i64 64, !76, i64 72, !76, i64 80, !76, i64 88, !73, i64 96}
!161 = !{!"long", !71, i64 0}
!162 = distinct !{!162, !89, !90}
!163 = !{!142, !76, i64 40}
!164 = !{i8 0, i8 2}
!165 = !{}
!166 = distinct !{!166, !89, !90}
!167 = distinct !{!167, !89, !90}
!168 = distinct !{!168, !89, !90}
!169 = distinct !{!169, !89, !90}
!170 = distinct !{!170, !89, !90}
