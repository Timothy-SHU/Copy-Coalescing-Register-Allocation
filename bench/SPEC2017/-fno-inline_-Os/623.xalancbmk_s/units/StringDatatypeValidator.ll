; ModuleID = 'StringDatatypeValidator.cpp'
source_filename = "StringDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getFixedEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

@_ZTVN11xercesc_2_723StringDatatypeValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_723StringDatatypeValidatorE, ptr @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_723StringDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_723StringDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_723StringDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_723StringDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_723AbstractStringValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_723AbstractStringValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv, ptr @_ZN11xercesc_2_723AbstractStringValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_723StringDatatypeValidatorE = dso_local constant [41 x i8] c"N11xercesc_2_723StringDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_723AbstractStringValidatorE = external constant ptr
@_ZTIN11xercesc_2_723StringDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723StringDatatypeValidatorE, ptr @_ZTIN11xercesc_2_723AbstractStringValidatorE }, align 8
@_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [28 x i8] c"StringDatatypeValidator.cpp\00", align 1
@_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeFacetExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_723StringDatatypeValidator28classStringDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_723StringDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"StringDatatypeValidator\00", align 1

@_ZN11xercesc_2_723StringDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_723StringDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_723StringDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev
@_ZN11xercesc_2_723StringDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_723StringDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !70 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !70 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_723StringDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !70 {
  ret ptr @_ZN11xercesc_2_723StringDatatypeValidator28classStringDatatypeValidatorE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !70 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !70 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %7) #6
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %8, %0
  %11 = and i1 %10, %9
  br i1 %11, label %6, label %12, !llvm.loop !71

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_723AbstractStringValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723StringDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %4) #6
  invoke void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #6
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #5
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols16fgELT_WHITESPACEE) #6
  br i1 %5, label %6, label %19, !prof !75

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE) #6
  br i1 %7, label %17, label %8, !prof !76

8:                                                ; preds = %6
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE) #6
  br i1 %9, label %17, label %10, !prof !77

10:                                               ; preds = %8
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE) #6
  br i1 %11, label %17, label %12, !prof !78

12:                                               ; preds = %10
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 95, i32 noundef 182, ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #6
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %24

17:                                               ; preds = %10, %8, %6
  %18 = phi i16 [ 0, %6 ], [ 1, %8 ], [ 2, %10 ]
  tail call void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %18) #6
  tail call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 16384) #6
  ret void

19:                                               ; preds = %4
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 105, i32 noundef 171, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %3) #6
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %24

24:                                               ; preds = %22, %15
  %25 = phi ptr [ %20, %22 ], [ %13, %15 ]
  %26 = phi { ptr, i32 } [ %23, %22 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %25) #7
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 !prof !79 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !80

4:                                                ; preds = %1
  %5 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %2) #6
  %6 = and i32 %5, 16384
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %15, label %8, !prof !81

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %10 = and i32 %9, 16384
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15, !prof !82

12:                                               ; preds = %8
  %13 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %14 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %13) #6
  tail call void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %14) #6
  tail call void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 16384) #6
  br label %15

15:                                               ; preds = %4, %8, %12, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !83 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5, !prof !84

5:                                                ; preds = %2
  %6 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %7 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #6
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %9 = and i32 %8, 16384
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %48, label %11, !prof !85

11:                                               ; preds = %5
  %12 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #6
  %13 = and i32 %12, 16384
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15, !prof !77

15:                                               ; preds = %11
  %16 = icmp eq i16 %7, 2
  %17 = icmp ult i16 %6, 2
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %24, !prof !86

19:                                               ; preds = %15
  %20 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %20, ptr noundef nonnull @.str, i32 noundef 143, i32 noundef 183, ptr noundef %1) #6
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %20, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

22:                                               ; preds = %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %49

24:                                               ; preds = %15
  %25 = icmp eq i16 %7, 1
  %26 = icmp eq i16 %6, 0
  %27 = and i1 %26, %25
  br i1 %27, label %28, label %33, !prof !87

28:                                               ; preds = %24
  %29 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 147, i32 noundef 184, ptr noundef %1) #6
          to label %30 unwind label %31

30:                                               ; preds = %28
  tail call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

31:                                               ; preds = %28
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %49

33:                                               ; preds = %24
  %34 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %3) #6
  %35 = and i32 %34, 16384
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i16 %6, %7
  %38 = or i1 %37, %36
  br i1 %38, label %48, label %39, !prof !88

39:                                               ; preds = %33
  %40 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %41 = invoke noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %6) #6
          to label %42 unwind label %46

42:                                               ; preds = %39
  %43 = invoke noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %7) #6
          to label %44 unwind label %46

44:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %40, ptr noundef nonnull @.str, i32 noundef 156, i32 noundef 232, ptr noundef %41, ptr noundef %43, ptr noundef null, ptr noundef null, ptr noundef %1) #6
          to label %45 unwind label %46

45:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %40, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

46:                                               ; preds = %44, %42, %39
  %47 = landingpad { ptr, i32 }
          cleanup
  br label %49

48:                                               ; preds = %5, %11, %33, %2
  ret void

49:                                               ; preds = %46, %31, %22
  %50 = phi ptr [ %40, %46 ], [ %29, %31 ], [ %20, %22 ]
  %51 = phi { ptr, i32 } [ %47, %46 ], [ %32, %31 ], [ %23, %22 ]
  tail call void @__cxa_free_exception(ptr %50) #7
  resume { ptr, i32 } %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !89 {
  %4 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %5 = and i32 %4, 16384
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7, !prof !90

7:                                                ; preds = %3
  %8 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %9 = icmp eq i16 %8, 1
  br i1 %9, label %10, label %17, !prof !91

10:                                               ; preds = %7
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString12isWSReplacedEPKt(ptr noundef %1) #6
  br i1 %11, label %27, label %12

12:                                               ; preds = %10
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 251, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2) #6
          to label %14 unwind label %15

14:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

15:                                               ; preds = %12
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %28

17:                                               ; preds = %7
  %18 = tail call noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #6
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %27, !prof !92

20:                                               ; preds = %17
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13isWSCollapsedEPKt(ptr noundef %1) #6
  br i1 %21, label %27, label %22, !prof !92

22:                                               ; preds = %20
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 178, i32 noundef 252, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2) #6
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

25:                                               ; preds = %22
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %28

27:                                               ; preds = %10, %20, %17, %3
  ret void

28:                                               ; preds = %25, %15
  %29 = phi ptr [ %23, %25 ], [ %13, %15 ]
  %30 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  tail call void @__cxa_free_exception(ptr %29) #7
  resume { ptr, i32 } %30
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #1 align 2 !prof !93 {
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !94 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %1) #6
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_723StringDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %1) local_unnamed_addr #0 comdat align 2 !prof !98 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  store i16 %1, ptr %3, align 4, !tbaa !99
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 0, ptr noundef %5) #6
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_723StringDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext 0) #6
  invoke void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %3, ptr noundef %5) #6
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret void

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #5
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 !prof !109 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #6
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_723StringDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  tail call void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext 0) #6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !112

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !113
  %8 = load i16, ptr %1, align 2, !tbaa !113
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !114

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !115

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !113
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !76

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !116

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !113
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !117

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !118

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !113
  %28 = load i16, ptr %26, align 2, !tbaa !113
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !119, !llvm.loop !120

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #6
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !121 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !122
  %5 = or i32 %4, %1
  store i32 %5, ptr %3, align 4, !tbaa !122
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !70 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #5
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !70 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !126 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !122
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef signext i16 @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %3 = load i16, ptr %2, align 4, !tbaa !99
  ret i16 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #6
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !131
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef signext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString12isWSReplacedEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #6
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  resume { ptr, i32 } %12
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString13isWSCollapsedEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !70 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #5
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !70 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_723StringDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !70 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %0) #6
  invoke void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %0) #6
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #5
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!69}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!36 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 15}
!37 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, i64 15}
!38 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 8}
!39 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs, i64 2}
!40 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi, i64 2}
!41 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!42 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 35}
!44 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 36}
!45 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv, i64 10}
!46 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs, i64 10}
!47 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZN11xercesc_2_717DatatypeValidator16setFacetsDefinedEi, i64 10}
!48 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 20}
!49 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv, i64 38}
!50 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 22}
!51 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!52 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!53 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator8getFixedEv, i64 1}
!54 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @__cxa_free_exception, i64 1}
!55 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 410443}
!56 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator10getWSFacetEv, i64 367139}
!57 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString12isWSReplacedEPKt, i64 1}
!58 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString13isWSCollapsedEPKt, i64 183568}
!59 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!60 = !{ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!61 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!62 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs, i64 1}
!63 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 15}
!64 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs, i64 15}
!65 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 15}
!66 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_723AbstractStringValidatorD2Ev, i64 27}
!67 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 11}
!68 = !{ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs, i64 11}
!69 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!70 = !{!"function_entry_count", i64 0}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!"function_entry_count", i64 15}
!74 = !{!"function_entry_count", i64 3}
!75 = !{!"branch_weights", i32 4, i32 1}
!76 = !{!"branch_weights", i32 1, i32 4}
!77 = !{!"branch_weights", i32 2, i32 3}
!78 = !{!"branch_weights", i32 3, i32 1}
!79 = !{!"function_entry_count", i64 25}
!80 = !{!"branch_weights", i32 1, i32 26}
!81 = !{!"branch_weights", i32 13, i32 14}
!82 = !{!"branch_weights", i32 12, i32 3}
!83 = !{!"function_entry_count", i64 20}
!84 = !{!"branch_weights", i32 1, i32 21}
!85 = !{!"branch_weights", i32 18, i32 4}
!86 = !{!"branch_weights", i32 10, i32 26}
!87 = !{!"branch_weights", i32 2, i32 10}
!88 = !{!"branch_weights", i32 7, i32 1}
!89 = !{!"function_entry_count", i64 410443}
!90 = !{!"branch_weights", i32 226874, i32 183571}
!91 = !{!"branch_weights", i32 1, i32 183571}
!92 = !{!"branch_weights", i32 183571, i32 1}
!93 = !{!"function_entry_count", i64 226873}
!94 = !{!"function_entry_count", i64 1}
!95 = !{!96, !96, i64 0}
!96 = !{!"vtable pointer", !97, i64 0}
!97 = !{!"Simple C++ TBAA"}
!98 = !{!"function_entry_count", i64 42}
!99 = !{!100, !104, i64 12}
!100 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !101, i64 0, !102, i64 8, !102, i64 9, !102, i64 10, !102, i64 11, !104, i64 12, !105, i64 16, !105, i64 20, !105, i64 24, !106, i64 28, !107, i64 32, !108, i64 40, !108, i64 48, !108, i64 56, !108, i64 64, !108, i64 72, !108, i64 80, !108, i64 88, !108, i64 96}
!101 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!102 = !{!"bool", !103, i64 0}
!103 = !{!"omnipotent char", !97, i64 0}
!104 = !{!"short", !103, i64 0}
!105 = !{!"int", !103, i64 0}
!106 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !103, i64 0}
!107 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !103, i64 0}
!108 = !{!"any pointer", !103, i64 0}
!109 = !{!"function_entry_count", i64 27}
!110 = !{!"function_entry_count", i64 11}
!111 = !{!"function_entry_count", i64 1231717351}
!112 = !{!"branch_weights", i32 621, i32 -1469098093}
!113 = !{!104, !104, i64 0}
!114 = !{!"branch_weights", i32 408901017, i32 1}
!115 = !{!"branch_weights", i32 267, i32 4}
!116 = !{!"branch_weights", i32 156, i32 112}
!117 = !{!"branch_weights", i32 1, i32 112}
!118 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!119 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!120 = distinct !{!120, !72}
!121 = !{!"function_entry_count", i64 67}
!122 = !{!100, !105, i64 20}
!123 = !{!124, !108, i64 40}
!124 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !125, i64 8, !108, i64 16, !105, i64 24, !108, i64 32, !108, i64 40}
!125 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !103, i64 0}
!126 = !{!"function_entry_count", i64 1580484}
!127 = !{!100, !108, i64 40}
!128 = !{!"function_entry_count", i64 2082808}
!129 = !{!"function_entry_count", i64 1205039}
!130 = !{!"function_entry_count", i64 114}
!131 = !{!100, !105, i64 24}
