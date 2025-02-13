; ModuleID = 'NOTATIONDatatypeValidator.cpp'
source_filename = "NOTATIONDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getRegexEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getPatternEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_725NOTATIONDatatypeValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_725NOTATIONDatatypeValidatorE, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_725NOTATIONDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_725NOTATIONDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_723AbstractStringValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_723AbstractStringValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_723AbstractStringValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE] }, align 8
@.str = private unnamed_addr constant [30 x i8] c"NOTATIONDatatypeValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [26 x i8] c"NOTATIONDatatypeValidator\00", align 1
@_ZN11xercesc_2_725NOTATIONDatatypeValidator30classNOTATIONDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_725NOTATIONDatatypeValidatorE = dso_local constant [43 x i8] c"N11xercesc_2_725NOTATIONDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_723AbstractStringValidatorE = external constant ptr
@_ZTIN11xercesc_2_725NOTATIONDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_725NOTATIONDatatypeValidatorE, ptr @_ZTIN11xercesc_2_723AbstractStringValidatorE }, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_725NOTATIONDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_725NOTATIONDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD2Ev
@_ZN11xercesc_2_725NOTATIONDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 23, ptr noundef %1) #10
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_725NOTATIONDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 align 2 !prof !46 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 23, ptr noundef %5) #10
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_725NOTATIONDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  invoke void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %3, ptr noundef %5) #10
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret void

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #11
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %4) #10
  invoke void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #10
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
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString15isValidNOTATIONEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #10
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 77, i32 noundef 258, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2) #10
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #12
  resume { ptr, i32 } %9

10:                                               ; preds = %3
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString15isValidNOTATIONEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 20
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(128) %7, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef %4) #10
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
  %22 = load ptr, ptr %21, align 8, !tbaa !51
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %22) #10
          to label %24 unwind label %28

24:                                               ; preds = %20
  %25 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %26 = load ptr, ptr %21, align 8, !tbaa !51
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
  br i1 %36, label %37, label %109

37:                                               ; preds = %32
  %38 = extractvalue { ptr, i32 } %33, 0
  %39 = tail call ptr @__cxa_begin_catch(ptr %38) #12
  %40 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %41 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %39) #10
  %42 = load ptr, ptr %21, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull @.str, i32 noundef 107, i32 noundef 299, ptr noundef %41, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %42) #10
          to label %43 unwind label %44

43:                                               ; preds = %37
  invoke void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %114 unwind label %46

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
          to label %109 unwind label %111

50:                                               ; preds = %27, %17
  %51 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %51, ptr noundef %1, ptr noundef %4) #10
  br i1 %52, label %59, label %53

53:                                               ; preds = %50
  %54 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %55 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #10
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %54, ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 238, ptr noundef %1, ptr noundef %55, ptr noundef null, ptr noundef null, ptr noundef %4) #10
          to label %56 unwind label %57

56:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %54, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

57:                                               ; preds = %53
  %58 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %54) #12
  br label %109

59:                                               ; preds = %50, %13
  br i1 %3, label %108, label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %0, align 8, !tbaa !47
  %62 = getelementptr inbounds ptr, ptr %61, i64 17
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %4) #10
  %64 = and i32 %14, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %104, label %66

66:                                               ; preds = %60
  %67 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #10
  %68 = icmp eq ptr %67, null
  br i1 %68, label %104, label %69

69:                                               ; preds = %66
  %70 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %70, ptr noundef %4) #10
  %71 = load ptr, ptr %0, align 8, !tbaa !47
  %72 = getelementptr inbounds ptr, ptr %71, i64 22
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %70, ptr noundef %4) #10
          to label %74 unwind label %84

74:                                               ; preds = %69
  %75 = call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #10
  %76 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %75) #10
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %74, %90
  %79 = phi i32 [ %91, %90 ], [ 0, %74 ]
  %80 = call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #10
  %81 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %80, i32 noundef %79) #10
          to label %82 unwind label %86

82:                                               ; preds = %78
  %83 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %70, ptr noundef %81) #10
  br i1 %83, label %93, label %90

84:                                               ; preds = %69
  %85 = landingpad { ptr, i32 }
          cleanup
  br label %102

86:                                               ; preds = %78
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %102

88:                                               ; preds = %98
  %89 = landingpad { ptr, i32 }
          cleanup
  br label %102

90:                                               ; preds = %82
  %91 = add nuw nsw i32 %79, 1
  %92 = icmp eq i32 %91, %76
  br i1 %92, label %96, label %78, !llvm.loop !61

93:                                               ; preds = %82, %74
  %94 = phi i32 [ 0, %74 ], [ %79, %82 ]
  %95 = icmp eq i32 %94, %76
  br i1 %95, label %96, label %101

96:                                               ; preds = %90, %93
  %97 = call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef nonnull @.str, i32 noundef 144, i32 noundef 244, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %4) #10
          to label %98 unwind label %99

98:                                               ; preds = %96
  invoke void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %114 unwind label %88

99:                                               ; preds = %96
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %97) #12
  br label %102

101:                                              ; preds = %93
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %104

102:                                              ; preds = %86, %88, %99, %84
  %103 = phi { ptr, i32 } [ %85, %84 ], [ %100, %99 ], [ %87, %86 ], [ %89, %88 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %109

104:                                              ; preds = %101, %66, %60
  %105 = load ptr, ptr %0, align 8, !tbaa !47
  %106 = getelementptr inbounds ptr, ptr %105, i64 15
  %107 = load ptr, ptr %106, align 8
  call void %107(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %4) #10
  br label %108

108:                                              ; preds = %59, %104
  ret void

109:                                              ; preds = %48, %102, %57, %32
  %110 = phi { ptr, i32 } [ %58, %57 ], [ %103, %102 ], [ %33, %32 ], [ %49, %48 ]
  resume { ptr, i32 } %110

111:                                              ; preds = %48
  %112 = landingpad { ptr, i32 }
          catch ptr null
  %113 = extractvalue { ptr, i32 } %112, 0
  tail call void @__clang_call_terminate(ptr %113) #14
  unreachable

114:                                              ; preds = %98, %43
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !63 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !65 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !66
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !69 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 comdat align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !78 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !79

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #10
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !80 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #10
  store ptr %1, ptr %0, align 8, !tbaa !81
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !83
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !84 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !85
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !87 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !88

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !89
  %8 = load i16, ptr %1, align 2, !tbaa !89
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !90

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !91

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !89
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !92

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !93

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !89
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !94

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !95

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !89
  %28 = load i16, ptr %26, align 2, !tbaa !89
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !96, !llvm.loop !97

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !98 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !85
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !99

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !100
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
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !102
  ret ptr %18
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #10
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %0) #10
  invoke void @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %0) #10
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
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_725NOTATIONDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !50 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_725NOTATIONDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !50 {
  ret ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator30classNOTATIONDatatypeValidatorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_725NOTATIONDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #3 comdat align 2 !prof !50 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !50 {
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
  br i1 %11, label %6, label %12, !llvm.loop !104

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_723AbstractStringValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !50 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !105
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
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !106 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !107

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !89
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !108

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !89
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !109, !llvm.loop !110

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !111 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !103 {
  %3 = load ptr, ptr %0, align 8, !tbaa !81
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !112

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !113

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #10
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #15
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !81
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !83
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !50 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !50 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !105
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
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !50 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #10
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  ret void
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!45}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!35 = !{ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_723AbstractStringValidatorD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!39 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!40 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!43 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!44 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = !{!"function_entry_count", i64 1}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"function_entry_count", i64 0}
!51 = !{!52, !60, i64 96}
!52 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !53, i64 0, !54, i64 8, !54, i64 9, !54, i64 10, !54, i64 11, !56, i64 12, !57, i64 16, !57, i64 20, !57, i64 24, !58, i64 28, !59, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96}
!53 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!54 = !{!"bool", !55, i64 0}
!55 = !{!"omnipotent char", !49, i64 0}
!56 = !{!"short", !55, i64 0}
!57 = !{!"int", !55, i64 0}
!58 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !55, i64 0}
!59 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !55, i64 0}
!60 = !{!"any pointer", !55, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"function_entry_count", i64 1580484}
!64 = !{!52, !60, i64 40}
!65 = !{!"function_entry_count", i64 2082808}
!66 = !{!52, !57, i64 20}
!67 = !{!"function_entry_count", i64 645404}
!68 = !{!52, !60, i64 64}
!69 = !{!"function_entry_count", i64 10}
!70 = !{!"function_entry_count", i64 23}
!71 = !{!52, !60, i64 56}
!72 = !{!73, !60, i64 32}
!73 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !74, i64 8, !60, i64 16, !57, i64 24, !60, i64 32, !60, i64 40}
!74 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !55, i64 0}
!75 = !{!"function_entry_count", i64 723663}
!76 = !{!77, !60, i64 120}
!77 = !{!"_ZTSN11xercesc_2_723AbstractStringValidatorE", !52, i64 0, !57, i64 104, !57, i64 108, !57, i64 112, !54, i64 116, !60, i64 120}
!78 = !{!"function_entry_count", i64 558789}
!79 = !{!"branch_weights", i32 158605, i32 400186}
!80 = !{!"function_entry_count", i64 52059}
!81 = !{!82, !60, i64 0}
!82 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !60, i64 0, !60, i64 8}
!83 = !{!82, !60, i64 8}
!84 = !{!"function_entry_count", i64 240751}
!85 = !{!86, !57, i64 12}
!86 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !54, i64 8, !57, i64 12, !57, i64 16, !60, i64 24, !60, i64 32}
!87 = !{!"function_entry_count", i64 1231717351}
!88 = !{!"branch_weights", i32 621, i32 -1469098093}
!89 = !{!56, !56, i64 0}
!90 = !{!"branch_weights", i32 408901017, i32 1}
!91 = !{!"branch_weights", i32 267, i32 4}
!92 = !{!"branch_weights", i32 1, i32 4}
!93 = !{!"branch_weights", i32 156, i32 112}
!94 = !{!"branch_weights", i32 1, i32 112}
!95 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!96 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!97 = distinct !{!97, !62}
!98 = !{!"function_entry_count", i64 2444437052}
!99 = !{!"branch_weights", i32 -1850530243, i32 1}
!100 = !{!86, !60, i64 32}
!101 = !{!86, !60, i64 24}
!102 = !{!60, !60, i64 0}
!103 = !{!"function_entry_count", i64 243874}
!104 = distinct !{!104, !62}
!105 = !{!73, !60, i64 40}
!106 = !{!"function_entry_count", i64 2453164456}
!107 = !{!"branch_weights", i32 1, i32 -1841802839}
!108 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!109 = !{!"branch_weights", i32 408669070, i32 -279908794}
!110 = distinct !{!110, !62}
!111 = !{!"function_entry_count", i64 5836268}
!112 = !{!"branch_weights", i32 191816, i32 52060}
!113 = !{!"branch_weights", i32 1, i32 52060}
