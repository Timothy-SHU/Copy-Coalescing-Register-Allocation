; ModuleID = 'DayDatatypeValidator.cpp'
source_filename = "DayDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE = comdat any

$_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEEC2EPS1_ = comdat any

$_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEED2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE5resetEPS1_ = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_720DayDatatypeValidatorE = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720DayDatatypeValidatorE, ptr @_ZN11xercesc_2_720DayDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_720DayDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_720DayDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_720DayDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_720DayDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_717DateTimeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720DayDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMaxExclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMinExclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator14setEnumerationEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720DayDatatypeValidator5parseEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_720DayDatatypeValidator5parseEPNS_11XMLDateTimeE, ptr @_ZN11xercesc_2_717DateTimeValidator12compareDatesEPKNS_11XMLDateTimeES3_b] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720DayDatatypeValidatorE = dso_local constant [38 x i8] c"N11xercesc_2_720DayDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_717DateTimeValidatorE = external constant ptr
@_ZTIN11xercesc_2_720DayDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720DayDatatypeValidatorE, ptr @_ZTIN11xercesc_2_717DateTimeValidatorE }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_720DayDatatypeValidator25classDayDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_720DayDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@.str = private unnamed_addr constant [21 x i8] c"DayDatatypeValidator\00", align 1

@_ZN11xercesc_2_720DayDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_720DayDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_720DayDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_720DayDatatypeValidatorD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720DayDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_720DayDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #8
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_720DayDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DayDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_717DateTimeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_720DayDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_720DayDatatypeValidator25classDayDatatypeValidatorE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !40 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !40 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %12

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %1, %2 ]
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %7) #9
  %9 = icmp ne ptr %8, null
  %10 = icmp ne ptr %8, %0
  %11 = and i1 %10, %9
  br i1 %11, label %6, label %12, !llvm.loop !41

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_717DateTimeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720DayDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %4) #9
  invoke void @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #8
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_717DateTimeValidator13compareValuesEPKNS_9XMLNumberES3_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator15setMaxInclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator15setMaxExclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator15setMinInclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator15setMinExclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator14setEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720DayDatatypeValidator5parseEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %4 = alloca %"class.xercesc_2_7::Janitor", align 8
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %2) #9
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %1, ptr noundef %2) #9
          to label %6 unwind label %7

6:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %5) #9
  invoke void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %5) #9
          to label %25 unwind label %11

7:                                                ; preds = %3
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = extractvalue { ptr, i32 } %8, 0
  %10 = extractvalue { ptr, i32 } %8, 1
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %2) #8
  br label %30

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  %15 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = call ptr @__cxa_begin_catch(ptr %13) #10
  %19 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  invoke void @__cxa_rethrow() #11
          to label %38 unwind label %20

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %22 unwind label %35

22:                                               ; preds = %20
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = extractvalue { ptr, i32 } %21, 0
  br label %27

25:                                               ; preds = %6
  %26 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #9
  call void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret ptr %26

27:                                               ; preds = %22, %11
  %28 = phi i32 [ %23, %22 ], [ %14, %11 ]
  %29 = phi ptr [ %24, %22 ], [ %13, %11 ]
  call void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  br label %30

30:                                               ; preds = %27, %7
  %31 = phi i32 [ %28, %27 ], [ %10, %7 ]
  %32 = phi ptr [ %29, %27 ], [ %9, %7 ]
  %33 = insertvalue { ptr, i32 } poison, ptr %32, 0
  %34 = insertvalue { ptr, i32 } %33, i32 %31, 1
  resume { ptr, i32 } %34

35:                                               ; preds = %20
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #12
  unreachable

38:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DayDatatypeValidator5parseEPNS_11XMLDateTimeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1) unnamed_addr #2 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %1) #9
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_717DateTimeValidator12compareDatesEPKNS_11XMLDateTimeES3_b(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 19, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xercesc_2_720DayDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef 1) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE(ptr noundef nonnull align 8 dereferenceable(104) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !47 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 %1, ptr %3, align 8, !tbaa !48
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 19, ptr noundef %5) #9
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xercesc_2_720DayDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef %5) #9
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret void

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #8
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720DayDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  store ptr null, ptr %0, align 8, !tbaa !58
  ret ptr %2
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !60 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_11XMLDateTimeEE5resetEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !58
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !44
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(96) %3) #8
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_720DayDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %0) #9
  invoke void @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #8
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DateTimeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !61 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_720DayDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator10setOrderedENS_22XSSimpleTypeDefinition8ORDERINGE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_720DayDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_717DateTimeValidatorD2Ev, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"function_entry_count", i64 1}
!44 = !{!45, !45, i64 0}
!45 = !{!"vtable pointer", !46, i64 0}
!46 = !{!"Simple C++ TBAA"}
!47 = !{!"function_entry_count", i64 49}
!48 = !{!49, !56, i64 32}
!49 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !50, i64 0, !51, i64 8, !51, i64 9, !51, i64 10, !51, i64 11, !53, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !55, i64 28, !56, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96}
!50 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!51 = !{!"bool", !52, i64 0}
!52 = !{!"omnipotent char", !46, i64 0}
!53 = !{!"short", !52, i64 0}
!54 = !{!"int", !52, i64 0}
!55 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !52, i64 0}
!56 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !52, i64 0}
!57 = !{!"any pointer", !52, i64 0}
!58 = !{!59, !57, i64 0}
!59 = !{!"_ZTSN11xercesc_2_77JanitorINS_11XMLDateTimeEEE", !57, i64 0}
!60 = !{!"function_entry_count", i64 5836268}
!61 = !{!"function_entry_count", i64 1580484}
!62 = !{!49, !57, i64 40}
