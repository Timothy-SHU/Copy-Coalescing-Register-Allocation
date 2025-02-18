; ModuleID = 'ListDatatypeValidator.cpp'
source_filename = "ListDatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::ListDatatypeValidator" = type { %"class.xercesc_2_7::AbstractStringValidator", ptr }
%"class.xercesc_2_7::AbstractStringValidator" = type { %"class.xercesc_2_7::DatatypeValidator", i32, i32, i32, i8, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj = comdat any

$_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_721ListDatatypeValidator8isAtomicEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24, ptr noundef %1)
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_721ListDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !48
  ret void
}

declare void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, i32 noundef 24, ptr noundef %5)
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_721ListDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %7 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !48
  %8 = icmp eq ptr %1, null
  br i1 %8, label %9, label %16, !prof !61

9:                                                ; preds = %6
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 58, i32 noundef 234, ptr noundef %5)
          to label %11 unwind label %12

11:                                               ; preds = %9
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %20 unwind label %14

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #12
  br label %18

14:                                               ; preds = %16, %11
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %18

16:                                               ; preds = %6
  invoke void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %3, ptr noundef %5)
          to label %17 unwind label %14, !prof !62

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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

declare void @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidatorD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 align 2 !prof !60 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidatorD2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721ListDatatypeValidator11newInstanceEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %4)
  invoke void @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret ptr %6

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %4) #12
  resume { ptr, i32 } %9
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_721ListDatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = icmp eq i32 %10, 24
  br i1 %11, label %5, label %12, !llvm.loop !65

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3)
  %14 = invoke noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
          to label %15 unwind label %21

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !68
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %14, i64 0, i32 2
  %19 = load i32, ptr %18, align 4, !tbaa !68
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %51, label %23

21:                                               ; preds = %12
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %65

23:                                               ; preds = %15
  %24 = icmp sgt i32 %17, %19
  br i1 %24, label %51, label %25

25:                                               ; preds = %23
  %26 = icmp sgt i32 %17, 0
  br i1 %26, label %30, label %51

27:                                               ; preds = %41
  %28 = add nuw nsw i32 %32, 1
  %29 = icmp eq i32 %28, %17
  br i1 %29, label %51, label %30, !llvm.loop !70

30:                                               ; preds = %25, %27
  %31 = phi i32 [ %43, %27 ], [ undef, %25 ]
  %32 = phi i32 [ %28, %27 ], [ 0, %25 ]
  %33 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %32)
          to label %34 unwind label %44

34:                                               ; preds = %30
  %35 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %32)
          to label %36 unwind label %44

36:                                               ; preds = %34
  %37 = load ptr, ptr %8, align 8, !tbaa !45
  %38 = getelementptr inbounds ptr, ptr %37, i64 10
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef %33, ptr noundef %35, ptr noundef %3)
          to label %41 unwind label %44

41:                                               ; preds = %36
  %42 = icmp eq i32 %40, 0
  %43 = select i1 %42, i32 %31, i32 %40
  br i1 %42, label %27, label %51

44:                                               ; preds = %36, %34, %30
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = icmp eq ptr %14, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %14, align 8, !tbaa !45
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr noundef nonnull align 8 dereferenceable(40) %14) #12
  br label %65

51:                                               ; preds = %27, %41, %25, %23, %15
  %52 = phi i32 [ -1, %15 ], [ 1, %23 ], [ 0, %25 ], [ %43, %41 ], [ 0, %27 ]
  %53 = icmp eq ptr %14, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %14, align 8, !tbaa !45
  %56 = getelementptr inbounds ptr, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(40) %14) #12
  br label %58

58:                                               ; preds = %51, %54
  %59 = icmp eq ptr %13, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %13, align 8, !tbaa !45
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  br label %64

64:                                               ; preds = %58, %60
  ret i32 %52

65:                                               ; preds = %44, %47, %21
  %66 = phi { ptr, i32 } [ %22, %21 ], [ %45, %47 ], [ %45, %44 ]
  %67 = icmp eq ptr %13, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load ptr, ptr %13, align 8, !tbaa !45
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  br label %72

72:                                               ; preds = %65, %68
  resume { ptr, i32 } %66
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator14getItemTypeDTVEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(136) %0) local_unnamed_addr #5 align 2 !prof !44 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %3, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %5, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !64
  %8 = icmp eq i32 %7, 24
  br i1 %8, label %2, label %9, !llvm.loop !65

9:                                                ; preds = %2
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !72

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
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
  %15 = load ptr, ptr %14, align 8, !tbaa !74
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !75
  ret ptr %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator8validateEPKtPNS_17ValidationContextEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !48
  %6 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %3)
  invoke void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %6, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3)
          to label %7 unwind label %14

7:                                                ; preds = %4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %6, align 8, !tbaa !45
  %11 = getelementptr inbounds ptr, ptr %10, i64 1
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  br label %13

13:                                               ; preds = %7, %9
  ret void

14:                                               ; preds = %4
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = icmp eq ptr %6, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8, !tbaa !45
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(40) %6) #12
  br label %21

21:                                               ; preds = %14, %17
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = alloca [65 x i16], align 16
  %12 = alloca [65 x i16], align 16
  %13 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %14 = load ptr, ptr %13, align 8, !tbaa !63
  %15 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %14, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !64
  %17 = icmp eq i32 %16, 24
  br i1 %17, label %22, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %32, label %23

22:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %14, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true, ptr noundef %5)
  br label %32

23:                                               ; preds = %18, %23
  %24 = phi i32 [ %29, %23 ], [ 0, %18 ]
  %25 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %24)
  %26 = load ptr, ptr %14, align 8, !tbaa !45
  %27 = getelementptr inbounds ptr, ptr %26, i64 8
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(104) %14, ptr noundef %25, ptr noundef %3, ptr noundef %5)
  %29 = add nuw i32 %24, 1
  %30 = load i32, ptr %19, align 4, !tbaa !68
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %23, label %32, !llvm.loop !76

32:                                               ; preds = %23, %18, %22
  %33 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !77
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %82, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !78
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %43 = load ptr, ptr %42, align 8, !tbaa !79
  %44 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %43)
          to label %45 unwind label %50

45:                                               ; preds = %41
  %46 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !80
  %48 = load ptr, ptr %42, align 8, !tbaa !79
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %44, ptr noundef %47, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %48)
          to label %49 unwind label %52

49:                                               ; preds = %45
  store ptr %44, ptr %38, align 8, !tbaa !78
  br label %72

50:                                               ; preds = %41
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  br label %54

52:                                               ; preds = %45
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #12
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi { ptr, i32 } [ %53, %52 ], [ %51, %50 ]
  %56 = extractvalue { ptr, i32 } %55, 1
  %57 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %192

59:                                               ; preds = %54
  %60 = extractvalue { ptr, i32 } %55, 0
  %61 = tail call ptr @__cxa_begin_catch(ptr %60) #12
  %62 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %61, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !81
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 299, ptr noundef %64, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5)
          to label %65 unwind label %66

65:                                               ; preds = %59
  invoke void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %197 unwind label %68

66:                                               ; preds = %59
  %67 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %62) #12
  br label %70

68:                                               ; preds = %65
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %67, %66 ]
  invoke void @__cxa_end_catch()
          to label %192 unwind label %194

72:                                               ; preds = %49, %37
  %73 = load ptr, ptr %38, align 8, !tbaa !78
  %74 = tail call noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %73, ptr noundef %2, ptr noundef %5)
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %77 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %78 = load ptr, ptr %77, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %76, ptr noundef nonnull @.str, i32 noundef 172, i32 noundef 238, ptr noundef %2, ptr noundef %78, ptr noundef null, ptr noundef null, ptr noundef %5)
          to label %79 unwind label %80

79:                                               ; preds = %75
  tail call void @__cxa_throw(ptr nonnull %76, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

80:                                               ; preds = %75
  %81 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %76) #12
  br label %192

82:                                               ; preds = %72, %32
  br i1 %4, label %191, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !68
  %86 = and i32 %34, 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 2
  %90 = load i32, ptr %89, align 4, !tbaa !84
  %91 = icmp ugt i32 %85, %90
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #12
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %85, ptr noundef nonnull %7, i32 noundef 64, i32 noundef 10, ptr noundef %5)
  %93 = load i32, ptr %89, align 4, !tbaa !84
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %93, ptr noundef nonnull %8, i32 noundef 64, i32 noundef 10, ptr noundef %5)
  %94 = call ptr @__cxa_allocate_exception(i64 48) #12
  %95 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %94, ptr noundef nonnull @.str, i32 noundef 197, i32 noundef 241, ptr noundef %96, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, ptr noundef %5)
          to label %97 unwind label %98

97:                                               ; preds = %92
  call void @__cxa_throw(ptr nonnull %94, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

98:                                               ; preds = %92
  %99 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %94) #12
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #12
  br label %192

100:                                              ; preds = %88, %83
  %101 = and i32 %34, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 3
  %105 = load i32, ptr %104, align 8, !tbaa !85
  %106 = icmp ult i32 %85, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #12
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %85, ptr noundef nonnull %9, i32 noundef 64, i32 noundef 10, ptr noundef %5)
  %108 = load i32, ptr %104, align 8, !tbaa !85
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %108, ptr noundef nonnull %10, i32 noundef 64, i32 noundef 10, ptr noundef %5)
  %109 = call ptr @__cxa_allocate_exception(i64 48) #12
  %110 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %109, ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 242, ptr noundef %111, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef null, ptr noundef %5)
          to label %112 unwind label %113

112:                                              ; preds = %107
  call void @__cxa_throw(ptr nonnull %109, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

113:                                              ; preds = %107
  %114 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %109) #12
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #12
  br label %192

115:                                              ; preds = %103, %100
  %116 = and i32 %34, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 1
  %120 = load i32, ptr %119, align 8, !tbaa !86
  %121 = icmp eq i32 %85, %120
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %12) #12
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %85, ptr noundef nonnull %11, i32 noundef 64, i32 noundef 10, ptr noundef %5)
  %123 = load i32, ptr %119, align 8, !tbaa !86
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %123, ptr noundef nonnull %12, i32 noundef 64, i32 noundef 10, ptr noundef %5)
  %124 = call ptr @__cxa_allocate_exception(i64 48) #12
  %125 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %124, ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 243, ptr noundef %126, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef %5)
          to label %127 unwind label %128

127:                                              ; preds = %122
  call void @__cxa_throw(ptr nonnull %124, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

128:                                              ; preds = %122
  %129 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %124) #12
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %11) #12
  br label %192

130:                                              ; preds = %118, %115
  %131 = and i32 %34, 16
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %191, label %133

133:                                              ; preds = %130
  %134 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 5
  %135 = load ptr, ptr %134, align 8, !tbaa !87
  %136 = icmp eq ptr %135, null
  br i1 %136, label %191, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %135, i64 0, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !68
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %181

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  br label %143

143:                                              ; preds = %141, %178
  %144 = phi i32 [ 0, %141 ], [ %179, %178 ]
  %145 = load ptr, ptr %134, align 8, !tbaa !87
  %146 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %145, i32 noundef %144)
  %147 = load ptr, ptr %142, align 8, !tbaa !48
  %148 = icmp eq ptr %146, null
  %149 = icmp eq ptr %147, null
  %150 = or i1 %148, %149
  br i1 %150, label %155, label %151

151:                                              ; preds = %143
  %152 = load i16, ptr %146, align 2, !tbaa !88
  %153 = load i16, ptr %147, align 2, !tbaa !88
  %154 = icmp eq i16 %152, %153
  br i1 %154, label %163, label %174

155:                                              ; preds = %143
  br i1 %148, label %159, label %156

156:                                              ; preds = %155
  %157 = load i16, ptr %146, align 2, !tbaa !88
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %174

159:                                              ; preds = %156, %155
  br i1 %149, label %181, label %160

160:                                              ; preds = %159
  %161 = load i16, ptr %147, align 2, !tbaa !88
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %181, label %174

163:                                              ; preds = %151, %168
  %164 = phi i16 [ %171, %168 ], [ %152, %151 ]
  %165 = phi ptr [ %170, %168 ], [ %147, %151 ]
  %166 = phi ptr [ %169, %168 ], [ %146, %151 ]
  %167 = icmp eq i16 %164, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds i16, ptr %166, i64 1
  %170 = getelementptr inbounds i16, ptr %165, i64 1
  %171 = load i16, ptr %169, align 2, !tbaa !88
  %172 = load i16, ptr %170, align 2, !tbaa !88
  %173 = icmp eq i16 %171, %172
  br i1 %173, label %163, label %174, !llvm.loop !89

174:                                              ; preds = %168, %151, %160, %156
  %175 = load ptr, ptr %134, align 8, !tbaa !87
  %176 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %175, i32 noundef %144)
  %177 = tail call noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator15valueSpaceCheckEPNS_15BaseRefVectorOfItEEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull %1, ptr noundef %176, ptr noundef %5)
  br i1 %177, label %181, label %178

178:                                              ; preds = %174
  %179 = add nuw nsw i32 %144, 1
  %180 = icmp eq i32 %179, %139
  br i1 %180, label %181, label %143, !llvm.loop !90

181:                                              ; preds = %178, %174, %159, %160, %163, %137
  %182 = phi i32 [ 0, %137 ], [ %144, %163 ], [ %144, %160 ], [ %144, %159 ], [ %144, %174 ], [ %139, %178 ]
  %183 = icmp eq i32 %182, %139
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %186 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %185, ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 244, ptr noundef %187, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %5)
          to label %188 unwind label %189

188:                                              ; preds = %184
  tail call void @__cxa_throw(ptr nonnull %185, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeValueExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

189:                                              ; preds = %184
  %190 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %185) #12
  br label %192

191:                                              ; preds = %130, %133, %181, %82
  ret void

192:                                              ; preds = %98, %113, %128, %189, %70, %80, %54
  %193 = phi { ptr, i32 } [ %81, %80 ], [ %55, %54 ], [ %71, %70 ], [ %99, %98 ], [ %114, %113 ], [ %129, %128 ], [ %190, %189 ]
  resume { ptr, i32 } %193

194:                                              ; preds = %70
  %195 = landingpad { ptr, i32 }
          catch ptr null
  %196 = extractvalue { ptr, i32 } %195, 0
  tail call void @__clang_call_terminate(ptr %196) #14
  unreachable

197:                                              ; preds = %65
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %6, align 8, !tbaa !48
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4)
  invoke void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %7, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4)
          to label %8 unwind label %15

8:                                                ; preds = %5
  %9 = icmp eq ptr %7, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %7, align 8, !tbaa !45
  %12 = getelementptr inbounds ptr, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  br label %14

14:                                               ; preds = %8, %10
  ret void

15:                                               ; preds = %5
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %7, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 8, !tbaa !45
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(40) %7) #12
  br label %22

22:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !44 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator15valueSpaceCheckEPNS_15BaseRefVectorOfItEEPKtPNS_13MemoryManagerE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %0, %4 ], [ %8, %5 ]
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %6, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %8, i64 0, i32 9
  %10 = load i32, ptr %9, align 4, !tbaa !64
  %11 = icmp eq i32 %10, 24
  br i1 %11, label %5, label %12, !llvm.loop !65

12:                                               ; preds = %5
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %3)
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !68
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %13, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !68
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %47

19:                                               ; preds = %12
  %20 = load i32, ptr %14, align 4, !tbaa !68
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %47, label %34

22:                                               ; preds = %45
  %23 = add nuw i32 %36, 1
  %24 = load i32, ptr %14, align 4, !tbaa !68
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %47, label %34, !llvm.loop !91

26:                                               ; preds = %40, %38, %34
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = icmp eq ptr %13, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %13, align 8, !tbaa !45
  %31 = getelementptr inbounds ptr, ptr %30, i64 1
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  br label %33

33:                                               ; preds = %26, %29
  resume { ptr, i32 } %27

34:                                               ; preds = %19, %22
  %35 = phi i1 [ %25, %22 ], [ %21, %19 ]
  %36 = phi i32 [ %23, %22 ], [ 0, %19 ]
  %37 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %36)
          to label %38 unwind label %26

38:                                               ; preds = %34
  %39 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %36)
          to label %40 unwind label %26

40:                                               ; preds = %38
  %41 = load ptr, ptr %8, align 8, !tbaa !45
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(104) %8, ptr noundef %37, ptr noundef %39, ptr noundef %3)
          to label %45 unwind label %26

45:                                               ; preds = %40
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %22, label %47

47:                                               ; preds = %45, %22, %19, %12
  %48 = phi i1 [ false, %12 ], [ %21, %19 ], [ %25, %22 ], [ %35, %45 ]
  %49 = icmp eq ptr %13, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %13, align 8, !tbaa !45
  %52 = getelementptr inbounds ptr, ptr %51, i64 1
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(40) %13) #12
  br label %54

54:                                               ; preds = %47, %50
  ret i1 %48
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator15checkValueSpaceEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #9 align 2 !prof !44 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_721ListDatatypeValidator9getLengthEPKtPNS_13MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !68
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !45
  %10 = getelementptr inbounds ptr, ptr %9, i64 1
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(40) %4) #12
  br label %12

12:                                               ; preds = %3, %8
  ret i32 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %4, i64 0, i32 9
  %6 = load i32, ptr %5, align 4, !tbaa !64
  %7 = icmp eq i32 %6, 24
  br i1 %7, label %8, label %9, !prof !61

8:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1)
  br label %116

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %116, label %14, !prof !62

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"class.xercesc_2_7::AbstractStringValidator", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %16, null
  br i1 %17, label %116, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %16, i64 0, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !68
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %116

22:                                               ; preds = %18, %77
  %23 = phi i32 [ %78, %77 ], [ 0, %18 ]
  %24 = load ptr, ptr %15, align 8, !tbaa !87
  %25 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %24, i32 noundef %23)
          to label %26 unwind label %35

26:                                               ; preds = %22
  %27 = invoke noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %1)
          to label %28 unwind label %35

28:                                               ; preds = %26
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %27, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !68
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %51, %28
  %33 = load ptr, ptr %15, align 8, !tbaa !87
  %34 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef %23)
          to label %67 unwind label %39

35:                                               ; preds = %26, %22
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %37 = extractvalue { ptr, i32 } %36, 0
  %38 = extractvalue { ptr, i32 } %36, 1
  br label %89

39:                                               ; preds = %67, %32
  %40 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %41 = extractvalue { ptr, i32 } %40, 0
  %42 = extractvalue { ptr, i32 } %40, 1
  br label %80

43:                                               ; preds = %28, %51
  %44 = phi i32 [ %52, %51 ], [ 0, %28 ]
  %45 = load ptr, ptr %3, align 8, !tbaa !63
  %46 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %44)
          to label %47 unwind label %54

47:                                               ; preds = %43
  %48 = load ptr, ptr %45, align 8, !tbaa !45
  %49 = getelementptr inbounds ptr, ptr %48, i64 8
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(104) %45, ptr noundef %46, ptr noundef null, ptr noundef %1)
          to label %51 unwind label %54

51:                                               ; preds = %47
  %52 = add nuw nsw i32 %44, 1
  %53 = icmp eq i32 %52, %30
  br i1 %53, label %32, label %43, !llvm.loop !92

54:                                               ; preds = %47, %43
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %56 = extractvalue { ptr, i32 } %55, 0
  %57 = extractvalue { ptr, i32 } %55, 1
  %58 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #12
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = tail call ptr @__cxa_begin_catch(ptr %56) #12
  invoke void @__cxa_rethrow() #13
          to label %120 unwind label %62

62:                                               ; preds = %60
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  invoke void @__cxa_end_catch()
          to label %64 unwind label %117

64:                                               ; preds = %62
  %65 = extractvalue { ptr, i32 } %63, 1
  %66 = extractvalue { ptr, i32 } %63, 0
  br label %80

67:                                               ; preds = %32
  %68 = load ptr, ptr %0, align 8, !tbaa !45
  %69 = getelementptr inbounds ptr, ptr %68, i64 20
  %70 = load ptr, ptr %69, align 8
  invoke void %70(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %34, ptr noundef null, i1 noundef zeroext false, ptr noundef %1)
          to label %71 unwind label %39

71:                                               ; preds = %67
  %72 = icmp eq ptr %27, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %27, align 8, !tbaa !45
  %75 = getelementptr inbounds ptr, ptr %74, i64 1
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(40) %27) #12
  br label %77

77:                                               ; preds = %71, %73
  %78 = add nuw nsw i32 %23, 1
  %79 = icmp eq i32 %78, %20
  br i1 %79, label %116, label %22, !llvm.loop !93

80:                                               ; preds = %64, %54, %39
  %81 = phi ptr [ null, %64 ], [ %27, %54 ], [ %27, %39 ]
  %82 = phi i32 [ %65, %64 ], [ %57, %54 ], [ %42, %39 ]
  %83 = phi ptr [ %66, %64 ], [ %56, %54 ], [ %41, %39 ]
  %84 = icmp eq ptr %81, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %80
  %86 = load ptr, ptr %81, align 8, !tbaa !45
  %87 = getelementptr inbounds ptr, ptr %86, i64 1
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(40) %81) #12
  br label %89

89:                                               ; preds = %80, %85, %35
  %90 = phi i32 [ %38, %35 ], [ %82, %85 ], [ %82, %80 ]
  %91 = phi ptr [ %37, %35 ], [ %83, %85 ], [ %83, %80 ]
  %92 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #12
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = tail call ptr @__cxa_begin_catch(ptr %91) #12
  %96 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %97 = load ptr, ptr %15, align 8, !tbaa !87
  %98 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %97, i32 noundef %23)
          to label %99 unwind label %102

99:                                               ; preds = %94
  invoke void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %96, ptr noundef nonnull @.str, i32 noundef 360, i32 noundef 181, ptr noundef %98, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1)
          to label %100 unwind label %102

100:                                              ; preds = %99
  invoke void @__cxa_throw(ptr nonnull %96, ptr nonnull @_ZTIN11xercesc_2_729InvalidDatatypeFacetExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
          to label %101 unwind label %104

101:                                              ; preds = %100
  unreachable

102:                                              ; preds = %99, %94
  %103 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %96) #12
  br label %106

104:                                              ; preds = %100
  %105 = landingpad { ptr, i32 }
          cleanup
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi { ptr, i32 } [ %105, %104 ], [ %103, %102 ]
  invoke void @__cxa_end_catch()
          to label %108 unwind label %117

108:                                              ; preds = %106
  %109 = extractvalue { ptr, i32 } %107, 0
  %110 = extractvalue { ptr, i32 } %107, 1
  br label %111

111:                                              ; preds = %108, %89
  %112 = phi i32 [ %110, %108 ], [ %90, %89 ]
  %113 = phi ptr [ %109, %108 ], [ %91, %89 ]
  %114 = insertvalue { ptr, i32 } poison, ptr %113, 0
  %115 = insertvalue { ptr, i32 } %114, i32 %112, 1
  resume { ptr, i32 } %115

116:                                              ; preds = %77, %18, %9, %14, %8
  ret void

117:                                              ; preds = %106, %62
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #14
  unreachable

120:                                              ; preds = %60
  unreachable
}

declare void @_ZN11xercesc_2_723AbstractStringValidator16inspectFacetBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #0 align 2 !prof !60 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %3, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !64
  %6 = icmp eq i32 %5, 24
  br i1 %6, label %7, label %8, !prof !61

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(128) %0)
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

declare void @_ZN11xercesc_2_723AbstractStringValidator12inheritFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_721ListDatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr nocapture noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %0, i64 0, i32 1
  store ptr %1, ptr %9, align 8, !tbaa !48
  %10 = tail call noundef ptr @_ZN11xercesc_2_79XMLString14tokenizeStringEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %8)
  br i1 %3, label %11, label %18

11:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_721ListDatatypeValidator12checkContentEPNS_15BaseRefVectorOfItEEPKtPNS_17ValidationContextEbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef %10, ptr noundef %1, ptr noundef null, i1 noundef zeroext false, ptr noundef %8)
          to label %18 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = tail call ptr @__cxa_begin_catch(ptr %14) #12
  invoke void @__cxa_end_catch()
          to label %134 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %142

18:                                               ; preds = %11, %4
  %19 = icmp eq ptr %1, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %18
  %21 = load i16, ptr %1, align 2, !tbaa !88
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %20, %23
  %24 = phi ptr [ %25, %23 ], [ %1, %20 ]
  %25 = getelementptr inbounds i16, ptr %24, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !88
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %23, !llvm.loop !94

28:                                               ; preds = %23
  %29 = ptrtoint ptr %25 to i64
  %30 = ptrtoint ptr %1 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, -2
  br label %34

34:                                               ; preds = %18, %20, %28
  %35 = phi i32 [ %33, %28 ], [ 0, %20 ], [ 0, %18 ]
  %36 = zext i32 %35 to i64
  %37 = shl nuw nsw i64 %36, 1
  %38 = load ptr, ptr %8, align 8, !tbaa !45
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %37)
          to label %42 unwind label %54

42:                                               ; preds = %34
  store i16 0, ptr %41, align 2, !tbaa !88
  br label %43

43:                                               ; preds = %43, %42
  %44 = phi ptr [ %0, %42 ], [ %46, %43 ]
  %45 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %44, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  %47 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %46, i64 0, i32 9
  %48 = load i32, ptr %47, align 4, !tbaa !64
  %49 = icmp eq i32 %48, 24
  br i1 %49, label %43, label %50, !llvm.loop !65

50:                                               ; preds = %43
  %51 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %10, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !68
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %134, label %58

54:                                               ; preds = %34
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %142

56:                                               ; preds = %130
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %142

58:                                               ; preds = %50, %126
  %59 = phi i32 [ %127, %126 ], [ 0, %50 ]
  %60 = phi ptr [ %122, %126 ], [ %41, %50 ]
  %61 = phi ptr [ %117, %126 ], [ %41, %50 ]
  %62 = phi i32 [ %116, %126 ], [ %35, %50 ]
  %63 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef %59)
          to label %64 unwind label %109

64:                                               ; preds = %58
  %65 = load ptr, ptr %46, align 8, !tbaa !45
  %66 = getelementptr inbounds ptr, ptr %65, i64 7
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(104) %46, ptr noundef %63, ptr noundef nonnull %8, i1 noundef zeroext false)
          to label %69 unwind label %109

69:                                               ; preds = %64
  %70 = icmp eq ptr %68, null
  br i1 %70, label %84, label %71

71:                                               ; preds = %69
  %72 = load i16, ptr %68, align 2, !tbaa !88
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71, %74
  %75 = phi ptr [ %76, %74 ], [ %68, %71 ]
  %76 = getelementptr inbounds i16, ptr %75, i64 1
  %77 = load i16, ptr %76, align 2, !tbaa !88
  %78 = icmp eq i16 %77, 0
  br i1 %78, label %79, label %74, !llvm.loop !94

79:                                               ; preds = %74
  %80 = ptrtoint ptr %76 to i64
  %81 = ptrtoint ptr %68 to i64
  %82 = sub i64 %80, %81
  %83 = lshr exact i64 %82, 1
  br label %84

84:                                               ; preds = %69, %71, %79
  %85 = phi i64 [ %83, %79 ], [ 0, %71 ], [ 0, %69 ]
  %86 = and i64 %85, 4294967295
  %87 = getelementptr inbounds i16, ptr %60, i64 %86
  %88 = getelementptr inbounds i16, ptr %87, i64 2
  %89 = zext i32 %62 to i64
  %90 = getelementptr inbounds i16, ptr %61, i64 %89
  %91 = icmp ult ptr %88, %90
  br i1 %91, label %115, label %92

92:                                               ; preds = %84
  %93 = shl nuw nsw i64 %89, 3
  %94 = load ptr, ptr %8, align 8, !tbaa !45
  %95 = getelementptr inbounds ptr, ptr %94, i64 2
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef ptr %96(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %93)
          to label %98 unwind label %113

98:                                               ; preds = %92
  %99 = shl nuw nsw i64 %89, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %97, ptr align 2 %61, i64 %99, i1 false)
  %100 = load ptr, ptr %8, align 8, !tbaa !45
  %101 = getelementptr inbounds ptr, ptr %100, i64 3
  %102 = load ptr, ptr %101, align 8
  invoke void %102(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %61)
          to label %103 unwind label %113

103:                                              ; preds = %98
  %104 = ptrtoint ptr %60 to i64
  %105 = ptrtoint ptr %61 to i64
  %106 = sub i64 %104, %105
  %107 = getelementptr inbounds i8, ptr %97, i64 %106
  %108 = shl i32 %62, 2
  br label %115

109:                                              ; preds = %64, %58
  %110 = landingpad { ptr, i32 }
          catch ptr null
  br label %130

111:                                              ; preds = %119, %115
  %112 = landingpad { ptr, i32 }
          catch ptr null
  br label %130

113:                                              ; preds = %98, %92
  %114 = landingpad { ptr, i32 }
          catch ptr null
  br label %130

115:                                              ; preds = %103, %84
  %116 = phi i32 [ %108, %103 ], [ %62, %84 ]
  %117 = phi ptr [ %97, %103 ], [ %61, %84 ]
  %118 = phi ptr [ %107, %103 ], [ %60, %84 ]
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef %118, ptr noundef %68)
          to label %119 unwind label %111

119:                                              ; preds = %115
  %120 = getelementptr inbounds i16, ptr %118, i64 %86
  %121 = getelementptr inbounds i16, ptr %120, i64 1
  %122 = getelementptr inbounds i16, ptr %120, i64 2
  store i16 32, ptr %121, align 2, !tbaa !88
  store i16 0, ptr %122, align 2, !tbaa !88
  %123 = load ptr, ptr %8, align 8, !tbaa !45
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  invoke void %125(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %68)
          to label %126 unwind label %111

126:                                              ; preds = %119
  %127 = add nuw i32 %59, 1
  %128 = load i32, ptr %51, align 4, !tbaa !68
  %129 = icmp ult i32 %127, %128
  br i1 %129, label %58, label %134, !llvm.loop !95

130:                                              ; preds = %111, %113, %109
  %131 = phi { ptr, i32 } [ %110, %109 ], [ %112, %111 ], [ %114, %113 ]
  %132 = extractvalue { ptr, i32 } %131, 0
  %133 = tail call ptr @__cxa_begin_catch(ptr %132) #12
  invoke void @__cxa_end_catch()
          to label %134 unwind label %56

134:                                              ; preds = %126, %50, %130, %12
  %135 = phi ptr [ null, %12 ], [ null, %130 ], [ %41, %50 ], [ %117, %126 ]
  %136 = icmp eq ptr %10, null
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  %138 = load ptr, ptr %10, align 8, !tbaa !45
  %139 = getelementptr inbounds ptr, ptr %138, i64 1
  %140 = load ptr, ptr %139, align 8
  tail call void %140(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
  br label %141

141:                                              ; preds = %134, %137
  ret ptr %135

142:                                              ; preds = %54, %56, %16
  %143 = phi { ptr, i32 } [ %17, %16 ], [ %57, %56 ], [ %55, %54 ]
  %144 = icmp eq ptr %10, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %10, align 8, !tbaa !45
  %147 = getelementptr inbounds ptr, ptr %146, i64 1
  %148 = load ptr, ptr %147, align 8
  tail call void %148(ptr noundef nonnull align 8 dereferenceable(40) %10) #12
  br label %149

149:                                              ; preds = %142, %145
  resume { ptr, i32 } %143
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_721ListDatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #0 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 136, ptr noundef %0)
  invoke void @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 24, ptr noundef %0)
          to label %3 unwind label %5

3:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_721ListDatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xercesc_2_7::ListDatatypeValidator", ptr %2, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !48
  ret ptr %2

5:                                                ; preds = %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #12
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !44 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_721ListDatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_721ListDatatypeValidator26classListDatatypeValidatorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_721ListDatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #0 align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  ret void
}

declare void @_ZN11xercesc_2_723AbstractStringValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_721ListDatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #11 comdat align 2 !prof !44 {
  ret i1 false
}

declare noundef ptr @_ZNK11xercesc_2_723AbstractStringValidator13getEnumStringEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !44 {
  %3 = icmp ne ptr %1, null
  %4 = icmp ne ptr %1, %0
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %13

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %2 ]
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %7, i64 0, i32 11
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = icmp ne ptr %9, null
  %11 = icmp ne ptr %9, %0
  %12 = and i1 %11, %10
  br i1 %12, label %6, label %13, !llvm.loop !96

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  ret i1 %14
}

declare void @_ZN11xercesc_2_723AbstractStringValidator21assignAdditionalFacetEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_723AbstractStringValidator22inheritAdditionalFacetEv(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

declare void @_ZNK11xercesc_2_723AbstractStringValidator31checkAdditionalFacetConstraintsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

declare void @_ZNK11xercesc_2_723AbstractStringValidator20checkAdditionalFacetEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_723AbstractStringValidator20normalizeEnumerationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) unnamed_addr #1

declare void @_ZNK11xercesc_2_723AbstractStringValidator16normalizeContentEPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeFacetExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeFacetException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeFacetException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeFacetExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !45
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_729InvalidDatatypeValueExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_76XMLUni36fgInvalidDatatypeValueException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_729InvalidDatatypeValueException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_729InvalidDatatypeValueExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !45
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !44 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !45
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEiNS1_13ValidatorTypeEPNS_13MemoryManagerE, i64 3}
!36 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorC2EPNS_17DatatypeValidatorEPNS_14RefHashTableOfINS_12KVStringPairEEEPNS_16RefArrayVectorOfItEEiPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_723AbstractStringValidator4initEPNS_16RefArrayVectorOfItEEPNS_13MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorD0Ev, ptr @_ZN11xercesc_2_723AbstractStringValidatorD2Ev, i64 3}
!38 = !{ptr @_ZN11xercesc_2_721ListDatatypeValidatorD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_allocate_exception, i64 1}
!40 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_throw, i64 1}
!42 = !{ptr @_ZN11xercesc_2_715BaseRefVectorOfItE9elementAtEj, ptr @__cxa_free_exception, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !59, i64 128}
!49 = !{!"_ZTSN11xercesc_2_721ListDatatypeValidatorE", !50, i64 0, !59, i64 128}
!50 = !{!"_ZTSN11xercesc_2_723AbstractStringValidatorE", !51, i64 0, !56, i64 104, !56, i64 108, !56, i64 112, !53, i64 116, !59, i64 120}
!51 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !52, i64 0, !53, i64 8, !53, i64 9, !53, i64 10, !53, i64 11, !55, i64 12, !56, i64 16, !56, i64 20, !56, i64 24, !57, i64 28, !58, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !59, i64 64, !59, i64 72, !59, i64 80, !59, i64 88, !59, i64 96}
!52 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!53 = !{!"bool", !54, i64 0}
!54 = !{!"omnipotent char", !47, i64 0}
!55 = !{!"short", !54, i64 0}
!56 = !{!"int", !54, i64 0}
!57 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !54, i64 0}
!58 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !54, i64 0}
!59 = !{!"any pointer", !54, i64 0}
!60 = !{!"function_entry_count", i64 3}
!61 = !{!"branch_weights", i32 0, i32 3}
!62 = !{!"branch_weights", i32 3, i32 0}
!63 = !{!51, !59, i64 40}
!64 = !{!51, !57, i64 28}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!69, !56, i64 12}
!69 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfItEE", !53, i64 8, !56, i64 12, !56, i64 16, !59, i64 24, !59, i64 32}
!70 = distinct !{!70, !66, !67}
!71 = !{!"function_entry_count", i64 2444437052}
!72 = !{!"branch_weights", i32 -1850530244, i32 0}
!73 = !{!69, !59, i64 32}
!74 = !{!69, !59, i64 24}
!75 = !{!59, !59, i64 0}
!76 = distinct !{!76, !66, !67}
!77 = !{!51, !56, i64 20}
!78 = !{!51, !59, i64 64}
!79 = !{!51, !59, i64 96}
!80 = !{!51, !59, i64 56}
!81 = !{!82, !59, i64 32}
!82 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !83, i64 8, !59, i64 16, !56, i64 24, !59, i64 32, !59, i64 40}
!83 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !54, i64 0}
!84 = !{!50, !56, i64 108}
!85 = !{!50, !56, i64 112}
!86 = !{!50, !56, i64 104}
!87 = !{!50, !59, i64 120}
!88 = !{!55, !55, i64 0}
!89 = distinct !{!89, !66, !67}
!90 = distinct !{!90, !66, !67}
!91 = distinct !{!91, !66, !67}
!92 = distinct !{!92, !66, !67}
!93 = distinct !{!93, !66, !67}
!94 = distinct !{!94, !66, !67}
!95 = distinct !{!95, !66, !67}
!96 = distinct !{!96, !66, !67}
!97 = !{!82, !59, i64 40}
