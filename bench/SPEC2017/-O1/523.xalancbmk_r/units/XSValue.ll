; ModuleID = 'XSValue.cpp'
source_filename = "XSValue.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::ValueHashTableOf" = type { ptr, ptr, i32, ptr }
%"struct.xercesc_2_7::ValueHashTableBucketElem" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XSValue" = type { %"struct.xercesc_2_7::XSValue::XSValue_Data", i8, ptr }
%"struct.xercesc_2_7::XSValue::XSValue_Data" = type { i32, %union.anon }
%union.anon = type { %"struct.xercesc_2_7::XSValue::XSValue_Data::(anonymous union)::datetime" }
%"struct.xercesc_2_7::XSValue::XSValue_Data::(anonymous union)::datetime" = type { i32, i32, i32, i32, i32, i32, double }
%"class.xercesc_2_7::XMLFloat" = type { %"class.xercesc_2_7::XMLAbstractDoubleFloat" }
%"class.xercesc_2_7::XMLAbstractDoubleFloat" = type { %"class.xercesc_2_7::XMLNumber", double, i32, i8, i8, i32, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLNumber" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLDouble" = type { %"class.xercesc_2_7::XMLAbstractDoubleFloat" }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"union.xercesc_2_7::XSValue::t_value" = type { i64 }
%"class.xercesc_2_7::XMLDateTime" = type { %"class.xercesc_2_7::XMLNumber", [8 x i32], [2 x i32], i32, i32, i32, double, i8, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringTokenizer" = type { i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcED2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEED2Ev = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTIN11xercesc_2_721NumberFormatExceptionE = comdat any

$_ZTSN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTIN11xercesc_2_723SchemaDateTimeExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZN11xercesc_2_77XSValue7inGroupE = dso_local local_unnamed_addr constant <{ [31 x i32], [13 x i32] }> <{ [31 x i32] [i32 2, i32 2, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], [13 x i32] zeroinitializer }>, align 16
@_ZN11xercesc_2_77XSValue11numericSignE = dso_local local_unnamed_addr constant [44 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00", align 16
@_ZN11xercesc_2_7L19XSValueMutexCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L19XSValueRegExCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_77XSValue17fDataTypeRegistryE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_7L22XSValueRegistryCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_76XMLUni13fgLangPatternE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE = external constant [0 x i16], align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L13sXSValueRegExE = internal unnamed_addr global ptr null, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols11fgDT_STRINGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgDT_DECIMALE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_FLOATE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_DOUBLEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgDT_DURATIONE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgDT_DATETIMEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_TIMEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_DATEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols14fgDT_YEARMONTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_YEARE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgDT_MONTHDAYE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols8fgDT_DAYE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_MONTHE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols14fgDT_HEXBINARYE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols17fgDT_BASE64BINARYE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_QNAMEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNotationStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgDT_NORMALIZEDSTRINGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_TOKENE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgDT_LANGUAGEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgNmTokenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgNmTokensStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_NAMEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_NCNAMEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgIDStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgIDRefStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgIDRefsStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni14fgEntityStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni16fgEntitiesStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols12fgDT_INTEGERE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols23fgDT_NONPOSITIVEINTEGERE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgDT_NEGATIVEINTEGERE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_LONGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols8fgDT_INTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_SHORTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_BYTEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_ULONGE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols9fgDT_UINTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols11fgDT_USHORTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgDT_UBYTEE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols20fgDT_POSITIVEINTEGERE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721NumberFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721NumberFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721NumberFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni8fgNegOneE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni11fgValueZeroE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni10fgValueOneE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgLongMinIncE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni12fgLongMaxIncE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgULongMaxIncE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local constant [41 x i8] c"N11xercesc_2_723SchemaDateTimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_723SchemaDateTimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_723SchemaDateTimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgBooleanValueSpaceArraySizeE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE = external constant [0 x [32 x i16]], align 2
@_ZN11xercesc_2_7L12Separator_20E = internal constant [2 x i16] [i16 32, i16 0], align 2
@_ZN11xercesc_2_7L12Separator_wsE = internal constant [5 x i16] [i16 32, i16 10, i16 13, i16 9, i16 0], align 2
@_ZN11xercesc_2_7L14sXSValueMutextE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16
@_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E = external local_unnamed_addr global [65536 x i8], align 16
@.str = private unnamed_addr constant [34 x i8] c"./xercesc/util/ValueHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XSValue.cpp, ptr null }]
@switch.table._ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE = private unnamed_addr constant [10 x i32] [i32 9, i32 9, i32 9, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 9], align 4

@_ZN11xercesc_2_77XSValueC1ENS0_8DataTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE
@_ZN11xercesc_2_77XSValueD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_77XSValueD2Ev

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer24initializeXSValueStaticsEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 104)
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgLangPatternE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %2)
          to label %3 unwind label %4

3:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue11reinitRegExEv)
  tail call void @_ZN11xercesc_2_77XSValue18initializeRegistryEv()
  ret void

4:                                                ; preds = %0
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %1) #15
  resume { ptr, i32 } %5
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_77XSValue11reinitRegExEv() #3 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_717RegularExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %1) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_77XSValue18initializeRegistryEv() local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
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
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32)
  %46 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef 43, ptr noundef %46)
          to label %47 unwind label %92

47:                                               ; preds = %0
  store ptr %45, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22XSValueRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue14reinitRegistryEv)
  %48 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  store i32 0, ptr %1, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_STRINGE, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  %49 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 1, ptr %2, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE, ptr noundef nonnull align 4 dereferenceable(4) %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %50 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 2, ptr %3, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_DECIMALE, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %51 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 3, ptr %4, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_FLOATE, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %52 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 4, ptr %5, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_DOUBLEE, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %53 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 5, ptr %6, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_DURATIONE, ptr noundef nonnull align 4 dereferenceable(4) %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %54 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 6, ptr %7, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_DATETIMEE, ptr noundef nonnull align 4 dereferenceable(4) %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %55 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 7, ptr %8, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_TIMEE, ptr noundef nonnull align 4 dereferenceable(4) %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  %56 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 8, ptr %9, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_DATEE, ptr noundef nonnull align 4 dereferenceable(4) %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  %57 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 9, ptr %10, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgDT_YEARMONTHE, ptr noundef nonnull align 4 dereferenceable(4) %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  %58 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 10, ptr %11, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_YEARE, ptr noundef nonnull align 4 dereferenceable(4) %11)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  %59 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 11, ptr %12, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_MONTHDAYE, ptr noundef nonnull align 4 dereferenceable(4) %12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  %60 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store i32 12, ptr %13, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols8fgDT_DAYE, ptr noundef nonnull align 4 dereferenceable(4) %13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  %61 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  store i32 13, ptr %14, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_MONTHE, ptr noundef nonnull align 4 dereferenceable(4) %14)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  %62 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  store i32 14, ptr %15, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgDT_HEXBINARYE, ptr noundef nonnull align 4 dereferenceable(4) %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  %63 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  store i32 15, ptr %16, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgDT_BASE64BINARYE, ptr noundef nonnull align 4 dereferenceable(4) %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  %64 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #15
  store i32 16, ptr %17, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE, ptr noundef nonnull align 4 dereferenceable(4) %17)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #15
  %65 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #15
  store i32 17, ptr %18, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_QNAMEE, ptr noundef nonnull align 4 dereferenceable(4) %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #15
  %66 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #15
  store i32 18, ptr %19, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE, ptr noundef nonnull align 4 dereferenceable(4) %19)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #15
  %67 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #15
  store i32 19, ptr %20, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgDT_NORMALIZEDSTRINGE, ptr noundef nonnull align 4 dereferenceable(4) %20)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #15
  %68 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #15
  store i32 20, ptr %21, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_TOKENE, ptr noundef nonnull align 4 dereferenceable(4) %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #15
  %69 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #15
  store i32 21, ptr %22, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_LANGUAGEE, ptr noundef nonnull align 4 dereferenceable(4) %22)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #15
  %70 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #15
  store i32 22, ptr %23, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE, ptr noundef nonnull align 4 dereferenceable(4) %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #15
  %71 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #15
  store i32 23, ptr %24, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE, ptr noundef nonnull align 4 dereferenceable(4) %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #15
  %72 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #15
  store i32 24, ptr %25, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_NAMEE, ptr noundef nonnull align 4 dereferenceable(4) %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #15
  %73 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #15
  store i32 25, ptr %26, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_NCNAMEE, ptr noundef nonnull align 4 dereferenceable(4) %26)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #15
  %74 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #15
  store i32 26, ptr %27, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgIDStringE, ptr noundef nonnull align 4 dereferenceable(4) %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #15
  %75 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #15
  store i32 27, ptr %28, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgIDRefStringE, ptr noundef nonnull align 4 dereferenceable(4) %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #15
  %76 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #15
  store i32 28, ptr %29, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE, ptr noundef nonnull align 4 dereferenceable(4) %29)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #15
  %77 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #15
  store i32 29, ptr %30, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE, ptr noundef nonnull align 4 dereferenceable(4) %30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #15
  %78 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #15
  store i32 30, ptr %31, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE, ptr noundef nonnull align 4 dereferenceable(4) %31)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #15
  %79 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #15
  store i32 31, ptr %32, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_INTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #15
  %80 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #15
  store i32 32, ptr %33, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONPOSITIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #15
  %81 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #15
  store i32 33, ptr %34, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgDT_NEGATIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #15
  %82 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #15
  store i32 34, ptr %35, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_LONGE, ptr noundef nonnull align 4 dereferenceable(4) %35)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #15
  %83 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #15
  store i32 35, ptr %36, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols8fgDT_INTE, ptr noundef nonnull align 4 dereferenceable(4) %36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #15
  %84 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #15
  store i32 36, ptr %37, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_SHORTE, ptr noundef nonnull align 4 dereferenceable(4) %37)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #15
  %85 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #15
  store i32 37, ptr %38, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_BYTEE, ptr noundef nonnull align 4 dereferenceable(4) %38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #15
  %86 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #15
  store i32 38, ptr %39, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %39)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #15
  %87 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #15
  store i32 39, ptr %40, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_ULONGE, ptr noundef nonnull align 4 dereferenceable(4) %40)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #15
  %88 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #15
  store i32 40, ptr %41, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_UINTE, ptr noundef nonnull align 4 dereferenceable(4) %41)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #15
  %89 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #15
  store i32 41, ptr %42, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_USHORTE, ptr noundef nonnull align 4 dereferenceable(4) %42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #15
  %90 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #15
  store i32 42, ptr %43, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_UBYTEE, ptr noundef nonnull align 4 dereferenceable(4) %43)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #15
  %91 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #15
  store i32 43, ptr %44, align 4, !tbaa !42
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgDT_POSITIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %44)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #15
  ret void

92:                                               ; preds = %0
  %93 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %45) #15
  resume { ptr, i32 } %93
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_77XSValue11getDataTypeEPKt(ptr noundef %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %6 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gXSValueMutexEv()
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %6)
  %7 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_77XSValue18initializeRegistryEv()
          to label %23 unwind label %10

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = extractvalue { ptr, i32 } %11, 1
  %14 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %15 = icmp eq i32 %13, %14
  %16 = call ptr @__cxa_begin_catch(ptr %12) #15
  br i1 %15, label %17, label %18

17:                                               ; preds = %10
  invoke void @__cxa_rethrow() #16
          to label %40 unwind label %21

18:                                               ; preds = %10
  invoke void @__cxa_end_catch()
          to label %24 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %25

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %25 unwind label %37

23:                                               ; preds = %5, %9
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %27

24:                                               ; preds = %18
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %35

25:                                               ; preds = %21, %19
  %26 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  resume { ptr, i32 } %26

27:                                               ; preds = %23, %1
  %28 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  %29 = call noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef %0)
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  %32 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef %0, ptr noundef %32)
  %34 = load i32, ptr %33, align 4, !tbaa !42
  br label %35

35:                                               ; preds = %24, %27, %30
  %36 = phi i32 [ %34, %30 ], [ 44, %24 ], [ 44, %27 ]
  ret i32 %36

37:                                               ; preds = %21
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #17
  unreachable

40:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gXSValueMutexEv() unnamed_addr #1 personality ptr @__gxx_personality_v0 !prof !37 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !38
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %21

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !38
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5)
  %6 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %9)
          to label %11 unwind label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %13 unwind label %16

13:                                               ; preds = %11
  store ptr %10, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue11reinitMutexEv)
          to label %18 unwind label %14

14:                                               ; preds = %13, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %19

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #15
  br label %19

18:                                               ; preds = %13, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  br label %21

19:                                               ; preds = %16, %14
  %20 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %0
  %22 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !38
  ret ptr %22
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = load ptr, ptr %4, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !38
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !44
  %19 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = load ptr, ptr %18, align 8, !tbaa !49
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %38, label %25

25:                                               ; preds = %17, %30
  %26 = phi ptr [ %28, %30 ], [ %15, %17 ]
  %27 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !38
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %38, !llvm.loop !54

30:                                               ; preds = %25
  %31 = load ptr, ptr %3, align 8, !tbaa !44
  %32 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  %34 = load ptr, ptr %31, align 8, !tbaa !49
  %35 = getelementptr inbounds ptr, ptr %34, i64 1
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %1, ptr noundef %33)
  br i1 %37, label %38, label %25, !llvm.loop !54

38:                                               ; preds = %25, %30, %17, %2
  %39 = phi i1 [ %16, %2 ], [ %16, %17 ], [ %29, %30 ], [ %29, %25 ]
  ret i1 %39
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = load ptr, ptr %5, align 8, !tbaa !49
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8)
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !44
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = load ptr, ptr %20, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22)
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !57

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 50, ptr noundef %2)
          to label %36 unwind label %37

36:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

37:                                               ; preds = %34
  %38 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #15
  resume { ptr, i32 } %38

39:                                               ; preds = %31
  ret ptr %32
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr %2, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !51
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !47
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1)
  %7 = load ptr, ptr %0, align 8, !tbaa !48
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %10

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !44
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #15
  resume { ptr, i32 } %11
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_77XSValue14reinitRegistryEv() #3 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !38
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !47
  %8 = load ptr, ptr %0, align 8, !tbaa !48
  %9 = load ptr, ptr %5, align 8, !tbaa !49
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8)
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !44
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = load ptr, ptr %20, align 8, !tbaa !49
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22)
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !57

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ %19, %18 ], [ null, %27 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr %2, align 4, !tbaa !42
  store i32 %35, ptr %32, align 8, !tbaa !58
  %36 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %32, i64 0, i32 2
  store ptr %1, ptr %36, align 8, !tbaa !52
  br label %49

37:                                               ; preds = %31
  %38 = load ptr, ptr %0, align 8, !tbaa !48
  %39 = load ptr, ptr %38, align 8, !tbaa !49
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef 24)
  %43 = load ptr, ptr %12, align 8, !tbaa !51
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  %46 = load i32, ptr %2, align 4, !tbaa !42
  store i32 %46, ptr %42, align 8, !tbaa !58
  %47 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 1
  store ptr %45, ptr %47, align 8, !tbaa !59
  %48 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %42, i64 0, i32 2
  store ptr %1, ptr %48, align 8, !tbaa !52
  store ptr %42, ptr %44, align 8, !tbaa !38
  br label %49

49:                                               ; preds = %37, %34
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #7 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !64
  store i32 %1, ptr %0, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_77XSValueD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !60, !range !66, !noundef !67
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = load ptr, ptr %7, align 8, !tbaa !49
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9)
          to label %13 unwind label %14

13:                                               ; preds = %5, %1
  ret void

14:                                               ; preds = %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue8validateEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 !prof !37 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %42, label %7

7:                                                ; preds = %5
  %8 = load i16, ptr %0, align 2, !tbaa !69
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %7
  switch i32 %3, label %45 [
    i32 0, label %11
    i32 1, label %25
  ]

11:                                               ; preds = %10, %11
  %12 = phi ptr [ %13, %11 ], [ %0, %10 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !69
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !71

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %21)
  br i1 %22, label %42, label %23

23:                                               ; preds = %16
  %24 = icmp eq i32 %3, 1
  br i1 %24, label %25, label %45

25:                                               ; preds = %23, %10
  %26 = load i16, ptr %0, align 2, !tbaa !69
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %0, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !69
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !71

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %0 to i64
  %36 = sub i64 %34, %35
  %37 = lshr exact i64 %36, 1
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %25, %33
  %40 = phi i32 [ %38, %33 ], [ 0, %25 ]
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %40)
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %16, %7, %5
  switch i32 %1, label %44 [
    i32 0, label %43
    i32 19, label %43
    i32 20, label %43
    i32 16, label %43
    i32 14, label %43
    i32 15, label %43
  ]

43:                                               ; preds = %42, %42, %42, %42, %42, %42
  store i32 0, ptr %2, align 4, !tbaa !72
  br label %56

44:                                               ; preds = %42
  store i32 1, ptr %2, align 4, !tbaa !72
  br label %56

45:                                               ; preds = %23, %10, %39
  store i32 0, ptr %2, align 4, !tbaa !72
  %46 = zext i32 %1 to i64
  %47 = getelementptr inbounds [44 x i32], ptr @_ZN11xercesc_2_77XSValue7inGroupE, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !74
  switch i32 %48, label %55 [
    i32 0, label %49
    i32 1, label %51
    i32 2, label %53
  ]

49:                                               ; preds = %45
  %50 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XSValue16validateNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4)
  br label %56

51:                                               ; preds = %45
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XSValue17validateDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4)
  br label %56

53:                                               ; preds = %45
  %54 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4)
  br label %56

55:                                               ; preds = %45
  store i32 10, ptr %2, align 4, !tbaa !72
  br label %56

56:                                               ; preds = %55, %53, %51, %49, %44, %43
  %57 = phi i1 [ false, %44 ], [ true, %43 ], [ false, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ]
  ret i1 %57
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue16validateNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::XMLFloat", align 8
  %6 = alloca %"class.xercesc_2_7::XMLDouble", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %"union.xercesc_2_7::XSValue::t_value", align 8
  switch i32 %1, label %139 [
    i32 2, label %18
    i32 3, label %21
    i32 4, label %25
    i32 31, label %29
    i32 33, label %29
    i32 32, label %29
    i32 38, label %29
    i32 43, label %29
    i32 34, label %29
    i32 39, label %29
    i32 35, label %116
    i32 36, label %116
    i32 37, label %116
    i32 40, label %116
    i32 41, label %116
    i32 42, label %116
  ]

18:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3)
          to label %134 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %121

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %0, ptr noundef %3)
          to label %22 unwind label %23

22:                                               ; preds = %21
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %134

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %121

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %0, ptr noundef %3)
          to label %26 unwind label %27

26:                                               ; preds = %25
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %134

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %121

29:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %30 = icmp eq ptr %0, null
  br i1 %30, label %44, label %31

31:                                               ; preds = %29
  %32 = load i16, ptr %0, align 2, !tbaa !69
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %36, %34 ], [ %0, %31 ]
  %36 = getelementptr inbounds i16, ptr %35, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !69
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %34, !llvm.loop !71

39:                                               ; preds = %34
  %40 = ptrtoint ptr %36 to i64
  %41 = ptrtoint ptr %0 to i64
  %42 = sub i64 %40, %41
  %43 = and i64 %42, -2
  br label %44

44:                                               ; preds = %29, %31, %39
  %45 = phi i64 [ %43, %39 ], [ 0, %31 ], [ 0, %29 ]
  %46 = add i64 %45, 2
  %47 = and i64 %46, 8589934590
  %48 = load ptr, ptr %3, align 8, !tbaa !49
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %47)
          to label %52 unwind label %55

52:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  store ptr %51, ptr %7, align 8, !tbaa !76
  %53 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %3, ptr %53, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !tbaa !79
  invoke void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull %3)
          to label %54 unwind label %57

54:                                               ; preds = %52
  switch i32 %1, label %137 [
    i32 31, label %113
    i32 33, label %59
    i32 32, label %65
    i32 38, label %71
    i32 43, label %77
    i32 34, label %83
    i32 39, label %98
  ]

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %121

57:                                               ; preds = %52
  %58 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %114

59:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 -1, ptr %9, align 4, !tbaa !79
  %60 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull getelementptr inbounds ([0 x i16], ptr @_ZN11xercesc_2_76XMLUni8fgNegOneE, i64 0, i64 1), ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %3)
          to label %61 unwind label %63

61:                                               ; preds = %59
  %62 = icmp eq i32 %60, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br i1 %62, label %137, label %113

63:                                               ; preds = %59
  %64 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %114

65:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !tbaa !79
  %66 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgValueZeroE, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull %3)
          to label %67 unwind label %69

67:                                               ; preds = %65
  %68 = icmp eq i32 %66, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br i1 %68, label %137, label %113

69:                                               ; preds = %65
  %70 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br label %114

71:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !tbaa !79
  %72 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgValueZeroE, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull %3)
          to label %73 unwind label %75

73:                                               ; preds = %71
  %74 = icmp eq i32 %72, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  br i1 %74, label %137, label %113

75:                                               ; preds = %71
  %76 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  br label %114

77:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 1, ptr %12, align 4, !tbaa !79
  %78 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgValueOneE, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull %3)
          to label %79 unwind label %81

79:                                               ; preds = %77
  %80 = icmp eq i32 %78, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  br i1 %80, label %137, label %113

81:                                               ; preds = %77
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  br label %114

83:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store i32 -1, ptr %13, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  %84 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull getelementptr inbounds ([0 x i16], ptr @_ZN11xercesc_2_76XMLUni12fgLongMinIncE, i64 0, i64 1), ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull %3)
          to label %85 unwind label %92

85:                                               ; preds = %83
  %86 = icmp eq i32 %84, -1
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  store i32 1, ptr %14, align 4, !tbaa !79
  %88 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgLongMaxIncE, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull %3)
          to label %89 unwind label %94

89:                                               ; preds = %87
  %90 = icmp eq i32 %88, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br i1 %90, label %137, label %113

91:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br label %137

92:                                               ; preds = %83
  %93 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %96

94:                                               ; preds = %87
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br label %114

98:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  store i32 0, ptr %15, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  %99 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgValueZeroE, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull %3)
          to label %100 unwind label %107

100:                                              ; preds = %98
  %101 = icmp eq i32 %99, -1
  br i1 %101, label %106, label %102

102:                                              ; preds = %100
  store i32 1, ptr %16, align 4, !tbaa !79
  %103 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %51, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgULongMaxIncE, ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull %3)
          to label %104 unwind label %109

104:                                              ; preds = %102
  %105 = icmp eq i32 %103, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  br i1 %105, label %137, label %113

106:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  br label %137

107:                                              ; preds = %98
  %108 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %111

109:                                              ; preds = %102
  %110 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  br label %114

113:                                              ; preds = %54, %61, %67, %73, %79, %89, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %134

114:                                              ; preds = %111, %96, %81, %75, %69, %63, %57
  %115 = phi { ptr, i32 } [ %112, %111 ], [ %97, %96 ], [ %82, %81 ], [ %76, %75 ], [ %70, %69 ], [ %64, %63 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %121

116:                                              ; preds = %4, %4, %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  %117 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue21getActualNumericValueEPKtRNS0_6StatusERNS0_7t_valueEPNS_13MemoryManagerENS0_8DataTypeE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %3, i32 noundef %1)
          to label %118 unwind label %119

118:                                              ; preds = %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  br i1 %117, label %134, label %139

119:                                              ; preds = %116
  %120 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  br label %121

121:                                              ; preds = %55, %114, %119, %27, %23, %19
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %28, %27 ], [ %24, %23 ], [ %20, %19 ], [ %115, %114 ], [ %56, %55 ]
  %123 = extractvalue { ptr, i32 } %122, 0
  %124 = extractvalue { ptr, i32 } %122, 1
  %125 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call ptr @__cxa_begin_catch(ptr %123) #15
  invoke void @__cxa_rethrow() #16
          to label %146 unwind label %135

129:                                              ; preds = %121
  %130 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %131 = icmp eq i32 %124, %130
  br i1 %131, label %132, label %141

132:                                              ; preds = %129
  %133 = call ptr @__cxa_begin_catch(ptr %123) #15
  store i32 6, ptr %2, align 4, !tbaa !72
  call void @__cxa_end_catch()
  br label %139

134:                                              ; preds = %113, %118, %18, %26, %22
  br label %139

135:                                              ; preds = %127
  %136 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %141 unwind label %143

137:                                              ; preds = %54, %104, %106, %89, %91, %79, %73, %67, %61
  %138 = phi i32 [ 6, %61 ], [ 6, %67 ], [ 6, %73 ], [ 6, %79 ], [ 6, %91 ], [ 6, %89 ], [ 6, %106 ], [ 6, %104 ], [ 4, %54 ]
  store i32 %138, ptr %2, align 4, !tbaa !72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %139

139:                                              ; preds = %118, %137, %4, %132, %134
  %140 = phi i1 [ true, %134 ], [ false, %132 ], [ false, %4 ], [ false, %137 ], [ false, %118 ]
  ret i1 %140

141:                                              ; preds = %135, %129
  %142 = phi { ptr, i32 } [ %122, %129 ], [ %136, %135 ]
  resume { ptr, i32 } %142

143:                                              ; preds = %135
  %144 = landingpad { ptr, i32 }
          catch ptr null
  %145 = extractvalue { ptr, i32 } %144, 0
  call void @__clang_call_terminate(ptr %145) #17
  unreachable

146:                                              ; preds = %127
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue17validateDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %0, align 2, !tbaa !69
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %0, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !69
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !71

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 2
  %21 = and i64 %20, 8589934590
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i64 [ %21, %16 ], [ 2, %8 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %23)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %0, i64 %23, i1 false)
  br label %28

28:                                               ; preds = %4, %22
  %29 = phi ptr [ %27, %22 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  store ptr %29, ptr %5, align 8, !tbaa !76
  %30 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %3, ptr %30, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %29)
          to label %31 unwind label %33

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef %29, ptr noundef %3)
          to label %32 unwind label %35

32:                                               ; preds = %31
  switch i32 %1, label %48 [
    i32 5, label %37
    i32 6, label %40
    i32 7, label %41
    i32 8, label %42
    i32 9, label %43
    i32 10, label %44
    i32 11, label %45
    i32 12, label %46
    i32 13, label %47
  ]

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %89

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %50

37:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

38:                                               ; preds = %47, %46, %45, %44, %43, %42, %41, %40, %37
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #15
  br label %50

40:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

41:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

42:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

43:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

44:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

45:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

46:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

47:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %48 unwind label %38

48:                                               ; preds = %47, %46, %45, %44, %43, %41, %40, %37, %42, %32
  %49 = phi i1 [ false, %32 ], [ true, %42 ], [ true, %37 ], [ true, %40 ], [ true, %41 ], [ true, %43 ], [ true, %44 ], [ true, %45 ], [ true, %46 ], [ true, %47 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  br label %87

50:                                               ; preds = %38, %35
  %51 = phi { ptr, i32 } [ %39, %38 ], [ %36, %35 ]
  %52 = extractvalue { ptr, i32 } %51, 0
  %53 = extractvalue { ptr, i32 } %51, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  %54 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE) #15
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %71

56:                                               ; preds = %50
  %57 = call ptr @__cxa_begin_catch(ptr %52) #15
  %58 = add i32 %1, -6
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %57, i64 0, i32 1
  %62 = load i32, ptr %61, align 8, !tbaa !80
  %63 = add i32 %62, -343
  %64 = icmp ult i32 %63, 10
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = zext nneg i32 %63 to i64
  %67 = getelementptr inbounds [10 x i32], ptr @switch.table._ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4
  br label %69

69:                                               ; preds = %60, %65, %56
  %70 = phi i32 [ 6, %56 ], [ %68, %65 ], [ 6, %60 ]
  store i32 %70, ptr %2, align 4, !tbaa !72
  invoke void @__cxa_end_catch()
          to label %87 unwind label %85

71:                                               ; preds = %50
  %72 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %73 = icmp eq i32 %53, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = call ptr @__cxa_begin_catch(ptr %52) #15
  invoke void @__cxa_rethrow() #16
          to label %94 unwind label %83

76:                                               ; preds = %71
  %77 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %78 = icmp eq i32 %53, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = call ptr @__cxa_begin_catch(ptr %52) #15
  store i32 6, ptr %2, align 4, !tbaa !72
  invoke void @__cxa_end_catch()
          to label %87 unwind label %81

81:                                               ; preds = %79
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %89

83:                                               ; preds = %74
  %84 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %89 unwind label %91

85:                                               ; preds = %69
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %89

87:                                               ; preds = %69, %79, %48
  %88 = phi i1 [ %49, %48 ], [ false, %79 ], [ false, %69 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret i1 %88

89:                                               ; preds = %85, %83, %81, %76, %33
  %90 = phi { ptr, i32 } [ %82, %81 ], [ %51, %76 ], [ %34, %33 ], [ %84, %83 ], [ %86, %85 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %90

91:                                               ; preds = %83
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #17
  unreachable

94:                                               ; preds = %74
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %11 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  %12 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  switch i32 %1, label %713 [
    i32 1, label %13
    i32 14, label %81
    i32 15, label %116
    i32 16, label %123
    i32 17, label %127
    i32 18, label %199
    i32 0, label %233
    i32 19, label %257
    i32 20, label %289
    i32 21, label %289
    i32 22, label %433
    i32 23, label %475
    i32 24, label %548
    i32 25, label %590
    i32 26, label %590
    i32 27, label %590
    i32 29, label %590
    i32 30, label %632
    i32 28, label %632
  ]

13:                                               ; preds = %5
  %14 = icmp eq ptr %0, null
  br i1 %14, label %36, label %15

15:                                               ; preds = %13
  %16 = load i16, ptr %0, align 2, !tbaa !69
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %15, %18
  %19 = phi ptr [ %20, %18 ], [ %0, %15 ]
  %20 = getelementptr inbounds i16, ptr %19, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !69
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %18, !llvm.loop !71

23:                                               ; preds = %18
  %24 = ptrtoint ptr %20 to i64
  %25 = ptrtoint ptr %0 to i64
  %26 = sub i64 %24, %25
  %27 = add i64 %26, 2
  %28 = and i64 %27, 8589934590
  br label %29

29:                                               ; preds = %23, %15
  %30 = phi i64 [ %28, %23 ], [ 2, %15 ]
  %31 = load ptr, ptr %4, align 8, !tbaa !49
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %30)
          to label %35 unwind label %66

35:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %34, ptr nonnull align 2 %0, i64 %30, i1 false)
  br label %36

36:                                               ; preds = %35, %13
  %37 = phi ptr [ %34, %35 ], [ null, %13 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  store ptr %37, ptr %7, align 8, !tbaa !76
  %38 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %4, ptr %38, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %37)
          to label %39 unwind label %68

39:                                               ; preds = %36
  %40 = load i32, ptr @_ZN11xercesc_2_76XMLUni28fgBooleanValueSpaceArraySizeE, align 4, !tbaa !79
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %77, label %42

42:                                               ; preds = %39
  %43 = icmp eq ptr %37, null
  %44 = zext i32 %40 to i64
  br label %45

45:                                               ; preds = %42, %70
  %46 = phi i64 [ 0, %42 ], [ %71, %70 ]
  %47 = getelementptr inbounds [0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 %46
  br i1 %43, label %52, label %48

48:                                               ; preds = %45
  %49 = load i16, ptr %37, align 2, !tbaa !69
  %50 = load i16, ptr %47, align 2, !tbaa !69
  %51 = icmp eq i16 %49, %50
  br i1 %51, label %55, label %70

52:                                               ; preds = %45
  %53 = load i16, ptr %47, align 2, !tbaa !69
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %75, label %70

55:                                               ; preds = %48, %60
  %56 = phi i16 [ %63, %60 ], [ %49, %48 ]
  %57 = phi ptr [ %62, %60 ], [ %47, %48 ]
  %58 = phi ptr [ %61, %60 ], [ %37, %48 ]
  %59 = icmp eq i16 %56, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i16, ptr %58, i64 1
  %62 = getelementptr inbounds i16, ptr %57, i64 1
  %63 = load i16, ptr %61, align 2, !tbaa !69
  %64 = load i16, ptr %62, align 2, !tbaa !69
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %55, label %70, !llvm.loop !83

66:                                               ; preds = %29
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %705

68:                                               ; preds = %36
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %705

70:                                               ; preds = %60, %48, %52
  %71 = add nuw nsw i64 %46, 1
  %72 = icmp eq i64 %71, %44
  br i1 %72, label %77, label %45, !llvm.loop !84

73:                                               ; preds = %55
  %74 = trunc i64 %46 to i32
  br label %77

75:                                               ; preds = %52
  %76 = trunc i64 %46 to i32
  br label %77

77:                                               ; preds = %75, %70, %73, %39
  %78 = phi i32 [ 0, %39 ], [ %74, %73 ], [ %76, %75 ], [ %40, %70 ]
  %79 = icmp ne i32 %40, %78
  %80 = zext i1 %79 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %716

81:                                               ; preds = %5
  %82 = icmp eq ptr %0, null
  br i1 %82, label %104, label %83

83:                                               ; preds = %81
  %84 = load i16, ptr %0, align 2, !tbaa !69
  %85 = icmp eq i16 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %83, %86
  %87 = phi ptr [ %88, %86 ], [ %0, %83 ]
  %88 = getelementptr inbounds i16, ptr %87, i64 1
  %89 = load i16, ptr %88, align 2, !tbaa !69
  %90 = icmp eq i16 %89, 0
  br i1 %90, label %91, label %86, !llvm.loop !71

91:                                               ; preds = %86
  %92 = ptrtoint ptr %88 to i64
  %93 = ptrtoint ptr %0 to i64
  %94 = sub i64 %92, %93
  %95 = add i64 %94, 2
  %96 = and i64 %95, 8589934590
  br label %97

97:                                               ; preds = %91, %83
  %98 = phi i64 [ %96, %91 ], [ 2, %83 ]
  %99 = load ptr, ptr %4, align 8, !tbaa !49
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %98)
          to label %103 unwind label %112

103:                                              ; preds = %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %102, ptr nonnull align 2 %0, i64 %98, i1 false)
  br label %104

104:                                              ; preds = %103, %81
  %105 = phi ptr [ %102, %103 ], [ null, %81 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  store ptr %105, ptr %8, align 8, !tbaa !76
  %106 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %8, i64 0, i32 1
  store ptr %4, ptr %106, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %105)
          to label %107 unwind label %114

107:                                              ; preds = %104
  %108 = invoke noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef %105)
          to label %109 unwind label %114

109:                                              ; preds = %107
  %110 = icmp ne i32 %108, -1
  %111 = zext i1 %110 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %716

112:                                              ; preds = %97
  %113 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %705

114:                                              ; preds = %107, %104
  %115 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %705

116:                                              ; preds = %5
  %117 = invoke noundef i32 @_ZN11xercesc_2_76Base6413getDataLengthEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %4, i32 noundef 0)
          to label %118 unwind label %121

118:                                              ; preds = %116
  %119 = icmp ne i32 %117, -1
  %120 = zext i1 %119 to i8
  br label %716

121:                                              ; preds = %626, %608, %584, %566, %469, %451, %123, %116
  %122 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %705

123:                                              ; preds = %5
  %124 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt(i1 noundef zeroext true, ptr noundef %0)
          to label %125 unwind label %121

125:                                              ; preds = %123
  %126 = zext i1 %124 to i8
  br label %716

127:                                              ; preds = %5
  %128 = icmp eq ptr %0, null
  br i1 %128, label %150, label %129

129:                                              ; preds = %127
  %130 = load i16, ptr %0, align 2, !tbaa !69
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %129, %132
  %133 = phi ptr [ %134, %132 ], [ %0, %129 ]
  %134 = getelementptr inbounds i16, ptr %133, i64 1
  %135 = load i16, ptr %134, align 2, !tbaa !69
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %132, !llvm.loop !71

137:                                              ; preds = %132
  %138 = ptrtoint ptr %134 to i64
  %139 = ptrtoint ptr %0 to i64
  %140 = sub i64 %138, %139
  %141 = add i64 %140, 2
  %142 = and i64 %141, 8589934590
  br label %143

143:                                              ; preds = %137, %129
  %144 = phi i64 [ %142, %137 ], [ 2, %129 ]
  %145 = load ptr, ptr %4, align 8, !tbaa !49
  %146 = getelementptr inbounds ptr, ptr %145, i64 2
  %147 = load ptr, ptr %146, align 8
  %148 = invoke noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %144)
          to label %149 unwind label %195

149:                                              ; preds = %143
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %148, ptr nonnull align 2 %0, i64 %144, i1 false)
  br label %150

150:                                              ; preds = %149, %127
  %151 = phi ptr [ %148, %149 ], [ null, %127 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  store ptr %151, ptr %9, align 8, !tbaa !76
  %152 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %9, i64 0, i32 1
  store ptr %4, ptr %152, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %151)
          to label %153 unwind label %197

153:                                              ; preds = %150
  %154 = icmp eq i32 %3, 0
  %155 = icmp eq ptr %151, null
  br i1 %154, label %156, label %174

156:                                              ; preds = %153
  br i1 %155, label %171, label %157

157:                                              ; preds = %156
  %158 = load i16, ptr %151, align 2, !tbaa !69
  %159 = icmp eq i16 %158, 0
  br i1 %159, label %171, label %160

160:                                              ; preds = %157, %160
  %161 = phi ptr [ %162, %160 ], [ %151, %157 ]
  %162 = getelementptr inbounds i16, ptr %161, i64 1
  %163 = load i16, ptr %162, align 2, !tbaa !69
  %164 = icmp eq i16 %163, 0
  br i1 %164, label %165, label %160, !llvm.loop !71

165:                                              ; preds = %160
  %166 = ptrtoint ptr %162 to i64
  %167 = ptrtoint ptr %151 to i64
  %168 = sub i64 %166, %167
  %169 = lshr exact i64 %168, 1
  %170 = trunc i64 %169 to i32
  br label %171

171:                                              ; preds = %156, %157, %165
  %172 = phi i32 [ %170, %165 ], [ 0, %157 ], [ 0, %156 ]
  %173 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isValidQNameEPKtj(ptr noundef %151, i32 noundef %172)
          to label %192 unwind label %197

174:                                              ; preds = %153
  br i1 %155, label %189, label %175

175:                                              ; preds = %174
  %176 = load i16, ptr %151, align 2, !tbaa !69
  %177 = icmp eq i16 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175, %178
  %179 = phi ptr [ %180, %178 ], [ %151, %175 ]
  %180 = getelementptr inbounds i16, ptr %179, i64 1
  %181 = load i16, ptr %180, align 2, !tbaa !69
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %178, !llvm.loop !71

183:                                              ; preds = %178
  %184 = ptrtoint ptr %180 to i64
  %185 = ptrtoint ptr %151 to i64
  %186 = sub i64 %184, %185
  %187 = lshr exact i64 %186, 1
  %188 = trunc i64 %187 to i32
  br label %189

189:                                              ; preds = %174, %175, %183
  %190 = phi i32 [ %188, %183 ], [ 0, %175 ], [ 0, %174 ]
  %191 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isValidQNameEPKtj(ptr noundef %151, i32 noundef %190)
          to label %192 unwind label %197

192:                                              ; preds = %171, %189
  %193 = phi i1 [ %191, %189 ], [ %173, %171 ]
  %194 = zext i1 %193 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %716

195:                                              ; preds = %143
  %196 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %705

197:                                              ; preds = %189, %171, %150
  %198 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %705

199:                                              ; preds = %5
  %200 = icmp eq ptr %0, null
  br i1 %200, label %222, label %201

201:                                              ; preds = %199
  %202 = load i16, ptr %0, align 2, !tbaa !69
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %201, %204
  %205 = phi ptr [ %206, %204 ], [ %0, %201 ]
  %206 = getelementptr inbounds i16, ptr %205, i64 1
  %207 = load i16, ptr %206, align 2, !tbaa !69
  %208 = icmp eq i16 %207, 0
  br i1 %208, label %209, label %204, !llvm.loop !71

209:                                              ; preds = %204
  %210 = ptrtoint ptr %206 to i64
  %211 = ptrtoint ptr %0 to i64
  %212 = sub i64 %210, %211
  %213 = add i64 %212, 2
  %214 = and i64 %213, 8589934590
  br label %215

215:                                              ; preds = %209, %201
  %216 = phi i64 [ %214, %209 ], [ 2, %201 ]
  %217 = load ptr, ptr %4, align 8, !tbaa !49
  %218 = getelementptr inbounds ptr, ptr %217, i64 2
  %219 = load ptr, ptr %218, align 8
  %220 = invoke noundef ptr %219(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %216)
          to label %221 unwind label %229

221:                                              ; preds = %215
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %220, ptr nonnull align 2 %0, i64 %216, i1 false)
  br label %222

222:                                              ; preds = %221, %199
  %223 = phi ptr [ %220, %221 ], [ null, %199 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  store ptr %223, ptr %10, align 8, !tbaa !76
  %224 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %10, i64 0, i32 1
  store ptr %4, ptr %224, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %223)
          to label %225 unwind label %231

225:                                              ; preds = %222
  %226 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString15isValidNOTATIONEPKtPNS_13MemoryManagerE(ptr noundef %223, ptr noundef %4)
          to label %227 unwind label %231

227:                                              ; preds = %225
  %228 = zext i1 %226 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %716

229:                                              ; preds = %215
  %230 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %705

231:                                              ; preds = %225, %222
  %232 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %705

233:                                              ; preds = %5
  %234 = icmp eq i32 %3, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %233, %239
  %236 = phi ptr [ %240, %239 ], [ %0, %233 ]
  %237 = load i16, ptr %236, align 2, !tbaa !69
  %238 = icmp eq i16 %237, 0
  br i1 %238, label %716, label %239

239:                                              ; preds = %235
  %240 = getelementptr inbounds i16, ptr %236, i64 1
  %241 = zext i16 %237 to i64
  %242 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !68
  %244 = and i8 %243, 64
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %716, label %235, !llvm.loop !85

246:                                              ; preds = %233, %250
  %247 = phi ptr [ %251, %250 ], [ %0, %233 ]
  %248 = load i16, ptr %247, align 2, !tbaa !69
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %716, label %250

250:                                              ; preds = %246
  %251 = getelementptr inbounds i16, ptr %247, i64 1
  %252 = zext i16 %248 to i64
  %253 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !68
  %255 = and i8 %254, 64
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %716, label %246, !llvm.loop !86

257:                                              ; preds = %5
  %258 = icmp eq i32 %3, 0
  %259 = load i16, ptr %0, align 2, !tbaa !69
  %260 = icmp eq i16 %259, 0
  br i1 %258, label %262, label %261

261:                                              ; preds = %257
  br i1 %260, label %716, label %276

262:                                              ; preds = %257
  br i1 %260, label %716, label %263

263:                                              ; preds = %262, %272
  %264 = phi i16 [ %274, %272 ], [ %259, %262 ]
  %265 = phi ptr [ %273, %272 ], [ %0, %262 ]
  %266 = zext i16 %264 to i64
  %267 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !68
  %269 = and i8 %268, 64
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %716, label %271

271:                                              ; preds = %263
  switch i16 %264, label %272 [
    i16 13, label %716
    i16 10, label %716
    i16 9, label %716
  ]

272:                                              ; preds = %271
  %273 = getelementptr inbounds i16, ptr %265, i64 1
  %274 = load i16, ptr %273, align 2, !tbaa !69
  %275 = icmp eq i16 %274, 0
  br i1 %275, label %716, label %263, !llvm.loop !87

276:                                              ; preds = %261, %285
  %277 = phi i16 [ %287, %285 ], [ %259, %261 ]
  %278 = phi ptr [ %286, %285 ], [ %0, %261 ]
  %279 = zext i16 %277 to i64
  %280 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %279
  %281 = load i8, ptr %280, align 1, !tbaa !68
  %282 = and i8 %281, 64
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %716, label %284

284:                                              ; preds = %276
  switch i16 %277, label %285 [
    i16 13, label %716
    i16 10, label %716
    i16 9, label %716
  ]

285:                                              ; preds = %284
  %286 = getelementptr inbounds i16, ptr %278, i64 1
  %287 = load i16, ptr %286, align 2, !tbaa !69
  %288 = icmp eq i16 %287, 0
  br i1 %288, label %716, label %276, !llvm.loop !88

289:                                              ; preds = %5, %5
  %290 = icmp eq ptr %0, null
  br i1 %290, label %305, label %291

291:                                              ; preds = %289
  %292 = load i16, ptr %0, align 2, !tbaa !69
  %293 = icmp eq i16 %292, 0
  br i1 %293, label %305, label %294

294:                                              ; preds = %291, %294
  %295 = phi ptr [ %296, %294 ], [ %0, %291 ]
  %296 = getelementptr inbounds i16, ptr %295, i64 1
  %297 = load i16, ptr %296, align 2, !tbaa !69
  %298 = icmp eq i16 %297, 0
  br i1 %298, label %299, label %294, !llvm.loop !71

299:                                              ; preds = %294
  %300 = ptrtoint ptr %296 to i64
  %301 = ptrtoint ptr %0 to i64
  %302 = sub i64 %300, %301
  %303 = lshr exact i64 %302, 1
  %304 = trunc i64 %303 to i32
  br label %305

305:                                              ; preds = %289, %291, %299
  %306 = phi i32 [ %304, %299 ], [ 0, %291 ], [ 0, %289 ]
  %307 = icmp eq i32 %3, 0
  %308 = load i16, ptr %0, align 2, !tbaa !69
  %309 = zext i16 %308 to i64
  br i1 %307, label %310, label %343

310:                                              ; preds = %305
  %311 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %309
  %312 = load i8, ptr %311, align 1, !tbaa !68
  %313 = icmp slt i8 %312, 0
  br i1 %313, label %376, label %314

314:                                              ; preds = %310
  %315 = add i32 %306, -1
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i16, ptr %0, i64 %316
  %318 = load i16, ptr %317, align 2, !tbaa !69
  %319 = zext i16 %318 to i64
  %320 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %319
  %321 = load i8, ptr %320, align 1, !tbaa !68
  %322 = icmp slt i8 %321, 0
  br i1 %322, label %376, label %323

323:                                              ; preds = %314
  %324 = load i16, ptr %0, align 2, !tbaa !69
  %325 = icmp eq i16 %324, 0
  br i1 %325, label %376, label %330

326:                                              ; preds = %340
  %327 = getelementptr inbounds i16, ptr %333, i64 1
  %328 = load i16, ptr %327, align 2, !tbaa !69
  %329 = icmp eq i16 %328, 0
  br i1 %329, label %376, label %330, !llvm.loop !89

330:                                              ; preds = %323, %326
  %331 = phi i16 [ %328, %326 ], [ %324, %323 ]
  %332 = phi i1 [ %341, %326 ], [ false, %323 ]
  %333 = phi ptr [ %327, %326 ], [ %0, %323 ]
  %334 = zext i16 %331 to i64
  %335 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %334
  %336 = load i8, ptr %335, align 1, !tbaa !68
  %337 = and i8 %336, 64
  %338 = icmp eq i8 %337, 0
  br i1 %338, label %376, label %339

339:                                              ; preds = %330
  switch i16 %331, label %340 [
    i16 13, label %376
    i16 10, label %376
    i16 9, label %376
  ]

340:                                              ; preds = %339
  %341 = icmp slt i8 %336, 0
  %342 = and i1 %332, %341
  br i1 %342, label %376, label %326

343:                                              ; preds = %305
  %344 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %309
  %345 = load i8, ptr %344, align 1, !tbaa !68
  %346 = icmp slt i8 %345, 0
  br i1 %346, label %376, label %347

347:                                              ; preds = %343
  %348 = add i32 %306, -1
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i16, ptr %0, i64 %349
  %351 = load i16, ptr %350, align 2, !tbaa !69
  %352 = zext i16 %351 to i64
  %353 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %352
  %354 = load i8, ptr %353, align 1, !tbaa !68
  %355 = icmp slt i8 %354, 0
  br i1 %355, label %376, label %356

356:                                              ; preds = %347
  %357 = load i16, ptr %0, align 2, !tbaa !69
  %358 = icmp eq i16 %357, 0
  br i1 %358, label %376, label %363

359:                                              ; preds = %373
  %360 = getelementptr inbounds i16, ptr %366, i64 1
  %361 = load i16, ptr %360, align 2, !tbaa !69
  %362 = icmp eq i16 %361, 0
  br i1 %362, label %376, label %363, !llvm.loop !90

363:                                              ; preds = %356, %359
  %364 = phi i16 [ %361, %359 ], [ %357, %356 ]
  %365 = phi i1 [ %374, %359 ], [ false, %356 ]
  %366 = phi ptr [ %360, %359 ], [ %0, %356 ]
  %367 = zext i16 %364 to i64
  %368 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %367
  %369 = load i8, ptr %368, align 1, !tbaa !68
  %370 = and i8 %369, 64
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %363
  switch i16 %364, label %373 [
    i16 13, label %376
    i16 10, label %376
    i16 9, label %376
  ]

373:                                              ; preds = %372
  %374 = icmp slt i8 %369, 0
  %375 = and i1 %365, %374
  br i1 %375, label %376, label %359

376:                                              ; preds = %363, %373, %359, %372, %372, %372, %330, %340, %326, %339, %339, %339, %356, %323, %343, %347, %310, %314
  %377 = phi i1 [ false, %314 ], [ false, %310 ], [ false, %347 ], [ false, %343 ], [ true, %323 ], [ true, %356 ], [ false, %339 ], [ false, %339 ], [ false, %339 ], [ true, %326 ], [ false, %340 ], [ false, %330 ], [ false, %372 ], [ false, %372 ], [ false, %372 ], [ true, %359 ], [ false, %373 ], [ false, %363 ]
  %378 = phi i8 [ 0, %314 ], [ 0, %310 ], [ 0, %347 ], [ 0, %343 ], [ 1, %323 ], [ 1, %356 ], [ 0, %339 ], [ 0, %339 ], [ 0, %339 ], [ 1, %326 ], [ 0, %340 ], [ 0, %330 ], [ 0, %372 ], [ 0, %372 ], [ 0, %372 ], [ 1, %359 ], [ 0, %373 ], [ 0, %363 ]
  %379 = icmp eq i32 %1, 21
  %380 = and i1 %379, %377
  br i1 %380, label %381, label %716

381:                                              ; preds = %376
  %382 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %416

384:                                              ; preds = %381
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %385 = invoke fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gXSValueMutexEv()
          to label %386 unwind label %427

386:                                              ; preds = %384
  invoke void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %385)
          to label %387 unwind label %427

387:                                              ; preds = %386
  %388 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %413

390:                                              ; preds = %387
  %391 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  %392 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %391)
          to label %393 unwind label %396

393:                                              ; preds = %390
  %394 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %392, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgLangPatternE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %394)
          to label %395 unwind label %398

395:                                              ; preds = %393
  store ptr %392, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue11reinitRegExEv)
          to label %413 unwind label %409

396:                                              ; preds = %390
  %397 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %400

398:                                              ; preds = %393
  %399 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %392, ptr noundef %391) #15
  br label %400

400:                                              ; preds = %398, %396
  %401 = phi { ptr, i32 } [ %399, %398 ], [ %397, %396 ]
  %402 = extractvalue { ptr, i32 } %401, 1
  %403 = extractvalue { ptr, i32 } %401, 0
  %404 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %405 = icmp eq i32 %402, %404
  %406 = call ptr @__cxa_begin_catch(ptr %403) #15
  br i1 %405, label %407, label %408

407:                                              ; preds = %400
  invoke void @__cxa_rethrow() #16
          to label %421 unwind label %411

408:                                              ; preds = %400
  invoke void @__cxa_end_catch()
          to label %422 unwind label %409

409:                                              ; preds = %408, %395
  %410 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %414

411:                                              ; preds = %407
  %412 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  invoke void @__cxa_end_catch()
          to label %414 unwind label %418

413:                                              ; preds = %395, %387
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %416

414:                                              ; preds = %411, %409
  %415 = phi { ptr, i32 } [ %410, %409 ], [ %412, %411 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %705

416:                                              ; preds = %413, %381
  %417 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !38
  br label %423

418:                                              ; preds = %411
  %419 = landingpad { ptr, i32 }
          catch ptr null
  %420 = extractvalue { ptr, i32 } %419, 0
  call void @__clang_call_terminate(ptr %420) #17
  unreachable

421:                                              ; preds = %407
  unreachable

422:                                              ; preds = %408
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %423

423:                                              ; preds = %416, %422
  %424 = phi ptr [ %417, %416 ], [ null, %422 ]
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %429

426:                                              ; preds = %423
  store i32 5, ptr %2, align 4, !tbaa !72
  br label %716

427:                                              ; preds = %386, %384, %429
  %428 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %705

429:                                              ; preds = %423
  %430 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %424, ptr noundef %0, ptr noundef %4)
          to label %431 unwind label %427

431:                                              ; preds = %429
  %432 = select i1 %430, i8 %378, i8 0
  br label %716

433:                                              ; preds = %5
  %434 = icmp eq i32 %3, 0
  %435 = icmp eq ptr %0, null
  br i1 %434, label %436, label %454

436:                                              ; preds = %433
  br i1 %435, label %451, label %437

437:                                              ; preds = %436
  %438 = load i16, ptr %0, align 2, !tbaa !69
  %439 = icmp eq i16 %438, 0
  br i1 %439, label %451, label %440

440:                                              ; preds = %437, %440
  %441 = phi ptr [ %442, %440 ], [ %0, %437 ]
  %442 = getelementptr inbounds i16, ptr %441, i64 1
  %443 = load i16, ptr %442, align 2, !tbaa !69
  %444 = icmp eq i16 %443, 0
  br i1 %444, label %445, label %440, !llvm.loop !71

445:                                              ; preds = %440
  %446 = ptrtoint ptr %442 to i64
  %447 = ptrtoint ptr %0 to i64
  %448 = sub i64 %446, %447
  %449 = lshr exact i64 %448, 1
  %450 = trunc i64 %449 to i32
  br label %451

451:                                              ; preds = %436, %437, %445
  %452 = phi i32 [ %450, %445 ], [ 0, %437 ], [ 0, %436 ]
  %453 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isValidNmtokenEPKtj(ptr noundef %0, i32 noundef %452)
          to label %472 unwind label %121

454:                                              ; preds = %433
  br i1 %435, label %469, label %455

455:                                              ; preds = %454
  %456 = load i16, ptr %0, align 2, !tbaa !69
  %457 = icmp eq i16 %456, 0
  br i1 %457, label %469, label %458

458:                                              ; preds = %455, %458
  %459 = phi ptr [ %460, %458 ], [ %0, %455 ]
  %460 = getelementptr inbounds i16, ptr %459, i64 1
  %461 = load i16, ptr %460, align 2, !tbaa !69
  %462 = icmp eq i16 %461, 0
  br i1 %462, label %463, label %458, !llvm.loop !71

463:                                              ; preds = %458
  %464 = ptrtoint ptr %460 to i64
  %465 = ptrtoint ptr %0 to i64
  %466 = sub i64 %464, %465
  %467 = lshr exact i64 %466, 1
  %468 = trunc i64 %467 to i32
  br label %469

469:                                              ; preds = %454, %455, %463
  %470 = phi i32 [ %468, %463 ], [ 0, %455 ], [ 0, %454 ]
  %471 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isValidNmtokenEPKtj(ptr noundef %0, i32 noundef %470)
          to label %472 unwind label %121

472:                                              ; preds = %451, %469
  %473 = phi i1 [ %471, %469 ], [ %453, %451 ]
  %474 = zext i1 %473 to i8
  br label %716

475:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #15
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L12Separator_20E, ptr noundef %4)
          to label %476 unwind label %505

476:                                              ; preds = %475
  %477 = icmp eq i32 %3, 0
  br i1 %477, label %478, label %513

478:                                              ; preds = %476, %503
  %479 = phi i8 [ %504, %503 ], [ 1, %476 ]
  %480 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %481 unwind label %507

481:                                              ; preds = %478
  br i1 %480, label %482, label %542

482:                                              ; preds = %481
  %483 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %484 unwind label %511

484:                                              ; preds = %482
  %485 = icmp eq ptr %483, null
  br i1 %485, label %500, label %486

486:                                              ; preds = %484
  %487 = load i16, ptr %483, align 2, !tbaa !69
  %488 = icmp eq i16 %487, 0
  br i1 %488, label %500, label %489

489:                                              ; preds = %486, %489
  %490 = phi ptr [ %491, %489 ], [ %483, %486 ]
  %491 = getelementptr inbounds i16, ptr %490, i64 1
  %492 = load i16, ptr %491, align 2, !tbaa !69
  %493 = icmp eq i16 %492, 0
  br i1 %493, label %494, label %489, !llvm.loop !71

494:                                              ; preds = %489
  %495 = ptrtoint ptr %491 to i64
  %496 = ptrtoint ptr %483 to i64
  %497 = sub i64 %495, %496
  %498 = lshr exact i64 %497, 1
  %499 = trunc i64 %498 to i32
  br label %500

500:                                              ; preds = %484, %486, %494
  %501 = phi i32 [ %499, %494 ], [ 0, %486 ], [ 0, %484 ]
  %502 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isValidNmtokenEPKtj(ptr noundef %483, i32 noundef %501)
          to label %503 unwind label %511

503:                                              ; preds = %500
  %504 = select i1 %502, i8 %479, i8 0
  br i1 %502, label %478, label %542

505:                                              ; preds = %475
  %506 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %546

507:                                              ; preds = %478
  %508 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %544

509:                                              ; preds = %513
  %510 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %544

511:                                              ; preds = %500, %482
  %512 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %544

513:                                              ; preds = %476, %538
  %514 = phi i8 [ %539, %538 ], [ 1, %476 ]
  %515 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %516 unwind label %509

516:                                              ; preds = %513
  br i1 %515, label %517, label %542

517:                                              ; preds = %516
  %518 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %11)
          to label %519 unwind label %540

519:                                              ; preds = %517
  %520 = icmp eq ptr %518, null
  br i1 %520, label %535, label %521

521:                                              ; preds = %519
  %522 = load i16, ptr %518, align 2, !tbaa !69
  %523 = icmp eq i16 %522, 0
  br i1 %523, label %535, label %524

524:                                              ; preds = %521, %524
  %525 = phi ptr [ %526, %524 ], [ %518, %521 ]
  %526 = getelementptr inbounds i16, ptr %525, i64 1
  %527 = load i16, ptr %526, align 2, !tbaa !69
  %528 = icmp eq i16 %527, 0
  br i1 %528, label %529, label %524, !llvm.loop !71

529:                                              ; preds = %524
  %530 = ptrtoint ptr %526 to i64
  %531 = ptrtoint ptr %518 to i64
  %532 = sub i64 %530, %531
  %533 = lshr exact i64 %532, 1
  %534 = trunc i64 %533 to i32
  br label %535

535:                                              ; preds = %519, %521, %529
  %536 = phi i32 [ %534, %529 ], [ 0, %521 ], [ 0, %519 ]
  %537 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isValidNmtokenEPKtj(ptr noundef %518, i32 noundef %536)
          to label %538 unwind label %540

538:                                              ; preds = %535
  %539 = select i1 %537, i8 %514, i8 0
  br i1 %537, label %513, label %542

540:                                              ; preds = %535, %517
  %541 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %544

542:                                              ; preds = %538, %516, %503, %481
  %543 = phi i8 [ %479, %481 ], [ %504, %503 ], [ %539, %538 ], [ %514, %516 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #15
  br label %716

544:                                              ; preds = %507, %509, %540, %511
  %545 = phi { ptr, i32 } [ %512, %511 ], [ %541, %540 ], [ %508, %507 ], [ %510, %509 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #15
  br label %546

546:                                              ; preds = %544, %505
  %547 = phi { ptr, i32 } [ %545, %544 ], [ %506, %505 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #15
  br label %705

548:                                              ; preds = %5
  %549 = icmp eq i32 %3, 0
  %550 = icmp eq ptr %0, null
  br i1 %549, label %551, label %569

551:                                              ; preds = %548
  br i1 %550, label %566, label %552

552:                                              ; preds = %551
  %553 = load i16, ptr %0, align 2, !tbaa !69
  %554 = icmp eq i16 %553, 0
  br i1 %554, label %566, label %555

555:                                              ; preds = %552, %555
  %556 = phi ptr [ %557, %555 ], [ %0, %552 ]
  %557 = getelementptr inbounds i16, ptr %556, i64 1
  %558 = load i16, ptr %557, align 2, !tbaa !69
  %559 = icmp eq i16 %558, 0
  br i1 %559, label %560, label %555, !llvm.loop !71

560:                                              ; preds = %555
  %561 = ptrtoint ptr %557 to i64
  %562 = ptrtoint ptr %0 to i64
  %563 = sub i64 %561, %562
  %564 = lshr exact i64 %563, 1
  %565 = trunc i64 %564 to i32
  br label %566

566:                                              ; preds = %551, %552, %560
  %567 = phi i32 [ %565, %560 ], [ 0, %552 ], [ 0, %551 ]
  %568 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %0, i32 noundef %567)
          to label %587 unwind label %121

569:                                              ; preds = %548
  br i1 %550, label %584, label %570

570:                                              ; preds = %569
  %571 = load i16, ptr %0, align 2, !tbaa !69
  %572 = icmp eq i16 %571, 0
  br i1 %572, label %584, label %573

573:                                              ; preds = %570, %573
  %574 = phi ptr [ %575, %573 ], [ %0, %570 ]
  %575 = getelementptr inbounds i16, ptr %574, i64 1
  %576 = load i16, ptr %575, align 2, !tbaa !69
  %577 = icmp eq i16 %576, 0
  br i1 %577, label %578, label %573, !llvm.loop !71

578:                                              ; preds = %573
  %579 = ptrtoint ptr %575 to i64
  %580 = ptrtoint ptr %0 to i64
  %581 = sub i64 %579, %580
  %582 = lshr exact i64 %581, 1
  %583 = trunc i64 %582 to i32
  br label %584

584:                                              ; preds = %569, %570, %578
  %585 = phi i32 [ %583, %578 ], [ 0, %570 ], [ 0, %569 ]
  %586 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef %0, i32 noundef %585)
          to label %587 unwind label %121

587:                                              ; preds = %566, %584
  %588 = phi i1 [ %586, %584 ], [ %568, %566 ]
  %589 = zext i1 %588 to i8
  br label %716

590:                                              ; preds = %5, %5, %5, %5
  %591 = icmp eq i32 %3, 0
  %592 = icmp eq ptr %0, null
  br i1 %591, label %593, label %611

593:                                              ; preds = %590
  br i1 %592, label %608, label %594

594:                                              ; preds = %593
  %595 = load i16, ptr %0, align 2, !tbaa !69
  %596 = icmp eq i16 %595, 0
  br i1 %596, label %608, label %597

597:                                              ; preds = %594, %597
  %598 = phi ptr [ %599, %597 ], [ %0, %594 ]
  %599 = getelementptr inbounds i16, ptr %598, i64 1
  %600 = load i16, ptr %599, align 2, !tbaa !69
  %601 = icmp eq i16 %600, 0
  br i1 %601, label %602, label %597, !llvm.loop !71

602:                                              ; preds = %597
  %603 = ptrtoint ptr %599 to i64
  %604 = ptrtoint ptr %0 to i64
  %605 = sub i64 %603, %604
  %606 = lshr exact i64 %605, 1
  %607 = trunc i64 %606 to i32
  br label %608

608:                                              ; preds = %593, %594, %602
  %609 = phi i32 [ %607, %602 ], [ 0, %594 ], [ 0, %593 ]
  %610 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_013isValidNCNameEPKtj(ptr noundef %0, i32 noundef %609)
          to label %629 unwind label %121

611:                                              ; preds = %590
  br i1 %592, label %626, label %612

612:                                              ; preds = %611
  %613 = load i16, ptr %0, align 2, !tbaa !69
  %614 = icmp eq i16 %613, 0
  br i1 %614, label %626, label %615

615:                                              ; preds = %612, %615
  %616 = phi ptr [ %617, %615 ], [ %0, %612 ]
  %617 = getelementptr inbounds i16, ptr %616, i64 1
  %618 = load i16, ptr %617, align 2, !tbaa !69
  %619 = icmp eq i16 %618, 0
  br i1 %619, label %620, label %615, !llvm.loop !71

620:                                              ; preds = %615
  %621 = ptrtoint ptr %617 to i64
  %622 = ptrtoint ptr %0 to i64
  %623 = sub i64 %621, %622
  %624 = lshr exact i64 %623, 1
  %625 = trunc i64 %624 to i32
  br label %626

626:                                              ; preds = %611, %612, %620
  %627 = phi i32 [ %625, %620 ], [ 0, %612 ], [ 0, %611 ]
  %628 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isValidNCNameEPKtj(ptr noundef %0, i32 noundef %627)
          to label %629 unwind label %121

629:                                              ; preds = %608, %626
  %630 = phi i1 [ %628, %626 ], [ %610, %608 ]
  %631 = zext i1 %630 to i8
  br label %716

632:                                              ; preds = %5, %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %12) #15
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L12Separator_wsE, ptr noundef %4)
          to label %633 unwind label %662

633:                                              ; preds = %632
  %634 = icmp eq i32 %3, 0
  br i1 %634, label %635, label %670

635:                                              ; preds = %633, %660
  %636 = phi i8 [ %661, %660 ], [ 1, %633 ]
  %637 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %638 unwind label %664

638:                                              ; preds = %635
  br i1 %637, label %639, label %699

639:                                              ; preds = %638
  %640 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %641 unwind label %668

641:                                              ; preds = %639
  %642 = icmp eq ptr %640, null
  br i1 %642, label %657, label %643

643:                                              ; preds = %641
  %644 = load i16, ptr %640, align 2, !tbaa !69
  %645 = icmp eq i16 %644, 0
  br i1 %645, label %657, label %646

646:                                              ; preds = %643, %646
  %647 = phi ptr [ %648, %646 ], [ %640, %643 ]
  %648 = getelementptr inbounds i16, ptr %647, i64 1
  %649 = load i16, ptr %648, align 2, !tbaa !69
  %650 = icmp eq i16 %649, 0
  br i1 %650, label %651, label %646, !llvm.loop !71

651:                                              ; preds = %646
  %652 = ptrtoint ptr %648 to i64
  %653 = ptrtoint ptr %640 to i64
  %654 = sub i64 %652, %653
  %655 = lshr exact i64 %654, 1
  %656 = trunc i64 %655 to i32
  br label %657

657:                                              ; preds = %641, %643, %651
  %658 = phi i32 [ %656, %651 ], [ 0, %643 ], [ 0, %641 ]
  %659 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_013isValidNCNameEPKtj(ptr noundef %640, i32 noundef %658)
          to label %660 unwind label %668

660:                                              ; preds = %657
  %661 = select i1 %659, i8 %636, i8 0
  br i1 %659, label %635, label %699

662:                                              ; preds = %632
  %663 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %703

664:                                              ; preds = %635
  %665 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %701

666:                                              ; preds = %670
  %667 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %701

668:                                              ; preds = %657, %639
  %669 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %701

670:                                              ; preds = %633, %695
  %671 = phi i8 [ %696, %695 ], [ 1, %633 ]
  %672 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %673 unwind label %666

673:                                              ; preds = %670
  br i1 %672, label %674, label %699

674:                                              ; preds = %673
  %675 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %12)
          to label %676 unwind label %697

676:                                              ; preds = %674
  %677 = icmp eq ptr %675, null
  br i1 %677, label %692, label %678

678:                                              ; preds = %676
  %679 = load i16, ptr %675, align 2, !tbaa !69
  %680 = icmp eq i16 %679, 0
  br i1 %680, label %692, label %681

681:                                              ; preds = %678, %681
  %682 = phi ptr [ %683, %681 ], [ %675, %678 ]
  %683 = getelementptr inbounds i16, ptr %682, i64 1
  %684 = load i16, ptr %683, align 2, !tbaa !69
  %685 = icmp eq i16 %684, 0
  br i1 %685, label %686, label %681, !llvm.loop !71

686:                                              ; preds = %681
  %687 = ptrtoint ptr %683 to i64
  %688 = ptrtoint ptr %675 to i64
  %689 = sub i64 %687, %688
  %690 = lshr exact i64 %689, 1
  %691 = trunc i64 %690 to i32
  br label %692

692:                                              ; preds = %676, %678, %686
  %693 = phi i32 [ %691, %686 ], [ 0, %678 ], [ 0, %676 ]
  %694 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isValidNCNameEPKtj(ptr noundef %675, i32 noundef %693)
          to label %695 unwind label %697

695:                                              ; preds = %692
  %696 = select i1 %694, i8 %671, i8 0
  br i1 %694, label %670, label %699

697:                                              ; preds = %692, %674
  %698 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %701

699:                                              ; preds = %695, %673, %660, %638
  %700 = phi i8 [ %636, %638 ], [ %661, %660 ], [ %696, %695 ], [ %671, %673 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #15
  br label %716

701:                                              ; preds = %664, %666, %697, %668
  %702 = phi { ptr, i32 } [ %669, %668 ], [ %698, %697 ], [ %665, %664 ], [ %667, %666 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #15
  br label %703

703:                                              ; preds = %701, %662
  %704 = phi { ptr, i32 } [ %702, %701 ], [ %663, %662 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %12) #15
  br label %705

705:                                              ; preds = %427, %414, %229, %231, %195, %197, %112, %114, %66, %68, %703, %546, %121
  %706 = phi { ptr, i32 } [ %704, %703 ], [ %122, %121 ], [ %547, %546 ], [ %69, %68 ], [ %67, %66 ], [ %115, %114 ], [ %113, %112 ], [ %198, %197 ], [ %196, %195 ], [ %232, %231 ], [ %230, %229 ], [ %428, %427 ], [ %415, %414 ]
  %707 = extractvalue { ptr, i32 } %706, 1
  %708 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %709 = icmp eq i32 %707, %708
  br i1 %709, label %710, label %726

710:                                              ; preds = %705
  %711 = extractvalue { ptr, i32 } %706, 0
  %712 = call ptr @__cxa_begin_catch(ptr %711) #15
  invoke void @__cxa_rethrow() #16
          to label %731 unwind label %714

713:                                              ; preds = %5
  store i32 4, ptr %2, align 4, !tbaa !72
  br label %716

714:                                              ; preds = %710
  %715 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %726 unwind label %728

716:                                              ; preds = %276, %285, %284, %284, %284, %263, %272, %271, %271, %271, %250, %246, %239, %235, %261, %262, %431, %125, %118, %376, %426, %77, %109, %192, %227, %472, %542, %587, %629, %699, %713
  %717 = phi i8 [ 0, %713 ], [ %700, %699 ], [ %631, %629 ], [ %589, %587 ], [ %543, %542 ], [ %474, %472 ], [ %228, %227 ], [ %194, %192 ], [ %111, %109 ], [ %80, %77 ], [ %120, %118 ], [ %126, %125 ], [ %378, %376 ], [ 0, %426 ], [ %432, %431 ], [ 1, %262 ], [ 1, %261 ], [ 1, %235 ], [ 0, %239 ], [ 1, %246 ], [ 0, %250 ], [ 0, %271 ], [ 0, %271 ], [ 0, %271 ], [ 1, %272 ], [ 0, %263 ], [ 0, %284 ], [ 0, %284 ], [ 0, %284 ], [ 1, %285 ], [ 0, %276 ]
  %718 = and i8 %717, 1
  %719 = icmp eq i8 %718, 0
  %720 = load i32, ptr %2, align 4
  %721 = icmp eq i32 %720, 0
  %722 = select i1 %719, i1 %721, i1 false
  br i1 %722, label %723, label %724

723:                                              ; preds = %716
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %724

724:                                              ; preds = %723, %716
  %725 = icmp ne i8 %718, 0
  ret i1 %725

726:                                              ; preds = %714, %705
  %727 = phi { ptr, i32 } [ %706, %705 ], [ %715, %714 ]
  resume { ptr, i32 } %727

728:                                              ; preds = %714
  %729 = landingpad { ptr, i32 }
          catch ptr null
  %730 = extractvalue { ptr, i32 } %729, 0
  call void @__clang_call_terminate(ptr %730) #17
  unreachable

731:                                              ; preds = %710
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue26getCanonicalRepresentationEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 align 2 !prof !37 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %0, align 2, !tbaa !69
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  switch i32 %3, label %44 [
    i32 0, label %12
    i32 1, label %26
  ]

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %14, %12 ], [ %0, %11 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !69
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !71

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %22)
  br i1 %23, label %43, label %24

24:                                               ; preds = %17
  %25 = icmp eq i32 %3, 1
  br i1 %25, label %26, label %44

26:                                               ; preds = %24, %11
  %27 = load i16, ptr %0, align 2, !tbaa !69
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %31, %29 ], [ %0, %26 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !69
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %29, !llvm.loop !71

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %0 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 1
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %26, %34
  %41 = phi i32 [ %39, %34 ], [ 0, %26 ]
  %42 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %41)
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %17, %8, %6
  store i32 1, ptr %2, align 4, !tbaa !72
  br label %55

44:                                               ; preds = %24, %11, %40
  store i32 0, ptr %2, align 4, !tbaa !72
  %45 = zext i32 %1 to i64
  %46 = getelementptr inbounds [44 x i32], ptr @_ZN11xercesc_2_77XSValue7inGroupE, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !74
  switch i32 %47, label %54 [
    i32 0, label %48
    i32 1, label %50
    i32 2, label %52
  ]

48:                                               ; preds = %44
  %49 = tail call noundef ptr @_ZN11xercesc_2_77XSValue17getCanRepNumericsEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %4, ptr noundef %5)
  br label %55

50:                                               ; preds = %44
  %51 = tail call noundef ptr @_ZN11xercesc_2_77XSValue18getCanRepDateTimesEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %4, ptr noundef %5)
  br label %55

52:                                               ; preds = %44
  %53 = tail call noundef ptr @_ZN11xercesc_2_77XSValue16getCanRepStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  br label %55

54:                                               ; preds = %44
  store i32 10, ptr %2, align 4, !tbaa !72
  br label %55

55:                                               ; preds = %54, %52, %50, %48, %43
  %56 = phi ptr [ null, %43 ], [ null, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  ret ptr %56
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue17getCanRepNumericsEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  br i1 %3, label %6, label %11

6:                                                ; preds = %5
  %7 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue16validateNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4)
          to label %8 unwind label %9

8:                                                ; preds = %6
  br i1 %7, label %11, label %49

9:                                                ; preds = %6
  %10 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %20

11:                                               ; preds = %8, %5
  %12 = icmp eq i32 %1, 2
  br i1 %12, label %13, label %33

13:                                               ; preds = %11
  %14 = invoke noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4)
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %15
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %49

18:                                               ; preds = %41, %36, %13
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %20

20:                                               ; preds = %18, %9
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %10, %9 ]
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call ptr @__cxa_begin_catch(ptr %22) #15
  invoke void @__cxa_rethrow() #16
          to label %56 unwind label %47

28:                                               ; preds = %20
  %29 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %30 = icmp eq i32 %23, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = tail call ptr @__cxa_begin_catch(ptr %22) #15
  store i32 6, ptr %2, align 4, !tbaa !72
  tail call void @__cxa_end_catch()
  br label %49

33:                                               ; preds = %11
  %34 = add i32 %1, -3
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = invoke noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4)
          to label %38 unwind label %18

38:                                               ; preds = %36
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %49

41:                                               ; preds = %33
  %42 = icmp eq i32 %1, 32
  %43 = invoke noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef %0, ptr noundef %4, i1 noundef zeroext %42)
          to label %44 unwind label %18

44:                                               ; preds = %41
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %49

47:                                               ; preds = %26
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %53

49:                                               ; preds = %17, %15, %40, %38, %46, %44, %8, %31
  %50 = phi ptr [ null, %31 ], [ null, %8 ], [ %14, %17 ], [ %14, %15 ], [ %37, %40 ], [ %37, %38 ], [ %43, %46 ], [ %43, %44 ]
  ret ptr %50

51:                                               ; preds = %47, %28
  %52 = phi { ptr, i32 } [ %21, %28 ], [ %48, %47 ]
  resume { ptr, i32 } %52

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #17
  unreachable

56:                                               ; preds = %26
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue18getCanRepDateTimesEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %8 = icmp eq ptr %0, null
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = load i16, ptr %0, align 2, !tbaa !69
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %0, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !69
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !71

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 2
  %22 = and i64 %21, 8589934590
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ 2, %9 ]
  %25 = load ptr, ptr %4, align 8, !tbaa !49
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %24)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr nonnull align 2 %0, i64 %24, i1 false)
  br label %29

29:                                               ; preds = %5, %23
  %30 = phi ptr [ %28, %23 ], [ null, %5 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  store ptr %30, ptr %6, align 8, !tbaa !76
  %31 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %4, ptr %31, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %30)
          to label %32 unwind label %34

32:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %30, ptr noundef %4)
          to label %33 unwind label %36

33:                                               ; preds = %32
  switch i32 %1, label %54 [
    i32 6, label %38
    i32 7, label %43
    i32 8, label %46
    i32 5, label %49
    i32 9, label %49
    i32 10, label %49
    i32 11, label %49
    i32 12, label %49
    i32 13, label %49
  ]

34:                                               ; preds = %29
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %95

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %56

38:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %39 unwind label %41

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime34getDateTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %4)
          to label %54 unwind label %41

41:                                               ; preds = %50, %47, %46, %44, %43, %39, %38
  %42 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #15
  br label %56

43:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %44 unwind label %41

44:                                               ; preds = %43
  %45 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %4)
          to label %54 unwind label %41

46:                                               ; preds = %33
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %7)
          to label %47 unwind label %41

47:                                               ; preds = %46
  %48 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getDateCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %4)
          to label %54 unwind label %41

49:                                               ; preds = %33, %33, %33, %33, %33, %33
  br i1 %3, label %50, label %53

50:                                               ; preds = %49
  %51 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue17validateDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %30, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4)
          to label %52 unwind label %41

52:                                               ; preds = %50
  br i1 %51, label %53, label %54

53:                                               ; preds = %52, %49
  store i32 2, ptr %2, align 4, !tbaa !72
  br label %54

54:                                               ; preds = %47, %39, %33, %52, %53, %44
  %55 = phi ptr [ %45, %44 ], [ null, %53 ], [ null, %52 ], [ null, %33 ], [ %40, %39 ], [ %48, %47 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  br label %93

56:                                               ; preds = %41, %36
  %57 = phi { ptr, i32 } [ %42, %41 ], [ %37, %36 ]
  %58 = extractvalue { ptr, i32 } %57, 0
  %59 = extractvalue { ptr, i32 } %57, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  %60 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE) #15
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = call ptr @__cxa_begin_catch(ptr %58) #15
  %64 = add i32 %1, -6
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %63, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !80
  %69 = add i32 %68, -343
  %70 = icmp ult i32 %69, 10
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = zext nneg i32 %69 to i64
  %73 = getelementptr inbounds [10 x i32], ptr @switch.table._ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4
  br label %75

75:                                               ; preds = %66, %71, %62
  %76 = phi i32 [ 6, %62 ], [ %74, %71 ], [ 6, %66 ]
  store i32 %76, ptr %2, align 4, !tbaa !72
  invoke void @__cxa_end_catch()
          to label %93 unwind label %91

77:                                               ; preds = %56
  %78 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %79 = icmp eq i32 %59, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = call ptr @__cxa_begin_catch(ptr %58) #15
  invoke void @__cxa_rethrow() #16
          to label %100 unwind label %89

82:                                               ; preds = %77
  %83 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %84 = icmp eq i32 %59, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = call ptr @__cxa_begin_catch(ptr %58) #15
  store i32 6, ptr %2, align 4, !tbaa !72
  invoke void @__cxa_end_catch()
          to label %93 unwind label %87

87:                                               ; preds = %85
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %95

89:                                               ; preds = %80
  %90 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %95 unwind label %97

91:                                               ; preds = %75
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %95

93:                                               ; preds = %75, %85, %54
  %94 = phi ptr [ %55, %54 ], [ null, %85 ], [ null, %75 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret ptr %94

95:                                               ; preds = %91, %89, %87, %82, %34
  %96 = phi { ptr, i32 } [ %88, %87 ], [ %57, %82 ], [ %35, %34 ], [ %90, %89 ], [ %92, %91 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %96

97:                                               ; preds = %89
  %98 = landingpad { ptr, i32 }
          catch ptr null
  %99 = extractvalue { ptr, i32 } %98, 0
  call void @__clang_call_terminate(ptr %99) #17
  unreachable

100:                                              ; preds = %80
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue16getCanRepStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  switch i32 %1, label %223 [
    i32 1, label %9
    i32 14, label %157
    i32 15, label %197
    i32 16, label %204
    i32 17, label %204
    i32 18, label %204
    i32 0, label %204
    i32 19, label %204
    i32 20, label %204
    i32 21, label %204
    i32 22, label %204
    i32 23, label %204
    i32 24, label %204
    i32 25, label %204
    i32 26, label %204
    i32 27, label %204
    i32 29, label %204
    i32 30, label %204
    i32 28, label %204
  ]

9:                                                ; preds = %6
  %10 = icmp eq ptr %0, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = load i16, ptr %0, align 2, !tbaa !69
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %11, %14
  %15 = phi ptr [ %16, %14 ], [ %0, %11 ]
  %16 = getelementptr inbounds i16, ptr %15, i64 1
  %17 = load i16, ptr %16, align 2, !tbaa !69
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %14, !llvm.loop !71

19:                                               ; preds = %14
  %20 = ptrtoint ptr %16 to i64
  %21 = ptrtoint ptr %0 to i64
  %22 = sub i64 %20, %21
  %23 = add i64 %22, 2
  %24 = and i64 %23, 8589934590
  br label %25

25:                                               ; preds = %19, %11
  %26 = phi i64 [ %24, %19 ], [ 2, %11 ]
  %27 = load ptr, ptr %5, align 8, !tbaa !49
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %26)
          to label %31 unwind label %93

31:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %30, ptr nonnull align 2 %0, i64 %26, i1 false)
  br label %32

32:                                               ; preds = %31, %9
  %33 = phi ptr [ %30, %31 ], [ null, %9 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  store ptr %33, ptr %7, align 8, !tbaa !76
  %34 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %5, ptr %34, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %33)
          to label %35 unwind label %95

35:                                               ; preds = %32
  %36 = icmp eq ptr %33, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = load i16, ptr %33, align 2, !tbaa !69
  %39 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, align 2, !tbaa !69
  %40 = icmp eq i16 %38, %39
  br i1 %40, label %44, label %55

41:                                               ; preds = %35
  %42 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, align 2, !tbaa !69
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %74, label %55

44:                                               ; preds = %37, %49
  %45 = phi i16 [ %52, %49 ], [ %38, %37 ]
  %46 = phi ptr [ %51, %49 ], [ @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, %37 ]
  %47 = phi ptr [ %50, %49 ], [ %33, %37 ]
  %48 = icmp eq i16 %45, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds i16, ptr %47, i64 1
  %51 = getelementptr inbounds i16, ptr %46, i64 1
  %52 = load i16, ptr %50, align 2, !tbaa !69
  %53 = load i16, ptr %51, align 2, !tbaa !69
  %54 = icmp eq i16 %52, %53
  br i1 %54, label %44, label %55, !llvm.loop !83

55:                                               ; preds = %49, %37, %41
  br i1 %36, label %60, label %56

56:                                               ; preds = %55
  %57 = load i16, ptr %33, align 2, !tbaa !69
  %58 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2), align 2, !tbaa !69
  %59 = icmp eq i16 %57, %58
  br i1 %59, label %63, label %97

60:                                               ; preds = %55
  %61 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2), align 2, !tbaa !69
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %74, label %97

63:                                               ; preds = %56, %68
  %64 = phi i16 [ %71, %68 ], [ %57, %56 ]
  %65 = phi ptr [ %70, %68 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2), %56 ]
  %66 = phi ptr [ %69, %68 ], [ %33, %56 ]
  %67 = icmp eq i16 %64, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds i16, ptr %66, i64 1
  %70 = getelementptr inbounds i16, ptr %65, i64 1
  %71 = load i16, ptr %69, align 2, !tbaa !69
  %72 = load i16, ptr %70, align 2, !tbaa !69
  %73 = icmp eq i16 %71, %72
  br i1 %73, label %63, label %97, !llvm.loop !83

74:                                               ; preds = %44, %63, %60, %41
  %75 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, align 2, !tbaa !69
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %74, %77
  %78 = phi ptr [ %79, %77 ], [ @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, %74 ]
  %79 = getelementptr inbounds i16, ptr %78, i64 1
  %80 = load i16, ptr %79, align 2, !tbaa !69
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %82, label %77, !llvm.loop !71

82:                                               ; preds = %77
  %83 = ptrtoint ptr %79 to i64
  %84 = add i64 %83, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE to i64)), i64 2)
  %85 = and i64 %84, 8589934590
  br label %86

86:                                               ; preds = %82, %74
  %87 = phi i64 [ %85, %82 ], [ 2, %74 ]
  %88 = load ptr, ptr %5, align 8, !tbaa !49
  %89 = getelementptr inbounds ptr, ptr %88, i64 2
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %87)
          to label %92 unwind label %95

92:                                               ; preds = %86
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %91, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 %87, i1 false)
  br label %155

93:                                               ; preds = %25
  %94 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %210

95:                                               ; preds = %147, %86, %32
  %96 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %210

97:                                               ; preds = %68, %56, %60
  br i1 %36, label %102, label %98

98:                                               ; preds = %97
  %99 = load i16, ptr %33, align 2, !tbaa !69
  %100 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), align 2, !tbaa !69
  %101 = icmp eq i16 %99, %100
  br i1 %101, label %105, label %116

102:                                              ; preds = %97
  %103 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), align 2, !tbaa !69
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %135, label %116

105:                                              ; preds = %98, %110
  %106 = phi i16 [ %113, %110 ], [ %99, %98 ]
  %107 = phi ptr [ %112, %110 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), %98 ]
  %108 = phi ptr [ %111, %110 ], [ %33, %98 ]
  %109 = icmp eq i16 %106, 0
  br i1 %109, label %135, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds i16, ptr %108, i64 1
  %112 = getelementptr inbounds i16, ptr %107, i64 1
  %113 = load i16, ptr %111, align 2, !tbaa !69
  %114 = load i16, ptr %112, align 2, !tbaa !69
  %115 = icmp eq i16 %113, %114
  br i1 %115, label %105, label %116, !llvm.loop !83

116:                                              ; preds = %110, %98, %102
  br i1 %36, label %121, label %117

117:                                              ; preds = %116
  %118 = load i16, ptr %33, align 2, !tbaa !69
  %119 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3), align 2, !tbaa !69
  %120 = icmp eq i16 %118, %119
  br i1 %120, label %124, label %154

121:                                              ; preds = %116
  %122 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3), align 2, !tbaa !69
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %135, label %154

124:                                              ; preds = %117, %129
  %125 = phi i16 [ %132, %129 ], [ %118, %117 ]
  %126 = phi ptr [ %131, %129 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3), %117 ]
  %127 = phi ptr [ %130, %129 ], [ %33, %117 ]
  %128 = icmp eq i16 %125, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = getelementptr inbounds i16, ptr %127, i64 1
  %131 = getelementptr inbounds i16, ptr %126, i64 1
  %132 = load i16, ptr %130, align 2, !tbaa !69
  %133 = load i16, ptr %131, align 2, !tbaa !69
  %134 = icmp eq i16 %132, %133
  br i1 %134, label %124, label %154, !llvm.loop !83

135:                                              ; preds = %105, %124, %121, %102
  %136 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), align 2, !tbaa !69
  %137 = icmp eq i16 %136, 0
  br i1 %137, label %147, label %138

138:                                              ; preds = %135, %138
  %139 = phi ptr [ %140, %138 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), %135 ]
  %140 = getelementptr inbounds i16, ptr %139, i64 1
  %141 = load i16, ptr %140, align 2, !tbaa !69
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %143, label %138, !llvm.loop !71

143:                                              ; preds = %138
  %144 = ptrtoint ptr %140 to i64
  %145 = add i64 %144, add (i64 sub (i64 0, i64 ptrtoint (ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1) to i64)), i64 2)
  %146 = and i64 %145, 8589934590
  br label %147

147:                                              ; preds = %143, %135
  %148 = phi i64 [ %146, %143 ], [ 2, %135 ]
  %149 = load ptr, ptr %5, align 8, !tbaa !49
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %148)
          to label %153 unwind label %95

153:                                              ; preds = %147
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %152, ptr nonnull align 2 getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), i64 %148, i1 false)
  br label %155

154:                                              ; preds = %129, %117, %121
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %155

155:                                              ; preds = %153, %92, %154
  %156 = phi ptr [ null, %154 ], [ %91, %92 ], [ %152, %153 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %223

157:                                              ; preds = %6
  %158 = icmp eq ptr %0, null
  br i1 %158, label %180, label %159

159:                                              ; preds = %157
  %160 = load i16, ptr %0, align 2, !tbaa !69
  %161 = icmp eq i16 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %159, %162
  %163 = phi ptr [ %164, %162 ], [ %0, %159 ]
  %164 = getelementptr inbounds i16, ptr %163, i64 1
  %165 = load i16, ptr %164, align 2, !tbaa !69
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %162, !llvm.loop !71

167:                                              ; preds = %162
  %168 = ptrtoint ptr %164 to i64
  %169 = ptrtoint ptr %0 to i64
  %170 = sub i64 %168, %169
  %171 = add i64 %170, 2
  %172 = and i64 %171, 8589934590
  br label %173

173:                                              ; preds = %167, %159
  %174 = phi i64 [ %172, %167 ], [ 2, %159 ]
  %175 = load ptr, ptr %5, align 8, !tbaa !49
  %176 = getelementptr inbounds ptr, ptr %175, i64 2
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %174)
          to label %179 unwind label %188

179:                                              ; preds = %173
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %178, ptr nonnull align 2 %0, i64 %174, i1 false)
  br label %180

180:                                              ; preds = %179, %157
  %181 = phi ptr [ %178, %179 ], [ null, %157 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  store ptr %181, ptr %8, align 8, !tbaa !76
  %182 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %8, i64 0, i32 1
  store ptr %5, ptr %182, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %181)
          to label %183 unwind label %190

183:                                              ; preds = %180
  %184 = invoke noundef ptr @_ZN11xercesc_2_76HexBin26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %181, ptr noundef %5)
          to label %185 unwind label %192

185:                                              ; preds = %183
  %186 = icmp eq ptr %184, null
  br i1 %186, label %187, label %194

187:                                              ; preds = %185
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %194

188:                                              ; preds = %173
  %189 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %210

190:                                              ; preds = %180
  %191 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %195

192:                                              ; preds = %183
  %193 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %195

194:                                              ; preds = %187, %185
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %223

195:                                              ; preds = %192, %190
  %196 = phi { ptr, i32 } [ %193, %192 ], [ %191, %190 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %210

197:                                              ; preds = %6
  %198 = invoke noundef ptr @_ZN11xercesc_2_76Base6426getCanonicalRepresentationEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %5, i32 noundef 0)
          to label %199 unwind label %202

199:                                              ; preds = %197
  %200 = icmp eq ptr %198, null
  br i1 %200, label %201, label %223

201:                                              ; preds = %199
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %223

202:                                              ; preds = %197
  %203 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %210

204:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  br i1 %4, label %205, label %218

205:                                              ; preds = %204
  %206 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %5)
          to label %207 unwind label %208

207:                                              ; preds = %205
  br i1 %206, label %218, label %219

208:                                              ; preds = %205
  %209 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %210

210:                                              ; preds = %188, %195, %93, %95, %208, %202
  %211 = phi { ptr, i32 } [ %209, %208 ], [ %203, %202 ], [ %96, %95 ], [ %94, %93 ], [ %196, %195 ], [ %189, %188 ]
  %212 = extractvalue { ptr, i32 } %211, 1
  %213 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %225

215:                                              ; preds = %210
  %216 = extractvalue { ptr, i32 } %211, 0
  %217 = call ptr @__cxa_begin_catch(ptr %216) #15
  invoke void @__cxa_rethrow() #16
          to label %230 unwind label %221

218:                                              ; preds = %207, %204
  br label %219

219:                                              ; preds = %207, %218
  %220 = phi i32 [ 2, %218 ], [ 6, %207 ]
  store i32 %220, ptr %2, align 4, !tbaa !72
  br label %223

221:                                              ; preds = %215
  %222 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %225 unwind label %227

223:                                              ; preds = %6, %199, %201, %219, %194, %155
  %224 = phi ptr [ null, %219 ], [ %184, %194 ], [ %156, %155 ], [ %198, %201 ], [ %198, %199 ], [ null, %6 ]
  ret ptr %224

225:                                              ; preds = %221, %210
  %226 = phi { ptr, i32 } [ %211, %210 ], [ %222, %221 ]
  resume { ptr, i32 } %226

227:                                              ; preds = %221
  %228 = landingpad { ptr, i32 }
          catch ptr null
  %229 = extractvalue { ptr, i32 } %228, 0
  call void @__clang_call_terminate(ptr %229) #17
  unreachable

230:                                              ; preds = %215
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue14getActualValueEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 align 2 !prof !37 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %0, align 2, !tbaa !69
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %8
  switch i32 %3, label %44 [
    i32 0, label %12
    i32 1, label %26
  ]

12:                                               ; preds = %11, %12
  %13 = phi ptr [ %14, %12 ], [ %0, %11 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !69
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !71

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %0 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %22)
  br i1 %23, label %43, label %24

24:                                               ; preds = %17
  %25 = icmp eq i32 %3, 1
  br i1 %25, label %26, label %44

26:                                               ; preds = %24, %11
  %27 = load i16, ptr %0, align 2, !tbaa !69
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26, %29
  %30 = phi ptr [ %31, %29 ], [ %0, %26 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %31, align 2, !tbaa !69
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %29, !llvm.loop !71

34:                                               ; preds = %29
  %35 = ptrtoint ptr %31 to i64
  %36 = ptrtoint ptr %0 to i64
  %37 = sub i64 %35, %36
  %38 = lshr exact i64 %37, 1
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %26, %34
  %41 = phi i32 [ %39, %34 ], [ 0, %26 ]
  %42 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %41)
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %17, %8, %6
  store i32 1, ptr %2, align 4, !tbaa !72
  br label %55

44:                                               ; preds = %24, %11, %40
  store i32 0, ptr %2, align 4, !tbaa !72
  %45 = zext i32 %1 to i64
  %46 = getelementptr inbounds [44 x i32], ptr @_ZN11xercesc_2_77XSValue7inGroupE, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !74
  switch i32 %47, label %54 [
    i32 0, label %48
    i32 1, label %50
    i32 2, label %52
  ]

48:                                               ; preds = %44
  %49 = tail call noundef ptr @_ZN11xercesc_2_77XSValue17getActValNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %5)
  br label %55

50:                                               ; preds = %44
  %51 = tail call noundef ptr @_ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %5)
  br label %55

52:                                               ; preds = %44
  %53 = tail call noundef ptr @_ZN11xercesc_2_77XSValue16getActValStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5)
  br label %55

54:                                               ; preds = %44
  store i32 10, ptr %2, align 4, !tbaa !72
  br label %55

55:                                               ; preds = %54, %52, %50, %48, %43
  %56 = phi ptr [ null, %43 ], [ null, %54 ], [ %53, %52 ], [ %51, %50 ], [ %49, %48 ]
  ret ptr %56
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue17getActValNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::XMLDouble", align 8
  %6 = alloca %"class.xercesc_2_7::XMLFloat", align 8
  %7 = alloca %"class.xercesc_2_7::XMLDouble", align 8
  %8 = alloca %"union.xercesc_2_7::XSValue::t_value", align 8
  switch i32 %1, label %164 [
    i32 2, label %9
    i32 3, label %31
    i32 4, label %60
    i32 31, label %88
    i32 33, label %88
    i32 32, label %88
    i32 38, label %88
    i32 43, label %88
    i32 34, label %88
    i32 35, label %88
    i32 36, label %88
    i32 37, label %88
    i32 39, label %88
    i32 40, label %88
    i32 41, label %88
    i32 42, label %88
  ]

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  invoke void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %0, ptr noundef %3)
          to label %10 unwind label %15

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %5, i64 0, i32 3
  %12 = load i8, ptr %11, align 4, !tbaa !91, !range !66, !noundef !67
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  store i32 7, ptr %2, align 4, !tbaa !72
  br label %27

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %29

17:                                               ; preds = %10
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
          to label %19 unwind label %25

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %18, i64 0, i32 1
  store i8 0, ptr %20, align 8, !tbaa !60
  %21 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %18, i64 0, i32 2
  store ptr %3, ptr %21, align 8, !tbaa !64
  store i32 2, ptr %18, align 8, !tbaa !65
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %5, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !97
  %24 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %18, i64 0, i32 1
  store double %23, ptr %24, align 8, !tbaa !68
  br label %27

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #15
  br label %29

27:                                               ; preds = %19, %14
  %28 = phi ptr [ null, %14 ], [ %18, %19 ]
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %164

29:                                               ; preds = %25, %15
  %30 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %149

31:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %0, ptr noundef %3)
          to label %32 unwind label %45

32:                                               ; preds = %31
  %33 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
          to label %34 unwind label %47

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %33, i64 0, i32 1
  store i8 0, ptr %35, align 8, !tbaa !60
  %36 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %33, i64 0, i32 2
  store ptr %3, ptr %36, align 8, !tbaa !64
  store i32 3, ptr %33, align 8, !tbaa !65
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %6, i64 0, i32 3
  %38 = load i8, ptr %37, align 4, !tbaa !91, !range !66, !noundef !67
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %33, i64 0, i32 1
  br i1 %39, label %52, label %41

41:                                               ; preds = %34
  store float 0.000000e+00, ptr %40, align 8, !tbaa !68
  %42 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %33, i64 0, i32 1, i32 0, i32 1
  store i32 3, ptr %42, align 4, !tbaa !68
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %6, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !98
  switch i32 %44, label %57 [
    i32 0, label %49
    i32 1, label %50
    i32 2, label %51
  ]

45:                                               ; preds = %31
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %58

47:                                               ; preds = %32
  %48 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  br label %58

49:                                               ; preds = %41
  store i32 0, ptr %42, align 4, !tbaa !68
  br label %57

50:                                               ; preds = %41
  store i32 1, ptr %42, align 4, !tbaa !68
  br label %57

51:                                               ; preds = %41
  store i32 2, ptr %42, align 4, !tbaa !68
  br label %57

52:                                               ; preds = %34
  %53 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %33, i64 0, i32 1, i32 0, i32 1
  store i32 4, ptr %53, align 4, !tbaa !68
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %6, i64 0, i32 1
  %55 = load double, ptr %54, align 8, !tbaa !97
  %56 = fptrunc double %55 to float
  store float %56, ptr %40, align 8, !tbaa !68
  br label %57

57:                                               ; preds = %49, %50, %51, %41, %52
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %164

58:                                               ; preds = %47, %45
  %59 = phi { ptr, i32 } [ %48, %47 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %149

60:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %0, ptr noundef %3)
          to label %61 unwind label %74

61:                                               ; preds = %60
  %62 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
          to label %63 unwind label %76

63:                                               ; preds = %61
  %64 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %62, i64 0, i32 1
  store i8 0, ptr %64, align 8, !tbaa !60
  %65 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %62, i64 0, i32 2
  store ptr %3, ptr %65, align 8, !tbaa !64
  store i32 4, ptr %62, align 8, !tbaa !65
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %7, i64 0, i32 3
  %67 = load i8, ptr %66, align 4, !tbaa !91, !range !66, !noundef !67
  %68 = icmp eq i8 %67, 0
  %69 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %62, i64 0, i32 1
  br i1 %68, label %81, label %70

70:                                               ; preds = %63
  store double 0.000000e+00, ptr %69, align 8, !tbaa !68
  %71 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %62, i64 0, i32 1, i32 0, i32 2
  store i32 3, ptr %71, align 8, !tbaa !68
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %7, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !98
  switch i32 %73, label %85 [
    i32 0, label %78
    i32 1, label %79
    i32 2, label %80
  ]

74:                                               ; preds = %60
  %75 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %86

76:                                               ; preds = %61
  %77 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  br label %86

78:                                               ; preds = %70
  store i32 0, ptr %71, align 8, !tbaa !68
  br label %85

79:                                               ; preds = %70
  store i32 1, ptr %71, align 8, !tbaa !68
  br label %85

80:                                               ; preds = %70
  store i32 2, ptr %71, align 8, !tbaa !68
  br label %85

81:                                               ; preds = %63
  %82 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %62, i64 0, i32 1, i32 0, i32 2
  store i32 4, ptr %82, align 8, !tbaa !68
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %7, i64 0, i32 1
  %84 = load double, ptr %83, align 8, !tbaa !97
  store double %84, ptr %69, align 8, !tbaa !68
  br label %85

85:                                               ; preds = %78, %79, %80, %70, %81
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %164

86:                                               ; preds = %76, %74
  %87 = phi { ptr, i32 } [ %77, %76 ], [ %75, %74 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %149

88:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %89 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue21getActualNumericValueEPKtRNS0_6StatusERNS0_7t_valueEPNS_13MemoryManagerENS0_8DataTypeE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3, i32 noundef %1)
          to label %90 unwind label %91

90:                                               ; preds = %88
  br i1 %89, label %93, label %145

91:                                               ; preds = %88
  %92 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %147

93:                                               ; preds = %90
  %94 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
          to label %95 unwind label %98

95:                                               ; preds = %93
  %96 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %94, i64 0, i32 1
  store i8 0, ptr %96, align 8, !tbaa !60
  %97 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %94, i64 0, i32 2
  store ptr %3, ptr %97, align 8, !tbaa !64
  store i32 %1, ptr %94, align 8, !tbaa !65
  switch i32 %1, label %145 [
    i32 31, label %100
    i32 33, label %103
    i32 32, label %106
    i32 38, label %109
    i32 43, label %112
    i32 34, label %115
    i32 35, label %118
    i32 36, label %122
    i32 37, label %126
    i32 39, label %130
    i32 40, label %133
    i32 41, label %137
    i32 42, label %141
  ]

98:                                               ; preds = %93
  %99 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %147

100:                                              ; preds = %95
  %101 = load i64, ptr %8, align 8, !tbaa !68
  %102 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %101, ptr %102, align 8, !tbaa !68
  br label %145

103:                                              ; preds = %95
  %104 = load i64, ptr %8, align 8, !tbaa !68
  %105 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %104, ptr %105, align 8, !tbaa !68
  br label %145

106:                                              ; preds = %95
  %107 = load i64, ptr %8, align 8, !tbaa !68
  %108 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %107, ptr %108, align 8, !tbaa !68
  br label %145

109:                                              ; preds = %95
  %110 = load i64, ptr %8, align 8, !tbaa !68
  %111 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %110, ptr %111, align 8, !tbaa !68
  br label %145

112:                                              ; preds = %95
  %113 = load i64, ptr %8, align 8, !tbaa !68
  %114 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %113, ptr %114, align 8, !tbaa !68
  br label %145

115:                                              ; preds = %95
  %116 = load i64, ptr %8, align 8, !tbaa !68
  %117 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %116, ptr %117, align 8, !tbaa !68
  br label %145

118:                                              ; preds = %95
  %119 = load i64, ptr %8, align 8, !tbaa !68
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i32 %120, ptr %121, align 8, !tbaa !68
  br label %145

122:                                              ; preds = %95
  %123 = load i64, ptr %8, align 8, !tbaa !68
  %124 = trunc i64 %123 to i16
  %125 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i16 %124, ptr %125, align 8, !tbaa !68
  br label %145

126:                                              ; preds = %95
  %127 = load i64, ptr %8, align 8, !tbaa !68
  %128 = trunc i64 %127 to i8
  %129 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i8 %128, ptr %129, align 8, !tbaa !68
  br label %145

130:                                              ; preds = %95
  %131 = load i64, ptr %8, align 8, !tbaa !68
  %132 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i64 %131, ptr %132, align 8, !tbaa !68
  br label %145

133:                                              ; preds = %95
  %134 = load i64, ptr %8, align 8, !tbaa !68
  %135 = trunc i64 %134 to i32
  %136 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i32 %135, ptr %136, align 8, !tbaa !68
  br label %145

137:                                              ; preds = %95
  %138 = load i64, ptr %8, align 8, !tbaa !68
  %139 = trunc i64 %138 to i16
  %140 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i16 %139, ptr %140, align 8, !tbaa !68
  br label %145

141:                                              ; preds = %95
  %142 = load i64, ptr %8, align 8, !tbaa !68
  %143 = trunc i64 %142 to i8
  %144 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %94, i64 0, i32 1
  store i8 %143, ptr %144, align 8, !tbaa !68
  br label %145

145:                                              ; preds = %95, %141, %137, %133, %130, %126, %122, %118, %115, %112, %109, %106, %103, %100, %90
  %146 = phi ptr [ null, %90 ], [ null, %95 ], [ %94, %141 ], [ %94, %137 ], [ %94, %133 ], [ %94, %130 ], [ %94, %126 ], [ %94, %122 ], [ %94, %118 ], [ %94, %115 ], [ %94, %112 ], [ %94, %109 ], [ %94, %106 ], [ %94, %103 ], [ %94, %100 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %164

147:                                              ; preds = %98, %91
  %148 = phi { ptr, i32 } [ %92, %91 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %149

149:                                              ; preds = %147, %86, %58, %29
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %87, %86 ], [ %59, %58 ], [ %30, %29 ]
  %151 = extractvalue { ptr, i32 } %150, 0
  %152 = extractvalue { ptr, i32 } %150, 1
  %153 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = call ptr @__cxa_begin_catch(ptr %151) #15
  invoke void @__cxa_rethrow() #16
          to label %171 unwind label %162

157:                                              ; preds = %149
  %158 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %159 = icmp eq i32 %152, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = call ptr @__cxa_begin_catch(ptr %151) #15
  store i32 6, ptr %2, align 4, !tbaa !72
  call void @__cxa_end_catch()
  br label %164

162:                                              ; preds = %155
  %163 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %166 unwind label %168

164:                                              ; preds = %4, %160, %145, %85, %57, %27
  %165 = phi ptr [ %146, %145 ], [ null, %160 ], [ %62, %85 ], [ %33, %57 ], [ %28, %27 ], [ null, %4 ]
  ret ptr %165

166:                                              ; preds = %162, %157
  %167 = phi { ptr, i32 } [ %150, %157 ], [ %163, %162 ]
  resume { ptr, i32 } %167

168:                                              ; preds = %162
  %169 = landingpad { ptr, i32 }
          catch ptr null
  %170 = extractvalue { ptr, i32 } %169, 0
  call void @__clang_call_terminate(ptr %170) #17
  unreachable

171:                                              ; preds = %155
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %28, label %8

8:                                                ; preds = %4
  %9 = load i16, ptr %0, align 2, !tbaa !69
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %13, %11 ], [ %0, %8 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !69
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !71

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %0 to i64
  %19 = sub i64 %17, %18
  %20 = add i64 %19, 2
  %21 = and i64 %20, 8589934590
  br label %22

22:                                               ; preds = %16, %8
  %23 = phi i64 [ %21, %16 ], [ 2, %8 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !49
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %23)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %0, i64 %23, i1 false)
  br label %28

28:                                               ; preds = %4, %22
  %29 = phi ptr [ %27, %22 ], [ null, %4 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  store ptr %29, ptr %5, align 8, !tbaa !76
  %30 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %5, i64 0, i32 1
  store ptr %3, ptr %30, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %29)
          to label %31 unwind label %33

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef %29, ptr noundef %3)
          to label %32 unwind label %35

32:                                               ; preds = %31
  switch i32 %1, label %103 [
    i32 5, label %37
    i32 6, label %40
    i32 7, label %41
    i32 8, label %46
    i32 9, label %50
    i32 10, label %55
    i32 11, label %58
    i32 12, label %63
    i32 13, label %69
  ]

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %146

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %107

37:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %75 unwind label %38

38:                                               ; preds = %69, %63, %58, %55, %50, %46, %41, %40, %37
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %105

40:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %75 unwind label %38

41:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %42 unwind label %38

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1
  store i32 0, ptr %43, align 8, !tbaa !79
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 1
  store i32 0, ptr %44, align 4, !tbaa !79
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 2
  store i32 0, ptr %45, align 8, !tbaa !79
  br label %75

46:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %47 unwind label %38

47:                                               ; preds = %46
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 3
  store i32 0, ptr %48, align 4, !tbaa !79
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 4
  store i32 0, ptr %49, align 8, !tbaa !79
  br label %75

50:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %51 unwind label %38

51:                                               ; preds = %50
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 2
  store i32 0, ptr %52, align 8, !tbaa !79
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 3
  store i32 0, ptr %53, align 4, !tbaa !79
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 4
  store i32 0, ptr %54, align 8, !tbaa !79
  br label %75

55:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %56 unwind label %38

56:                                               ; preds = %55
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br label %75

58:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %59 unwind label %38

59:                                               ; preds = %58
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1
  store i32 0, ptr %60, align 8, !tbaa !79
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 3
  store i32 0, ptr %61, align 4, !tbaa !79
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 4
  store i32 0, ptr %62, align 8, !tbaa !79
  br label %75

63:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %64 unwind label %38

64:                                               ; preds = %63
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1
  store i32 0, ptr %65, align 8, !tbaa !79
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 1
  store i32 0, ptr %66, align 4, !tbaa !79
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 3
  store i32 0, ptr %67, align 4, !tbaa !79
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 4
  store i32 0, ptr %68, align 8, !tbaa !79
  br label %75

69:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %6)
          to label %70 unwind label %38

70:                                               ; preds = %69
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1
  store i32 0, ptr %71, align 8, !tbaa !79
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 2
  store i32 0, ptr %72, align 8, !tbaa !79
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 3
  store i32 0, ptr %73, align 4, !tbaa !79
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 4
  store i32 0, ptr %74, align 8, !tbaa !79
  br label %75

75:                                               ; preds = %37, %40, %70, %64, %59, %56, %51, %47, %42
  %76 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3)
          to label %77 unwind label %101

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %76, i64 0, i32 1
  store i8 0, ptr %78, align 8, !tbaa !60
  %79 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %76, i64 0, i32 2
  store ptr %3, ptr %79, align 8, !tbaa !64
  store i32 %1, ptr %76, align 8, !tbaa !65
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1
  %81 = load i32, ptr %80, align 8, !tbaa !79
  %82 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1
  store i32 %81, ptr %82, align 8, !tbaa !68
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 1
  %84 = load i32, ptr %83, align 4, !tbaa !79
  %85 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1, i32 0, i32 1
  store i32 %84, ptr %85, align 4, !tbaa !68
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 2
  %87 = load i32, ptr %86, align 8, !tbaa !79
  %88 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1, i32 0, i32 2
  store i32 %87, ptr %88, align 8, !tbaa !68
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 3
  %90 = load i32, ptr %89, align 4, !tbaa !79
  %91 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1, i32 0, i32 3
  store i32 %90, ptr %91, align 4, !tbaa !68
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 4
  %93 = load i32, ptr %92, align 8, !tbaa !79
  %94 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1, i32 0, i32 4
  store i32 %93, ptr %94, align 8, !tbaa !68
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 1, i64 5
  %96 = load i32, ptr %95, align 4, !tbaa !79
  %97 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1, i32 0, i32 5
  store i32 %96, ptr %97, align 4, !tbaa !68
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %6, i64 0, i32 6
  %99 = load double, ptr %98, align 8, !tbaa !99
  %100 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1, i32 0, i32 6
  store double %99, ptr %100, align 8, !tbaa !68
  br label %103

101:                                              ; preds = %75
  %102 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %105

103:                                              ; preds = %32, %77
  %104 = phi ptr [ %76, %77 ], [ null, %32 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #15
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  br label %144

105:                                              ; preds = %101, %38
  %106 = phi { ptr, i32 } [ %39, %38 ], [ %102, %101 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %6) #15
  br label %107

107:                                              ; preds = %105, %35
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %36, %35 ]
  %109 = extractvalue { ptr, i32 } %108, 0
  %110 = extractvalue { ptr, i32 } %108, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #15
  %111 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE) #15
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %107
  %114 = call ptr @__cxa_begin_catch(ptr %109) #15
  %115 = add i32 %1, -6
  %116 = icmp ult i32 %115, 3
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %114, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !80
  %120 = add i32 %119, -343
  %121 = icmp ult i32 %120, 10
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = zext nneg i32 %120 to i64
  %124 = getelementptr inbounds [10 x i32], ptr @switch.table._ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4
  br label %126

126:                                              ; preds = %117, %122, %113
  %127 = phi i32 [ 6, %113 ], [ %125, %122 ], [ 6, %117 ]
  store i32 %127, ptr %2, align 4, !tbaa !72
  invoke void @__cxa_end_catch()
          to label %144 unwind label %142

128:                                              ; preds = %107
  %129 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %130 = icmp eq i32 %110, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = call ptr @__cxa_begin_catch(ptr %109) #15
  invoke void @__cxa_rethrow() #16
          to label %151 unwind label %140

133:                                              ; preds = %128
  %134 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %135 = icmp eq i32 %110, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = call ptr @__cxa_begin_catch(ptr %109) #15
  store i32 6, ptr %2, align 4, !tbaa !72
  invoke void @__cxa_end_catch()
          to label %144 unwind label %138

138:                                              ; preds = %136
  %139 = landingpad { ptr, i32 }
          cleanup
  br label %146

140:                                              ; preds = %131
  %141 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %146 unwind label %148

142:                                              ; preds = %126
  %143 = landingpad { ptr, i32 }
          cleanup
  br label %146

144:                                              ; preds = %126, %136, %103
  %145 = phi ptr [ %104, %103 ], [ null, %136 ], [ null, %126 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  ret ptr %145

146:                                              ; preds = %142, %140, %138, %133, %33
  %147 = phi { ptr, i32 } [ %139, %138 ], [ %108, %133 ], [ %34, %33 ], [ %141, %140 ], [ %143, %142 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  resume { ptr, i32 } %147

148:                                              ; preds = %140
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  call void @__clang_call_terminate(ptr %150) #17
  unreachable

151:                                              ; preds = %131
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue16getActValStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca i32, align 4
  switch i32 %1, label %225 [
    i32 1, label %10
    i32 14, label %138
    i32 15, label %187
    i32 16, label %206
    i32 17, label %206
    i32 18, label %206
    i32 0, label %206
    i32 19, label %206
    i32 20, label %206
    i32 21, label %206
    i32 22, label %206
    i32 23, label %206
    i32 24, label %206
    i32 25, label %206
    i32 26, label %206
    i32 27, label %206
    i32 29, label %206
    i32 30, label %206
    i32 28, label %206
  ]

10:                                               ; preds = %6
  %11 = icmp eq ptr %0, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %10
  %13 = load i16, ptr %0, align 2, !tbaa !69
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %0, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !69
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !71

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %0 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %5, align 8, !tbaa !49
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %27)
          to label %32 unwind label %81

32:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %0, i64 %27, i1 false)
  br label %33

33:                                               ; preds = %32, %10
  %34 = phi ptr [ %31, %32 ], [ null, %10 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  store ptr %34, ptr %7, align 8, !tbaa !76
  %35 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %7, i64 0, i32 1
  store ptr %5, ptr %35, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %34)
          to label %36 unwind label %83

36:                                               ; preds = %33
  %37 = icmp eq ptr %34, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = load i16, ptr %34, align 2, !tbaa !69
  %40 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, align 2, !tbaa !69
  %41 = icmp eq i16 %39, %40
  br i1 %41, label %45, label %56

42:                                               ; preds = %36
  %43 = load i16, ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, align 2, !tbaa !69
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %75, label %56

45:                                               ; preds = %38, %50
  %46 = phi i16 [ %53, %50 ], [ %39, %38 ]
  %47 = phi ptr [ %52, %50 ], [ @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, %38 ]
  %48 = phi ptr [ %51, %50 ], [ %34, %38 ]
  %49 = icmp eq i16 %46, 0
  br i1 %49, label %75, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds i16, ptr %48, i64 1
  %52 = getelementptr inbounds i16, ptr %47, i64 1
  %53 = load i16, ptr %51, align 2, !tbaa !69
  %54 = load i16, ptr %52, align 2, !tbaa !69
  %55 = icmp eq i16 %53, %54
  br i1 %55, label %45, label %56, !llvm.loop !83

56:                                               ; preds = %50, %38, %42
  br i1 %37, label %61, label %57

57:                                               ; preds = %56
  %58 = load i16, ptr %34, align 2, !tbaa !69
  %59 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2), align 2, !tbaa !69
  %60 = icmp eq i16 %58, %59
  br i1 %60, label %64, label %87

61:                                               ; preds = %56
  %62 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2), align 2, !tbaa !69
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %75, label %87

64:                                               ; preds = %57, %69
  %65 = phi i16 [ %72, %69 ], [ %58, %57 ]
  %66 = phi ptr [ %71, %69 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2), %57 ]
  %67 = phi ptr [ %70, %69 ], [ %34, %57 ]
  %68 = icmp eq i16 %65, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds i16, ptr %67, i64 1
  %71 = getelementptr inbounds i16, ptr %66, i64 1
  %72 = load i16, ptr %70, align 2, !tbaa !69
  %73 = load i16, ptr %71, align 2, !tbaa !69
  %74 = icmp eq i16 %72, %73
  br i1 %74, label %64, label %87, !llvm.loop !83

75:                                               ; preds = %45, %64, %61, %42
  %76 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
          to label %77 unwind label %85

77:                                               ; preds = %75
  %78 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %76, i64 0, i32 1
  store i8 0, ptr %78, align 8, !tbaa !60
  %79 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %76, i64 0, i32 2
  store ptr %5, ptr %79, align 8, !tbaa !64
  store i32 1, ptr %76, align 8, !tbaa !65
  %80 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %76, i64 0, i32 1
  store i8 0, ptr %80, align 8, !tbaa !68
  br label %134

81:                                               ; preds = %26
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %212

83:                                               ; preds = %33
  %84 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %136

85:                                               ; preds = %75
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %136

87:                                               ; preds = %69, %57, %61
  br i1 %37, label %92, label %88

88:                                               ; preds = %87
  %89 = load i16, ptr %34, align 2, !tbaa !69
  %90 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), align 2, !tbaa !69
  %91 = icmp eq i16 %89, %90
  br i1 %91, label %95, label %106

92:                                               ; preds = %87
  %93 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), align 2, !tbaa !69
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %125, label %106

95:                                               ; preds = %88, %100
  %96 = phi i16 [ %103, %100 ], [ %89, %88 ]
  %97 = phi ptr [ %102, %100 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), %88 ]
  %98 = phi ptr [ %101, %100 ], [ %34, %88 ]
  %99 = icmp eq i16 %96, 0
  br i1 %99, label %125, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i16, ptr %98, i64 1
  %102 = getelementptr inbounds i16, ptr %97, i64 1
  %103 = load i16, ptr %101, align 2, !tbaa !69
  %104 = load i16, ptr %102, align 2, !tbaa !69
  %105 = icmp eq i16 %103, %104
  br i1 %105, label %95, label %106, !llvm.loop !83

106:                                              ; preds = %100, %88, %92
  br i1 %37, label %111, label %107

107:                                              ; preds = %106
  %108 = load i16, ptr %34, align 2, !tbaa !69
  %109 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3), align 2, !tbaa !69
  %110 = icmp eq i16 %108, %109
  br i1 %110, label %114, label %133

111:                                              ; preds = %106
  %112 = load i16, ptr getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3), align 2, !tbaa !69
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %125, label %133

114:                                              ; preds = %107, %119
  %115 = phi i16 [ %122, %119 ], [ %108, %107 ]
  %116 = phi ptr [ %121, %119 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3), %107 ]
  %117 = phi ptr [ %120, %119 ], [ %34, %107 ]
  %118 = icmp eq i16 %115, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds i16, ptr %117, i64 1
  %121 = getelementptr inbounds i16, ptr %116, i64 1
  %122 = load i16, ptr %120, align 2, !tbaa !69
  %123 = load i16, ptr %121, align 2, !tbaa !69
  %124 = icmp eq i16 %122, %123
  br i1 %124, label %114, label %133, !llvm.loop !83

125:                                              ; preds = %95, %114, %111, %92
  %126 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
          to label %127 unwind label %131

127:                                              ; preds = %125
  %128 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %126, i64 0, i32 1
  store i8 0, ptr %128, align 8, !tbaa !60
  %129 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %126, i64 0, i32 2
  store ptr %5, ptr %129, align 8, !tbaa !64
  store i32 1, ptr %126, align 8, !tbaa !65
  %130 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %126, i64 0, i32 1
  store i8 1, ptr %130, align 8, !tbaa !68
  br label %134

131:                                              ; preds = %125
  %132 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %136

133:                                              ; preds = %119, %107, %111
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %134

134:                                              ; preds = %133, %127, %77
  %135 = phi ptr [ %76, %77 ], [ %126, %127 ], [ null, %133 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %225

136:                                              ; preds = %131, %85, %83
  %137 = phi { ptr, i32 } [ %84, %83 ], [ %86, %85 ], [ %132, %131 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %212

138:                                              ; preds = %6
  %139 = icmp eq ptr %0, null
  br i1 %139, label %161, label %140

140:                                              ; preds = %138
  %141 = load i16, ptr %0, align 2, !tbaa !69
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %140, %143
  %144 = phi ptr [ %145, %143 ], [ %0, %140 ]
  %145 = getelementptr inbounds i16, ptr %144, i64 1
  %146 = load i16, ptr %145, align 2, !tbaa !69
  %147 = icmp eq i16 %146, 0
  br i1 %147, label %148, label %143, !llvm.loop !71

148:                                              ; preds = %143
  %149 = ptrtoint ptr %145 to i64
  %150 = ptrtoint ptr %0 to i64
  %151 = sub i64 %149, %150
  %152 = add i64 %151, 2
  %153 = and i64 %152, 8589934590
  br label %154

154:                                              ; preds = %148, %140
  %155 = phi i64 [ %153, %148 ], [ 2, %140 ]
  %156 = load ptr, ptr %5, align 8, !tbaa !49
  %157 = getelementptr inbounds ptr, ptr %156, i64 2
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %155)
          to label %160 unwind label %169

160:                                              ; preds = %154
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %159, ptr nonnull align 2 %0, i64 %155, i1 false)
  br label %161

161:                                              ; preds = %160, %138
  %162 = phi ptr [ %159, %160 ], [ null, %138 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  store ptr %162, ptr %8, align 8, !tbaa !76
  %163 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %8, i64 0, i32 1
  store ptr %5, ptr %163, align 8, !tbaa !78
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %162)
          to label %164 unwind label %171

164:                                              ; preds = %161
  %165 = invoke noundef ptr @_ZN11xercesc_2_76HexBin15decodeToXMLByteEPKtPNS_13MemoryManagerE(ptr noundef %162, ptr noundef %5)
          to label %166 unwind label %173

166:                                              ; preds = %164
  %167 = icmp eq ptr %165, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %166
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %183

169:                                              ; preds = %154
  %170 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %212

171:                                              ; preds = %161
  %172 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %185

173:                                              ; preds = %164
  %174 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %185

175:                                              ; preds = %166
  %176 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
          to label %177 unwind label %181

177:                                              ; preds = %175
  %178 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %176, i64 0, i32 1
  store i8 0, ptr %178, align 8, !tbaa !60
  %179 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %176, i64 0, i32 2
  store ptr %5, ptr %179, align 8, !tbaa !64
  store i32 14, ptr %176, align 8, !tbaa !65
  %180 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %176, i64 0, i32 1
  store ptr %165, ptr %180, align 8, !tbaa !68
  store i8 1, ptr %178, align 8, !tbaa !60
  br label %183

181:                                              ; preds = %175
  %182 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %185

183:                                              ; preds = %177, %168
  %184 = phi ptr [ %176, %177 ], [ null, %168 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %225

185:                                              ; preds = %173, %181, %171
  %186 = phi { ptr, i32 } [ %172, %171 ], [ %174, %173 ], [ %182, %181 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %212

187:                                              ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !tbaa !79
  %188 = invoke noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, i32 noundef 0)
          to label %189 unwind label %192

189:                                              ; preds = %187
  %190 = icmp eq ptr %188, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  store i32 6, ptr %2, align 4, !tbaa !72
  br label %202

192:                                              ; preds = %187
  %193 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %204

194:                                              ; preds = %189
  %195 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5)
          to label %196 unwind label %200

196:                                              ; preds = %194
  %197 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %195, i64 0, i32 1
  store i8 0, ptr %197, align 8, !tbaa !60
  %198 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %195, i64 0, i32 2
  store ptr %5, ptr %198, align 8, !tbaa !64
  store i32 15, ptr %195, align 8, !tbaa !65
  %199 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %195, i64 0, i32 1
  store ptr %188, ptr %199, align 8, !tbaa !68
  store i8 1, ptr %197, align 8, !tbaa !60
  br label %202

200:                                              ; preds = %194
  %201 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %204

202:                                              ; preds = %196, %191
  %203 = phi ptr [ %195, %196 ], [ null, %191 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %225

204:                                              ; preds = %200, %192
  %205 = phi { ptr, i32 } [ %193, %192 ], [ %201, %200 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %212

206:                                              ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  br i1 %4, label %207, label %220

207:                                              ; preds = %206
  %208 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %5)
          to label %209 unwind label %210

209:                                              ; preds = %207
  br i1 %208, label %220, label %221

210:                                              ; preds = %207
  %211 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %212

212:                                              ; preds = %169, %185, %81, %136, %210, %204
  %213 = phi { ptr, i32 } [ %211, %210 ], [ %205, %204 ], [ %137, %136 ], [ %82, %81 ], [ %186, %185 ], [ %170, %169 ]
  %214 = extractvalue { ptr, i32 } %213, 1
  %215 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %212
  %218 = extractvalue { ptr, i32 } %213, 0
  %219 = call ptr @__cxa_begin_catch(ptr %218) #15
  invoke void @__cxa_rethrow() #16
          to label %232 unwind label %223

220:                                              ; preds = %209, %206
  br label %221

221:                                              ; preds = %209, %220
  %222 = phi i32 [ 3, %220 ], [ 6, %209 ]
  store i32 %222, ptr %2, align 4, !tbaa !72
  br label %225

223:                                              ; preds = %217
  %224 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %227 unwind label %229

225:                                              ; preds = %6, %221, %202, %183, %134
  %226 = phi ptr [ null, %221 ], [ %203, %202 ], [ %184, %183 ], [ %135, %134 ], [ null, %6 ]
  ret ptr %226

227:                                              ; preds = %223, %212
  %228 = phi { ptr, i32 } [ %213, %212 ], [ %224, %223 ]
  resume { ptr, i32 } %228

229:                                              ; preds = %223
  %230 = landingpad { ptr, i32 }
          catch ptr null
  %231 = extractvalue { ptr, i32 } %230, 0
  call void @__clang_call_terminate(ptr %231) #17
  unreachable

232:                                              ; preds = %217
  unreachable
}

declare void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !102

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !103

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !104

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #18
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
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue21getActualNumericValueEPKtRNS0_6StatusERNS0_7t_valueEPNS_13MemoryManagerENS0_8DataTypeE(ptr noundef %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %7 = alloca ptr, align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  store ptr %8, ptr %6, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %6, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !38
  %10 = tail call ptr @__errno_location() #19
  store i32 0, ptr %10, align 4, !tbaa !79
  %11 = zext i32 %4 to i64
  %12 = add nsw i64 %11, -38
  %13 = icmp ult i64 %12, 6
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = call i64 @strtol(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 10) #15
  br label %25

16:                                               ; preds = %5
  %17 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %0, i16 noundef zeroext 45)
          to label %18 unwind label %21

18:                                               ; preds = %16
  %19 = icmp eq i32 %17, -1
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %22

23:                                               ; preds = %18
  %24 = call i64 @strtoul(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 10) #15
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i64 [ %24, %23 ], [ %15, %14 ]
  store i64 %26, ptr %2, align 8, !tbaa !68
  switch i32 %4, label %63 [
    i32 32, label %27
    i32 33, label %30
    i32 35, label %33
    i32 36, label %40
    i32 37, label %44
    i32 40, label %48
    i32 41, label %54
    i32 42, label %57
    i32 43, label %60
  ]

27:                                               ; preds = %25
  %28 = icmp sgt i64 %26, 0
  br i1 %28, label %29, label %63

29:                                               ; preds = %27
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

30:                                               ; preds = %25
  %31 = icmp sgt i64 %26, -1
  br i1 %31, label %32, label %63

32:                                               ; preds = %30
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

33:                                               ; preds = %25
  %34 = add i64 %26, -2147483648
  %35 = icmp ult i64 %34, -4294967296
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr %10, align 4, !tbaa !79
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %63

39:                                               ; preds = %36, %33
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

40:                                               ; preds = %25
  %41 = add i64 %26, -32768
  %42 = icmp ult i64 %41, -65536
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

44:                                               ; preds = %25
  %45 = add i64 %26, -128
  %46 = icmp ult i64 %45, -256
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

48:                                               ; preds = %25
  %49 = icmp ugt i64 %26, 4294967295
  br i1 %49, label %53, label %50

50:                                               ; preds = %48
  %51 = load i32, ptr %10, align 4, !tbaa !79
  %52 = icmp eq i32 %51, 34
  br i1 %52, label %53, label %63

53:                                               ; preds = %50, %48
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

54:                                               ; preds = %25
  %55 = icmp ugt i64 %26, 65535
  br i1 %55, label %56, label %63

56:                                               ; preds = %54
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

57:                                               ; preds = %25
  %58 = icmp ugt i64 %26, 255
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

60:                                               ; preds = %25
  %61 = icmp eq i64 %26, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %81

63:                                               ; preds = %44, %40, %25, %60, %57, %54, %50, %36, %30, %27
  %64 = load i32, ptr %10, align 4, !tbaa !79
  %65 = icmp eq i32 %64, 34
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %7, align 8, !tbaa !38
  br label %69

68:                                               ; preds = %63
  store i32 8, ptr %1, align 4, !tbaa !72
  br label %81

69:                                               ; preds = %77, %66
  %70 = phi ptr [ %67, %66 ], [ %76, %77 ]
  %71 = load i8, ptr %70, align 1, !tbaa !68
  switch i8 %71, label %74 [
    i8 0, label %78
    i8 32, label %72
    i8 13, label %72
    i8 10, label %72
    i8 9, label %72
  ]

72:                                               ; preds = %69, %69, %69, %69
  %73 = getelementptr inbounds i8, ptr %70, i64 1
  br label %75

74:                                               ; preds = %69
  store i32 6, ptr %1, align 4, !tbaa !72
  br label %75

75:                                               ; preds = %72, %74
  %76 = phi ptr [ %73, %72 ], [ %70, %74 ]
  switch i8 %71, label %78 [
    i8 32, label %77
    i8 13, label %77
    i8 10, label %77
    i8 9, label %77
  ]

77:                                               ; preds = %75, %75, %75, %75
  br label %69

78:                                               ; preds = %75, %69
  %79 = phi ptr [ %70, %69 ], [ %76, %75 ]
  %80 = phi i1 [ true, %69 ], [ false, %75 ]
  store ptr %79, ptr %7, align 8, !tbaa !38
  br label %81

81:                                               ; preds = %78, %68, %62, %59, %56, %53, %47, %43, %39, %32, %29, %20
  %82 = phi i1 [ false, %68 ], [ false, %62 ], [ false, %59 ], [ false, %56 ], [ false, %53 ], [ false, %47 ], [ false, %43 ], [ false, %39 ], [ false, %32 ], [ false, %29 ], [ false, %20 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i1 %82
}

declare void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

declare void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef) local_unnamed_addr #0

declare noundef i32 @_ZN11xercesc_2_76Base6413getDataLengthEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt(i1 noundef zeroext, ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isValidQNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isValidQNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString15isValidNOTATIONEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isValidNmtokenEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isValidNmtokenEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_013isValidNCNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isValidNCNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime34getDateTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getDateCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_76HexBin26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_76Base6426getCanonicalRepresentationEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xercesc_2_76HexBin15decodeToXMLByteEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !105
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !109

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !107
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !109

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !110

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #18
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

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_77XSValue11reinitMutexEv() #3 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !38
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #15
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717RegularExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !47
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %22
  %8 = phi i64 [ 0, %5 ], [ %25, %22 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !51
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  br label %12

12:                                               ; preds = %15, %7
  %13 = phi ptr [ %11, %7 ], [ %17, %15 ]
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = load ptr, ptr %0, align 8, !tbaa !48
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull %13)
          to label %12 unwind label %45, !llvm.loop !111

22:                                               ; preds = %12
  %23 = load ptr, ptr %6, align 8, !tbaa !51
  %24 = getelementptr inbounds ptr, ptr %23, i64 %8
  store ptr null, ptr %24, align 8, !tbaa !38
  %25 = add nuw nsw i64 %8, 1
  %26 = load i32, ptr %2, align 8, !tbaa !47
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %7, label %29, !llvm.loop !112

29:                                               ; preds = %22, %1
  %30 = load ptr, ptr %0, align 8, !tbaa !48
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !51
  %33 = load ptr, ptr %30, align 8, !tbaa !49
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %36 unwind label %47

36:                                               ; preds = %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !44
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !49
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  tail call void %43(ptr noundef nonnull align 8 dereferenceable(8) %38) #15
  br label %44

44:                                               ; preds = %40, %36
  ret void

45:                                               ; preds = %15
  %46 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

47:                                               ; preds = %29
  %48 = landingpad { ptr, i32 }
          catch ptr null
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi { ptr, i32 } [ %46, %45 ], [ %48, %47 ]
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #17
  unreachable
}

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
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

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !49
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !48
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !48
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !47
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !49
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15)
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !51
  %21 = load i32, ptr %12, align 8, !tbaa !47
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !51
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !38
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !114
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !49
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !49
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XSValue.cpp() #13 section ".text.startup" !prof !115 !PGOFuncName !116 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueMutexCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22XSValueRegistryCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_GLOBAL__sub_I_XSValue.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 3}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !40, i64 0}
!40 = !{!"omnipotent char", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!43, !43, i64 0}
!43 = !{!"_ZTSN11xercesc_2_77XSValue8DataTypeE", !40, i64 0}
!44 = !{!45, !39, i64 24}
!45 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEE", !39, i64 0, !39, i64 8, !46, i64 16, !39, i64 24}
!46 = !{!"int", !40, i64 0}
!47 = !{!45, !46, i64 16}
!48 = !{!45, !39, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"vtable pointer", !41, i64 0}
!51 = !{!45, !39, i64 8}
!52 = !{!53, !39, i64 16}
!53 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemINS_7XSValue8DataTypeEEE", !43, i64 0, !39, i64 8, !39, i64 16}
!54 = distinct !{!54, !55, !56}
!55 = !{!"llvm.loop.mustprogress"}
!56 = !{!"llvm.loop.unroll.disable"}
!57 = distinct !{!57, !55, !56}
!58 = !{!53, !43, i64 0}
!59 = !{!53, !39, i64 8}
!60 = !{!61, !63, i64 40}
!61 = !{!"_ZTSN11xercesc_2_77XSValueE", !62, i64 0, !63, i64 40, !39, i64 48}
!62 = !{!"_ZTSN11xercesc_2_77XSValue12XSValue_DataE", !43, i64 0, !40, i64 8}
!63 = !{!"bool", !40, i64 0}
!64 = !{!61, !39, i64 48}
!65 = !{!61, !43, i64 0}
!66 = !{i8 0, i8 2}
!67 = !{}
!68 = !{!40, !40, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"short", !40, i64 0}
!71 = distinct !{!71, !55, !56}
!72 = !{!73, !73, i64 0}
!73 = !{!"_ZTSN11xercesc_2_77XSValue6StatusE", !40, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"_ZTSN11xercesc_2_77XSValue9DataGroupE", !40, i64 0}
!76 = !{!77, !39, i64 0}
!77 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !39, i64 0, !39, i64 8}
!78 = !{!77, !39, i64 8}
!79 = !{!46, !46, i64 0}
!80 = !{!81, !82, i64 8}
!81 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !82, i64 8, !39, i64 16, !46, i64 24, !39, i64 32, !39, i64 40}
!82 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !40, i64 0}
!83 = distinct !{!83, !55, !56}
!84 = distinct !{!84, !55, !56}
!85 = distinct !{!85, !55, !56}
!86 = distinct !{!86, !55, !56}
!87 = distinct !{!87, !55, !56}
!88 = distinct !{!88, !55, !56}
!89 = distinct !{!89, !55, !56}
!90 = distinct !{!90, !55, !56}
!91 = !{!92, !63, i64 20}
!92 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE", !93, i64 0, !95, i64 8, !96, i64 16, !63, i64 20, !63, i64 21, !46, i64 24, !39, i64 32, !39, i64 40, !39, i64 48}
!93 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !94, i64 0}
!94 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!95 = !{!"double", !40, i64 0}
!96 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloat11LiteralTypeE", !40, i64 0}
!97 = !{!92, !95, i64 8}
!98 = !{!92, !96, i64 16}
!99 = !{!100, !95, i64 64}
!100 = !{!"_ZTSN11xercesc_2_711XMLDateTimeE", !93, i64 0, !40, i64 8, !40, i64 40, !46, i64 48, !46, i64 52, !46, i64 56, !95, i64 64, !63, i64 72, !39, i64 80, !39, i64 88}
!101 = !{!"function_entry_count", i64 243874}
!102 = !{!"branch_weights", i32 191815, i32 52059}
!103 = !{!"branch_weights", i32 0, i32 52059}
!104 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!105 = !{!106, !39, i64 0}
!106 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIcEE", !39, i64 0, !39, i64 8}
!107 = !{!106, !39, i64 8}
!108 = !{!"function_entry_count", i64 27}
!109 = !{!"branch_weights", i32 0, i32 27}
!110 = !{!"VP", i32 0, i64 27, i64 -7405368087501025645, i64 27}
!111 = distinct !{!111, !55, !56}
!112 = distinct !{!112, !55, !56}
!113 = !{!81, !39, i64 40}
!114 = distinct !{!114, !55, !56}
!115 = !{!"function_entry_count", i64 1}
!116 = !{!"XSValue.cpp;_GLOBAL__sub_I_XSValue.cpp"}
