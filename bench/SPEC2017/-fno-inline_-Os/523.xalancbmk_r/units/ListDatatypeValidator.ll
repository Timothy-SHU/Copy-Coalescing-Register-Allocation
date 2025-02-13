; ModuleID = 'ListDatatypeValidator.cpp'
source_filename = "ListDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ListDatatypeValidator" = type { %"class.xercesc_2_7::AbstractStringValidator", ptr }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::Janitor" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_ = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev = comdat any

$_ZN11xercesc_2_721ListDatatypeValidator10setContentEPKt = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator7getTypeEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8getRegexEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator10getPatternEv = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_723AbstractStringValidator12getMaxLengthEv = comdat any

$_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv = comdat any

$_ZNK11xercesc_2_723AbstractStringValidator12getMinLengthEv = comdat any

$_ZNK11xercesc_2_723AbstractStringValidator9getLengthEv = comdat any

$_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE7releaseEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717DatatypeValidator16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_721ListDatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv = comdat any

$_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE5resetEPS2_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = comdat any

$_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_721ListDatatypeValidatorE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721ListDatatypeValidatorE, ptr @_ZN11xercesc_2_721ListDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_721ListDatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_721ListDatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_721ListDatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_721ListDatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_721ListDatatypeValidator8isAtomicEv, ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv, ptr @_ZNK11xercesc_2_721ListDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @_ZN11xercesc_2_721ListDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_721ListDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ListDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator22inheritAdditionalFacetEv, ptr @_ZNK11xercesc_2_723AbstractStringValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_721ListDatatypeValidator9getLengthEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ListDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ListDatatypeValidator12inheritFacetEv, ptr @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"ListDatatypeValidator.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeFacetExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant [47 x i8] c"N11xercesc_2_729InvalidDatatypeValueExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"ListDatatypeValidator\00", align 1
@_ZN11xercesc_2_721ListDatatypeValidator26classListDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_721ListDatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_721ListDatatypeValidatorE = dso_local constant [39 x i8] c"N11xercesc_2_721ListDatatypeValidatorE\00", align 1
@_ZTIN11xercesc_2_723AbstractStringValidatorE = external constant ptr
@_ZTIN11xercesc_2_721ListDatatypeValidatorE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721ListDatatypeValidatorE, ptr @_ZTIN11xercesc_2_723AbstractStringValidatorE }, align 8
@_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv, ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_721ListDatatypeValidatorC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_721ListDatatypeValidatorC1EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE
@_ZN11xercesc_2_721ListDatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_721ListDatatypeValidatorD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24, ptr noundef %1) #9
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_721ListDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %3 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 24, ptr noundef %5) #9
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_721ListDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  %7 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !63
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %16, !prof !76

9:                                                ; preds = %6
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 234, ptr noundef %5) #9
          to label %11 unwind label %12

11:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %20 unwind label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #10
  br label %18

14:                                               ; preds = %16, %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %3, ptr noundef %5) #9
          to label %17 unwind label %14

17:                                               ; preds = %16
  ret void

18:                                               ; preds = %14, %12
  %19 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #12
  resume { ptr, i32 } %19

20:                                               ; preds = %11
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_721ListDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721ListDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %4) #9
  invoke void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) #9
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #12
  resume { ptr, i32 } %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_721ListDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %5 = alloca %"class.xercesc_2_7::Janitor", align 8
  %6 = alloca %"class.xercesc_2_7::Janitor", align 8
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %8) #9
  %9 = invoke noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #9
          to label %10 unwind label %15

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  invoke void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %9) #9
          to label %11 unwind label %17

11:                                               ; preds = %10
  %12 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %8) #9
  %13 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %9) #9
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %40, label %19

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %44

17:                                               ; preds = %10
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %42

19:                                               ; preds = %11
  %20 = icmp sgt i32 %12, %13
  br i1 %20, label %40, label %21

21:                                               ; preds = %19
  %22 = icmp sgt i32 %12, 0
  br i1 %22, label %26, label %40

23:                                               ; preds = %36
  %24 = add nuw nsw i32 %27, 1
  %25 = icmp eq i32 %24, %12
  br i1 %25, label %40, label %26, !llvm.loop !77

26:                                               ; preds = %21, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %21 ]
  %28 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %27) #9
          to label %29 unwind label %38

29:                                               ; preds = %26
  %30 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %9, i32 noundef %27) #9
          to label %31 unwind label %38

31:                                               ; preds = %29
  %32 = load ptr, ptr %7, align 8, !tbaa !60
  %33 = getelementptr inbounds ptr, ptr %32, i64 10
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(104) %7, ptr noundef %28, ptr noundef %30, ptr noundef %3) #9
          to label %36 unwind label %38

36:                                               ; preds = %31
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %23, label %40

38:                                               ; preds = %31, %29, %26
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  br label %42

40:                                               ; preds = %23, %36, %21, %19, %11
  %41 = phi i32 [ -1, %11 ], [ 1, %19 ], [ 0, %21 ], [ 0, %23 ], [ %35, %36 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i32 %41

42:                                               ; preds = %38, %17
  %43 = phi { ptr, i32 } [ %39, %38 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  br label %44

44:                                               ; preds = %42, %15
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %16, %15 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 align 2 !prof !59 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %3 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  %4 = icmp eq i32 %3, 24
  br i1 %4, label %5, label %10

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %7, %5 ], [ %2, %1 ]
  %7 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %6) #9
  %8 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %7) #9
  %9 = icmp eq i32 %8, 24
  br i1 %9, label %5, label %10, !llvm.loop !79

10:                                               ; preds = %5, %1
  %11 = phi ptr [ %2, %1 ], [ %7, %5 ]
  ret ptr %11
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !82 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !83
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !83
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !86

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9) #9
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !89
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef null) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %5 = alloca %"class.xercesc_2_7::Janitor", align 8
  tail call void @_ZN11xercesc_2_721ListDatatypeValidator10setContentEPKt(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) #9
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6) #9
  invoke void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %6, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3) #9
          to label %7 unwind label %8

7:                                                ; preds = %4
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721ListDatatypeValidator10setContentEPKt(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = alloca [65 x i16], align 16
  %12 = alloca [65 x i16], align 16
  %13 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %14 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %13) #9
  %15 = icmp eq i32 %14, 24
  br i1 %15, label %19, label %16

16:                                               ; preds = %6
  %17 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %29, label %20

19:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true, ptr noundef %5) #9
  br label %29

20:                                               ; preds = %16, %20
  %21 = phi i32 [ %26, %20 ], [ 0, %16 ]
  %22 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %21) #9
  %23 = load ptr, ptr %13, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef %22, ptr noundef %3, ptr noundef %5) #9
  %26 = add nuw i32 %21, 1
  %27 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %20, label %29, !llvm.loop !90

29:                                               ; preds = %20, %16, %19
  %30 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %74, label %33

33:                                               ; preds = %29
  %34 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %65

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %38 = load ptr, ptr %37, align 8, !tbaa !91
  %39 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %38) #9
          to label %40 unwind label %44

40:                                               ; preds = %36
  %41 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %42 = load ptr, ptr %37, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %39, ptr noundef %41, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %42) #9
          to label %43 unwind label %46

43:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull %39) #9
  br label %65

44:                                               ; preds = %36
  %45 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %48

46:                                               ; preds = %40
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %39, ptr noundef %38) #12
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %45, %44 ]
  %50 = extractvalue { ptr, i32 } %49, 1
  %51 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #10
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %148

53:                                               ; preds = %48
  %54 = extractvalue { ptr, i32 } %49, 0
  %55 = tail call ptr @__cxa_begin_catch(ptr %54) #10
  %56 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %57 = tail call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %55) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %56, ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 299, ptr noundef %57, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5) #9
          to label %58 unwind label %59

58:                                               ; preds = %53
  invoke void @__cxa_throw(ptr nonnull %56, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %153 unwind label %61

59:                                               ; preds = %53
  %60 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %56) #10
  br label %63

61:                                               ; preds = %58
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %60, %59 ]
  invoke void @__cxa_end_catch()
          to label %148 unwind label %150

65:                                               ; preds = %43, %33
  %66 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %67 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %66, ptr noundef %2, ptr noundef %5) #9
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %70 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %69, ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 238, ptr noundef %2, ptr noundef %70, ptr noundef null, ptr noundef null, ptr noundef %5) #9
          to label %71 unwind label %72

71:                                               ; preds = %68
  tail call void @__cxa_throw(ptr nonnull %69, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

72:                                               ; preds = %68
  %73 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %69) #10
  br label %148

74:                                               ; preds = %65, %29
  br i1 %4, label %147, label %75

75:                                               ; preds = %74
  %76 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %77 = and i32 %30, 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %75
  %80 = tail call noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %81 = icmp ugt i32 %76, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #10
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %76, ptr noundef nonnull %7, i32 noundef 64, i32 noundef 10, ptr noundef %5) #9
  %83 = call noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %83, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 10, ptr noundef %5) #9
  %84 = call ptr @__cxa_allocate_exception(i64 48) #10
  %85 = call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %84, ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 241, ptr noundef %85, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef %5) #9
          to label %86 unwind label %87

86:                                               ; preds = %82
  call void @__cxa_throw(ptr nonnull %84, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

87:                                               ; preds = %82
  %88 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %84) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #10
  br label %148

89:                                               ; preds = %79, %75
  %90 = and i32 %30, 2
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %102, label %92

92:                                               ; preds = %89
  %93 = tail call noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %94 = icmp ult i32 %76, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #10
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %76, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %5) #9
  %96 = call noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %96, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 10, ptr noundef %5) #9
  %97 = call ptr @__cxa_allocate_exception(i64 48) #10
  %98 = call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %97, ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 242, ptr noundef %98, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef %5) #9
          to label %99 unwind label %100

99:                                               ; preds = %95
  call void @__cxa_throw(ptr nonnull %97, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

100:                                              ; preds = %95
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %97) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #10
  br label %148

102:                                              ; preds = %92, %89
  %103 = and i32 %30, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %115, label %105

105:                                              ; preds = %102
  %106 = tail call noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %107 = icmp eq i32 %76, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %12) #10
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %76, ptr noundef nonnull %11, i32 noundef 64, i32 noundef 10, ptr noundef %5) #9
  %109 = call noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %109, ptr noundef nonnull %12, i32 noundef 64, i32 noundef 10, ptr noundef %5) #9
  %110 = call ptr @__cxa_allocate_exception(i64 48) #10
  %111 = call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %110, ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 243, ptr noundef %111, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef %5) #9
          to label %112 unwind label %113

112:                                              ; preds = %108
  call void @__cxa_throw(ptr nonnull %110, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

113:                                              ; preds = %108
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %110) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %11) #10
  br label %148

115:                                              ; preds = %105, %102
  %116 = and i32 %30, 16
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %147, label %118

118:                                              ; preds = %115
  %119 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %120 = icmp eq ptr %119, null
  br i1 %120, label %147, label %121

121:                                              ; preds = %118
  %122 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %123 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %122) #9
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %121, %135
  %126 = phi i32 [ %136, %135 ], [ 0, %121 ]
  %127 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %128 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %127, i32 noundef %126) #9
  %129 = tail call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  %130 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %128, ptr noundef %129) #9
  br i1 %130, label %138, label %131

131:                                              ; preds = %125
  %132 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %133 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %132, i32 noundef %126) #9
  %134 = tail call noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator15valueSpaceCheckEPNS_15BaseRefVectorOfItEEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef %133, ptr noundef %5) #9
  br i1 %134, label %138, label %135

135:                                              ; preds = %131
  %136 = add nuw nsw i32 %126, 1
  %137 = icmp eq i32 %136, %123
  br i1 %137, label %141, label %125, !llvm.loop !92

138:                                              ; preds = %125, %131, %121
  %139 = phi i32 [ 0, %121 ], [ %126, %131 ], [ %126, %125 ]
  %140 = icmp eq i32 %139, %123
  br i1 %140, label %141, label %147

141:                                              ; preds = %135, %138
  %142 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %143 = tail call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %142, ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 244, ptr noundef %143, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5) #9
          to label %144 unwind label %145

144:                                              ; preds = %141
  tail call void @__cxa_throw(ptr nonnull %142, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

145:                                              ; preds = %141
  %146 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %142) #10
  br label %148

147:                                              ; preds = %115, %118, %138, %74
  ret void

148:                                              ; preds = %87, %100, %113, %145, %63, %72, %48
  %149 = phi { ptr, i32 } [ %73, %72 ], [ %49, %48 ], [ %64, %63 ], [ %88, %87 ], [ %101, %100 ], [ %114, %113 ], [ %146, %145 ]
  resume { ptr, i32 } %149

150:                                              ; preds = %63
  %151 = landingpad { ptr, i32 }
          catch ptr null
  %152 = extractvalue { ptr, i32 } %151, 0
  tail call void @__clang_call_terminate(ptr %152) #13
  unreachable

153:                                              ; preds = %58
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %6 = alloca %"class.xercesc_2_7::Janitor", align 8
  tail call void @_ZN11xercesc_2_721ListDatatypeValidator10setContentEPKt(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) #9
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7) #9
  invoke void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %7, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) #9
          to label %8 unwind label %9

8:                                                ; preds = %5
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  ret void

9:                                                ; preds = %5
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #10
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !93 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !95 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !96
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 4, !tbaa !98
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator8getRegexEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !99 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717DatatypeValidator8setRegexEPNS_17RegularExpressionE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !101 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !100
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator10getPatternEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !102 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !104
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator12getMaxLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 comdat align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  ret i32 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator10getContentEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator12getMinLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 comdat align 2 !prof !109 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !110
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_723AbstractStringValidator9getLengthEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !112
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) local_unnamed_addr #3 comdat align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !115 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !116

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !117
  %8 = load i16, ptr %1, align 2, !tbaa !117
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !118

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !119

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !117
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !76

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !120

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !117
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !121

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !122

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !117
  %28 = load i16, ptr %26, align 2, !tbaa !117
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !123, !llvm.loop !124

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator15valueSpaceCheckEPNS_15BaseRefVectorOfItEEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %5 = alloca %"class.xercesc_2_7::Janitor", align 8
  %6 = tail call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %7) #9
  %8 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %9 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %7) #9
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %4
  %12 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %20

14:                                               ; preds = %30
  %15 = add nuw i32 %21, 1
  %16 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #9
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %20, label %32, !llvm.loop !125

18:                                               ; preds = %25, %23, %20
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  resume { ptr, i32 } %19

20:                                               ; preds = %11, %14
  %21 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %22 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %21) #9
          to label %23 unwind label %18

23:                                               ; preds = %20
  %24 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef %21) #9
          to label %25 unwind label %18

25:                                               ; preds = %23
  %26 = load ptr, ptr %6, align 8, !tbaa !60
  %27 = getelementptr inbounds ptr, ptr %26, i64 10
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef i32 %28(ptr noundef nonnull align 8 dereferenceable(104) %6, ptr noundef %22, ptr noundef %24, ptr noundef %3) #9
          to label %30 unwind label %18

30:                                               ; preds = %25
  %31 = icmp eq i32 %29, 0
  br i1 %31, label %14, label %32

32:                                               ; preds = %30, %14, %11, %4
  %33 = phi i1 [ false, %4 ], [ true, %11 ], [ %31, %14 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret i1 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 !prof !59 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_721ListDatatypeValidator9getLengthEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %4 = alloca %"class.xercesc_2_7::Janitor", align 8
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) #9
  %6 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #9
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = alloca %"class.xercesc_2_7::Janitor", align 8
  %4 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %5 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %4) #9
  %6 = icmp eq i32 %5, 24
  br i1 %6, label %7, label %8, !prof !76

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1) #9
  br label %108

8:                                                ; preds = %2
  %9 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %108, label %12, !prof !126

12:                                               ; preds = %8
  %13 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %108, label %15

15:                                               ; preds = %12
  %16 = tail call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %17 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %16) #9
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %108

19:                                               ; preds = %15, %73
  %20 = phi i32 [ %74, %73 ], [ 0, %15 ]
  %21 = call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %22 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef %20) #9
          to label %23 unwind label %32

23:                                               ; preds = %19
  %24 = invoke noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %22, ptr noundef %1) #9
          to label %25 unwind label %32

25:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %24) #9
          to label %26 unwind label %36

26:                                               ; preds = %25
  %27 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %24) #9
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %52, %26
  %30 = call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %31 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %30, i32 noundef %20) #9
          to label %69 unwind label %40

32:                                               ; preds = %23, %19
  %33 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = extractvalue { ptr, i32 } %33, 1
  br label %82

36:                                               ; preds = %25
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %38 = extractvalue { ptr, i32 } %37, 0
  %39 = extractvalue { ptr, i32 } %37, 1
  br label %79

40:                                               ; preds = %69, %29
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %42 = extractvalue { ptr, i32 } %41, 0
  %43 = extractvalue { ptr, i32 } %41, 1
  br label %76

44:                                               ; preds = %26, %52
  %45 = phi i32 [ %53, %52 ], [ 0, %26 ]
  %46 = call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %47 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %45) #9
          to label %48 unwind label %55

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !60
  %50 = getelementptr inbounds ptr, ptr %49, i64 8
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(104) %46, ptr noundef %47, ptr noundef null, ptr noundef %1) #9
          to label %52 unwind label %55

52:                                               ; preds = %48
  %53 = add nuw nsw i32 %45, 1
  %54 = icmp eq i32 %53, %27
  br i1 %54, label %29, label %44, !llvm.loop !127

55:                                               ; preds = %48, %44
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %57 = extractvalue { ptr, i32 } %56, 0
  %58 = extractvalue { ptr, i32 } %56, 1
  %59 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #10
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = call ptr @__cxa_begin_catch(ptr %57) #10
  %63 = call noundef ptr @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  invoke void @__cxa_rethrow() #11
          to label %112 unwind label %64

64:                                               ; preds = %61
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  invoke void @__cxa_end_catch()
          to label %66 unwind label %109

66:                                               ; preds = %64
  %67 = extractvalue { ptr, i32 } %65, 1
  %68 = extractvalue { ptr, i32 } %65, 0
  br label %76

69:                                               ; preds = %29
  %70 = load ptr, ptr %0, align 8, !tbaa !60
  %71 = getelementptr inbounds ptr, ptr %70, i64 20
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %31, ptr noundef null, i1 noundef zeroext false, ptr noundef %1) #9
          to label %73 unwind label %40

73:                                               ; preds = %69
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  %74 = add nuw nsw i32 %20, 1
  %75 = icmp eq i32 %74, %17
  br i1 %75, label %108, label %19, !llvm.loop !128

76:                                               ; preds = %66, %55, %40
  %77 = phi i32 [ %67, %66 ], [ %58, %55 ], [ %43, %40 ]
  %78 = phi ptr [ %68, %66 ], [ %57, %55 ], [ %42, %40 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  br label %79

79:                                               ; preds = %76, %36
  %80 = phi i32 [ %77, %76 ], [ %39, %36 ]
  %81 = phi ptr [ %78, %76 ], [ %38, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  br label %82

82:                                               ; preds = %79, %32
  %83 = phi i32 [ %80, %79 ], [ %35, %32 ]
  %84 = phi ptr [ %81, %79 ], [ %34, %32 ]
  %85 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #10
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = call ptr @__cxa_begin_catch(ptr %84) #10
  %89 = call ptr @__cxa_allocate_exception(i64 48) #10
  %90 = call noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  %91 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %90, i32 noundef %20) #9
          to label %92 unwind label %94

92:                                               ; preds = %87
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %89, ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 181, ptr noundef %91, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1) #9
          to label %93 unwind label %94

93:                                               ; preds = %92
  invoke void @__cxa_throw(ptr nonnull %89, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
          to label %112 unwind label %96

94:                                               ; preds = %92, %87
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %89) #10
  br label %98

96:                                               ; preds = %93
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  invoke void @__cxa_end_catch()
          to label %100 unwind label %109

100:                                              ; preds = %98
  %101 = extractvalue { ptr, i32 } %99, 0
  %102 = extractvalue { ptr, i32 } %99, 1
  br label %103

103:                                              ; preds = %100, %82
  %104 = phi i32 [ %102, %100 ], [ %83, %82 ]
  %105 = phi ptr [ %101, %100 ], [ %84, %82 ]
  %106 = insertvalue { ptr, i32 } poison, ptr %105, 0
  %107 = insertvalue { ptr, i32 } %106, i32 %104, 1
  resume { ptr, i32 } %107

108:                                              ; preds = %73, %15, %8, %12, %7
  ret void

109:                                              ; preds = %98, %64
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  call void @__clang_call_terminate(ptr %111) #13
  unreachable

112:                                              ; preds = %93, %61
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %2 = load ptr, ptr %0, align 8, !tbaa !80
  store ptr null, ptr %0, align 8, !tbaa !80
  ret ptr %2
}

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 !prof !75 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  %3 = tail call noundef i32 @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv(ptr noundef nonnull align 8 dereferenceable(104) %2) #9
  %4 = icmp eq i32 %3, 24
  br i1 %4, label %5, label %6, !prof !76

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(128) %0) #9
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %5 = alloca %"class.xercesc_2_7::Janitor", align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  br label %9

9:                                                ; preds = %4, %7
  %10 = phi ptr [ %8, %7 ], [ %2, %4 ]
  tail call void @_ZN11xercesc_2_721ListDatatypeValidator10setContentEPKt(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) #9
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11) #9
  br i1 %3, label %12, label %19

12:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %11, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %10) #9
          to label %19 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = call ptr @__cxa_begin_catch(ptr %15) #10
  invoke void @__cxa_end_catch()
          to label %97 unwind label %17

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %99

19:                                               ; preds = %12, %9
  %20 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #9
  %21 = shl i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = shl nuw nsw i64 %22, 1
  %24 = load ptr, ptr %10, align 8, !tbaa !60
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %23) #9
          to label %28 unwind label %32

28:                                               ; preds = %19
  store i16 0, ptr %27, align 2, !tbaa !117
  %29 = call noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr noundef nonnull align 8 dereferenceable(136) %0) #9
  %30 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #9
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %97, label %36

32:                                               ; preds = %19
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %99

34:                                               ; preds = %93
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %99

36:                                               ; preds = %28, %89
  %37 = phi i32 [ %90, %89 ], [ 0, %28 ]
  %38 = phi ptr [ %85, %89 ], [ %27, %28 ]
  %39 = phi ptr [ %80, %89 ], [ %27, %28 ]
  %40 = phi i32 [ %79, %89 ], [ %21, %28 ]
  %41 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %37) #9
          to label %42 unwind label %72

42:                                               ; preds = %36
  %43 = load ptr, ptr %29, align 8, !tbaa !60
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = invoke noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(104) %29, ptr noundef %41, ptr noundef nonnull %10, i1 noundef zeroext false) #9
          to label %47 unwind label %72

47:                                               ; preds = %42
  %48 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %46) #9
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i16, ptr %38, i64 %49
  %51 = getelementptr inbounds i16, ptr %50, i64 2
  %52 = zext i32 %40 to i64
  %53 = getelementptr inbounds i16, ptr %39, i64 %52
  %54 = icmp ult ptr %51, %53
  br i1 %54, label %78, label %55

55:                                               ; preds = %47
  %56 = shl nuw nsw i64 %52, 3
  %57 = load ptr, ptr %10, align 8, !tbaa !60
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %56) #9
          to label %61 unwind label %76

61:                                               ; preds = %55
  %62 = shl nuw nsw i64 %52, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %60, ptr align 2 %39, i64 %62, i1 false)
  %63 = load ptr, ptr %10, align 8, !tbaa !60
  %64 = getelementptr inbounds ptr, ptr %63, i64 3
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %39) #9
          to label %66 unwind label %76

66:                                               ; preds = %61
  %67 = ptrtoint ptr %38 to i64
  %68 = ptrtoint ptr %39 to i64
  %69 = sub i64 %67, %68
  %70 = getelementptr inbounds i8, ptr %60, i64 %69
  %71 = shl i32 %40, 2
  br label %78

72:                                               ; preds = %42, %36
  %73 = landingpad { ptr, i32 }
          catch ptr null
  br label %93

74:                                               ; preds = %82, %78
  %75 = landingpad { ptr, i32 }
          catch ptr null
  br label %93

76:                                               ; preds = %61, %55
  %77 = landingpad { ptr, i32 }
          catch ptr null
  br label %93

78:                                               ; preds = %66, %47
  %79 = phi i32 [ %71, %66 ], [ %40, %47 ]
  %80 = phi ptr [ %60, %66 ], [ %39, %47 ]
  %81 = phi ptr [ %70, %66 ], [ %38, %47 ]
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef %81, ptr noundef %46) #9
          to label %82 unwind label %74

82:                                               ; preds = %78
  %83 = getelementptr inbounds i16, ptr %81, i64 %49
  %84 = getelementptr inbounds i16, ptr %83, i64 1
  %85 = getelementptr inbounds i16, ptr %83, i64 2
  store i16 32, ptr %84, align 2, !tbaa !117
  store i16 0, ptr %85, align 2, !tbaa !117
  %86 = load ptr, ptr %10, align 8, !tbaa !60
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %46) #9
          to label %89 unwind label %74

89:                                               ; preds = %82
  %90 = add nuw i32 %37, 1
  %91 = call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #9
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %36, label %97, !llvm.loop !129

93:                                               ; preds = %74, %76, %72
  %94 = phi { ptr, i32 } [ %73, %72 ], [ %75, %74 ], [ %77, %76 ]
  %95 = extractvalue { ptr, i32 } %94, 0
  %96 = call ptr @__cxa_begin_catch(ptr %95) #10
  invoke void @__cxa_end_catch()
          to label %97 unwind label %34

97:                                               ; preds = %89, %28, %93, %13
  %98 = phi ptr [ null, %13 ], [ null, %93 ], [ %27, %28 ], [ %80, %89 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  ret ptr %98

99:                                               ; preds = %32, %34, %17
  %100 = phi { ptr, i32 } [ %18, %17 ], [ %35, %34 ], [ %33, %32 ]
  call void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  resume { ptr, i32 } %100
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #3 comdat align 2 !prof !130 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !131

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !117
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !132

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !117
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !133, !llvm.loop !134

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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721ListDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %0) #9
  invoke void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef %0) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #12
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !59 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_721ListDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_721ListDatatypeValidator26classListDatatypeValidatorE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 !prof !59 {
  ret i1 false
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #3 comdat align 2 !prof !59 {
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
  br i1 %11, label %6, label %12, !llvm.loop !135

12:                                               ; preds = %6, %2
  %13 = phi i1 [ %3, %2 ], [ %9, %6 ]
  ret i1 %13
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !137 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEE5resetEPS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %3 = load ptr, ptr %0, align 8, !tbaa !80
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #12
  br label %9

9:                                                ; preds = %5, %2
  store ptr %1, ptr %0, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !59 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !59 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
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
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!37 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 2}
!39 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorD2Ev, i64 1}
!40 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_723AbstractStringValidatorD2Ev, i64 3}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!44 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!45 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 123}
!46 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv, i64 3}
!47 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE, i64 1}
!48 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_717DatatypeValidator16getFacetsDefinedEv, i64 2}
!49 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_723AbstractStringValidator14getEnumerationEv, i64 12}
!50 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, i64 132}
!51 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE, i64 6}
!52 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEC2EPS2_, i64 6}
!53 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_715BaseRefVectorOfItE4sizeEv, i64 6}
!54 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEED2Ev, i64 6}
!55 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator12inheritFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator16getBaseValidatorEv, i64 3}
!56 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator12inheritFacetEv, ptr @_ZNK11xercesc_2_717DatatypeValidator7getTypeEv, i64 3}
!57 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidator12inheritFacetEv, ptr @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv, i64 1}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !62, i64 0}
!62 = !{!"Simple C++ TBAA"}
!63 = !{!64, !74, i64 128}
!64 = !{!"_ZTSN11xercesc_2_721ListDatatypeValidatorE", !65, i64 0, !74, i64 128}
!65 = !{!"_ZTSN11xercesc_2_723AbstractStringValidatorE", !66, i64 0, !71, i64 104, !71, i64 108, !71, i64 112, !68, i64 116, !74, i64 120}
!66 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !67, i64 0, !68, i64 8, !68, i64 9, !68, i64 10, !68, i64 11, !70, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !72, i64 28, !73, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !74, i64 96}
!67 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!68 = !{!"bool", !69, i64 0}
!69 = !{!"omnipotent char", !62, i64 0}
!70 = !{!"short", !69, i64 0}
!71 = !{!"int", !69, i64 0}
!72 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !69, i64 0}
!73 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !69, i64 0}
!74 = !{!"any pointer", !69, i64 0}
!75 = !{!"function_entry_count", i64 3}
!76 = !{!"branch_weights", i32 1, i32 4}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.mustprogress"}
!79 = distinct !{!79, !78}
!80 = !{!81, !74, i64 0}
!81 = !{!"_ZTSN11xercesc_2_77JanitorINS_15BaseRefVectorOfItEEEE", !74, i64 0}
!82 = !{!"function_entry_count", i64 240751}
!83 = !{!84, !71, i64 12}
!84 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !68, i64 8, !71, i64 12, !71, i64 16, !74, i64 24, !74, i64 32}
!85 = !{!"function_entry_count", i64 2444437052}
!86 = !{!"branch_weights", i32 -1850530243, i32 1}
!87 = !{!84, !74, i64 32}
!88 = !{!84, !74, i64 24}
!89 = !{!74, !74, i64 0}
!90 = distinct !{!90, !78}
!91 = !{!66, !74, i64 96}
!92 = distinct !{!92, !78}
!93 = !{!"function_entry_count", i64 1580484}
!94 = !{!66, !74, i64 40}
!95 = !{!"function_entry_count", i64 874884}
!96 = !{!66, !72, i64 28}
!97 = !{!"function_entry_count", i64 2082808}
!98 = !{!66, !71, i64 20}
!99 = !{!"function_entry_count", i64 645404}
!100 = !{!66, !74, i64 64}
!101 = !{!"function_entry_count", i64 10}
!102 = !{!"function_entry_count", i64 23}
!103 = !{!66, !74, i64 56}
!104 = !{!105, !74, i64 32}
!105 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !106, i64 8, !74, i64 16, !71, i64 24, !74, i64 32, !74, i64 40}
!106 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !69, i64 0}
!107 = !{!"function_entry_count", i64 10916}
!108 = !{!65, !71, i64 108}
!109 = !{!"function_entry_count", i64 41}
!110 = !{!65, !71, i64 112}
!111 = !{!"function_entry_count", i64 40}
!112 = !{!65, !71, i64 104}
!113 = !{!"function_entry_count", i64 723663}
!114 = !{!65, !74, i64 120}
!115 = !{!"function_entry_count", i64 1231717351}
!116 = !{!"branch_weights", i32 621, i32 -1469098093}
!117 = !{!70, !70, i64 0}
!118 = !{!"branch_weights", i32 408901017, i32 1}
!119 = !{!"branch_weights", i32 267, i32 4}
!120 = !{!"branch_weights", i32 156, i32 112}
!121 = !{!"branch_weights", i32 1, i32 112}
!122 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!123 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!124 = distinct !{!124, !78}
!125 = distinct !{!125, !78}
!126 = !{!"branch_weights", i32 4, i32 1}
!127 = distinct !{!127, !78}
!128 = distinct !{!128, !78}
!129 = distinct !{!129, !78}
!130 = !{!"function_entry_count", i64 2453164456}
!131 = !{!"branch_weights", i32 1, i32 -1841802839}
!132 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!133 = !{!"branch_weights", i32 408669070, i32 -279908794}
!134 = distinct !{!134, !78}
!135 = distinct !{!135, !78}
!136 = !{!105, !74, i64 40}
!137 = !{!"function_entry_count", i64 5836268}
