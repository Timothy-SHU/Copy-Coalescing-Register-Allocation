; ModuleID = 'AnySimpleTypeDatatypeValidator.cpp'
source_filename = "AnySimpleTypeDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE = comdat any

$_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs = comdat any

$_ZN11xercesc_2_717DatatypeValidator9setFiniteEb = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZTVN11xercesc_2_730AnySimpleTypeDatatypeValidatorE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730AnySimpleTypeDatatypeValidatorE, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_730AnySimpleTypeDatatypeValidatorE = dso_local constant [48 x i8] c"N11xercesc_2_730AnySimpleTypeDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_717DatatypeValidatorE = external constant ptr
@_ZTIN11xercesc_2_730AnySimpleTypeDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730AnySimpleTypeDatatypeValidatorE, ptr @_ZTIN11xercesc_2_717DatatypeValidatorE }, align 8
@.str = private unnamed_addr constant [35 x i8] c"AnySimpleTypeDatatypeValidator.cpp\00", align 1
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator35classAnySimpleTypeDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"AnySimpleTypeDatatypeValidator\00", align 1

@_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !44 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator35classAnySimpleTypeDatatypeValidatorE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 comdat align 2 !prof !44 {
  ret i1 false
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xercesc_2_730AnySimpleTypeDatatypeValidator13getEnumStringEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !44 {
  ret ptr null
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !44 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator17isSubstitutableByEPKNS_17DatatypeValidatorE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !44 {
  ret i1 true
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !44 {
  ret i32 -1
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr noundef %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %1) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #7
  br label %8

8:                                                ; preds = %7, %5
  %9 = icmp eq ptr %2, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %2, align 8, !tbaa !45
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(40) %2) #7
  br label %14

14:                                               ; preds = %10, %8
  %15 = tail call ptr @__cxa_allocate_exception(i64 48) #9
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull @.str, i32 noundef 60, i32 noundef 301, ptr noundef %4) #8
          to label %16 unwind label %17

16:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %15) #9
  resume { ptr, i32 } %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !48 {
  tail call void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef null, ptr noundef null, i32 noundef 4, i32 noundef 26, ptr noundef %1) #8
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_730AnySimpleTypeDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  tail call void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext 0) #8
  tail call void @_ZN11xercesc_2_717DatatypeValidator9setFiniteEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs(ptr noundef nonnull align 8 dereferenceable(104) %0, i16 noundef signext %1) local_unnamed_addr #0 comdat align 2 !prof !49 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  store i16 %1, ptr %3, align 4, !tbaa !50
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator9setFiniteEb(ptr noundef nonnull align 8 dereferenceable(104) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !60 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 2
  store i8 %3, ptr %4, align 1, !tbaa !61
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 !prof !48 {
  tail call void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #11
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #8
  store ptr null, ptr %3, align 8, !tbaa !65
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !66
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !45
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #7
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !62 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #8
  br i1 %2, label %48, label %3, !prof !67

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !68
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !69

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !70
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !65
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !72

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !73
  %23 = load i8, ptr %9, align 8, !tbaa !75, !range !76, !noundef !77
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !78

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !79
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !45
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #7
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !63
  %34 = load ptr, ptr %33, align 8, !tbaa !45
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #8
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !80, !llvm.loop !81

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !65
  %40 = load i32, ptr %4, align 8, !tbaa !68
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !71
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !83, !llvm.loop !84

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %0) #8
  invoke void @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef %0) #8
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #7
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind }
attributes #10 = { noreturn }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!43}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42}
!36 = !{ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator13setWhiteSpaceEs, i64 1}
!38 = !{ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator9setFiniteEb, i64 1}
!39 = !{ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_717DatatypeValidatorD2Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, i64 34}
!41 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!42 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7isEmptyEv, i64 34}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"function_entry_count", i64 1}
!49 = !{!"function_entry_count", i64 42}
!50 = !{!51, !55, i64 12}
!51 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !52, i64 0, !53, i64 8, !53, i64 9, !53, i64 10, !53, i64 11, !55, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !57, i64 28, !58, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96}
!52 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!53 = !{!"bool", !54, i64 0}
!54 = !{!"omnipotent char", !47, i64 0}
!55 = !{!"short", !54, i64 0}
!56 = !{!"int", !54, i64 0}
!57 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !54, i64 0}
!58 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !54, i64 0}
!59 = !{!"any pointer", !54, i64 0}
!60 = !{!"function_entry_count", i64 41}
!61 = !{!51, !53, i64 9}
!62 = !{!"function_entry_count", i64 34}
!63 = !{!64, !59, i64 0}
!64 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !59, i64 0, !53, i64 8, !59, i64 16, !56, i64 24, !56, i64 28, !56, i64 32, !59, i64 40}
!65 = !{!64, !59, i64 16}
!66 = !{!64, !59, i64 40}
!67 = !{!"branch_weights", i32 6, i32 30}
!68 = !{!64, !56, i64 24}
!69 = !{!"branch_weights", i32 1, i32 239}
!70 = !{!64, !56, i64 32}
!71 = !{!59, !59, i64 0}
!72 = !{!"branch_weights", i32 360, i32 36}
!73 = !{!74, !59, i64 8}
!74 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !59, i64 0, !59, i64 8, !59, i64 16}
!75 = !{!64, !53, i64 8}
!76 = !{i8 0, i8 2}
!77 = !{}
!78 = !{!"branch_weights", i32 1, i32 36}
!79 = !{!74, !59, i64 0}
!80 = !{!"branch_weights", i32 36, i32 0}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.mustprogress"}
!83 = !{!"branch_weights", i32 2929, i32 239}
!84 = distinct !{!84, !82}
!85 = !{!86, !59, i64 40}
!86 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !87, i64 8, !59, i64 16, !56, i64 24, !59, i64 32, !59, i64 40}
!87 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !54, i64 0}
