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

$_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE = comdat any

$_ZN11xercesc_2_717DatatypeValidator10setNumericEb = comdat any

$_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_724DecimalDatatypeValidator14setTotalDigitsEj = comdat any

$_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi = comdat any

$_ZN11xercesc_2_724DecimalDatatypeValidator17setFractionDigitsEj = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_724DecimalDatatypeValidator17getFractionDigitsEv = comdat any

$_ZNK11xercesc_2_724DecimalDatatypeValidator14getTotalDigitsEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getFixedEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getRegexEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getPatternEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv = comdat any

$_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

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

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

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
@_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE = external constant [0 x i16], align 2
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str = private unnamed_addr constant [29 x i8] c"DecimalDatatypeValidator.cpp\00", align 1
@_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeFacetExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE = external constant [0 x i16], align 2
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 8, ptr noundef %1) #12
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %3 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !101
  %4 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 4, !tbaa !114
  tail call void @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 2) #12
  tail call void @_ZN11xercesc_2_717DatatypeValidator10setNumericEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext true) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !115 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 8, !tbaa !116
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setNumericEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !117 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 4
  store i8 %3, ptr %4, align 1, !tbaa !118
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 8, ptr noundef %5) #12
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %7 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !114
  invoke void @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef %5) #12
          to label %9 unwind label %10

9:                                                ; preds = %6
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #13
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 !prof !120 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 {
  tail call void @_ZN11xercesc_2_724DecimalDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_724DecimalDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %5 = alloca %"class.xercesc_2_7::XMLBigDecimal", align 8
  %6 = alloca %"class.xercesc_2_7::XMLBigDecimal", align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #14
  call void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %3) #12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %2, ptr noundef %3) #12
          to label %7 unwind label %13

7:                                                ; preds = %4
  %8 = load ptr, ptr %0, align 8, !tbaa !98
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #12
          to label %12 unwind label %15

12:                                               ; preds = %7
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  ret i32 %11

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %17

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi { ptr, i32 } [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #14
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %4) #12
  invoke void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #12
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #13
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #12
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_724DecimalDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %7 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !101
  %8 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 0, ptr %8, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgELT_TOTALDIGITSE) #12
  br i1 %5, label %6, label %32, !prof !123

6:                                                ; preds = %4
  %7 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #12
          to label %8 unwind label %10

8:                                                ; preds = %6
  %9 = icmp slt i32 %7, 1
  br i1 %9, label %26, label %31

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  %12 = extractvalue { ptr, i32 } %11, 1
  %13 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #14
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %70

15:                                               ; preds = %10
  %16 = extractvalue { ptr, i32 } %11, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #14
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 189, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #12
          to label %19 unwind label %20

19:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %75 unwind label %22

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %18) #14
  br label %24

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  invoke void @__cxa_end_catch()
          to label %70 unwind label %72

26:                                               ; preds = %8
  %27 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 191, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #12
          to label %28 unwind label %29

28:                                               ; preds = %26
  tail call void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %67

31:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_724DecimalDatatypeValidator14setTotalDigitsEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %7) #12
  br label %65

32:                                               ; preds = %4
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgELT_FRACTIONDIGITSE) #12
  br i1 %33, label %34, label %60, !prof !124

34:                                               ; preds = %32
  %35 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #12
          to label %36 unwind label %38

36:                                               ; preds = %34
  %37 = icmp slt i32 %35, 0
  br i1 %37, label %54, label %59, !prof !123

38:                                               ; preds = %34
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  %40 = extractvalue { ptr, i32 } %39, 1
  %41 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #14
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = extractvalue { ptr, i32 } %39, 0
  %45 = tail call ptr @__cxa_begin_catch(ptr %44) #14
  %46 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %46, ptr noundef nonnull @.str, i32 noundef 139, i32 noundef 190, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #12
          to label %47 unwind label %48

47:                                               ; preds = %43
  invoke void @__cxa_throw(ptr nonnull %46, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %75 unwind label %50

48:                                               ; preds = %43
  %49 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %46) #14
  br label %52

50:                                               ; preds = %47
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %49, %48 ]
  invoke void @__cxa_end_catch()
          to label %70 unwind label %72

54:                                               ; preds = %36
  %55 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %55, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 192, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #12
          to label %56 unwind label %57

56:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %55, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

57:                                               ; preds = %54
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %67

59:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_724DecimalDatatypeValidator17setFractionDigitsEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %35) #12
  br label %65

60:                                               ; preds = %32
  %61 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str, i32 noundef 154, i32 noundef 171, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #12
          to label %62 unwind label %63

62:                                               ; preds = %60
  tail call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

63:                                               ; preds = %60
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %59, %31
  %66 = phi i32 [ 1024, %59 ], [ 512, %31 ]
  tail call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %66) #12
  ret void

67:                                               ; preds = %63, %29, %57
  %68 = phi ptr [ %55, %57 ], [ %27, %29 ], [ %61, %63 ]
  %69 = phi { ptr, i32 } [ %58, %57 ], [ %30, %29 ], [ %64, %63 ]
  tail call void @__cxa_free_exception(ptr %68) #14
  br label %70

70:                                               ; preds = %67, %52, %24, %38, %10
  %71 = phi { ptr, i32 } [ %11, %10 ], [ %39, %38 ], [ %25, %24 ], [ %53, %52 ], [ %69, %67 ]
  resume { ptr, i32 } %71

72:                                               ; preds = %52, %24
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #16
  unreachable

75:                                               ; preds = %47, %19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !125 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !126

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !127
  %8 = load i16, ptr %1, align 2, !tbaa !127
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !128

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !129

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !127
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !130

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !131

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !127
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !132

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !133

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !127
  %28 = load i16, ptr %26, align 2, !tbaa !127
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !134, !llvm.loop !135

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator14setTotalDigitsEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !101
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !137 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !138
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !138
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator17setFractionDigitsEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !119 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 !prof !119 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4, !prof !139

4:                                                ; preds = %1
  %5 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %6 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %2) #12
  %7 = and i32 %6, 512
  %8 = icmp ne i32 %7, 0
  %9 = and i32 %5, 512
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %10, %8
  br i1 %11, label %12, label %15, !prof !140

12:                                               ; preds = %4
  %13 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !101
  tail call void @_ZN11xercesc_2_724DecimalDatatypeValidator14setTotalDigitsEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %14) #12
  tail call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 512) #12
  br label %15

15:                                               ; preds = %12, %4
  %16 = and i32 %6, 1024
  %17 = icmp ne i32 %16, 0
  %18 = and i32 %5, 1024
  %19 = icmp eq i32 %18, 0
  %20 = and i1 %19, %17
  br i1 %20, label %21, label %24, !prof !141

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !114
  tail call void @_ZN11xercesc_2_724DecimalDatatypeValidator17setFractionDigitsEj(ptr noundef nonnull align 8 dereferenceable(168) %0, i32 noundef %23) #12
  tail call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 1024) #12
  br label %24

24:                                               ; preds = %15, %21, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !142 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !143
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !144 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !138
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_724DecimalDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %6 = and i32 %5, 1536
  %7 = icmp eq i32 %6, 1536
  br i1 %7, label %8, label %21, !prof !145

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !114
  %11 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !101
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #14
  %15 = tail call noundef i32 @_ZNK11xercesc_2_724DecimalDatatypeValidator17getFractionDigitsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #12
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %15, ptr noundef nonnull %3, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %16 = call noundef i32 @_ZNK11xercesc_2_724DecimalDatatypeValidator14getTotalDigitsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) #12
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %16, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %17 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull @.str, i32 noundef 204, i32 noundef 199, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %18 unwind label %19

18:                                               ; preds = %14
  call void @__cxa_throw(ptr nonnull %17, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %17) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #14
  resume { ptr, i32 } %20

21:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_724DecimalDatatypeValidator17getFractionDigitsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !114
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_724DecimalDatatypeValidator14getTotalDigitsEv(ptr noundef nonnull align 8 dereferenceable(168) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !101
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_724DecimalDatatypeValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
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
  %13 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %96, label %15, !prof !139

15:                                               ; preds = %2
  %16 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %17 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %13) #12
  %18 = and i32 %17, 512
  %19 = and i32 %18, %16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %47, label %21, !prof !146

21:                                               ; preds = %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !101
  %24 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %13, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !101
  %26 = icmp ugt i32 %23, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %23, ptr noundef nonnull %3, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %28 = load i32, ptr %24, align 8, !tbaa !101
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %28, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %29 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 236, i32 noundef 220, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %30 unwind label %31

30:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #14
  br label %97

33:                                               ; preds = %21
  %34 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %13) #12
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %22, align 8, !tbaa !101
  %39 = load i32, ptr %24, align 8, !tbaa !101
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %6) #14
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %38, ptr noundef nonnull %5, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %42 = load i32, ptr %24, align 8, !tbaa !101
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %42, ptr noundef nonnull %6, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %43 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull @.str, i32 noundef 251, i32 noundef 227, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %44 unwind label %45

44:                                               ; preds = %41
  call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

45:                                               ; preds = %41
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %43) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #14
  br label %97

47:                                               ; preds = %33, %37, %15
  %48 = and i32 %16, 1024
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %96, label %50, !prof !147

50:                                               ; preds = %47
  %51 = and i32 %17, 1024
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %65, label %53, !prof !124

53:                                               ; preds = %50
  %54 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 4, !tbaa !114
  %56 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %13, i64 0, i32 2
  %57 = load i32, ptr %56, align 4, !tbaa !114
  %58 = icmp ugt i32 %55, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #14
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %55, ptr noundef nonnull %7, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %60 = load i32, ptr %56, align 4, !tbaa !114
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %60, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %61 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %61, ptr noundef nonnull @.str, i32 noundef 269, i32 noundef 222, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %62 unwind label %63

62:                                               ; preds = %59
  call void @__cxa_throw(ptr nonnull %61, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

63:                                               ; preds = %59
  %64 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %61) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #14
  br label %97

65:                                               ; preds = %53, %50
  %66 = icmp eq i32 %18, 0
  br i1 %66, label %79, label %67, !prof !124

67:                                               ; preds = %65
  %68 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %69 = load i32, ptr %68, align 4, !tbaa !114
  %70 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %13, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !101
  %72 = icmp ugt i32 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #14
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %69, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %74 = load i32, ptr %70, align 8, !tbaa !101
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %74, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %75 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %75, ptr noundef nonnull @.str, i32 noundef 284, i32 noundef 221, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %76 unwind label %77

76:                                               ; preds = %73
  call void @__cxa_throw(ptr nonnull %75, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %75) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #14
  br label %97

79:                                               ; preds = %67, %65
  br i1 %52, label %96, label %80, !prof !124

80:                                               ; preds = %79
  %81 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %13) #12
  %82 = and i32 %81, 1024
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !114
  %87 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %13, i64 0, i32 2
  %88 = load i32, ptr %87, align 4, !tbaa !114
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %12) #14
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %86, ptr noundef nonnull %11, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %91 = load i32, ptr %87, align 4, !tbaa !114
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %91, ptr noundef nonnull %12, i32 noundef 64, i32 noundef 10, ptr noundef %1) #12
  %92 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %92, ptr noundef nonnull @.str, i32 noundef 300, i32 noundef 228, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %93 unwind label %94

93:                                               ; preds = %90
  call void @__cxa_throw(ptr nonnull %92, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

94:                                               ; preds = %90
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %92) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %11) #14
  br label %97

96:                                               ; preds = %47, %84, %80, %79, %2
  ret void

97:                                               ; preds = %94, %77, %63, %45, %31
  %98 = phi { ptr, i32 } [ %32, %31 ], [ %46, %45 ], [ %64, %63 ], [ %78, %77 ], [ %95, %94 ]
  resume { ptr, i32 } %98
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !149
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_724DecimalDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !150 {
  %4 = tail call noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  %5 = tail call noundef i32 @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4) #12
  ret i32 %5
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLBigDecimal16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6) #12
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 6
  store ptr %5, ptr %8, align 8, !tbaa !156
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxExclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6) #12
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 7
  store ptr %5, ptr %8, align 8, !tbaa !157
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !158 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6) #12
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 8
  store ptr %5, ptr %8, align 8, !tbaa !159
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinExclusiveEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !155
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %4) #12
  %6 = load ptr, ptr %3, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %6) #12
          to label %7 unwind label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 9
  store ptr %5, ptr %8, align 8, !tbaa !160
  ret void

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator14setEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %9 = icmp ne ptr %8, null
  %10 = icmp sgt i32 %7, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %6, %20
  %13 = phi i32 [ %21, %20 ], [ 0, %6 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !161
  %15 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %13) #12
          to label %16 unwind label %23

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(168) %8, ptr noundef %15, ptr noundef null, i1 noundef zeroext false, ptr noundef %1) #12
          to label %20 unwind label %23

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %13, 1
  %22 = icmp eq i32 %21, %7
  br i1 %22, label %42, label %12, !llvm.loop !162

23:                                               ; preds = %16, %12
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %75

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #14
  %31 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %32 = load ptr, ptr %3, align 8, !tbaa !161
  %33 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %32, i32 noundef %13) #12
          to label %34 unwind label %36

34:                                               ; preds = %28
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %31, ptr noundef nonnull @.str, i32 noundef 361, i32 noundef 181, ptr noundef %33, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1) #12
          to label %35 unwind label %36

35:                                               ; preds = %34
  invoke void @__cxa_throw(ptr nonnull %31, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %80 unwind label %38

36:                                               ; preds = %34, %28
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %31) #14
  br label %40

38:                                               ; preds = %35
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  invoke void @__cxa_end_catch()
          to label %75 unwind label %77

42:                                               ; preds = %20, %6
  br i1 %10, label %43, label %52

43:                                               ; preds = %42, %43
  %44 = phi i32 [ %50, %43 ], [ 0, %42 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !161
  %46 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %45, i32 noundef %44) #12
  %47 = load ptr, ptr %0, align 8, !tbaa !98
  %48 = getelementptr inbounds ptr, ptr %47, i64 17
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %46, ptr noundef null, i1 noundef zeroext false, ptr noundef %1) #12
  %50 = add nuw nsw i32 %44, 1
  %51 = icmp eq i32 %50, %7
  br i1 %51, label %52, label %43, !llvm.loop !163

52:                                               ; preds = %43, %42
  %53 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #12
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %53, i32 noundef %7, i1 noundef zeroext true, ptr noundef %1) #12
          to label %54 unwind label %67

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  store ptr %53, ptr %55, align 8, !tbaa !164
  %56 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %56, align 4, !tbaa !165
  br i1 %10, label %57, label %71

57:                                               ; preds = %54, %64
  %58 = phi i32 [ %65, %64 ], [ 0, %54 ]
  %59 = load ptr, ptr %55, align 8, !tbaa !164
  %60 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %1) #12
  %61 = load ptr, ptr %3, align 8, !tbaa !161
  %62 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %61, i32 noundef %58) #12
          to label %63 unwind label %69

63:                                               ; preds = %57
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef %62, ptr noundef %1) #12
          to label %64 unwind label %69

64:                                               ; preds = %63
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull %60, i32 noundef %58) #12
  %65 = add nuw nsw i32 %58, 1
  %66 = icmp eq i32 %65, %7
  br i1 %66, label %71, label %57, !llvm.loop !166

67:                                               ; preds = %52
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %72

69:                                               ; preds = %63, %57
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %72

71:                                               ; preds = %64, %54, %2
  ret void

72:                                               ; preds = %67, %69
  %73 = phi ptr [ %60, %69 ], [ %53, %67 ]
  %74 = phi { ptr, i32 } [ %70, %69 ], [ %68, %67 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %73, ptr noundef %1) #13
  br label %75

75:                                               ; preds = %72, %40, %23
  %76 = phi { ptr, i32 } [ %24, %23 ], [ %41, %40 ], [ %74, %72 ]
  resume { ptr, i32 } %76

77:                                               ; preds = %40
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  tail call void @__clang_call_terminate(ptr %79) #16
  unreachable

80:                                               ; preds = %35
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !167 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !168
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !170 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !168
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !171

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !172
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
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
  %15 = load ptr, ptr %14, align 8, !tbaa !173
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !175
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #12
  br label %40

8:                                                ; preds = %3
  %9 = icmp ult i32 %5, %2
  br i1 %9, label %10, label %17

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 84, i32 noundef 116, ptr noundef %13) #12
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %16

17:                                               ; preds = %8
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %18 = load i32, ptr %4, align 4, !tbaa !175
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
  %29 = load ptr, ptr %28, align 8, !tbaa !178
  %30 = getelementptr inbounds ptr, ptr %29, i64 %27
  store ptr %1, ptr %30, align 8, !tbaa !174
  %31 = add i32 %18, 1
  store i32 %31, ptr %4, align 4, !tbaa !175
  br label %40

32:                                               ; preds = %22, %32
  %33 = phi i64 [ %24, %22 ], [ %35, %32 ]
  %34 = load ptr, ptr %23, align 8, !tbaa !178
  %35 = add nsw i64 %33, -1
  %36 = getelementptr inbounds ptr, ptr %34, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !174
  %38 = getelementptr inbounds ptr, ptr %34, i64 %33
  store ptr %37, ptr %38, align 8, !tbaa !174
  %39 = icmp ugt i64 %35, %25
  br i1 %39, label %32, label %26, !llvm.loop !179

40:                                               ; preds = %26, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !180 {
  %6 = alloca %"class.xercesc_2_7::XMLBigDecimal", align 8
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = alloca [65 x i16], align 16
  %12 = alloca [65 x i16], align 16
  %13 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %14 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !181

16:                                               ; preds = %5
  %17 = load ptr, ptr %14, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 17
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(168) %14, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4) #12
  br label %20

20:                                               ; preds = %16, %5
  %21 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %22 = and i32 %21, 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %65, label %24, !prof !182

24:                                               ; preds = %20
  %25 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %56, !prof !183

27:                                               ; preds = %24
  %28 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !155
  %30 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %29) #12
          to label %31 unwind label %35

31:                                               ; preds = %27
  %32 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %33 = load ptr, ptr %28, align 8, !tbaa !155
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %30, ptr noundef %32, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %33) #12
          to label %34 unwind label %37

34:                                               ; preds = %31
  tail call void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %30) #12
  br label %56

35:                                               ; preds = %27
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %39

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #13
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  %41 = extractvalue { ptr, i32 } %40, 1
  %42 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %206

44:                                               ; preds = %39
  %45 = extractvalue { ptr, i32 } %40, 0
  %46 = tail call ptr @__cxa_begin_catch(ptr %45) #14
  %47 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %48 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %46) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull @.str, i32 noundef 409, i32 noundef 299, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #12
          to label %49 unwind label %50

49:                                               ; preds = %44
  invoke void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %52

50:                                               ; preds = %44
  %51 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %47) #14
  br label %54

52:                                               ; preds = %49
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  invoke void @__cxa_end_catch()
          to label %206 unwind label %208

56:                                               ; preds = %34, %24
  %57 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  %58 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %57, ptr noundef %1, ptr noundef %4) #12
  br i1 %58, label %65, label %59, !prof !184

59:                                               ; preds = %56
  %60 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %61 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %60, ptr noundef nonnull @.str, i32 noundef 419, i32 noundef 238, ptr noundef %1, ptr noundef %61, ptr noundef null, ptr noundef null, ptr noundef %4) #12
          to label %62 unwind label %63

62:                                               ; preds = %59
  tail call void @__cxa_throw(ptr nonnull %60, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

63:                                               ; preds = %59
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %60) #14
  br label %206

65:                                               ; preds = %56, %20
  br i1 %3, label %205, label %66, !prof !185

66:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %6) #14
  invoke void @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef %4) #12
          to label %67 unwind label %85

67:                                               ; preds = %66
  %68 = call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %69 = icmp eq ptr %68, null
  br i1 %69, label %104, label %70, !prof !186

70:                                               ; preds = %67
  %71 = call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %72 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %71) #12
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %70, %93
  %75 = phi i32 [ %94, %93 ], [ 0, %70 ]
  %76 = call noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  %77 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef %75) #12
          to label %78 unwind label %89

78:                                               ; preds = %74
  %79 = load ptr, ptr %0, align 8, !tbaa !98
  %80 = getelementptr inbounds ptr, ptr %79, i64 16
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef i32 %81(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %6, ptr noundef %77) #12
          to label %83 unwind label %89

83:                                               ; preds = %78
  %84 = icmp eq i32 %82, 0
  br i1 %84, label %96, label %93

85:                                               ; preds = %66
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %182

87:                                               ; preds = %104
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %180

89:                                               ; preds = %74, %78
  %90 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %180

91:                                               ; preds = %101
  %92 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %180

93:                                               ; preds = %83
  %94 = add nuw nsw i32 %75, 1
  %95 = icmp eq i32 %94, %72
  br i1 %95, label %99, label %74, !llvm.loop !187

96:                                               ; preds = %83, %70
  %97 = phi i32 [ 0, %70 ], [ %75, %83 ]
  %98 = icmp eq i32 %97, %72
  br i1 %98, label %99, label %104

99:                                               ; preds = %93, %96
  %100 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %100, ptr noundef nonnull @.str, i32 noundef 443, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #12
          to label %101 unwind label %102

101:                                              ; preds = %99
  invoke void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %91

102:                                              ; preds = %99
  %103 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %100) #14
  br label %180

104:                                              ; preds = %96, %67
  invoke void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %4) #12
          to label %105 unwind label %87

105:                                              ; preds = %104
  %106 = and i32 %21, 1024
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %131, label %108, !prof !188

108:                                              ; preds = %105
  %109 = call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  %110 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %111 = load i32, ptr %110, align 4, !tbaa !114
  %112 = icmp ugt i32 %109, %111
  br i1 %112, label %113, label %131, !prof !188

113:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #14
  %114 = call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %114, ptr noundef nonnull %7, i32 noundef 64, i32 noundef 10, ptr noundef %4) #12
          to label %115 unwind label %125

115:                                              ; preds = %113
  %116 = load i32, ptr %110, align 4, !tbaa !114
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %116, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 10, ptr noundef %4) #12
          to label %117 unwind label %125

117:                                              ; preds = %115
  %118 = call ptr @__cxa_allocate_exception(i64 48) #14
  %119 = load ptr, ptr %6, align 8, !tbaa !98
  %120 = getelementptr inbounds ptr, ptr %119, i64 6
  %121 = load ptr, ptr %120, align 8
  %122 = invoke noundef ptr %121(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
          to label %123 unwind label %127

123:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %118, ptr noundef nonnull @.str, i32 noundef 461, i32 noundef 246, ptr noundef %122, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef %4) #12
          to label %124 unwind label %127

124:                                              ; preds = %123
  invoke void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %125

125:                                              ; preds = %124, %115, %113
  %126 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %129

127:                                              ; preds = %123, %117
  %128 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %118) #14
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi { ptr, i32 } [ %126, %125 ], [ %128, %127 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #14
  br label %180

131:                                              ; preds = %108, %105
  %132 = and i32 %21, 512
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %179, label %134, !prof !186

134:                                              ; preds = %131
  %135 = call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  %136 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !101
  %138 = icmp ugt i32 %135, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %134
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #14
  %140 = call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %140, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %4) #12
          to label %141 unwind label %151

141:                                              ; preds = %139
  %142 = load i32, ptr %136, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %142, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 10, ptr noundef %4) #12
          to label %143 unwind label %151

143:                                              ; preds = %141
  %144 = call ptr @__cxa_allocate_exception(i64 48) #14
  %145 = load ptr, ptr %6, align 8, !tbaa !98
  %146 = getelementptr inbounds ptr, ptr %145, i64 6
  %147 = load ptr, ptr %146, align 8
  %148 = invoke noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
          to label %149 unwind label %153

149:                                              ; preds = %143
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %144, ptr noundef nonnull @.str, i32 noundef 478, i32 noundef 245, ptr noundef %148, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef %4) #12
          to label %150 unwind label %153

150:                                              ; preds = %149
  invoke void @__cxa_throw(ptr nonnull %144, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %151

151:                                              ; preds = %150, %141, %139
  %152 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %155

153:                                              ; preds = %149, %143
  %154 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %144) #14
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi { ptr, i32 } [ %152, %151 ], [ %154, %153 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #14
  br label %180

157:                                              ; preds = %134
  %158 = call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  %159 = load i32, ptr %136, align 8, !tbaa !101
  %160 = icmp ugt i32 %158, %159
  br i1 %160, label %161, label %179

161:                                              ; preds = %157
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %11) #14
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %12) #14
  %162 = call noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %162, ptr noundef nonnull %11, i32 noundef 64, i32 noundef 10, ptr noundef %4) #12
          to label %163 unwind label %173

163:                                              ; preds = %161
  %164 = load i32, ptr %136, align 8, !tbaa !101
  invoke void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %164, ptr noundef nonnull %12, i32 noundef 64, i32 noundef 10, ptr noundef %4) #12
          to label %165 unwind label %173

165:                                              ; preds = %163
  %166 = call ptr @__cxa_allocate_exception(i64 48) #14
  %167 = load ptr, ptr %6, align 8, !tbaa !98
  %168 = getelementptr inbounds ptr, ptr %167, i64 6
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(48) %6) #12
          to label %171 unwind label %175

171:                                              ; preds = %165
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr noundef nonnull @.str, i32 noundef 499, i32 noundef 245, ptr noundef %170, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef %4) #12
          to label %172 unwind label %175

172:                                              ; preds = %171
  invoke void @__cxa_throw(ptr nonnull %166, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %173

173:                                              ; preds = %172, %163, %161
  %174 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %177

175:                                              ; preds = %171, %165
  %176 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  call void @__cxa_free_exception(ptr %166) #14
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi { ptr, i32 } [ %174, %173 ], [ %176, %175 ]
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %12) #14
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %11) #14
  br label %180

179:                                              ; preds = %131, %157
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  br label %205

180:                                              ; preds = %89, %91, %102, %177, %155, %129, %87
  %181 = phi { ptr, i32 } [ %130, %129 ], [ %156, %155 ], [ %178, %177 ], [ %88, %87 ], [ %103, %102 ], [ %90, %89 ], [ %92, %91 ]
  call void @_ZN11xercesc_2_713XMLBigDecimalD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %6) #13
  br label %182

182:                                              ; preds = %180, %85
  %183 = phi { ptr, i32 } [ %181, %180 ], [ %86, %85 ]
  %184 = extractvalue { ptr, i32 } %183, 1
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %6) #14
  %185 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #14
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %182
  %188 = extractvalue { ptr, i32 } %183, 0
  %189 = call ptr @__cxa_begin_catch(ptr %188) #14
  %190 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %189) #12
  %191 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %190, ptr noundef %4) #12
          to label %192 unwind label %197

192:                                              ; preds = %187
  call void @__cxa_end_catch()
  %193 = icmp eq ptr %191, null
  br i1 %193, label %205, label %194, !prof !189

194:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %191, ptr noundef %4) #12
  %195 = call ptr @__cxa_allocate_exception(i64 48) #14
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %195, ptr noundef nonnull @.str, i32 noundef 510, i32 noundef 299, ptr noundef nonnull %191, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #12
          to label %196 unwind label %199

196:                                              ; preds = %194
  invoke void @__cxa_throw(ptr nonnull %195, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
          to label %211 unwind label %201

197:                                              ; preds = %187
  %198 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %206 unwind label %208

199:                                              ; preds = %194
  %200 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %195) #14
  br label %203

201:                                              ; preds = %196
  %202 = landingpad { ptr, i32 }
          cleanup
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi { ptr, i32 } [ %202, %201 ], [ %200, %199 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  br label %206

205:                                              ; preds = %179, %192, %65
  ret void

206:                                              ; preds = %197, %54, %182, %203, %63, %39
  %207 = phi { ptr, i32 } [ %64, %63 ], [ %40, %39 ], [ %204, %203 ], [ %183, %182 ], [ %55, %54 ], [ %198, %197 ]
  resume { ptr, i32 } %207

208:                                              ; preds = %197, %54
  %209 = landingpad { ptr, i32 }
          catch ptr null
  %210 = extractvalue { ptr, i32 } %209, 0
  call void @__clang_call_terminate(ptr %210) #16
  unreachable

211:                                              ; preds = %196, %172, %150, %124, %101, %49
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !190 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !154 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 comdat align 2 !prof !192 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !193
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !194
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #2 comdat align 2 !prof !197 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !175
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !175
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #12
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !178
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !174
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !198 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !199
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !200 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBigDecimal", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !201
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !202 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !203

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #12
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !98
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 !prof !204 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !205
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !207
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #12
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
define dso_local noundef ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr %2
  br i1 %3, label %9, label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !98
  %11 = getelementptr inbounds ptr, ptr %10, i64 17
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %8) #12
          to label %17 unwind label %13

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #14
  tail call void @__cxa_end_catch()
  br label %30

17:                                               ; preds = %9, %4
  %18 = tail call noundef i32 @_ZN11xercesc_2_724DatatypeValidatorFactory14getCanRepGroupEPKNS_17DatatypeValidatorE(ptr noundef nonnull %0) #12
  %19 = add i32 %18, -5
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = icmp eq i32 %18, 7
  %23 = tail call noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef %1, ptr noundef %8, i1 noundef zeroext %22) #12
  br label %30

24:                                               ; preds = %17
  %25 = icmp eq i32 %18, 4
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = tail call noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %8) #12
  br label %30

28:                                               ; preds = %24
  %29 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %8) #12
  br label %30

30:                                               ; preds = %21, %26, %28, %13
  %31 = phi ptr [ null, %13 ], [ %23, %21 ], [ %27, %26 ], [ %29, %28 ]
  ret ptr %31
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_724DatatypeValidatorFactory14getCanRepGroupEPKNS_17DatatypeValidatorE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %0) #12
  invoke void @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef %0) #12
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #13
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_724DecimalDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !121 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !121 {
  ret ptr @_ZN11xercesc_2_724DecimalDatatypeValidator29classDecimalDatatypeValidatorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_724DecimalDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !121 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef 2) #12
  br label %6

6:                                                ; preds = %4, %2
  tail call void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %7 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 1
  br i1 %7, label %9, label %15

9:                                                ; preds = %6
  %10 = load i32, ptr %8, align 8, !tbaa !101
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %10) #12
  %12 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 4, !tbaa !114
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %13) #12
  br label %19

15:                                               ; preds = %6
  %16 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %8) #12
  %17 = getelementptr inbounds %"class.xercesc_2_7::DecimalDatatypeValidator", ptr %0, i64 0, i32 2
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %17) #12
  br label %19

19:                                               ; preds = %15, %9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = load i16, ptr %0, align 8, !tbaa !209
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724AbstractNumericValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !121 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %7) #12
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %8, %0
  %11 = and i1 %10, %9
  br i1 %11, label %6, label %12, !llvm.loop !212

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
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
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !213
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
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
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #2 comdat align 2 !prof !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !215

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !127
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !216

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !127
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !217, !llvm.loop !218

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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !213
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !121 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !219
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !175
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !220
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !178
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !177
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !98
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #12
  store ptr %16, ptr %9, align 8, !tbaa !178
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !178
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !174
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !221
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !219, !range !222, !noundef !223
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !175
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !178
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !174
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !98
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !175
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !224

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = load ptr, ptr %30, align 8, !tbaa !98
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !175
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10) #12
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !219, !range !222, !noundef !223
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !178
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !174
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !98
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !178
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !174
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !175
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !175
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !219, !range !222, !noundef !223
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !178
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !174
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !98
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !178
  %24 = load i32, ptr %2, align 4, !tbaa !175
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !174
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !225
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !175
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !177
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9) #12
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
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !219, !range !222, !noundef !223
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !178
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !174
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !98
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !175
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
  %43 = load ptr, ptr %42, align 8, !tbaa !178
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !178
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !174
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !174
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !226

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !174
  store i32 %31, ptr %3, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !175
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !175
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !219, !range !222, !noundef !223
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !178
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !174
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !121 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !219, !range !222, !noundef !223
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !175
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !178
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !174
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !98
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !175
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !227

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !177
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !178
  %33 = load ptr, ptr %30, align 8, !tbaa !98
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !228 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !121 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !121 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !178
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !175
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !174
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !175
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !175
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !220
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !177
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #12
  %21 = load i32, ptr %3, align 4, !tbaa !175
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !174
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !178
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !174
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !174
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !229

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !177
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !178
  %49 = load ptr, ptr %46, align 8, !tbaa !98
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  store ptr %20, ptr %47, align 8, !tbaa !178
  store i32 %12, ptr %6, align 8, !tbaa !220
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !208 {
  %3 = load ptr, ptr %0, align 8, !tbaa !205
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !230

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !207
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !231

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !98
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #12
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !205
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !207
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { optsize }
attributes #13 = { nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!96}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!35 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator10setNumericEb, i64 1}
!38 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 14}
!39 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 14}
!40 = !{ptr @_ZN11xercesc_2_724AbstractNumericValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 14}
!41 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_724AbstractNumericValidatorD2Ev, i64 15}
!42 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 14}
!43 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, i64 14}
!44 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 4}
!45 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE, i64 2}
!46 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator17setFractionDigitsEj, i64 1}
!47 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi, i64 1}
!48 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 14}
!49 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 26}
!50 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator17setFractionDigitsEj, i64 10}
!51 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi, i64 10}
!52 = !{ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 14}
!53 = !{ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 14}
!54 = !{ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 26}
!55 = !{ptr @_ZNK11xercesc_2_724DecimalDatatypeValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv, i64 1}
!56 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZNK11xercesc_2_713XMLBigDecimal16getMemoryManagerEv, i64 24978}
!57 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_713XMLBigDecimal13compareValuesEPKS0_S2_PNS_13MemoryManagerE, i64 24978}
!58 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 10}
!59 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE, i64 10}
!60 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 6}
!61 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE, i64 6}
!62 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!63 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!64 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!65 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!66 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 233337}
!67 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 233337}
!68 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv, i64 71648}
!69 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 2}
!70 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv, i64 3}
!71 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE, i64 2}
!72 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE, i64 2}
!73 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE, i64 35824}
!74 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 2}
!75 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!76 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLBigDecimalC1EPKtPNS_13MemoryManagerE, i64 91734}
!77 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator14getEnumerationEv, i64 91755}
!78 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE4sizeEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj, i64 20}
!80 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724AbstractNumericValidator11boundsCheckEPKNS_9XMLNumberEPNS_13MemoryManagerE, i64 91734}
!81 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_713XMLBigDecimal8getScaleEv, i64 91735}
!82 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_713XMLBigDecimal13getTotalDigitEv, i64 1}
!84 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLBigDecimalD1Ev, i64 91734}
!85 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @__cxa_begin_catch, i64 1}
!86 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_712XMLException10getMessageEv, i64 1}
!87 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 1}
!88 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @__cxa_end_catch, i64 1}
!89 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, i64 1}
!90 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!91 = !{ptr @_ZN11xercesc_2_724DecimalDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, i64 1}
!92 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!93 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!94 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!95 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !100, i64 0}
!100 = !{!"Simple C++ TBAA"}
!101 = !{!102, !110, i64 160}
!102 = !{!"_ZTSN11xercesc_2_724DecimalDatatypeValidatorE", !103, i64 0, !110, i64 160, !110, i64 164}
!103 = !{!"_ZTSN11xercesc_2_724AbstractNumericValidatorE", !104, i64 0}
!104 = !{!"_ZTSN11xercesc_2_729AbstractNumericFacetValidatorE", !105, i64 0, !107, i64 104, !107, i64 105, !107, i64 106, !107, i64 107, !107, i64 108, !113, i64 112, !113, i64 120, !113, i64 128, !113, i64 136, !113, i64 144, !113, i64 152}
!105 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !106, i64 0, !107, i64 8, !107, i64 9, !107, i64 10, !107, i64 11, !109, i64 12, !110, i64 16, !110, i64 20, !110, i64 24, !111, i64 28, !112, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96}
!106 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!107 = !{!"bool", !108, i64 0}
!108 = !{!"omnipotent char", !100, i64 0}
!109 = !{!"short", !108, i64 0}
!110 = !{!"int", !108, i64 0}
!111 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !108, i64 0}
!112 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !108, i64 0}
!113 = !{!"any pointer", !108, i64 0}
!114 = !{!102, !110, i64 164}
!115 = !{!"function_entry_count", i64 49}
!116 = !{!105, !112, i64 32}
!117 = !{!"function_entry_count", i64 40}
!118 = !{!105, !107, i64 11}
!119 = !{!"function_entry_count", i64 14}
!120 = !{!"function_entry_count", i64 15}
!121 = !{!"function_entry_count", i64 0}
!122 = !{!"function_entry_count", i64 2}
!123 = !{!"branch_weights", i32 1, i32 3}
!124 = !{!"branch_weights", i32 3, i32 1}
!125 = !{!"function_entry_count", i64 1231717351}
!126 = !{!"branch_weights", i32 621, i32 -1469098093}
!127 = !{!109, !109, i64 0}
!128 = !{!"branch_weights", i32 408901017, i32 1}
!129 = !{!"branch_weights", i32 267, i32 4}
!130 = !{!"branch_weights", i32 1, i32 4}
!131 = !{!"branch_weights", i32 156, i32 112}
!132 = !{!"branch_weights", i32 1, i32 112}
!133 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!134 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"function_entry_count", i64 67}
!138 = !{!105, !110, i64 20}
!139 = !{!"branch_weights", i32 1, i32 15}
!140 = !{!"branch_weights", i32 1, i32 31}
!141 = !{!"branch_weights", i32 169, i32 55}
!142 = !{!"function_entry_count", i64 1580484}
!143 = !{!105, !113, i64 40}
!144 = !{!"function_entry_count", i64 2082808}
!145 = !{!"branch_weights", i32 3, i32 61}
!146 = !{!"branch_weights", i32 31, i32 1}
!147 = !{!"branch_weights", i32 13, i32 3}
!148 = !{!"function_entry_count", i64 114}
!149 = !{!105, !110, i64 24}
!150 = !{!"function_entry_count", i64 24978}
!151 = !{!152, !113, i64 40}
!152 = !{!"_ZTSN11xercesc_2_713XMLBigDecimalE", !153, i64 0, !110, i64 8, !110, i64 12, !110, i64 16, !110, i64 20, !113, i64 24, !113, i64 32, !113, i64 40}
!153 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !106, i64 0}
!154 = !{!"function_entry_count", i64 10}
!155 = !{!105, !113, i64 96}
!156 = !{!104, !113, i64 112}
!157 = !{!104, !113, i64 120}
!158 = !{!"function_entry_count", i64 6}
!159 = !{!104, !113, i64 128}
!160 = !{!104, !113, i64 136}
!161 = !{!104, !113, i64 152}
!162 = distinct !{!162, !136}
!163 = distinct !{!163, !136}
!164 = !{!104, !113, i64 144}
!165 = !{!104, !107, i64 108}
!166 = distinct !{!166, !136}
!167 = !{!"function_entry_count", i64 240751}
!168 = !{!169, !110, i64 12}
!169 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !107, i64 8, !110, i64 12, !110, i64 16, !113, i64 24, !113, i64 32}
!170 = !{!"function_entry_count", i64 2444437052}
!171 = !{!"branch_weights", i32 -1850530243, i32 1}
!172 = !{!169, !113, i64 32}
!173 = !{!169, !113, i64 24}
!174 = !{!113, !113, i64 0}
!175 = !{!176, !110, i64 12}
!176 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE", !107, i64 8, !110, i64 12, !110, i64 16, !113, i64 24, !113, i64 32}
!177 = !{!176, !113, i64 32}
!178 = !{!176, !113, i64 24}
!179 = distinct !{!179, !136}
!180 = !{!"function_entry_count", i64 233337}
!181 = !{!"branch_weights", i32 91735, i32 141604}
!182 = !{!"branch_weights", i32 197515, i32 35824}
!183 = !{!"branch_weights", i32 2, i32 35823}
!184 = !{!"branch_weights", i32 35824, i32 1}
!185 = !{!"branch_weights", i32 141604, i32 91735}
!186 = !{!"branch_weights", i32 91735, i32 1}
!187 = distinct !{!187, !136}
!188 = !{!"branch_weights", i32 1, i32 91735}
!189 = !{!"branch_weights", i32 0, i32 -2147483648}
!190 = !{!"function_entry_count", i64 645404}
!191 = !{!105, !113, i64 64}
!192 = !{!"function_entry_count", i64 23}
!193 = !{!105, !113, i64 56}
!194 = !{!195, !113, i64 32}
!195 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !196, i64 8, !113, i64 16, !110, i64 24, !113, i64 32, !113, i64 40}
!196 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !108, i64 0}
!197 = !{!"function_entry_count", i64 91734}
!198 = !{!"function_entry_count", i64 141596}
!199 = !{!152, !110, i64 16}
!200 = !{!"function_entry_count", i64 49862}
!201 = !{!152, !110, i64 12}
!202 = !{!"function_entry_count", i64 558789}
!203 = !{!"branch_weights", i32 158605, i32 400186}
!204 = !{!"function_entry_count", i64 52059}
!205 = !{!206, !113, i64 0}
!206 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !113, i64 0, !113, i64 8}
!207 = !{!206, !113, i64 8}
!208 = !{!"function_entry_count", i64 243874}
!209 = !{!210, !109, i64 0}
!210 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !109, i64 0, !109, i64 2, !113, i64 8, !113, i64 16, !113, i64 24, !211, i64 32, !211, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !110, i64 96}
!211 = !{!"long", !108, i64 0}
!212 = distinct !{!212, !136}
!213 = !{!195, !113, i64 40}
!214 = !{!"function_entry_count", i64 2453164456}
!215 = !{!"branch_weights", i32 1, i32 -1841802839}
!216 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!217 = !{!"branch_weights", i32 408669070, i32 -279908794}
!218 = distinct !{!218, !136}
!219 = !{!176, !107, i64 8}
!220 = !{!176, !110, i64 16}
!221 = distinct !{!221, !136}
!222 = !{i8 0, i8 2}
!223 = !{}
!224 = distinct !{!224, !136}
!225 = distinct !{!225, !136}
!226 = distinct !{!226, !136}
!227 = distinct !{!227, !136}
!228 = !{!"function_entry_count", i64 5836268}
!229 = distinct !{!229, !136}
!230 = !{!"branch_weights", i32 191816, i32 52060}
!231 = !{!"branch_weights", i32 1, i32 52060}
