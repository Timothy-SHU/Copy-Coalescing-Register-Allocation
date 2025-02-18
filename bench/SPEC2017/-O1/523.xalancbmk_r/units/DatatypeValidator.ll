; ModuleID = 'DatatypeValidator.cpp'
source_filename = "DatatypeValidator.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DatatypeValidator" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.0" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.1" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv = comdat any

$_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv = comdat any

$_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_ = comdat any

$_ZN11xercesc_2_717DatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

@_ZTVN11xercesc_2_717DatatypeValidatorE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717DatatypeValidatorE, ptr @_ZN11xercesc_2_717DatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_717DatatypeValidatorD0Ev, ptr @_ZNK11xercesc_2_717DatatypeValidator14isSerializableEv, ptr @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_717DatatypeValidator12getProtoTypeEv, ptr @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_, ptr @_ZN11xercesc_2_717DatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE, ptr @__cxa_pure_virtual] }, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [18 x i8] c"DatatypeValidator\00", align 1
@_ZN11xercesc_2_717DatatypeValidator22classDatatypeValidatorE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_717DatatypeValidator12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717DatatypeValidatorE = dso_local constant [35 x i8] c"N11xercesc_2_717DatatypeValidatorE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_717DatatypeValidatorE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717DatatypeValidatorE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_723StringDatatypeValidator28classStringDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_723AnyURIDatatypeValidator28classAnyURIDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_722QNameDatatypeValidator27classQNameDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_721NameDatatypeValidator26classNameDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_723NCNameDatatypeValidator28classNCNameDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_724BooleanDatatypeValidator29classBooleanDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_722FloatDatatypeValidator27classFloatDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_723DoubleDatatypeValidator28classDoubleDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_724DecimalDatatypeValidator29classDecimalDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_726HexBinaryDatatypeValidator31classHexBinaryDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_729Base64BinaryDatatypeValidator34classBase64BinaryDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_725DurationDatatypeValidator30classDurationDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_725DateTimeDatatypeValidator30classDateTimeDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_721DateDatatypeValidator26classDateDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_721TimeDatatypeValidator26classTimeDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_725MonthDayDatatypeValidator30classMonthDayDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_726YearMonthDatatypeValidator31classYearMonthDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_721YearDatatypeValidator26classYearDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_722MonthDatatypeValidator27classMonthDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_720DayDatatypeValidator25classDayDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_719IDDatatypeValidator24classIDDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_722IDREFDatatypeValidator27classIDREFDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_723ENTITYDatatypeValidator28classENTITYDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_725NOTATIONDatatypeValidator30classNOTATIONDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_721ListDatatypeValidator26classListDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_722UnionDatatypeValidator27classUnionDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator35classAnySimpleTypeDatatypeValidatorE = external global %"class.xercesc_2_7::XProtoType", align 8
@switch.table._ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE = private unnamed_addr constant [27 x ptr] [ptr @_ZN11xercesc_2_723StringDatatypeValidator28classStringDatatypeValidatorE, ptr @_ZN11xercesc_2_723AnyURIDatatypeValidator28classAnyURIDatatypeValidatorE, ptr @_ZN11xercesc_2_722QNameDatatypeValidator27classQNameDatatypeValidatorE, ptr @_ZN11xercesc_2_721NameDatatypeValidator26classNameDatatypeValidatorE, ptr @_ZN11xercesc_2_723NCNameDatatypeValidator28classNCNameDatatypeValidatorE, ptr @_ZN11xercesc_2_724BooleanDatatypeValidator29classBooleanDatatypeValidatorE, ptr @_ZN11xercesc_2_722FloatDatatypeValidator27classFloatDatatypeValidatorE, ptr @_ZN11xercesc_2_723DoubleDatatypeValidator28classDoubleDatatypeValidatorE, ptr @_ZN11xercesc_2_724DecimalDatatypeValidator29classDecimalDatatypeValidatorE, ptr @_ZN11xercesc_2_726HexBinaryDatatypeValidator31classHexBinaryDatatypeValidatorE, ptr @_ZN11xercesc_2_729Base64BinaryDatatypeValidator34classBase64BinaryDatatypeValidatorE, ptr @_ZN11xercesc_2_725DurationDatatypeValidator30classDurationDatatypeValidatorE, ptr @_ZN11xercesc_2_725DateTimeDatatypeValidator30classDateTimeDatatypeValidatorE, ptr @_ZN11xercesc_2_721DateDatatypeValidator26classDateDatatypeValidatorE, ptr @_ZN11xercesc_2_721TimeDatatypeValidator26classTimeDatatypeValidatorE, ptr @_ZN11xercesc_2_725MonthDayDatatypeValidator30classMonthDayDatatypeValidatorE, ptr @_ZN11xercesc_2_726YearMonthDatatypeValidator31classYearMonthDatatypeValidatorE, ptr @_ZN11xercesc_2_721YearDatatypeValidator26classYearDatatypeValidatorE, ptr @_ZN11xercesc_2_722MonthDatatypeValidator27classMonthDatatypeValidatorE, ptr @_ZN11xercesc_2_720DayDatatypeValidator25classDayDatatypeValidatorE, ptr @_ZN11xercesc_2_719IDDatatypeValidator24classIDDatatypeValidatorE, ptr @_ZN11xercesc_2_722IDREFDatatypeValidator27classIDREFDatatypeValidatorE, ptr @_ZN11xercesc_2_723ENTITYDatatypeValidator28classENTITYDatatypeValidatorE, ptr @_ZN11xercesc_2_725NOTATIONDatatypeValidator30classNOTATIONDatatypeValidatorE, ptr @_ZN11xercesc_2_721ListDatatypeValidator26classListDatatypeValidatorE, ptr @_ZN11xercesc_2_722UnionDatatypeValidator27classUnionDatatypeValidatorE, ptr @_ZN11xercesc_2_730AnySimpleTypeDatatypeValidator35classAnySimpleTypeDatatypeValidatorE], align 8

@_ZN11xercesc_2_717DatatypeValidatorD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717DatatypeValidatorD2Ev

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidatorD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_717DatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_717DatatypeValidator7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
          to label %2 unwind label %3, !prof !46

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !47 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidatorC2EPS0_PNS_14RefHashTableOfINS_12KVStringPairEEEiNS0_13ValidatorTypeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_717DatatypeValidatorE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !43
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 8
  store i16 2, ptr %8, align 4, !tbaa !48
  %9 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 6
  store i32 %3, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  store i32 0, ptr %10, align 4, !tbaa !59
  %11 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  store i32 0, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  store i32 %4, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 0, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  store ptr %1, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 12
  store ptr %2, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %17, align 8, !tbaa !65
  %18 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %18, align 8, !tbaa !66
  %19 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  store ptr %5, ptr %19, align 8, !tbaa !67
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidator7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(104) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !42 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !68

5:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
          to label %9 unwind label %6, !prof !69

6:                                                ; preds = %5
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #17
  unreachable

9:                                                ; preds = %5
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #18
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !70
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !71

14:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_717RegularExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %12) #18
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %12) #18
  br label %15

15:                                               ; preds = %14, %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19, !prof !73

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %21 = load ptr, ptr %20, align 8, !tbaa !67
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull %17), !prof !74
  br label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 15
  %27 = load ptr, ptr %26, align 8, !tbaa !75
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !76

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !67
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %27), !prof !77
  br label %35

35:                                               ; preds = %29, %25
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidatorD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !47 {
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717DatatypeValidator11getWSstringEs(ptr nocapture noundef nonnull readnone align 8 dereferenceable(104) %0, i16 noundef signext %1) local_unnamed_addr #7 align 2 !prof !47 {
  %3 = icmp eq i16 %1, 1
  %4 = select i1 %3, ptr @_ZN11xercesc_2_713SchemaSymbols12fgWS_REPLACEE, ptr @_ZN11xercesc_2_713SchemaSymbols13fgWS_PRESERVEE
  %5 = icmp eq i16 %1, 2
  %6 = select i1 %5, ptr @_ZN11xercesc_2_713SchemaSymbols13fgWS_COLLAPSEE, ptr %4
  ret ptr %6
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidator11setTypeNameEPKtS2_(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #8 align 2 !prof !78 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7, !prof !79

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %9 = load ptr, ptr %8, align 8, !tbaa !67
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %5)
  store ptr null, ptr %4, align 8, !tbaa !75
  br label %13

13:                                               ; preds = %7, %3
  %14 = icmp ne ptr %1, null
  %15 = icmp ne ptr %2, null
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %78, !prof !79

17:                                               ; preds = %13
  %18 = icmp eq ptr %1, null
  br i1 %18, label %33, label %19, !prof !80

19:                                               ; preds = %17
  %20 = load i16, ptr %1, align 2, !tbaa !81
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22, !prof !80

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %1, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !81
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !prof !82, !llvm.loop !83

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %1 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  br label %33

33:                                               ; preds = %17, %19, %27
  %34 = phi i32 [ %32, %27 ], [ 0, %19 ], [ 0, %17 ]
  %35 = icmp eq ptr %2, null
  br i1 %35, label %50, label %36, !prof !80

36:                                               ; preds = %33
  %37 = load i16, ptr %2, align 2, !tbaa !81
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %50, label %39, !prof !80

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %41, %39 ], [ %2, %36 ]
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !81
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %39, !prof !86, !llvm.loop !83

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %2 to i64
  %47 = sub i64 %45, %46
  %48 = lshr exact i64 %47, 1
  %49 = trunc i64 %48 to i32
  br label %50

50:                                               ; preds = %33, %36, %44
  %51 = phi i32 [ %49, %44 ], [ 0, %36 ], [ 0, %33 ]
  %52 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !67
  %54 = add i32 %34, 2
  %55 = add i32 %54, %51
  %56 = zext i32 %55 to i64
  %57 = shl nuw nsw i64 %56, 1
  %58 = load ptr, ptr %53, align 8, !tbaa !43
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef %57), !prof !87
  store ptr %61, ptr %4, align 8, !tbaa !75
  %62 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr %61, ptr %62, align 8, !tbaa !66
  %63 = add i32 %51, 1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i16, ptr %61, i64 %64
  %66 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  store ptr %65, ptr %66, align 8, !tbaa !65
  br i1 %15, label %67, label %69, !prof !79

67:                                               ; preds = %50
  %68 = shl nuw nsw i64 %64, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %61, ptr nonnull align 2 %2, i64 %68, i1 false), !prof !88
  br label %70

69:                                               ; preds = %50
  store i16 0, ptr %61, align 2, !tbaa !81
  br label %70

70:                                               ; preds = %69, %67
  %71 = load ptr, ptr %4, align 8, !tbaa !75
  %72 = getelementptr inbounds i16, ptr %71, i64 %64
  br i1 %14, label %73, label %77, !prof !79

73:                                               ; preds = %70
  %74 = add i32 %34, 1
  %75 = zext i32 %74 to i64
  %76 = shl nuw nsw i64 %75, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %72, ptr nonnull align 2 %1, i64 %76, i1 false), !prof !89
  br label %81

77:                                               ; preds = %70
  store i16 0, ptr %72, align 2, !tbaa !81
  br label %81

78:                                               ; preds = %13
  %79 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %79, align 8, !tbaa !65
  %80 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %80, align 8, !tbaa !66
  br label %81

81:                                               ; preds = %73, %77, %78
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidator11setTypeNameEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !90 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !91

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %4)
  store ptr null, ptr %3, align 8, !tbaa !75
  br label %12

12:                                               ; preds = %6, %2
  %13 = icmp eq ptr %1, null
  br i1 %13, label %49, label %14, !prof !92

14:                                               ; preds = %12
  %15 = load i16, ptr %1, align 2, !tbaa !81
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %28, label %17, !prof !92

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %19, %17 ], [ %1, %14 ]
  %19 = getelementptr inbounds i16, ptr %18, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !81
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %17, !prof !93, !llvm.loop !83

22:                                               ; preds = %17
  %23 = ptrtoint ptr %19 to i64
  %24 = ptrtoint ptr %1 to i64
  %25 = sub i64 %23, %24
  %26 = add i64 %25, 2
  %27 = and i64 %26, 8589934590
  br label %28

28:                                               ; preds = %14, %22
  %29 = phi i64 [ %27, %22 ], [ 2, %14 ]
  %30 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %1, i16 noundef zeroext 44)
  %31 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %32 = load ptr, ptr %31, align 8, !tbaa !67
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %29), !prof !94
  store ptr %36, ptr %3, align 8, !tbaa !75
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %36, ptr nonnull align 2 %1, i64 %29, i1 false), !prof !95
  %37 = icmp eq i32 %30, -1
  br i1 %37, label %38, label %42, !prof !96

38:                                               ; preds = %28
  %39 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, ptr %39, align 8, !tbaa !66
  %40 = load ptr, ptr %3, align 8, !tbaa !75
  %41 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  store ptr %40, ptr %41, align 8, !tbaa !65
  br label %52

42:                                               ; preds = %28
  %43 = load ptr, ptr %3, align 8, !tbaa !75
  %44 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr %43, ptr %44, align 8, !tbaa !66
  %45 = sext i32 %30 to i64
  %46 = getelementptr i16, ptr %43, i64 %45
  %47 = getelementptr i16, ptr %46, i64 1
  %48 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  store ptr %47, ptr %48, align 8, !tbaa !65
  store i16 0, ptr %46, align 2, !tbaa !81
  br label %52

49:                                               ; preds = %12
  %50 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %50, align 8, !tbaa !65
  %51 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %51, align 8, !tbaa !66
  br label %52

52:                                               ; preds = %38, %42, %49
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717RegularExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_717DatatypeValidator12createObjectEPNS_13MemoryManagerE(ptr nocapture readnone %0) #7 align 2 !prof !47 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !47 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_717DatatypeValidator12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !47 {
  ret ptr @_ZN11xercesc_2_717DatatypeValidator22classDatatypeValidatorE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidator9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %15 = alloca ptr, align 8
  %16 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %17 = alloca ptr, align 8
  %18 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %19 = load i16, ptr %1, align 8, !tbaa !97
  %20 = icmp eq i16 %19, 0
  %21 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 1
  br i1 %20, label %22, label %77

22:                                               ; preds = %2
  %23 = load i8, ptr %21, align 8, !tbaa !100, !range !101, !noundef !102
  %24 = icmp ne i8 %23, 0
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %24)
  %26 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 2
  %27 = load i8, ptr %26, align 1, !tbaa !103, !range !101, !noundef !102
  %28 = icmp ne i8 %27, 0
  %29 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %28)
  %30 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 3
  %31 = load i8, ptr %30, align 2, !tbaa !104, !range !101, !noundef !102
  %32 = icmp ne i8 %31, 0
  %33 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %32)
  %34 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 4
  %35 = load i8, ptr %34, align 1, !tbaa !105, !range !101, !noundef !102
  %36 = icmp ne i8 %35, 0
  %37 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %36)
  %38 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %39 = load i16, ptr %38, align 4, !tbaa !48
  %40 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull align 8 dereferenceable(100) %1, i16 noundef signext %39)
  %41 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !58
  %43 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %42)
  %44 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %45 = load i32, ptr %44, align 4, !tbaa !59
  %46 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %45)
  %47 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !60
  %49 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %48)
  %50 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  %51 = load i32, ptr %50, align 4, !tbaa !61
  %52 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %51)
  %53 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !62
  %55 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %54)
  %56 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !63
  tail call void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %57)
  %58 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 12
  %59 = load ptr, ptr %58, align 8, !tbaa !64
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12KVStringPairEEERNS_16XSerializeEngineE(ptr noundef %59, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %60 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %61, i32 noundef 0, i1 noundef zeroext false)
  %62 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  %63 = load ptr, ptr %62, align 8, !tbaa !66
  %64 = icmp eq ptr %63, @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE
  br i1 %64, label %65, label %67

65:                                               ; preds = %22
  %66 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef -1)
  br label %147

67:                                               ; preds = %22
  %68 = icmp eq ptr %63, @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE
  %69 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  br i1 %68, label %70, label %73

70:                                               ; preds = %67
  %71 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef -2)
  %72 = load ptr, ptr %69, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %72, i32 noundef 0, i1 noundef zeroext false)
  br label %147

73:                                               ; preds = %67
  %74 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef -3)
  %75 = load ptr, ptr %69, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %75, i32 noundef 0, i1 noundef zeroext false)
  %76 = load ptr, ptr %62, align 8, !tbaa !66
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %76, i32 noundef 0, i1 noundef zeroext false)
  br label %147

77:                                               ; preds = %2
  %78 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %21)
  %79 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 2
  %80 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %79)
  %81 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 3
  %82 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %81)
  %83 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 4
  %84 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %83)
  %85 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 5
  %86 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 2 dereferenceable(2) %85)
  %87 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 6
  %88 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %87)
  %89 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 7
  %90 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %89)
  %91 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 8
  %92 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %91)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %93 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %11)
  %94 = load i32, ptr %11, align 4, !tbaa !106
  %95 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 9
  store i32 %94, ptr %95, align 4, !tbaa !61
  %96 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %11)
  %97 = load i32, ptr %11, align 4, !tbaa !106
  %98 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 10
  store i32 %97, ptr %98, align 8, !tbaa !62
  %99 = call noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %1)
  %100 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 11
  store ptr %99, ptr %100, align 8, !tbaa !63
  %101 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 12
  call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12KVStringPairEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %101, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %102 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  %103 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %12)
  %104 = load i32, ptr %12, align 4, !tbaa !106
  switch i32 %104, label %126 [
    i32 -1, label %105
    i32 -2, label %118
  ]

105:                                              ; preds = %77
  %106 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 15
  %107 = load ptr, ptr %106, align 8, !tbaa !75
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %111 = load ptr, ptr %110, align 8, !tbaa !67
  %112 = load ptr, ptr %111, align 8, !tbaa !43
  %113 = getelementptr inbounds ptr, ptr %112, i64 3
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull %107)
  store ptr null, ptr %106, align 8, !tbaa !75
  br label %115

115:                                              ; preds = %105, %109
  %116 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 16
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %116, align 8, !tbaa !65
  %117 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 17
  store ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, ptr %117, align 8, !tbaa !66
  br label %143

118:                                              ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  %119 = load ptr, ptr %13, align 8, !tbaa !107
  %120 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %121 = load ptr, ptr %120, align 8, !tbaa !67
  store ptr %119, ptr %14, align 8, !tbaa !108
  %122 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %14, i64 0, i32 1
  store ptr %121, ptr %122, align 8, !tbaa !110
  invoke void @_ZN11xercesc_2_717DatatypeValidator11setTypeNameEPKt(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %119)
          to label %123 unwind label %124

123:                                              ; preds = %118
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  br label %143

124:                                              ; preds = %118
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  br label %145

126:                                              ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #18
  %127 = load ptr, ptr %15, align 8, !tbaa !107
  %128 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %129 = load ptr, ptr %128, align 8, !tbaa !67
  store ptr %127, ptr %16, align 8, !tbaa !108
  %130 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %16, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  invoke void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
          to label %131 unwind label %137

131:                                              ; preds = %126
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #18
  %132 = load ptr, ptr %17, align 8, !tbaa !107
  %133 = load ptr, ptr %128, align 8, !tbaa !67
  store ptr %132, ptr %18, align 8, !tbaa !108
  %134 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %18, i64 0, i32 1
  store ptr %133, ptr %134, align 8, !tbaa !110
  %135 = load ptr, ptr %15, align 8, !tbaa !107
  invoke void @_ZN11xercesc_2_717DatatypeValidator11setTypeNameEPKtS2_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %135, ptr noundef %132)
          to label %136 unwind label %139

136:                                              ; preds = %131
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  br label %143

137:                                              ; preds = %126
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %141

139:                                              ; preds = %131
  %140 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %18) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #18
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %138, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #18
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #18
  br label %145

143:                                              ; preds = %123, %136, %115
  %144 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 14
  store ptr null, ptr %144, align 8, !tbaa !70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  br label %147

145:                                              ; preds = %141, %124
  %146 = phi { ptr, i32 } [ %125, %124 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  resume { ptr, i32 } %146

147:                                              ; preds = %65, %73, %70, %143
  ret void
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEs(ptr noundef nonnull align 8 dereferenceable(100), i16 noundef signext) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717DatatypeValidator7storeDVERNS_16XSerializeEngineEPS0_(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %1) local_unnamed_addr #5 align 2 !prof !47 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !107
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 16
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %7)
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef -1)
  %12 = load ptr, ptr %6, align 8, !tbaa !65
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef %12, i32 noundef 0, i1 noundef zeroext false)
  br label %20

13:                                               ; preds = %4
  %14 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef -2)
  %15 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %1, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !61
  %17 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef %16)
  tail call void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %1)
  br label %20

18:                                               ; preds = %2
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %0, i32 noundef -3)
  br label %20

20:                                               ; preds = %10, %13, %18
  ret void
}

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12KVStringPairEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #10

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERs(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 2 dereferenceable(2)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %8 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %9 = load i32, ptr %4, align 4, !tbaa !106
  switch i32 %9, label %20 [
    i32 -1, label %10
    i32 -3, label %31
  ]

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !107
  %12 = call noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100) %0)
  store ptr %11, ptr %6, align 8, !tbaa !108
  %13 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !110
  %14 = load ptr, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory16fBuiltInRegistryE, align 8, !tbaa !107
  %15 = load ptr, ptr %5, align 8, !tbaa !107
  %16 = invoke noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %15)
          to label %17 unwind label %18

17:                                               ; preds = %10
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %31

18:                                               ; preds = %10
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  resume { ptr, i32 } %19

20:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %21 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %22 = load i32, ptr %7, align 4, !tbaa !106
  %23 = icmp ult i32 %22, 27
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = zext nneg i32 %22 to i64
  %26 = getelementptr inbounds [27 x ptr], ptr @switch.table._ZN11xercesc_2_717DatatypeValidator6loadDVERNS_16XSerializeEngineE, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8
  %28 = call noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull %27)
  br label %29

29:                                               ; preds = %20, %24
  %30 = phi ptr [ null, %20 ], [ %28, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  br label %31

31:                                               ; preds = %1, %29, %17
  %32 = phi ptr [ %16, %17 ], [ %30, %29 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret ptr %32
}

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12KVStringPairEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !108
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !112

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !110
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !113

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !43
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !114

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #19
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #5 comdat align 2 !prof !115 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !118
  %7 = load ptr, ptr %0, align 8, !tbaa !119
  %8 = load ptr, ptr %4, align 8, !tbaa !43
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !120
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !107
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !122

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !116
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !123
  %22 = load ptr, ptr %19, align 8, !tbaa !43
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !125
  br i1 %25, label %30, label %26, !prof !126

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !107
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !127, !llvm.loop !128

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !129

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !130
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare noundef ptr @_ZNK11xercesc_2_716XSerializeEngine16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_717DatatypeValidator26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !47 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xercesc_2_7::DatatypeValidator", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8
  %8 = select i1 %5, ptr %7, ptr %2
  br i1 %3, label %9, label %17

9:                                                ; preds = %4
  %10 = load ptr, ptr %0, align 8, !tbaa !43
  %11 = getelementptr inbounds ptr, ptr %10, i64 8
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef null, ptr noundef %8)
          to label %17 unwind label %13

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #18
  tail call void @__cxa_end_catch()
  br label %39

17:                                               ; preds = %9, %4
  %18 = icmp eq ptr %1, null
  br i1 %18, label %39, label %19

19:                                               ; preds = %17
  %20 = load i16, ptr %1, align 2, !tbaa !81
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %24, %22 ], [ %1, %19 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !81
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %22, !llvm.loop !83

27:                                               ; preds = %22
  %28 = ptrtoint ptr %24 to i64
  %29 = ptrtoint ptr %1 to i64
  %30 = sub i64 %28, %29
  %31 = add i64 %30, 2
  %32 = and i64 %31, 8589934590
  br label %33

33:                                               ; preds = %27, %19
  %34 = phi i64 [ %32, %27 ], [ 2, %19 ]
  %35 = load ptr, ptr %8, align 8, !tbaa !43
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %34)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %38, ptr nonnull align 2 %1, i64 %34, i1 false)
  br label %39

39:                                               ; preds = %33, %17, %13
  %40 = phi ptr [ null, %13 ], [ %38, %33 ], [ null, %17 ]
  ret ptr %40
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717DatatypeValidator8isAtomicEv(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #12 comdat align 2 !prof !47 {
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_717DatatypeValidator17isSubstitutableByEPKS0_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 !prof !47 {
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
  br i1 %12, label %6, label %13, !llvm.loop !131

13:                                               ; preds = %6, %2
  %14 = phi i1 [ %3, %2 ], [ %10, %6 ]
  ret i1 %14
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_717DatatypeValidator7compareEPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #13 comdat align 2 !prof !47 {
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %1, ptr noundef %2)
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #10

declare void @_ZN11xercesc_2_716XSerializeEngine5writeEPNS_13XSerializableE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZN11xercesc_2_716XSerializeEngine4readEPNS_10XProtoTypeE(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !132 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = load ptr, ptr %2, align 8, !tbaa !43
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !136
  store ptr null, ptr %3, align 8, !tbaa !135
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !138

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !43
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #18, !prof !139
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #5 comdat align 2 !prof !132 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !140
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !141

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !142
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !143

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !140
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !135
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !107
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !144

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.1", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = load i8, ptr %11, align 8, !tbaa !147, !range !101, !noundef !102
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !148

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !149
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !148

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !43
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(48) %26) #18, !prof !150
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !133
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !151
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !152, !llvm.loop !153

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !135
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !107
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !142
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !154, !llvm.loop !155

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!41}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40}
!35 = !{ptr @_ZN11xercesc_2_717DatatypeValidatorD2Ev, ptr @_ZN11xercesc_2_717DatatypeValidator7cleanUpEv, i64 63}
!36 = !{ptr @_ZN11xercesc_2_717DatatypeValidator7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, i64 34}
!37 = !{ptr @_ZN11xercesc_2_717DatatypeValidator7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 44}
!38 = !{ptr @_ZN11xercesc_2_717DatatypeValidator7cleanUpEv, ptr @_ZN11xercesc_2_717RegularExpressionD1Ev, i64 10}
!39 = !{ptr @_ZN11xercesc_2_717DatatypeValidator11setTypeNameEPKt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 37}
!40 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12KVStringPairEE9removeAllEv, i64 34}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = !{!"function_entry_count", i64 63}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"branch_weights", i32 63, i32 0}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !53, i64 12}
!49 = !{!"_ZTSN11xercesc_2_717DatatypeValidatorE", !50, i64 0, !51, i64 8, !51, i64 9, !51, i64 10, !51, i64 11, !53, i64 12, !54, i64 16, !54, i64 20, !54, i64 24, !55, i64 28, !56, i64 32, !57, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !57, i64 96}
!50 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!51 = !{!"bool", !52, i64 0}
!52 = !{!"omnipotent char", !45, i64 0}
!53 = !{!"short", !52, i64 0}
!54 = !{!"int", !52, i64 0}
!55 = !{!"_ZTSN11xercesc_2_717DatatypeValidator13ValidatorTypeE", !52, i64 0}
!56 = !{!"_ZTSN11xercesc_2_722XSSimpleTypeDefinition8ORDERINGE", !52, i64 0}
!57 = !{!"any pointer", !52, i64 0}
!58 = !{!49, !54, i64 16}
!59 = !{!49, !54, i64 20}
!60 = !{!49, !54, i64 24}
!61 = !{!49, !55, i64 28}
!62 = !{!49, !56, i64 32}
!63 = !{!49, !57, i64 40}
!64 = !{!49, !57, i64 48}
!65 = !{!49, !57, i64 80}
!66 = !{!49, !57, i64 88}
!67 = !{!49, !57, i64 96}
!68 = !{!"branch_weights", i32 29, i32 34}
!69 = !{!"branch_weights", i32 34, i32 0}
!70 = !{!49, !57, i64 64}
!71 = !{!"branch_weights", i32 53, i32 10}
!72 = !{!49, !57, i64 56}
!73 = !{!"branch_weights", i32 50, i32 13}
!74 = !{!"VP", i32 0, i64 13, i64 -7405368087501025645, i64 13}
!75 = !{!49, !57, i64 72}
!76 = !{!"branch_weights", i32 1, i32 62}
!77 = !{!"VP", i32 0, i64 62, i64 -7405368087501025645, i64 62}
!78 = !{!"function_entry_count", i64 25}
!79 = !{!"branch_weights", i32 25, i32 0}
!80 = !{!"branch_weights", i32 0, i32 25}
!81 = !{!53, !53, i64 0}
!82 = !{!"branch_weights", i32 25, i32 140}
!83 = distinct !{!83, !84, !85}
!84 = !{!"llvm.loop.mustprogress"}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"branch_weights", i32 25, i32 775}
!87 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!88 = !{!"VP", i32 1, i64 25, i64 65, i64 25}
!89 = !{!"VP", i32 1, i64 25, i64 9, i64 14, i64 17, i64 8, i64 16, i64 2, i64 6, i64 1}
!90 = !{!"function_entry_count", i64 37}
!91 = !{!"branch_weights", i32 37, i32 0}
!92 = !{!"branch_weights", i32 0, i32 37}
!93 = !{!"branch_weights", i32 37, i32 858}
!94 = !{!"VP", i32 0, i64 37, i64 8345045103670217670, i64 37}
!95 = !{!"VP", i32 1, i64 37, i64 65, i64 17, i64 17, i64 7, i64 9, i64 5, i64 33, i64 3}
!96 = !{!"branch_weights", i32 20, i32 17}
!97 = !{!98, !53, i64 0}
!98 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !53, i64 0, !53, i64 2, !57, i64 8, !57, i64 16, !57, i64 24, !99, i64 32, !99, i64 40, !57, i64 48, !57, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !57, i64 88, !54, i64 96}
!99 = !{!"long", !52, i64 0}
!100 = !{!49, !51, i64 8}
!101 = !{i8 0, i8 2}
!102 = !{}
!103 = !{!49, !51, i64 9}
!104 = !{!49, !51, i64 10}
!105 = !{!49, !51, i64 11}
!106 = !{!54, !54, i64 0}
!107 = !{!57, !57, i64 0}
!108 = !{!109, !57, i64 0}
!109 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !57, i64 0, !57, i64 8}
!110 = !{!109, !57, i64 8}
!111 = !{!"function_entry_count", i64 243874}
!112 = !{!"branch_weights", i32 191815, i32 52059}
!113 = !{!"branch_weights", i32 0, i32 52059}
!114 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!115 = !{!"function_entry_count", i64 108}
!116 = !{!117, !57, i64 40}
!117 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_17DatatypeValidatorEEE", !57, i64 0, !51, i64 8, !57, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !57, i64 40}
!118 = !{!117, !54, i64 24}
!119 = !{!117, !57, i64 0}
!120 = !{!"VP", i32 0, i64 108, i64 3024540859536234746, i64 108}
!121 = !{!117, !57, i64 16}
!122 = !{!"branch_weights", i32 0, i32 1}
!123 = !{!124, !57, i64 16}
!124 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_17DatatypeValidatorEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!125 = !{!"VP", i32 0, i64 118, i64 -1309333655503989351, i64 118}
!126 = !{!"branch_weights", i32 108, i32 10}
!127 = !{!"branch_weights", i32 0, i32 118}
!128 = distinct !{!128, !84, !85}
!129 = !{!"branch_weights", i32 0, i32 108}
!130 = !{!124, !57, i64 0}
!131 = distinct !{!131, !84, !85}
!132 = !{!"function_entry_count", i64 34}
!133 = !{!134, !57, i64 0}
!134 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12KVStringPairEEE", !57, i64 0, !51, i64 8, !57, i64 16, !54, i64 24, !54, i64 28, !54, i64 32, !57, i64 40}
!135 = !{!134, !57, i64 16}
!136 = !{!"VP", i32 0, i64 34, i64 -7405368087501025645, i64 34}
!137 = !{!134, !57, i64 40}
!138 = !{!"branch_weights", i32 0, i32 34}
!139 = !{!"VP", i32 0, i64 34, i64 -5147776714887549805, i64 34}
!140 = !{!134, !54, i64 32}
!141 = !{!"branch_weights", i32 5, i32 29}
!142 = !{!134, !54, i64 24}
!143 = !{!"branch_weights", i32 1, i32 231}
!144 = !{!"branch_weights", i32 360, i32 35}
!145 = !{!146, !57, i64 8}
!146 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12KVStringPairEEE", !57, i64 0, !57, i64 8, !57, i64 16}
!147 = !{!134, !51, i64 8}
!148 = !{!"branch_weights", i32 0, i32 35}
!149 = !{!146, !57, i64 0}
!150 = !{!"VP", i32 0, i64 35, i64 -2769809254715685994, i64 35}
!151 = !{!"VP", i32 0, i64 35, i64 -7405368087501025645, i64 35}
!152 = !{!"branch_weights", i32 35, i32 0}
!153 = distinct !{!153, !84, !85}
!154 = !{!"branch_weights", i32 2929, i32 231}
!155 = distinct !{!155, !84, !85}
