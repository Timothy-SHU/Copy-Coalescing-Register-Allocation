; ModuleID = 'DateTimeValidator.cpp'
source_filename = "DateTimeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLDateTime" = type { %"class.xercesc_2_7::XMLNumber", [8 x i32], [2 x i32], i32, i32, i32, double, i8, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::AbstractNumericFacetValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.0" = type { ptr, i8, i32, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

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

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = comdat any

@_ZTVN11xercesc_2_717DateTimeValidatorE = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DateTimeValidatorE, ptr @_ZN11xercesc_2_717DateTimeValidatorD2Ev, ptr @_ZN11xercesc_2_717DateTimeValidatorD0Ev, ptr @_ZNK11xercesc_2_717DateTimeValidator14isSerializableEv, ptr @_ZN11xercesc_2_717DateTimeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_717DateTimeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_717DateTimeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMaxExclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMinExclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator14setEnumerationEPNS_13MemoryManagerE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_717DateTimeValidator12compareDatesEPKNS_11XMLDateTimeES3_b] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_729AbstractNumericFacetValidator13INDETERMINATEE = external local_unnamed_addr constant i32, align 4
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [22 x i8] c"DateTimeValidator.cpp\00", align 1
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"DateTimeValidator\00", align 1
@_ZN11xercesc_2_717DateTimeValidator22classDateTimeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_717DateTimeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_717DateTimeValidatorE = dso_local constant [35 x i8] c"N11xercesc_2_717DateTimeValidatorE\00", align 1
@_ZTIN11xercesc_2_729AbstractNumericFacetValidatorE = external constant ptr
@_ZTIN11xercesc_2_717DateTimeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DateTimeValidatorE, ptr @_ZTIN11xercesc_2_729AbstractNumericFacetValidatorE }, align 8
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
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv] }, comdat, align 8

@_ZN11xercesc_2_717DateTimeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717DateTimeValidatorD2Ev

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #1 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #15
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidatorD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !46 {
  tail call void @llvm.trap() #16
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #4 align 2 !prof !45 {
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xercesc_2_717DateTimeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 !prof !50 {
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 17
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3), !prof !51
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717DateTimeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %3)
          to label %9 unwind label %34

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %2, ptr noundef %3)
          to label %14 unwind label %36

14:                                               ; preds = %9
  %15 = load ptr, ptr %0, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 25
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef i32 %17(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %8, ptr noundef %13, i1 noundef zeroext true)
          to label %19 unwind label %38

19:                                               ; preds = %14
  %20 = load i32, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator13INDETERMINATEE, align 4, !tbaa !52
  %21 = icmp eq i32 %18, %20
  %22 = select i1 %21, i32 -1, i32 %18
  %23 = icmp eq ptr %13, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load ptr, ptr %13, align 8, !tbaa !47
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(96) %13) #15
  br label %28

28:                                               ; preds = %19, %24
  %29 = icmp eq ptr %8, null
  br i1 %29, label %64, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %8, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(96) %8) #15
  br label %64

34:                                               ; preds = %4
  %35 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %52

36:                                               ; preds = %9
  %37 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %45

38:                                               ; preds = %14
  %39 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %40 = icmp eq ptr %13, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %13, align 8, !tbaa !47
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(96) %13) #15
  br label %45

45:                                               ; preds = %38, %41, %36
  %46 = phi { ptr, i32 } [ %37, %36 ], [ %39, %41 ], [ %39, %38 ]
  %47 = icmp eq ptr %8, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr %8, align 8, !tbaa !47
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(96) %8) #15
  br label %52

52:                                               ; preds = %45, %48, %34
  %53 = phi { ptr, i32 } [ %35, %34 ], [ %46, %48 ], [ %46, %45 ]
  %54 = extractvalue { ptr, i32 } %53, 0
  %55 = extractvalue { ptr, i32 } %53, 1
  %56 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %57 = icmp eq i32 %55, %56
  %58 = tail call ptr @__cxa_begin_catch(ptr %54) #15
  br i1 %57, label %59, label %60

59:                                               ; preds = %52
  invoke void @__cxa_rethrow() #17
          to label %69 unwind label %61

60:                                               ; preds = %52
  tail call void @__cxa_end_catch()
  br label %64

61:                                               ; preds = %59
  %62 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %63 unwind label %66

63:                                               ; preds = %61
  resume { ptr, i32 } %62

64:                                               ; preds = %30, %28, %60
  %65 = phi i32 [ -1, %60 ], [ %22, %28 ], [ %22, %30 ]
  ret i32 %65

66:                                               ; preds = %61
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #16
  unreachable

69:                                               ; preds = %59
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat !prof !46 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %6 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !63

10:                                               ; preds = %5
  %11 = load ptr, ptr %8, align 8, !tbaa !47
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(160) %8, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4)
  br label %14

14:                                               ; preds = %10, %5
  %15 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = and i32 %16, 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %65, label %19, !prof !63

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %55

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %25 = load ptr, ptr %24, align 8, !tbaa !66
  %26 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %25)
          to label %27 unwind label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %29 = load ptr, ptr %28, align 8, !tbaa !67
  %30 = load ptr, ptr %24, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %26, ptr noundef %29, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %30)
          to label %31 unwind label %34

31:                                               ; preds = %27
  store ptr %26, ptr %20, align 8, !tbaa !65
  br label %55

32:                                               ; preds = %23
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %36

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #15
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi { ptr, i32 } [ %35, %34 ], [ %33, %32 ]
  %38 = extractvalue { ptr, i32 } %37, 1
  %39 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #15
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %233

41:                                               ; preds = %36
  %42 = extractvalue { ptr, i32 } %37, 0
  %43 = tail call ptr @__cxa_begin_catch(ptr %42) #15
  %44 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %43, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !68
  %47 = load ptr, ptr %24, align 8, !tbaa !66
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull @.str, i32 noundef 114, i32 noundef 299, ptr noundef %46, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %47)
          to label %48 unwind label %49

48:                                               ; preds = %41
  invoke void @__cxa_throw(ptr nonnull %44, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %238 unwind label %51

49:                                               ; preds = %41
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %44) #15
  br label %53

51:                                               ; preds = %48
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi { ptr, i32 } [ %52, %51 ], [ %50, %49 ]
  invoke void @__cxa_end_catch()
          to label %233 unwind label %235

55:                                               ; preds = %31, %19
  %56 = load ptr, ptr %20, align 8, !tbaa !65
  %57 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %56, ptr noundef %1, ptr noundef %4)
  br i1 %57, label %65, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %60 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %59, ptr noundef nonnull @.str, i32 noundef 124, i32 noundef 238, ptr noundef %1, ptr noundef %61, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %62 unwind label %63

62:                                               ; preds = %58
  tail call void @__cxa_throw(ptr nonnull %59, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

63:                                               ; preds = %58
  %64 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %59) #15
  br label %233

65:                                               ; preds = %55, %14
  br i1 %3, label %230, label %66, !prof !71

66:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef %1, ptr noundef %4)
  %67 = load ptr, ptr %0, align 8, !tbaa !47
  %68 = getelementptr inbounds ptr, ptr %67, i64 24
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6)
          to label %70 unwind label %95, !prof !72

70:                                               ; preds = %66
  %71 = and i32 %16, 64
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %99, label %73, !prof !63

73:                                               ; preds = %70
  %74 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 7
  %75 = load ptr, ptr %74, align 8, !tbaa !73
  %76 = load ptr, ptr %0, align 8, !tbaa !47
  %77 = getelementptr inbounds ptr, ptr %76, i64 16
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef i32 %78(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %75)
          to label %80 unwind label %95

80:                                               ; preds = %73
  %81 = icmp eq i32 %79, -1
  br i1 %81, label %99, label %82

82:                                               ; preds = %80
  %83 = call ptr @__cxa_allocate_exception(i64 48) #15
  %84 = load ptr, ptr %6, align 8, !tbaa !47
  %85 = getelementptr inbounds ptr, ptr %84, i64 6
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %88 unwind label %97

88:                                               ; preds = %82
  %89 = load ptr, ptr %74, align 8, !tbaa !73
  %90 = load ptr, ptr %89, align 8, !tbaa !47
  %91 = getelementptr inbounds ptr, ptr %90, i64 6
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89)
          to label %94 unwind label %97

94:                                               ; preds = %88
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %83, ptr noundef nonnull @.str, i32 noundef 149, i32 noundef 248, ptr noundef %87, ptr noundef %93, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %186 unwind label %97

95:                                               ; preds = %186, %164, %73, %66
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %231

97:                                               ; preds = %94, %88, %82
  %98 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %83) #15
  br label %231

99:                                               ; preds = %80, %70
  %100 = and i32 %16, 32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %131, label %102, !prof !63

102:                                              ; preds = %99
  %103 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !75
  %105 = load ptr, ptr %0, align 8, !tbaa !47
  %106 = getelementptr inbounds ptr, ptr %105, i64 16
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef i32 %107(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %104)
          to label %109 unwind label %127

109:                                              ; preds = %102
  %110 = add i32 %108, -1
  %111 = icmp ult i32 %110, 2
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = call ptr @__cxa_allocate_exception(i64 48) #15
  %114 = load ptr, ptr %6, align 8, !tbaa !47
  %115 = getelementptr inbounds ptr, ptr %114, i64 6
  %116 = load ptr, ptr %115, align 8
  %117 = invoke noundef ptr %116(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %118 unwind label %129

118:                                              ; preds = %112
  %119 = load ptr, ptr %103, align 8, !tbaa !75
  %120 = load ptr, ptr %119, align 8, !tbaa !47
  %121 = getelementptr inbounds ptr, ptr %120, i64 6
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef ptr %122(ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %124 unwind label %129

124:                                              ; preds = %118
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %113, ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 247, ptr noundef %117, ptr noundef %123, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %125 unwind label %129

125:                                              ; preds = %124
  invoke void @__cxa_throw(ptr nonnull %113, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %126 unwind label %127

126:                                              ; preds = %125
  unreachable

127:                                              ; preds = %125, %102
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %231

129:                                              ; preds = %124, %118, %112
  %130 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %113) #15
  br label %231

131:                                              ; preds = %109, %99
  %132 = and i32 %16, 128
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %161, label %134, !prof !63

134:                                              ; preds = %131
  %135 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 8
  %136 = load ptr, ptr %135, align 8, !tbaa !76
  %137 = load ptr, ptr %0, align 8, !tbaa !47
  %138 = getelementptr inbounds ptr, ptr %137, i64 16
  %139 = load ptr, ptr %138, align 8
  %140 = invoke noundef i32 %139(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %136)
          to label %141 unwind label %157

141:                                              ; preds = %134
  switch i32 %140, label %161 [
    i32 -1, label %142
    i32 2, label %142
  ]

142:                                              ; preds = %141, %141
  %143 = call ptr @__cxa_allocate_exception(i64 48) #15
  %144 = load ptr, ptr %6, align 8, !tbaa !47
  %145 = getelementptr inbounds ptr, ptr %144, i64 6
  %146 = load ptr, ptr %145, align 8
  %147 = invoke noundef ptr %146(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %148 unwind label %159

148:                                              ; preds = %142
  %149 = load ptr, ptr %135, align 8, !tbaa !76
  %150 = load ptr, ptr %149, align 8, !tbaa !47
  %151 = getelementptr inbounds ptr, ptr %150, i64 6
  %152 = load ptr, ptr %151, align 8
  %153 = invoke noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(8) %149)
          to label %154 unwind label %159

154:                                              ; preds = %148
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %143, ptr noundef nonnull @.str, i32 noundef 175, i32 noundef 249, ptr noundef %147, ptr noundef %153, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %155 unwind label %159

155:                                              ; preds = %154
  invoke void @__cxa_throw(ptr nonnull %143, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %156 unwind label %157

156:                                              ; preds = %155
  unreachable

157:                                              ; preds = %155, %134
  %158 = landingpad { ptr, i32 }
          cleanup
  br label %231

159:                                              ; preds = %154, %148, %142
  %160 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %143) #15
  br label %231

161:                                              ; preds = %141, %131
  %162 = and i32 %16, 256
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %191, label %164, !prof !63

164:                                              ; preds = %161
  %165 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 9
  %166 = load ptr, ptr %165, align 8, !tbaa !77
  %167 = load ptr, ptr %0, align 8, !tbaa !47
  %168 = getelementptr inbounds ptr, ptr %167, i64 16
  %169 = load ptr, ptr %168, align 8
  %170 = invoke noundef i32 %169(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %166)
          to label %171 unwind label %95

171:                                              ; preds = %164
  %172 = icmp eq i32 %170, 1
  br i1 %172, label %191, label %173

173:                                              ; preds = %171
  %174 = call ptr @__cxa_allocate_exception(i64 48) #15
  %175 = load ptr, ptr %6, align 8, !tbaa !47
  %176 = getelementptr inbounds ptr, ptr %175, i64 6
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %179 unwind label %189

179:                                              ; preds = %173
  %180 = load ptr, ptr %165, align 8, !tbaa !77
  %181 = load ptr, ptr %180, align 8, !tbaa !47
  %182 = getelementptr inbounds ptr, ptr %181, i64 6
  %183 = load ptr, ptr %182, align 8
  %184 = invoke noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(8) %180)
          to label %185 unwind label %189

185:                                              ; preds = %179
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %174, ptr noundef nonnull @.str, i32 noundef 187, i32 noundef 250, ptr noundef %178, ptr noundef %184, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %186 unwind label %189

186:                                              ; preds = %94, %185
  %187 = phi ptr [ %174, %185 ], [ %83, %94 ]
  invoke void @__cxa_throw(ptr nonnull %187, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %188 unwind label %95

188:                                              ; preds = %186
  unreachable

189:                                              ; preds = %185, %179, %173
  %190 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %174) #15
  br label %231

191:                                              ; preds = %171, %161
  %192 = and i32 %16, 16
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %229, label %194, !prof !63

194:                                              ; preds = %191
  %195 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  %196 = load ptr, ptr %195, align 8, !tbaa !78
  %197 = icmp eq ptr %196, null
  br i1 %197, label %229, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %196, i64 0, i32 2
  %200 = load i32, ptr %199, align 4, !tbaa !79
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %220

202:                                              ; preds = %198, %217
  %203 = phi i32 [ %218, %217 ], [ 0, %198 ]
  %204 = load ptr, ptr %195, align 8, !tbaa !78
  %205 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %204, i32 noundef %203)
          to label %206 unwind label %213

206:                                              ; preds = %202
  %207 = load ptr, ptr %0, align 8, !tbaa !47
  %208 = getelementptr inbounds ptr, ptr %207, i64 16
  %209 = load ptr, ptr %208, align 8
  %210 = invoke noundef i32 %209(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %6, ptr noundef %205)
          to label %211 unwind label %213

211:                                              ; preds = %206
  %212 = icmp eq i32 %210, 0
  br i1 %212, label %220, label %217

213:                                              ; preds = %202, %206
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %231

215:                                              ; preds = %225
  %216 = landingpad { ptr, i32 }
          cleanup
  br label %231

217:                                              ; preds = %211
  %218 = add nuw nsw i32 %203, 1
  %219 = icmp eq i32 %218, %200
  br i1 %219, label %220, label %202, !llvm.loop !81

220:                                              ; preds = %217, %211, %198
  %221 = phi i32 [ 0, %198 ], [ %200, %217 ], [ %203, %211 ]
  %222 = icmp eq i32 %221, %200
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %224, ptr noundef nonnull @.str, i32 noundef 203, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4)
          to label %225 unwind label %227

225:                                              ; preds = %223
  invoke void @__cxa_throw(ptr nonnull %224, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
          to label %226 unwind label %215

226:                                              ; preds = %225
  unreachable

227:                                              ; preds = %223
  %228 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %224) #15
  br label %231

229:                                              ; preds = %220, %194, %191
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  br label %230

230:                                              ; preds = %65, %229
  ret void

231:                                              ; preds = %213, %215, %227, %157, %159, %127, %129, %189, %97, %95
  %232 = phi { ptr, i32 } [ %96, %95 ], [ %98, %97 ], [ %190, %189 ], [ %128, %127 ], [ %130, %129 ], [ %158, %157 ], [ %160, %159 ], [ %228, %227 ], [ %214, %213 ], [ %216, %215 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  br label %233

233:                                              ; preds = %53, %231, %63, %36
  %234 = phi { ptr, i32 } [ %64, %63 ], [ %232, %231 ], [ %37, %36 ], [ %54, %53 ]
  resume { ptr, i32 } %234

235:                                              ; preds = %53
  %236 = landingpad { ptr, i32 }
          catch ptr null
  %237 = extractvalue { ptr, i32 } %236, 0
  tail call void @__clang_call_terminate(ptr %237) #16
  unreachable

238:                                              ; preds = %48
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  ret ptr %18
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717DateTimeValidator13compareValuesEPKNS_9XMLNumberES3_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !46 {
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true)
  ret i32 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717DateTimeValidator12compareDatesEPKNS_11XMLDateTimeES3_b(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2, i1 zeroext %3) unnamed_addr #4 align 2 !prof !46 {
  %5 = tail call noundef i32 @_ZN11xercesc_2_711XMLDateTime7compareEPKS0_S2_(ptr noundef %1, ptr noundef %2)
  ret i32 %5
}

declare noundef i32 @_ZN11xercesc_2_711XMLDateTime7compareEPKS0_S2_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator15setMaxInclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 6
  store ptr %8, ptr %9, align 8, !tbaa !75
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator15setMaxExclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 7
  store ptr %8, ptr %9, align 8, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator15setMinInclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 8
  store ptr %8, ptr %9, align 8, !tbaa !76
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator15setMinExclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %4 = load ptr, ptr %3, align 8, !tbaa !66
  %5 = load ptr, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %4)
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 9
  store ptr %8, ptr %9, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator14setEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = icmp eq ptr %4, null
  br i1 %5, label %52, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !88
  %9 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %10 = load ptr, ptr %9, align 8, !tbaa !66
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10)
  %12 = load ptr, ptr %9, align 8, !tbaa !66
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 1
  store i8 1, ptr %13, align 8, !tbaa !90
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !79
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 3
  store i32 %8, ptr %15, align 8, !tbaa !91
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 4
  store ptr null, ptr %16, align 8, !tbaa !85
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %11, i64 0, i32 5
  store ptr %12, ptr %17, align 8, !tbaa !84
  %18 = zext i32 %8 to i64
  %19 = shl nuw nsw i64 %18, 3
  %20 = load ptr, ptr %12, align 8, !tbaa !47
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %19)
          to label %24 unwind label %38

24:                                               ; preds = %6
  store ptr %23, ptr %16, align 8, !tbaa !85
  %25 = icmp eq i32 %8, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = zext i32 %8 to i64
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i64 [ 0, %26 ], [ %32, %28 ]
  %30 = load ptr, ptr %16, align 8, !tbaa !85
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  store ptr null, ptr %31, align 8, !tbaa !86
  %32 = add nuw nsw i64 %29, 1
  %33 = icmp eq i64 %32, %27
  br i1 %33, label %34, label %28, !llvm.loop !92

34:                                               ; preds = %28, %24
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %11, align 8, !tbaa !47
  %35 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 10
  store ptr %11, ptr %35, align 8, !tbaa !78
  %36 = getelementptr inbounds %"class.xercesc_2_7::AbstractNumericFacetValidator", ptr %0, i64 0, i32 5
  store i8 0, ptr %36, align 4, !tbaa !93
  %37 = icmp sgt i32 %8, 0
  br i1 %37, label %40, label %52

38:                                               ; preds = %6
  %39 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %11, ptr noundef %10) #15
  resume { ptr, i32 } %39

40:                                               ; preds = %34, %40
  %41 = phi i32 [ %50, %40 ], [ 0, %34 ]
  %42 = load ptr, ptr %35, align 8, !tbaa !78
  %43 = load ptr, ptr %3, align 8, !tbaa !87
  %44 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %43, i32 noundef %41)
  %45 = load ptr, ptr %9, align 8, !tbaa !66
  %46 = load ptr, ptr %0, align 8, !tbaa !47
  %47 = getelementptr inbounds ptr, ptr %46, i64 23
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %44, ptr noundef %45)
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %42, ptr noundef %49, i32 noundef %41)
  %50 = add nuw nsw i32 %41, 1
  %51 = icmp eq i32 %50, %8
  br i1 %51, label %52, label %40, !llvm.loop !94

52:                                               ; preds = %40, %34, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15insertElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1)
  %8 = load i32, ptr %4, align 4, !tbaa !79
  br label %34

9:                                                ; preds = %3
  %10 = icmp ult i32 %5, %2
  br i1 %10, label %11, label %18

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str.2, i32 noundef 84, i32 noundef 116, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %11
  tail call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %12) #15
  resume { ptr, i32 } %17

18:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1)
  %19 = load i32, ptr %4, align 4, !tbaa !79
  %20 = icmp ugt i32 %19, %2
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %23 = zext i32 %19 to i64
  %24 = zext i32 %2 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %23, %21 ], [ %29, %25 ]
  %27 = load ptr, ptr %22, align 8, !tbaa !85
  %28 = add nsw i64 %26, -1
  %29 = add nsw i64 %26, -1
  %30 = getelementptr inbounds ptr, ptr %27, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !86
  %32 = getelementptr inbounds ptr, ptr %27, i64 %26
  store ptr %31, ptr %32, align 8, !tbaa !86
  %33 = icmp ugt i64 %28, %24
  br i1 %33, label %25, label %34, !llvm.loop !95

34:                                               ; preds = %18, %25, %7
  %35 = phi i32 [ %8, %7 ], [ %2, %25 ], [ %2, %18 ]
  %36 = phi i32 [ %8, %7 ], [ %19, %25 ], [ %19, %18 ]
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  %39 = zext i32 %35 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  store ptr %1, ptr %40, align 8, !tbaa !86
  %41 = add i32 %36, 1
  store i32 %41, ptr %4, align 4, !tbaa !79
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !88
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !97

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.0", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  ret ptr %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_717DateTimeValidator12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #11 align 2 !prof !46 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DateTimeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !46 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717DateTimeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !46 {
  ret ptr @_ZN11xercesc_2_717DateTimeValidator22classDateTimeValidatorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DateTimeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #4 align 2 !prof !46 {
  %3 = load i16, ptr %1, align 8, !tbaa !100
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef 3)
  br label %7

7:                                                ; preds = %5, %2
  tail call void @_ZN11xercesc_2_729AbstractNumericFacetValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 !prof !46 {
  ret i1 true
}

declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #5

declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 !prof !46 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, %0
  %12 = and i1 %11, %10
  br i1 %12, label %6, label %13, !llvm.loop !103

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  ret i1 %14
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #5

declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #5

declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !47
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9XMLNumberEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !90, !range !105, !noundef !106
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !85
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !79
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !107

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = load ptr, ptr %28, align 8, !tbaa !47
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
  tail call void @__clang_call_terminate(ptr %37) #16
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !79
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !90, !range !105, !noundef !106
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !85
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !47
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23) #15
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !85
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !86
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !79
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !79
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !90, !range !105, !noundef !106
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !85
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !86
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !47
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #15
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !85
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !86
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !79
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !108
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #17
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !90, !range !105, !noundef !106
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !86
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !47
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(8) %22) #15
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !79
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !85
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !86
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !109

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !85
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !86
  store i32 %30, ptr %3, align 4, !tbaa !79
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !79
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !79
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !90, !range !105, !noundef !106
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 !prof !46 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !90, !range !105, !noundef !106
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !79
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !85
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !47
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15) #15
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !79
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !110

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !85
  %31 = load ptr, ptr %28, align 8, !tbaa !47
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !46 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !79
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !84
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !47
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !79
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !86
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !85
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !86
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !86
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !111

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !84
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = load ptr, ptr %49, align 8, !tbaa !47
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !85
  store i32 %12, ptr %6, align 8, !tbaa !91
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xercesc_2_717DateTimeValidatorD2Ev, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidatorD2Ev, i64 9}
!36 = !{ptr @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 9}
!37 = !{ptr @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, i64 29629}
!38 = !{ptr @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE, i64 29629}
!39 = !{ptr @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_711XMLDateTimeD1Ev, i64 29629}
!40 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 9}
!46 = !{!"function_entry_count", i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 29629}
!51 = !{!"VP", i32 0, i64 29629, i64 8021169063612834098, i64 29629}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !54, i64 0}
!54 = !{!"omnipotent char", !49, i64 0}
!55 = !{!56, !62, i64 40}
!56 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !57, i64 0, !58, i64 8, !58, i64 9, !58, i64 10, !58, i64 11, !59, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !60, i64 28, !61, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96}
!57 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!58 = !{!"bool", !54, i64 0}
!59 = !{!"short", !54, i64 0}
!60 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !54, i64 0}
!61 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !54, i64 0}
!62 = !{!"any pointer", !54, i64 0}
!63 = !{!"branch_weights", i32 29629, i32 0}
!64 = !{!56, !53, i64 20}
!65 = !{!56, !62, i64 64}
!66 = !{!56, !62, i64 96}
!67 = !{!56, !62, i64 56}
!68 = !{!69, !62, i64 32}
!69 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !70, i64 8, !62, i64 16, !53, i64 24, !62, i64 32, !62, i64 40}
!70 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !54, i64 0}
!71 = !{!"branch_weights", i32 0, i32 29629}
!72 = !{!"VP", i32 0, i64 29629, i64 7851517172149552880, i64 29629}
!73 = !{!74, !62, i64 120}
!74 = !{!"_ZTSN11xercesc_2_729AbstractNumericFacetValidatorE", !56, i64 0, !58, i64 104, !58, i64 105, !58, i64 106, !58, i64 107, !58, i64 108, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152}
!75 = !{!74, !62, i64 112}
!76 = !{!74, !62, i64 128}
!77 = !{!74, !62, i64 136}
!78 = !{!74, !62, i64 144}
!79 = !{!80, !53, i64 12}
!80 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9XMLNumberEEE", !58, i64 8, !53, i64 12, !53, i64 16, !62, i64 24, !62, i64 32}
!81 = distinct !{!81, !82, !83}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!80, !62, i64 32}
!85 = !{!80, !62, i64 24}
!86 = !{!62, !62, i64 0}
!87 = !{!74, !62, i64 152}
!88 = !{!89, !53, i64 12}
!89 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !58, i64 8, !53, i64 12, !53, i64 16, !62, i64 24, !62, i64 32}
!90 = !{!80, !58, i64 8}
!91 = !{!80, !53, i64 16}
!92 = distinct !{!92, !82, !83}
!93 = !{!74, !58, i64 108}
!94 = distinct !{!94, !82, !83}
!95 = distinct !{!95, !82, !83}
!96 = !{!"function_entry_count", i64 2444437052}
!97 = !{!"branch_weights", i32 -1850530244, i32 0}
!98 = !{!89, !62, i64 32}
!99 = !{!89, !62, i64 24}
!100 = !{!101, !59, i64 0}
!101 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !59, i64 0, !59, i64 2, !62, i64 8, !62, i64 16, !62, i64 24, !102, i64 32, !102, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !53, i64 96}
!102 = !{!"long", !54, i64 0}
!103 = distinct !{!103, !82, !83}
!104 = !{!69, !62, i64 40}
!105 = !{i8 0, i8 2}
!106 = !{}
!107 = distinct !{!107, !82, !83}
!108 = distinct !{!108, !82, !83}
!109 = distinct !{!109, !82, !83}
!110 = distinct !{!110, !82, !83}
!111 = distinct !{!111, !82, !83}
