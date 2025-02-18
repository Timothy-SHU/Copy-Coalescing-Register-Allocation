; ModuleID = 'TimeDatatypeValidator.cpp'
source_filename = "TimeDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLDateTime" = type { %"class.xercesc_2_7::XMLNumber", [8 x i32], [2 x i32], i32, i32, i32, double, i8, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

@_ZTVN11xercesc_2_721TimeDatatypeValidatorE = dso_local unnamed_addr constant { [28 x ptr] } { [28 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721TimeDatatypeValidatorE, ptr @_ZN11xercesc_2_721TimeDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_721TimeDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_721TimeDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_721TimeDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_721TimeDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_721TimeDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_717DateTimeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721TimeDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator13compareValuesEPKNS_9XMLNumberES3_, ptr @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidator15setMaxInclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMaxExclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMinInclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator15setMinExclusiveEPKt, ptr @_ZN11xercesc_2_717DateTimeValidator14setEnumerationEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721TimeDatatypeValidator5parseEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721TimeDatatypeValidator5parseEPNS_11XMLDateTimeE, ptr @_ZN11xercesc_2_717DateTimeValidator12compareDatesEPKNS_11XMLDateTimeES3_b] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str = private unnamed_addr constant [22 x i8] c"TimeDatatypeValidator\00", align 1
@_ZN11xercesc_2_721TimeDatatypeValidator26classTimeDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_721TimeDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_721TimeDatatypeValidatorE = dso_local constant [39 x i8] c"N11xercesc_2_721TimeDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_717DateTimeValidatorE = external constant ptr
@_ZTIN11xercesc_2_721TimeDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721TimeDatatypeValidatorE, ptr @_ZTIN11xercesc_2_717DateTimeValidatorE }, align 8

@_ZN11xercesc_2_721TimeDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721TimeDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_721TimeDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_721TimeDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_721TimeDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721TimeDatatypeValidatorD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721TimeDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 14, ptr noundef %1)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xercesc_2_721TimeDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 1, ptr %3, align 8, !tbaa !44
  ret void
}

declare void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721TimeDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 14, ptr noundef %5)
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xercesc_2_721TimeDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !41
  invoke void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef %5)
          to label %7 unwind label %8

7:                                                ; preds = %6
  ret void

8:                                                ; preds = %6
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721TimeDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721TimeDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #3 align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_717DateTimeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #11
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721TimeDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %4)
  invoke void @_ZN11xercesc_2_721TimeDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #11
  resume { ptr, i32 } %9
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721TimeDatatypeValidator5parseEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %2)
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef %1, ptr noundef %2)
          to label %5 unwind label %6

5:                                                ; preds = %3
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %4)
          to label %23 unwind label %10

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #11
  br label %33

10:                                               ; preds = %5
  %11 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  %14 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = tail call ptr @__cxa_begin_catch(ptr %12) #11
  invoke void @__cxa_rethrow() #12
          to label %41 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %38

20:                                               ; preds = %18
  %21 = extractvalue { ptr, i32 } %19, 1
  %22 = extractvalue { ptr, i32 } %19, 0
  br label %24

23:                                               ; preds = %5
  ret ptr %4

24:                                               ; preds = %20, %10
  %25 = phi ptr [ null, %20 ], [ %4, %10 ]
  %26 = phi i32 [ %21, %20 ], [ %13, %10 ]
  %27 = phi ptr [ %22, %20 ], [ %12, %10 ]
  %28 = icmp eq ptr %25, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %25, align 8, !tbaa !41
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(96) %25) #11
  br label %33

33:                                               ; preds = %29, %24, %6
  %34 = phi i32 [ %9, %6 ], [ %26, %24 ], [ %26, %29 ]
  %35 = phi ptr [ %8, %6 ], [ %27, %24 ], [ %27, %29 ]
  %36 = insertvalue { ptr, i32 } poison, ptr %35, 0
  %37 = insertvalue { ptr, i32 } %36, i32 %34, 1
  resume { ptr, i32 } %37

38:                                               ; preds = %18
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #13
  unreachable

41:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !54 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721TimeDatatypeValidator5parseEPNS_11XMLDateTimeE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull %1) unnamed_addr #7 align 2 !prof !55 {
  tail call void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721TimeDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %5 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %6 = icmp eq ptr %2, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr %8, ptr %2
  br i1 %3, label %10, label %18

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !41
  %12 = getelementptr inbounds ptr, ptr %11, i64 17
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %9)
          to label %18 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = tail call ptr @__cxa_begin_catch(ptr %16) #11
  tail call void @__cxa_end_catch()
  br label %31

18:                                               ; preds = %10, %4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #11
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %1, ptr noundef %9)
          to label %19 unwind label %23

19:                                               ; preds = %18
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %20 unwind label %25

20:                                               ; preds = %19
  %21 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef %9)
          to label %22 unwind label %25

22:                                               ; preds = %20
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #11
  br label %31

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          catch ptr null
  br label %27

25:                                               ; preds = %20, %19
  %26 = landingpad { ptr, i32 }
          catch ptr null
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %5) #11
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  %29 = extractvalue { ptr, i32 } %28, 0
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #11
  %30 = call ptr @__cxa_begin_catch(ptr %29) #11
  call void @__cxa_end_catch()
  br label %31

31:                                               ; preds = %14, %27, %22
  %32 = phi ptr [ %21, %22 ], [ null, %27 ], [ null, %14 ]
  ret ptr %32
}

declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721TimeDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %0)
  invoke void @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 14, ptr noundef %0)
          to label %3 unwind label %5

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [28 x ptr] }, ptr @_ZTVN11xercesc_2_721TimeDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %2, i64 0, i32 10
  store i32 1, ptr %4, align 8, !tbaa !44
  ret ptr %2

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #11
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721TimeDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !54 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_721TimeDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !54 {
  ret ptr @_ZN11xercesc_2_721TimeDatatypeValidator26classTimeDatatypeValidatorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721TimeDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !54 {
  tail call void @_ZN11xercesc_2_717DateTimeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  ret void
}

declare void @_ZN11xercesc_2_717DateTimeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #9 comdat align 2 !prof !54 {
  ret i1 true
}

declare noundef ptr @_ZNK11xercesc_2_729AbstractNumericFacetValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !54 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !56
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, %0
  %12 = and i1 %11, %10
  br i1 %12, label %6, label %13, !llvm.loop !57

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  ret i1 %14
}

declare noundef i32 @_ZN11xercesc_2_717DateTimeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_729AbstractNumericFacetValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(160)) unnamed_addr #1

declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare void @_ZNK11xercesc_2_729AbstractNumericFacetValidator35checkAdditionalFacetConstraintsBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_717DateTimeValidator13compareValuesEPKNS_9XMLNumberES3_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator15setMaxInclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator15setMaxExclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator15setMinInclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator15setMinExclusiveEPKt(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_717DateTimeValidator14setEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_717DateTimeValidator12compareDatesEPKNS_11XMLDateTimeES3_b(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_721TimeDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DateTimeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_721TimeDatatypeValidatorD0Ev, ptr @_ZN11xercesc_2_717DateTimeValidatorD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_721TimeDatatypeValidatorD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!38 = !{ptr @_ZN11xercesc_2_721TimeDatatypeValidator5parseEPNS_11XMLDateTimeE, ptr @_ZN11xercesc_2_711XMLDateTime9parseTimeEv, i64 29629}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 1}
!41 = !{!42, !42, i64 0}
!42 = !{!"vtable pointer", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!45, !52, i64 32}
!45 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !46, i64 0, !47, i64 8, !47, i64 9, !47, i64 10, !47, i64 11, !49, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !51, i64 28, !52, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96}
!46 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!47 = !{!"bool", !48, i64 0}
!48 = !{!"omnipotent char", !43, i64 0}
!49 = !{!"short", !48, i64 0}
!50 = !{!"int", !48, i64 0}
!51 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !48, i64 0}
!52 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !48, i64 0}
!53 = !{!"any pointer", !48, i64 0}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!"function_entry_count", i64 29629}
!56 = !{!45, !53, i64 40}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
