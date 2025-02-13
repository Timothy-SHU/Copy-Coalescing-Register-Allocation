; ModuleID = 'IDDatatypeValidator.cpp'
source_filename = "IDDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

@_ZTVN11xercesc_2_719IDDatatypeValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719IDDatatypeValidatorE, ptr @_ZN11xercesc_2_719IDDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_719IDDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_719IDDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_719IDDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_719IDDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_719IDDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_723AbstractStringValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719IDDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_719IDDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv, ptr @_ZN11xercesc_2_723AbstractStringValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719IDDatatypeValidatorE = dso_local constant [37 x i8] c"N11xercesc_2_719IDDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_723StringDatatypeValidatorE = external constant ptr
@_ZTIN11xercesc_2_719IDDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719IDDatatypeValidatorE, ptr @_ZTIN11xercesc_2_723StringDatatypeValidatorE }, align 8
@.str = private unnamed_addr constant [24 x i8] c"IDDatatypeValidator.cpp\00", align 1
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_719IDDatatypeValidator24classIDDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_719IDDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"IDDatatypeValidator\00", align 1

@_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_719IDDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719IDDatatypeValidatorD2Ev
@_ZN11xercesc_2_719IDDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_719IDDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719IDDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !41 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_723StringDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_719IDDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_719IDDatatypeValidator24classIDDatatypeValidatorE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !41 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6
  %5 = icmp eq ptr %2, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %2, align 8, !tbaa !42
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %1) #6
  br label %10

10:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !41 {
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
  br i1 %11, label %6, label %12, !llvm.loop !45

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_723AbstractStringValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719IDDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %4) #6
  invoke void @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #6
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #5
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723StringDatatypeValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723StringDatatypeValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723StringDatatypeValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723StringDatatypeValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13isValidNCNameEPKt(ptr noundef %1) #6
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str, i32 noundef 101, i32 noundef 253, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %2) #6
          to label %7 unwind label %8

7:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %6) #7
  resume { ptr, i32 } %9

10:                                               ; preds = %3
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !47 {
  tail call void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 20, ptr noundef %1) #6
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_719IDDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  tail call void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 20, ptr noundef %5) #6
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_719IDDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  invoke void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %3, ptr noundef %5) #6
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret void

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #5
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #5
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) #6
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_719IDDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString13isValidNCNameEPKt(ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
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

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !41 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !49
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
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !41 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719IDDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !41 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 128, ptr noundef %0) #6
  invoke void @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %0) #6
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
declare void @_ZN11xercesc_2_723StringDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !55 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  ret ptr %3
}

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
!llvm.ident = !{!40}

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
!35 = distinct !{!36, !37, !38, !39}
!36 = !{ptr @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723StringDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_719IDDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_719IDDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_723StringDatatypeValidatorD2Ev, i64 2}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"vtable pointer", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"function_entry_count", i64 1}
!48 = !{!"function_entry_count", i64 2}
!49 = !{!50, !53, i64 40}
!50 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !51, i64 8, !53, i64 16, !54, i64 24, !53, i64 32, !53, i64 40}
!51 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !52, i64 0}
!52 = !{!"omnipotent char", !44, i64 0}
!53 = !{!"any pointer", !52, i64 0}
!54 = !{!"int", !52, i64 0}
!55 = !{!"function_entry_count", i64 1580484}
!56 = !{!57, !53, i64 40}
!57 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !58, i64 0, !59, i64 8, !59, i64 9, !59, i64 10, !59, i64 11, !60, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !61, i64 28, !62, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96}
!58 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!59 = !{!"bool", !52, i64 0}
!60 = !{!"short", !52, i64 0}
!61 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !52, i64 0}
!62 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !52, i64 0}
