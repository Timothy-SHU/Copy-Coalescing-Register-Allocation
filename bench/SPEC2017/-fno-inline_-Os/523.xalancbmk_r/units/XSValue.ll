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
%"class.xercesc_2_7::XMLStringTokenizer" = type { i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.0" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE11containsKeyEPKv = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3getEPKvPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_ = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_710XMLChar1_09isXMLCharEtt = comdat any

$_ZN11xercesc_2_710XMLChar1_19isXMLCharEtt = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt = comdat any

$_ZNK11xercesc_2_722XMLAbstractDoubleFloat15isDataConvertedEv = comdat any

$_ZNK11xercesc_2_722XMLAbstractDoubleFloat8getValueEv = comdat any

$_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getTypeEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcED2Ev = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEED2Ev = comdat any

$_ZNK11xercesc_2_712XMLException7getCodeEv = comdat any

$_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_724ValueHashTableBucketElemINS_7XSValue8DataTypeEEC2EPvRKS2_PS3_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc = comdat any

$_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE9removeAllEv = comdat any

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

@_ZN11xercesc_2_77XSValueC1ENS0_8DataTypeEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE
@_ZN11xercesc_2_77XSValueD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_77XSValueD2Ev

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueMutexCleanupE) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE) #13
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.2() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22XSValueRegistryCleanupE) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer24initializeXSValueStaticsEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 104) #13
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgLangPatternE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %2) #13
          to label %3 unwind label %4

3:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue11reinitRegExEv) #13
  tail call void @_ZN11xercesc_2_77XSValue18initializeRegistryEv() #13
  ret void

4:                                                ; preds = %0
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %1) #14
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSValue11reinitRegExEv() #4 align 2 !prof !43 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_717RegularExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSValue18initializeRegistryEv() local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
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
  %45 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 32) #13
  %46 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %45, i32 noundef 43, ptr noundef %46) #13
          to label %47 unwind label %92

47:                                               ; preds = %0
  store ptr %45, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L22XSValueRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue14reinitRegistryEv) #13
  %48 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #15
  store i32 0, ptr %1, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %48, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_STRINGE, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #15
  %49 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  store i32 1, ptr %2, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_BOOLEANE, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  %50 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 2, ptr %3, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_DECIMALE, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  %51 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 3, ptr %4, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %51, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_FLOATE, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %52 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 4, ptr %5, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %52, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_DOUBLEE, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %53 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 5, ptr %6, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_DURATIONE, ptr noundef nonnull align 4 dereferenceable(4) %6) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %54 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 6, ptr %7, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %54, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_DATETIMEE, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  %55 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 7, ptr %8, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %55, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_TIMEE, ptr noundef nonnull align 4 dereferenceable(4) %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  %56 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 8, ptr %9, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %56, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_DATEE, ptr noundef nonnull align 4 dereferenceable(4) %9) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  %57 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 9, ptr %10, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgDT_YEARMONTHE, ptr noundef nonnull align 4 dereferenceable(4) %10) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  %58 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 10, ptr %11, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %58, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_YEARE, ptr noundef nonnull align 4 dereferenceable(4) %11) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  %59 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 11, ptr %12, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_MONTHDAYE, ptr noundef nonnull align 4 dereferenceable(4) %12) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  %60 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store i32 12, ptr %13, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols8fgDT_DAYE, ptr noundef nonnull align 4 dereferenceable(4) %13) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  %61 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  store i32 13, ptr %14, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_MONTHE, ptr noundef nonnull align 4 dereferenceable(4) %14) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  %62 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  store i32 14, ptr %15, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols14fgDT_HEXBINARYE, ptr noundef nonnull align 4 dereferenceable(4) %15) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  %63 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  store i32 15, ptr %16, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %63, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols17fgDT_BASE64BINARYE, ptr noundef nonnull align 4 dereferenceable(4) %16) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  %64 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #15
  store i32 16, ptr %17, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %64, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_ANYURIE, ptr noundef nonnull align 4 dereferenceable(4) %17) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #15
  %65 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #15
  store i32 17, ptr %18, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %65, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_QNAMEE, ptr noundef nonnull align 4 dereferenceable(4) %18) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #15
  %66 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #15
  store i32 18, ptr %19, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNotationStringE, ptr noundef nonnull align 4 dereferenceable(4) %19) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #15
  %67 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %20) #15
  store i32 19, ptr %20, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %67, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols21fgDT_NORMALIZEDSTRINGE, ptr noundef nonnull align 4 dereferenceable(4) %20) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %20) #15
  %68 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #15
  store i32 20, ptr %21, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %68, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_TOKENE, ptr noundef nonnull align 4 dereferenceable(4) %21) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #15
  %69 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #15
  store i32 21, ptr %22, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %69, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols13fgDT_LANGUAGEE, ptr noundef nonnull align 4 dereferenceable(4) %22) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #15
  %70 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #15
  store i32 22, ptr %23, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %70, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgNmTokenStringE, ptr noundef nonnull align 4 dereferenceable(4) %23) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #15
  %71 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24) #15
  store i32 23, ptr %24, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgNmTokensStringE, ptr noundef nonnull align 4 dereferenceable(4) %24) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24) #15
  %72 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25) #15
  store i32 24, ptr %25, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_NAMEE, ptr noundef nonnull align 4 dereferenceable(4) %25) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25) #15
  %73 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %26) #15
  store i32 25, ptr %26, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_NCNAMEE, ptr noundef nonnull align 4 dereferenceable(4) %26) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %26) #15
  %74 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27) #15
  store i32 26, ptr %27, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgIDStringE, ptr noundef nonnull align 4 dereferenceable(4) %27) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27) #15
  %75 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #15
  store i32 27, ptr %28, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %75, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgIDRefStringE, ptr noundef nonnull align 4 dereferenceable(4) %28) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #15
  %76 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %29) #15
  store i32 28, ptr %29, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %76, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgIDRefsStringE, ptr noundef nonnull align 4 dereferenceable(4) %29) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %29) #15
  %77 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #15
  store i32 29, ptr %30, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %77, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgEntityStringE, ptr noundef nonnull align 4 dereferenceable(4) %30) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #15
  %78 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #15
  store i32 30, ptr %31, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %78, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni16fgEntitiesStringE, ptr noundef nonnull align 4 dereferenceable(4) %31) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #15
  %79 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %32) #15
  store i32 31, ptr %32, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %79, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols12fgDT_INTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %32) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %32) #15
  %80 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33) #15
  store i32 32, ptr %33, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %80, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONPOSITIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %33) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33) #15
  %81 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #15
  store i32 33, ptr %34, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %81, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgDT_NEGATIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %34) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #15
  %82 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %35) #15
  store i32 34, ptr %35, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %82, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_LONGE, ptr noundef nonnull align 4 dereferenceable(4) %35) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %35) #15
  %83 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36) #15
  store i32 35, ptr %36, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %83, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols8fgDT_INTE, ptr noundef nonnull align 4 dereferenceable(4) %36) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36) #15
  %84 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #15
  store i32 36, ptr %37, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_SHORTE, ptr noundef nonnull align 4 dereferenceable(4) %37) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #15
  %85 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #15
  store i32 37, ptr %38, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_BYTEE, ptr noundef nonnull align 4 dereferenceable(4) %38) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #15
  %86 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #15
  store i32 38, ptr %39, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %86, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols23fgDT_NONNEGATIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %39) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #15
  %87 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40) #15
  store i32 39, ptr %40, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_ULONGE, ptr noundef nonnull align 4 dereferenceable(4) %40) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40) #15
  %88 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %41) #15
  store i32 40, ptr %41, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgDT_UINTE, ptr noundef nonnull align 4 dereferenceable(4) %41) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %41) #15
  %89 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #15
  store i32 41, ptr %42, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %89, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols11fgDT_USHORTE, ptr noundef nonnull align 4 dereferenceable(4) %42) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #15
  %90 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #15
  store i32 42, ptr %43, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %90, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols10fgDT_UBYTEE, ptr noundef nonnull align 4 dereferenceable(4) %43) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #15
  %91 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #15
  store i32 43, ptr %44, align 4, !tbaa !48
  call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols20fgDT_POSITIVEINTEGERE, ptr noundef nonnull align 4 dereferenceable(4) %44) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #15
  ret void

92:                                               ; preds = %0
  %93 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %45) #14
  resume { ptr, i32 } %93
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_77XSValue11getDataTypeEPKt(ptr noundef %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %6 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gXSValueMutexEv() #13
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %6) #13
  %7 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_77XSValue18initializeRegistryEv() #13
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
          to label %41 unwind label %21

18:                                               ; preds = %10
  invoke void @__cxa_end_catch()
          to label %25 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %26

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %38

23:                                               ; preds = %9, %5
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  %24 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  br label %28

25:                                               ; preds = %18
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  br label %36

26:                                               ; preds = %21, %19
  %27 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  resume { ptr, i32 } %27

28:                                               ; preds = %23, %1
  %29 = phi ptr [ %24, %23 ], [ %3, %1 ]
  %30 = call noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %0) #13
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  %33 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef %0, ptr noundef %33) #13
  %35 = load i32, ptr %34, align 4, !tbaa !48
  br label %36

36:                                               ; preds = %25, %28, %31
  %37 = phi i32 [ %35, %31 ], [ 44, %25 ], [ 44, %28 ]
  ret i32 %37

38:                                               ; preds = %21
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #17
  unreachable

41:                                               ; preds = %17
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gXSValueMutexEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !43 !PGOFuncName !50 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %22

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !44
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %5) #13
  %6 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %9) #13
          to label %11 unwind label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %13 unwind label %16

13:                                               ; preds = %11
  store ptr %10, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue11reinitMutexEv) #13
          to label %18 unwind label %14

14:                                               ; preds = %13, %8
  %15 = landingpad { ptr, i32 }
          cleanup
  br label %20

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #14
  br label %20

18:                                               ; preds = %13, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  %19 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !44
  br label %22

20:                                               ; preds = %16, %14
  %21 = phi { ptr, i32 } [ %15, %14 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  resume { ptr, i32 } %21

22:                                               ; preds = %18, %0
  %23 = phi ptr [ %19, %18 ], [ %2, %0 ]
  ret ptr %23
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #6

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE11containsKeyEPKv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call noundef ptr @_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp ne ptr %4, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3getEPKvPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 153, i32 noundef 50, ptr noundef %2) #13
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  resume { ptr, i32 } %11

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %2, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr null, ptr %4, align 8, !tbaa !54
  %5 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  store i32 %1, ptr %5, align 8, !tbaa !55
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  store ptr null, ptr %6, align 8, !tbaa !56
  tail call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) #13
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %7) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
          to label %9 unwind label %10

9:                                                ; preds = %3
  store ptr %8, ptr %6, align 8, !tbaa !56
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %7) #14
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSValue14reinitRegistryEv() #4 align 2 !prof !43 {
  %1 = load ptr, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_77XSValue17fDataTypeRegistryE, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE3putEPvRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %5 = call noundef ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 4, !tbaa !48
  store i32 %8, ptr %5, align 8, !tbaa !57
  %9 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %5, i64 0, i32 2
  store ptr %1, ptr %9, align 8, !tbaa !59
  br label %26

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !51
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 24) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = load i32, ptr %4, align 4, !tbaa !62
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  call void @_ZN11xercesc_2_724ValueHashTableBucketElemINS_7XSValue8DataTypeEEC2EPvRKS2_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %21) #13
  %22 = load ptr, ptr %16, align 8, !tbaa !54
  %23 = load i32, ptr %4, align 4, !tbaa !62
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  store ptr %15, ptr %25, align 8, !tbaa !44
  br label %26

26:                                               ; preds = %10, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 1
  store i8 0, ptr %4, align 8, !tbaa !63
  %5 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !67
  store i32 %1, ptr %0, align 8, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !69 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSValueD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !63, !range !70, !noundef !71
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  %8 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load ptr, ptr %7, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %9) #13
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue8validateEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 !prof !43 {
  %6 = icmp eq ptr %0, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = load i16, ptr %0, align 2, !tbaa !73
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  switch i32 %3, label %20 [
    i32 0, label %11
    i32 1, label %14
  ]

11:                                               ; preds = %10
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %12) #13
  br i1 %13, label %17, label %20

14:                                               ; preds = %10
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %15) #13
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %11, %7, %5
  switch i32 %1, label %19 [
    i32 0, label %18
    i32 19, label %18
    i32 20, label %18
    i32 16, label %18
    i32 14, label %18
    i32 15, label %18
  ]

18:                                               ; preds = %17, %17, %17, %17, %17, %17
  store i32 0, ptr %2, align 4, !tbaa !75
  br label %31

19:                                               ; preds = %17
  store i32 1, ptr %2, align 4, !tbaa !75
  br label %31

20:                                               ; preds = %11, %10, %14
  store i32 0, ptr %2, align 4, !tbaa !75
  %21 = zext i32 %1 to i64
  %22 = getelementptr inbounds [44 x i32], ptr @_ZN11xercesc_2_77XSValue7inGroupE, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !77
  switch i32 %23, label %30 [
    i32 0, label %24
    i32 1, label %26
    i32 2, label %28
  ]

24:                                               ; preds = %20
  %25 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XSValue16validateNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4) #13
  br label %31

26:                                               ; preds = %20
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XSValue17validateDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4) #13
  br label %31

28:                                               ; preds = %20
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) #13
  br label %31

30:                                               ; preds = %20
  store i32 10, ptr %2, align 4, !tbaa !75
  br label %31

31:                                               ; preds = %30, %28, %26, %24, %19, %18
  %32 = phi i1 [ false, %19 ], [ true, %18 ], [ false, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ]
  ret i1 %32
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !80

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !73
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !81

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !73
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !82, !llvm.loop !83

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

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue16validateNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
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
  switch i32 %1, label %124 [
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
    i32 35, label %103
    i32 36, label %103
    i32 37, label %103
    i32 40, label %103
    i32 41, label %103
    i32 42, label %103
  ]

18:                                               ; preds = %4
  invoke void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3) #13
          to label %121 unwind label %19

19:                                               ; preds = %18
  %20 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %108

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %0, ptr noundef %3) #13
          to label %22 unwind label %23

22:                                               ; preds = %21
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %121

23:                                               ; preds = %21
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %108

25:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %0, ptr noundef %3) #13
          to label %26 unwind label %27

26:                                               ; preds = %25
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %121

27:                                               ; preds = %25
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %108

29:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %30 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #13
  %31 = add i32 %30, 1
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 1
  %34 = load ptr, ptr %3, align 8, !tbaa !60
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %33) #13
          to label %38 unwind label %40

38:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %37, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 0, ptr %8, align 4, !tbaa !62
  invoke void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull %3) #13
          to label %39 unwind label %42

39:                                               ; preds = %38
  switch i32 %1, label %98 [
    i32 31, label %100
    i32 33, label %44
    i32 32, label %50
    i32 38, label %56
    i32 43, label %62
    i32 34, label %68
    i32 39, label %83
  ]

40:                                               ; preds = %29
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %108

42:                                               ; preds = %38
  %43 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %101

44:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 -1, ptr %9, align 4, !tbaa !62
  %45 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull getelementptr inbounds ([0 x i16], ptr @_ZN11xercesc_2_76XMLUni8fgNegOneE, i64 0, i64 1), ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull %3) #13
          to label %46 unwind label %48

46:                                               ; preds = %44
  %47 = icmp eq i32 %45, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br i1 %47, label %98, label %100

48:                                               ; preds = %44
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %101

50:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #15
  store i32 0, ptr %10, align 4, !tbaa !62
  %51 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgValueZeroE, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull %3) #13
          to label %52 unwind label %54

52:                                               ; preds = %50
  %53 = icmp eq i32 %51, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br i1 %53, label %98, label %100

54:                                               ; preds = %50
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #15
  br label %101

56:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #15
  store i32 0, ptr %11, align 4, !tbaa !62
  %57 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgValueZeroE, ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull %3) #13
          to label %58 unwind label %60

58:                                               ; preds = %56
  %59 = icmp eq i32 %57, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  br i1 %59, label %98, label %100

60:                                               ; preds = %56
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #15
  br label %101

62:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #15
  store i32 1, ptr %12, align 4, !tbaa !62
  %63 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni10fgValueOneE, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull %3) #13
          to label %64 unwind label %66

64:                                               ; preds = %62
  %65 = icmp eq i32 %63, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  br i1 %65, label %98, label %100

66:                                               ; preds = %62
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #15
  br label %101

68:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  store i32 -1, ptr %13, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #15
  %69 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull getelementptr inbounds ([0 x i16], ptr @_ZN11xercesc_2_76XMLUni12fgLongMinIncE, i64 0, i64 1), ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull %3) #13
          to label %70 unwind label %77

70:                                               ; preds = %68
  %71 = icmp eq i32 %69, -1
  br i1 %71, label %76, label %72

72:                                               ; preds = %70
  store i32 1, ptr %14, align 4, !tbaa !62
  %73 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgLongMaxIncE, ptr noundef nonnull align 4 dereferenceable(4) %14, ptr noundef nonnull %3) #13
          to label %74 unwind label %79

74:                                               ; preds = %72
  %75 = icmp eq i32 %73, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br i1 %75, label %98, label %100

76:                                               ; preds = %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br label %98

77:                                               ; preds = %68
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %81

79:                                               ; preds = %72
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #15
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  br label %101

83:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #15
  store i32 0, ptr %15, align 4, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #15
  %84 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni11fgValueZeroE, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull %3) #13
          to label %85 unwind label %92

85:                                               ; preds = %83
  %86 = icmp eq i32 %84, -1
  br i1 %86, label %91, label %87

87:                                               ; preds = %85
  store i32 1, ptr %16, align 4, !tbaa !62
  %88 = invoke noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef %37, ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgULongMaxIncE, ptr noundef nonnull align 4 dereferenceable(4) %16, ptr noundef nonnull %3) #13
          to label %89 unwind label %94

89:                                               ; preds = %87
  %90 = icmp eq i32 %88, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  br i1 %90, label %98, label %100

91:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  br label %98

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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #15
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #15
  br label %101

98:                                               ; preds = %39, %89, %91, %74, %76, %64, %58, %52, %46
  %99 = phi i32 [ 6, %46 ], [ 6, %52 ], [ 6, %58 ], [ 6, %64 ], [ 6, %76 ], [ 6, %74 ], [ 6, %91 ], [ 6, %89 ], [ 4, %39 ]
  store i32 %99, ptr %2, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %124

100:                                              ; preds = %39, %46, %52, %58, %64, %74, %89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %121

101:                                              ; preds = %96, %81, %66, %60, %54, %48, %42
  %102 = phi { ptr, i32 } [ %97, %96 ], [ %82, %81 ], [ %67, %66 ], [ %61, %60 ], [ %55, %54 ], [ %49, %48 ], [ %43, %42 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %108

103:                                              ; preds = %4, %4, %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  %104 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue21getActualNumericValueEPKtRNS0_6StatusERNS0_7t_valueEPNS_13MemoryManagerENS0_8DataTypeE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %3, i32 noundef %1) #13
          to label %105 unwind label %106

105:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  br i1 %104, label %121, label %124

106:                                              ; preds = %103
  %107 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  br label %108

108:                                              ; preds = %40, %101, %106, %27, %23, %19
  %109 = phi { ptr, i32 } [ %107, %106 ], [ %28, %27 ], [ %24, %23 ], [ %20, %19 ], [ %102, %101 ], [ %41, %40 ]
  %110 = extractvalue { ptr, i32 } %109, 0
  %111 = extractvalue { ptr, i32 } %109, 1
  %112 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = call ptr @__cxa_begin_catch(ptr %110) #15
  invoke void @__cxa_rethrow() #16
          to label %131 unwind label %122

116:                                              ; preds = %108
  %117 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %118 = icmp eq i32 %111, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = call ptr @__cxa_begin_catch(ptr %110) #15
  store i32 6, ptr %2, align 4, !tbaa !75
  call void @__cxa_end_catch()
  br label %124

121:                                              ; preds = %100, %105, %18, %26, %22
  br label %124

122:                                              ; preds = %114
  %123 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %126 unwind label %128

124:                                              ; preds = %98, %105, %4, %119, %121
  %125 = phi i1 [ true, %121 ], [ false, %105 ], [ false, %119 ], [ false, %4 ], [ false, %98 ]
  ret i1 %125

126:                                              ; preds = %122, %116
  %127 = phi { ptr, i32 } [ %109, %116 ], [ %123, %122 ]
  resume { ptr, i32 } %127

128:                                              ; preds = %122
  %129 = landingpad { ptr, i32 }
          catch ptr null
  %130 = extractvalue { ptr, i32 } %129, 0
  call void @__clang_call_terminate(ptr %130) #17
  unreachable

131:                                              ; preds = %114
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue17validateDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca i32, align 4
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  store i32 %1, ptr %5, align 4, !tbaa !48
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %8, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %8) #13
          to label %9 unwind label %11

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %8, ptr noundef %3) #13
          to label %10 unwind label %13

10:                                               ; preds = %9
  switch i32 %1, label %26 [
    i32 5, label %15
    i32 6, label %18
    i32 7, label %19
    i32 8, label %20
    i32 9, label %21
    i32 10, label %22
    i32 11, label %23
    i32 12, label %24
    i32 13, label %25
  ]

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %56

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %28

15:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

16:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %15
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #14
  br label %28

18:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

20:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

21:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

22:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

23:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

24:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

25:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %26 unwind label %16

26:                                               ; preds = %15, %18, %19, %20, %21, %22, %23, %24, %25, %10
  %27 = phi i1 [ false, %10 ], [ true, %25 ], [ true, %24 ], [ true, %23 ], [ true, %22 ], [ true, %21 ], [ true, %20 ], [ true, %19 ], [ true, %18 ], [ true, %15 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  br label %54

28:                                               ; preds = %16, %13
  %29 = phi { ptr, i32 } [ %17, %16 ], [ %14, %13 ]
  %30 = extractvalue { ptr, i32 } %29, 0
  %31 = extractvalue { ptr, i32 } %29, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  %32 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE) #15
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = call ptr @__cxa_begin_catch(ptr %30) #15
  %36 = call fastcc noundef zeroext i1 @_ZN11xercesc_2_7L18checkTimeZoneErrorERKNS_7XSValue8DataTypeERKNS_23SchemaDateTimeExceptionE(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(48) %35) #13
  %37 = select i1 %36, i32 9, i32 6
  store i32 %37, ptr %2, align 4, !tbaa !75
  invoke void @__cxa_end_catch()
          to label %54 unwind label %52

38:                                               ; preds = %28
  %39 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %40 = icmp eq i32 %31, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call ptr @__cxa_begin_catch(ptr %30) #15
  invoke void @__cxa_rethrow() #16
          to label %61 unwind label %50

43:                                               ; preds = %38
  %44 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %45 = icmp eq i32 %31, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = call ptr @__cxa_begin_catch(ptr %30) #15
  store i32 6, ptr %2, align 4, !tbaa !75
  invoke void @__cxa_end_catch()
          to label %54 unwind label %48

48:                                               ; preds = %46
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %56

50:                                               ; preds = %41
  %51 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %56 unwind label %58

52:                                               ; preds = %34
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %56

54:                                               ; preds = %34, %46, %26
  %55 = phi i1 [ %27, %26 ], [ false, %46 ], [ false, %34 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i1 %55

56:                                               ; preds = %52, %50, %48, %43, %11
  %57 = phi { ptr, i32 } [ %49, %48 ], [ %29, %43 ], [ %12, %11 ], [ %51, %50 ], [ %53, %52 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %57

58:                                               ; preds = %50
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #17
  unreachable

61:                                               ; preds = %41
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  %11 = alloca %"class.xercesc_2_7::XMLStringTokenizer", align 8
  switch i32 %1, label %309 [
    i32 1, label %12
    i32 14, label %37
    i32 15, label %49
    i32 16, label %56
    i32 17, label %60
    i32 18, label %77
    i32 0, label %88
    i32 19, label %104
    i32 20, label %130
    i32 21, label %130
    i32 22, label %197
    i32 23, label %207
    i32 24, label %244
    i32 25, label %254
    i32 26, label %254
    i32 27, label %254
    i32 29, label %254
    i32 30, label %264
    i32 28, label %264
  ]

12:                                               ; preds = %5
  %13 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
          to label %14 unwind label %24

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %13, ptr noundef %4) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %13) #13
          to label %15 unwind label %26

15:                                               ; preds = %14
  %16 = load i32, ptr @_ZN11xercesc_2_76XMLUni28fgBooleanValueSpaceArraySizeE, align 4, !tbaa !62
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %15
  %19 = zext i32 %16 to i64
  br label %20

20:                                               ; preds = %18, %28
  %21 = phi i64 [ 0, %18 ], [ %29, %28 ]
  %22 = getelementptr inbounds [0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 %21
  %23 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %13, ptr noundef nonnull %22) #13
  br i1 %23, label %31, label %28

24:                                               ; preds = %12
  %25 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %301

26:                                               ; preds = %14
  %27 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %301

28:                                               ; preds = %20
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, %19
  br i1 %30, label %33, label %20, !llvm.loop !85

31:                                               ; preds = %20
  %32 = trunc i64 %21 to i32
  br label %33

33:                                               ; preds = %28, %31, %15
  %34 = phi i32 [ 0, %15 ], [ %32, %31 ], [ %16, %28 ]
  %35 = icmp ne i32 %16, %34
  %36 = zext i1 %35 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %312

37:                                               ; preds = %5
  %38 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
          to label %39 unwind label %45

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %38, ptr noundef %4) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %38) #13
          to label %40 unwind label %47

40:                                               ; preds = %39
  %41 = invoke noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef %38) #13
          to label %42 unwind label %47

42:                                               ; preds = %40
  %43 = icmp ne i32 %41, -1
  %44 = zext i1 %43 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %312

45:                                               ; preds = %37
  %46 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %301

47:                                               ; preds = %40, %39
  %48 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %301

49:                                               ; preds = %5
  %50 = invoke noundef i32 @_ZN11xercesc_2_76Base6413getDataLengthEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %4, i32 noundef 0) #13
          to label %51 unwind label %54

51:                                               ; preds = %49
  %52 = icmp ne i32 %50, -1
  %53 = zext i1 %52 to i8
  br label %312

54:                                               ; preds = %259, %257, %249, %247, %202, %200, %56, %49
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %301

56:                                               ; preds = %5
  %57 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt(i1 noundef zeroext true, ptr noundef %0) #13
          to label %58 unwind label %54

58:                                               ; preds = %56
  %59 = zext i1 %57 to i8
  br label %312

60:                                               ; preds = %5
  %61 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
          to label %62 unwind label %73

62:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %61, ptr noundef %4) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %61) #13
          to label %63 unwind label %75

63:                                               ; preds = %62
  %64 = icmp eq i32 %3, 0
  %65 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %61) #13
  br i1 %64, label %66, label %68

66:                                               ; preds = %63
  %67 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isValidQNameEPKtj(ptr noundef %61, i32 noundef %65) #13
          to label %70 unwind label %75

68:                                               ; preds = %63
  %69 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isValidQNameEPKtj(ptr noundef %61, i32 noundef %65) #13
          to label %70 unwind label %75

70:                                               ; preds = %68, %66
  %71 = phi i1 [ %67, %66 ], [ %69, %68 ]
  %72 = zext i1 %71 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %312

73:                                               ; preds = %60
  %74 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %301

75:                                               ; preds = %68, %66, %62
  %76 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %301

77:                                               ; preds = %5
  %78 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
          to label %79 unwind label %84

79:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %78, ptr noundef %4) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %78) #13
          to label %80 unwind label %86

80:                                               ; preds = %79
  %81 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString15isValidNOTATIONEPKtPNS_13MemoryManagerE(ptr noundef %78, ptr noundef %4) #13
          to label %82 unwind label %86

82:                                               ; preds = %80
  %83 = zext i1 %81 to i8
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %312

84:                                               ; preds = %77
  %85 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %301

86:                                               ; preds = %80, %79
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %301

88:                                               ; preds = %5
  %89 = icmp eq i32 %3, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %88, %94
  %91 = phi ptr [ %95, %94 ], [ %0, %88 ]
  %92 = load i16, ptr %91, align 2, !tbaa !73
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %319, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds i16, ptr %91, i64 1
  %96 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_09isXMLCharEtt(i16 noundef zeroext %92, i16 noundef zeroext 0) #13
  br i1 %96, label %90, label %312, !llvm.loop !86

97:                                               ; preds = %88, %101
  %98 = phi ptr [ %102, %101 ], [ %0, %88 ]
  %99 = load i16, ptr %98, align 2, !tbaa !73
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %319, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds i16, ptr %98, i64 1
  %103 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_19isXMLCharEtt(i16 noundef zeroext %99, i16 noundef zeroext 0) #13
  br i1 %103, label %97, label %312, !llvm.loop !87

104:                                              ; preds = %5
  %105 = icmp eq i32 %3, 0
  %106 = load i16, ptr %0, align 2, !tbaa !73
  %107 = icmp eq i16 %106, 0
  br i1 %105, label %109, label %108

108:                                              ; preds = %104
  br i1 %107, label %319, label %120

109:                                              ; preds = %104
  br i1 %107, label %319, label %110

110:                                              ; preds = %109, %116
  %111 = phi i16 [ %118, %116 ], [ %106, %109 ]
  %112 = phi ptr [ %117, %116 ], [ %0, %109 ]
  %113 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_09isXMLCharEtt(i16 noundef zeroext %111, i16 noundef zeroext 0) #13
  br i1 %113, label %114, label %312

114:                                              ; preds = %110
  %115 = load i16, ptr %112, align 2, !tbaa !73
  switch i16 %115, label %116 [
    i16 13, label %312
    i16 10, label %312
    i16 9, label %312
  ]

116:                                              ; preds = %114
  %117 = getelementptr inbounds i16, ptr %112, i64 1
  %118 = load i16, ptr %117, align 2, !tbaa !73
  %119 = icmp eq i16 %118, 0
  br i1 %119, label %319, label %110, !llvm.loop !88

120:                                              ; preds = %108, %126
  %121 = phi i16 [ %128, %126 ], [ %106, %108 ]
  %122 = phi ptr [ %127, %126 ], [ %0, %108 ]
  %123 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_19isXMLCharEtt(i16 noundef zeroext %121, i16 noundef zeroext 0) #13
  br i1 %123, label %124, label %312

124:                                              ; preds = %120
  %125 = load i16, ptr %122, align 2, !tbaa !73
  switch i16 %125, label %126 [
    i16 13, label %312
    i16 10, label %312
    i16 9, label %312
  ]

126:                                              ; preds = %124
  %127 = getelementptr inbounds i16, ptr %122, i64 1
  %128 = load i16, ptr %127, align 2, !tbaa !73
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %319, label %120, !llvm.loop !89

130:                                              ; preds = %5, %5
  %131 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #13
  %132 = icmp eq i32 %3, 0
  %133 = load i16, ptr %0, align 2, !tbaa !73
  br i1 %132, label %134, label %159

134:                                              ; preds = %130
  %135 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %133) #13
  br i1 %135, label %312, label %136

136:                                              ; preds = %134
  %137 = add i32 %131, -1
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i16, ptr %0, i64 %138
  %140 = load i16, ptr %139, align 2, !tbaa !73
  %141 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %140) #13
  br i1 %141, label %312, label %142

142:                                              ; preds = %136
  %143 = load i16, ptr %0, align 2, !tbaa !73
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %184, label %149

145:                                              ; preds = %156
  %146 = getelementptr inbounds i16, ptr %152, i64 1
  %147 = load i16, ptr %146, align 2, !tbaa !73
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %184, label %149, !llvm.loop !90

149:                                              ; preds = %142, %145
  %150 = phi i16 [ %147, %145 ], [ %143, %142 ]
  %151 = phi i1 [ %157, %145 ], [ false, %142 ]
  %152 = phi ptr [ %146, %145 ], [ %0, %142 ]
  %153 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_09isXMLCharEtt(i16 noundef zeroext %150, i16 noundef zeroext 0) #13
  br i1 %153, label %154, label %312

154:                                              ; preds = %149
  %155 = load i16, ptr %152, align 2, !tbaa !73
  switch i16 %155, label %156 [
    i16 13, label %312
    i16 10, label %312
    i16 9, label %312
  ]

156:                                              ; preds = %154
  %157 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %155) #13
  %158 = and i1 %151, %157
  br i1 %158, label %312, label %145

159:                                              ; preds = %130
  %160 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt(i16 noundef zeroext %133, i16 noundef zeroext 0) #13
  br i1 %160, label %312, label %161

161:                                              ; preds = %159
  %162 = add i32 %131, -1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds i16, ptr %0, i64 %163
  %165 = load i16, ptr %164, align 2, !tbaa !73
  %166 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt(i16 noundef zeroext %165, i16 noundef zeroext 0) #13
  br i1 %166, label %312, label %167

167:                                              ; preds = %161
  %168 = load i16, ptr %0, align 2, !tbaa !73
  %169 = icmp eq i16 %168, 0
  br i1 %169, label %184, label %174

170:                                              ; preds = %181
  %171 = getelementptr inbounds i16, ptr %177, i64 1
  %172 = load i16, ptr %171, align 2, !tbaa !73
  %173 = icmp eq i16 %172, 0
  br i1 %173, label %184, label %174, !llvm.loop !91

174:                                              ; preds = %167, %170
  %175 = phi i16 [ %172, %170 ], [ %168, %167 ]
  %176 = phi i1 [ %182, %170 ], [ false, %167 ]
  %177 = phi ptr [ %171, %170 ], [ %0, %167 ]
  %178 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_19isXMLCharEtt(i16 noundef zeroext %175, i16 noundef zeroext 0) #13
  br i1 %178, label %179, label %312

179:                                              ; preds = %174
  %180 = load i16, ptr %177, align 2, !tbaa !73
  switch i16 %180, label %181 [
    i16 13, label %312
    i16 10, label %312
    i16 9, label %312
  ]

181:                                              ; preds = %179
  %182 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt(i16 noundef zeroext %180, i16 noundef zeroext 0) #13
  %183 = and i1 %176, %182
  br i1 %183, label %312, label %170

184:                                              ; preds = %170, %145, %167, %142
  %185 = icmp eq i32 %1, 21
  br i1 %185, label %186, label %319

186:                                              ; preds = %184
  %187 = invoke fastcc noundef ptr @_ZN11xercesc_2_7L8getRegExEv() #13
          to label %188 unwind label %191

188:                                              ; preds = %186
  %189 = icmp eq ptr %187, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  store i32 5, ptr %2, align 4, !tbaa !75
  br label %312

191:                                              ; preds = %193, %186
  %192 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %301

193:                                              ; preds = %188
  %194 = invoke noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %187, ptr noundef nonnull %0, ptr noundef %4) #13
          to label %195 unwind label %191

195:                                              ; preds = %193
  %196 = zext i1 %194 to i8
  br label %312

197:                                              ; preds = %5
  %198 = icmp eq i32 %3, 0
  %199 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #13
  br i1 %198, label %200, label %202

200:                                              ; preds = %197
  %201 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isValidNmtokenEPKtj(ptr noundef %0, i32 noundef %199) #13
          to label %204 unwind label %54

202:                                              ; preds = %197
  %203 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isValidNmtokenEPKtj(ptr noundef %0, i32 noundef %199) #13
          to label %204 unwind label %54

204:                                              ; preds = %202, %200
  %205 = phi i1 [ %201, %200 ], [ %203, %202 ]
  %206 = zext i1 %205 to i8
  br label %312

207:                                              ; preds = %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #15
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L12Separator_20E, ptr noundef %4) #13
          to label %208 unwind label %219

208:                                              ; preds = %207
  %209 = icmp eq i32 %3, 0
  br i1 %209, label %210, label %227

210:                                              ; preds = %208, %218
  %211 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
          to label %212 unwind label %221

212:                                              ; preds = %210
  br i1 %211, label %213, label %238

213:                                              ; preds = %212
  %214 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
          to label %215 unwind label %225

215:                                              ; preds = %213
  %216 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %214) #13
  %217 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isValidNmtokenEPKtj(ptr noundef %214, i32 noundef %216) #13
          to label %218 unwind label %225

218:                                              ; preds = %215
  br i1 %217, label %210, label %238

219:                                              ; preds = %207
  %220 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %242

221:                                              ; preds = %210
  %222 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %240

223:                                              ; preds = %227
  %224 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %240

225:                                              ; preds = %215, %213
  %226 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %240

227:                                              ; preds = %208, %235
  %228 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
          to label %229 unwind label %223

229:                                              ; preds = %227
  br i1 %228, label %230, label %238

230:                                              ; preds = %229
  %231 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %10) #13
          to label %232 unwind label %236

232:                                              ; preds = %230
  %233 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %231) #13
  %234 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isValidNmtokenEPKtj(ptr noundef %231, i32 noundef %233) #13
          to label %235 unwind label %236

235:                                              ; preds = %232
  br i1 %234, label %227, label %238

236:                                              ; preds = %232, %230
  %237 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %240

238:                                              ; preds = %235, %229, %218, %212
  %239 = phi i8 [ 1, %212 ], [ 0, %218 ], [ 1, %229 ], [ 0, %235 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #15
  br label %312

240:                                              ; preds = %221, %223, %236, %225
  %241 = phi { ptr, i32 } [ %226, %225 ], [ %237, %236 ], [ %222, %221 ], [ %224, %223 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #14
  br label %242

242:                                              ; preds = %240, %219
  %243 = phi { ptr, i32 } [ %241, %240 ], [ %220, %219 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #15
  br label %301

244:                                              ; preds = %5
  %245 = icmp eq i32 %3, 0
  %246 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #13
  br i1 %245, label %247, label %249

247:                                              ; preds = %244
  %248 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %0, i32 noundef %246) #13
          to label %251 unwind label %54

249:                                              ; preds = %244
  %250 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef %0, i32 noundef %246) #13
          to label %251 unwind label %54

251:                                              ; preds = %249, %247
  %252 = phi i1 [ %248, %247 ], [ %250, %249 ]
  %253 = zext i1 %252 to i8
  br label %312

254:                                              ; preds = %5, %5, %5, %5
  %255 = icmp eq i32 %3, 0
  %256 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #13
  br i1 %255, label %257, label %259

257:                                              ; preds = %254
  %258 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_013isValidNCNameEPKtj(ptr noundef %0, i32 noundef %256) #13
          to label %261 unwind label %54

259:                                              ; preds = %254
  %260 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isValidNCNameEPKtj(ptr noundef %0, i32 noundef %256) #13
          to label %261 unwind label %54

261:                                              ; preds = %259, %257
  %262 = phi i1 [ %258, %257 ], [ %260, %259 ]
  %263 = zext i1 %262 to i8
  br label %312

264:                                              ; preds = %5, %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #15
  invoke void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L12Separator_wsE, ptr noundef %4) #13
          to label %265 unwind label %276

265:                                              ; preds = %264
  %266 = icmp eq i32 %3, 0
  br i1 %266, label %267, label %284

267:                                              ; preds = %265, %275
  %268 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
          to label %269 unwind label %278

269:                                              ; preds = %267
  br i1 %268, label %270, label %295

270:                                              ; preds = %269
  %271 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
          to label %272 unwind label %282

272:                                              ; preds = %270
  %273 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %271) #13
  %274 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_013isValidNCNameEPKtj(ptr noundef %271, i32 noundef %273) #13
          to label %275 unwind label %282

275:                                              ; preds = %272
  br i1 %274, label %267, label %295

276:                                              ; preds = %264
  %277 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %299

278:                                              ; preds = %267
  %279 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %297

280:                                              ; preds = %284
  %281 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %297

282:                                              ; preds = %272, %270
  %283 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %297

284:                                              ; preds = %265, %292
  %285 = invoke noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
          to label %286 unwind label %280

286:                                              ; preds = %284
  br i1 %285, label %287, label %295

287:                                              ; preds = %286
  %288 = invoke noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
          to label %289 unwind label %293

289:                                              ; preds = %287
  %290 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %288) #13
  %291 = invoke noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isValidNCNameEPKtj(ptr noundef %288, i32 noundef %290) #13
          to label %292 unwind label %293

292:                                              ; preds = %289
  br i1 %291, label %284, label %295

293:                                              ; preds = %289, %287
  %294 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %297

295:                                              ; preds = %292, %286, %275, %269
  %296 = phi i8 [ 1, %269 ], [ 0, %275 ], [ 1, %286 ], [ 0, %292 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #15
  br label %312

297:                                              ; preds = %278, %280, %293, %282
  %298 = phi { ptr, i32 } [ %283, %282 ], [ %294, %293 ], [ %279, %278 ], [ %281, %280 ]
  call void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #14
  br label %299

299:                                              ; preds = %297, %276
  %300 = phi { ptr, i32 } [ %298, %297 ], [ %277, %276 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #15
  br label %301

301:                                              ; preds = %84, %86, %73, %75, %45, %47, %24, %26, %299, %242, %191, %54
  %302 = phi { ptr, i32 } [ %300, %299 ], [ %55, %54 ], [ %243, %242 ], [ %192, %191 ], [ %27, %26 ], [ %25, %24 ], [ %48, %47 ], [ %46, %45 ], [ %76, %75 ], [ %74, %73 ], [ %87, %86 ], [ %85, %84 ]
  %303 = extractvalue { ptr, i32 } %302, 1
  %304 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %322

306:                                              ; preds = %301
  %307 = extractvalue { ptr, i32 } %302, 0
  %308 = call ptr @__cxa_begin_catch(ptr %307) #15
  invoke void @__cxa_rethrow() #16
          to label %327 unwind label %310

309:                                              ; preds = %5
  store i32 4, ptr %2, align 4, !tbaa !75
  br label %312

310:                                              ; preds = %306
  %311 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %322 unwind label %324

312:                                              ; preds = %181, %179, %179, %179, %174, %156, %154, %154, %154, %149, %120, %124, %124, %124, %110, %114, %114, %114, %101, %94, %159, %161, %134, %136, %195, %58, %51, %190, %33, %42, %70, %82, %204, %238, %251, %261, %295, %309
  %313 = phi i8 [ 0, %309 ], [ %296, %295 ], [ %263, %261 ], [ %253, %251 ], [ %239, %238 ], [ %206, %204 ], [ %83, %82 ], [ %72, %70 ], [ %44, %42 ], [ %36, %33 ], [ %53, %51 ], [ %59, %58 ], [ 0, %190 ], [ %196, %195 ], [ 0, %136 ], [ 0, %134 ], [ 0, %161 ], [ 0, %159 ], [ 0, %94 ], [ 0, %101 ], [ 0, %114 ], [ 0, %114 ], [ 0, %114 ], [ 0, %110 ], [ 0, %124 ], [ 0, %124 ], [ 0, %124 ], [ 0, %120 ], [ 0, %149 ], [ 0, %154 ], [ 0, %154 ], [ 0, %154 ], [ 0, %156 ], [ 0, %174 ], [ 0, %179 ], [ 0, %179 ], [ 0, %179 ], [ 0, %181 ]
  %314 = icmp eq i8 %313, 0
  %315 = load i32, ptr %2, align 4
  %316 = icmp eq i32 %315, 0
  %317 = select i1 %314, i1 %316, i1 false
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %319

319:                                              ; preds = %126, %116, %97, %90, %108, %109, %184, %318, %312
  %320 = phi i8 [ 0, %318 ], [ %313, %312 ], [ 1, %184 ], [ 1, %109 ], [ 1, %108 ], [ 1, %90 ], [ 1, %97 ], [ 1, %116 ], [ 1, %126 ]
  %321 = icmp ne i8 %320, 0
  ret i1 %321

322:                                              ; preds = %310, %301
  %323 = phi { ptr, i32 } [ %302, %301 ], [ %311, %310 ]
  resume { ptr, i32 } %323

324:                                              ; preds = %310
  %325 = landingpad { ptr, i32 }
          catch ptr null
  %326 = extractvalue { ptr, i32 } %325, 0
  call void @__clang_call_terminate(ptr %326) #17
  unreachable

327:                                              ; preds = %306
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue26getCanonicalRepresentationEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #2 align 2 !prof !43 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %0, align 2, !tbaa !73
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  switch i32 %3, label %19 [
    i32 0, label %12
    i32 1, label %15
  ]

12:                                               ; preds = %11
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %13) #13
  br i1 %14, label %18, label %19

15:                                               ; preds = %11
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %16) #13
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %8, %6
  store i32 1, ptr %2, align 4, !tbaa !75
  br label %30

19:                                               ; preds = %12, %11, %15
  store i32 0, ptr %2, align 4, !tbaa !75
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [44 x i32], ptr @_ZN11xercesc_2_77XSValue7inGroupE, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !77
  switch i32 %22, label %29 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
  ]

23:                                               ; preds = %19
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XSValue17getCanRepNumericsEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %4, ptr noundef %5) #13
  br label %30

25:                                               ; preds = %19
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XSValue18getCanRepDateTimesEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i1 noundef zeroext %4, ptr noundef %5) #13
  br label %30

27:                                               ; preds = %19
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XSValue16getCanRepStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) #13
  br label %30

29:                                               ; preds = %19
  store i32 10, ptr %2, align 4, !tbaa !75
  br label %30

30:                                               ; preds = %29, %27, %25, %23, %18
  %31 = phi ptr [ null, %18 ], [ null, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ]
  ret ptr %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue17getCanRepNumericsEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  br i1 %3, label %6, label %11

6:                                                ; preds = %5
  %7 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue16validateNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4) #13
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
  %14 = invoke noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
          to label %15 unwind label %18

15:                                               ; preds = %13
  %16 = icmp eq ptr %14, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %15
  store i32 6, ptr %2, align 4, !tbaa !75
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
  store i32 6, ptr %2, align 4, !tbaa !75
  tail call void @__cxa_end_catch()
  br label %49

33:                                               ; preds = %11
  %34 = add i32 %1, -3
  %35 = icmp ult i32 %34, 2
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = invoke noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
          to label %38 unwind label %18

38:                                               ; preds = %36
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %38
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %49

41:                                               ; preds = %33
  %42 = icmp eq i32 %1, 32
  %43 = invoke noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef %0, ptr noundef %4, i1 noundef zeroext %42) #13
          to label %44 unwind label %18

44:                                               ; preds = %41
  %45 = icmp eq ptr %43, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %49

47:                                               ; preds = %26
  %48 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %51 unwind label %53

49:                                               ; preds = %17, %15, %40, %38, %46, %44, %8, %31
  %50 = phi ptr [ null, %31 ], [ null, %8 ], [ null, %17 ], [ %14, %15 ], [ null, %40 ], [ %37, %38 ], [ null, %46 ], [ %43, %44 ]
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue18getCanRepDateTimesEPKtNS0_8DataTypeERNS0_6StatusEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = alloca i32, align 4
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  store i32 %1, ptr %6, align 4, !tbaa !48
  %9 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %9, ptr noundef %4) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %9) #13
          to label %10 unwind label %12

10:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %8) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef %9, ptr noundef %4) #13
          to label %11 unwind label %14

11:                                               ; preds = %10
  switch i32 %1, label %32 [
    i32 6, label %16
    i32 7, label %21
    i32 8, label %24
    i32 5, label %27
    i32 9, label %27
    i32 10, label %27
    i32 11, label %27
    i32 12, label %27
    i32 13, label %27
  ]

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %62

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %34

16:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %8) #13
          to label %17 unwind label %19

17:                                               ; preds = %16
  %18 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime34getDateTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef %4) #13
          to label %32 unwind label %19

19:                                               ; preds = %28, %25, %24, %22, %21, %17, %16
  %20 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #14
  br label %34

21:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %8) #13
          to label %22 unwind label %19

22:                                               ; preds = %21
  %23 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef %4) #13
          to label %32 unwind label %19

24:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %8) #13
          to label %25 unwind label %19

25:                                               ; preds = %24
  %26 = invoke noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getDateCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %8, ptr noundef %4) #13
          to label %32 unwind label %19

27:                                               ; preds = %11, %11, %11, %11, %11, %11
  br i1 %3, label %28, label %31

28:                                               ; preds = %27
  %29 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue17validateDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %9, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %4) #13
          to label %30 unwind label %19

30:                                               ; preds = %28
  br i1 %29, label %31, label %32

31:                                               ; preds = %30, %27
  store i32 2, ptr %2, align 4, !tbaa !75
  br label %32

32:                                               ; preds = %11, %30, %31, %25, %22, %17
  %33 = phi ptr [ %18, %17 ], [ %23, %22 ], [ %26, %25 ], [ null, %31 ], [ null, %30 ], [ null, %11 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %8) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  br label %60

34:                                               ; preds = %19, %14
  %35 = phi { ptr, i32 } [ %20, %19 ], [ %15, %14 ]
  %36 = extractvalue { ptr, i32 } %35, 0
  %37 = extractvalue { ptr, i32 } %35, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %8) #15
  %38 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE) #15
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = call ptr @__cxa_begin_catch(ptr %36) #15
  %42 = call fastcc noundef zeroext i1 @_ZN11xercesc_2_7L18checkTimeZoneErrorERKNS_7XSValue8DataTypeERKNS_23SchemaDateTimeExceptionE(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(48) %41) #13
  %43 = select i1 %42, i32 9, i32 6
  store i32 %43, ptr %2, align 4, !tbaa !75
  invoke void @__cxa_end_catch()
          to label %60 unwind label %58

44:                                               ; preds = %34
  %45 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %46 = icmp eq i32 %37, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call ptr @__cxa_begin_catch(ptr %36) #15
  invoke void @__cxa_rethrow() #16
          to label %67 unwind label %56

49:                                               ; preds = %44
  %50 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %51 = icmp eq i32 %37, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = call ptr @__cxa_begin_catch(ptr %36) #15
  store i32 6, ptr %2, align 4, !tbaa !75
  invoke void @__cxa_end_catch()
          to label %60 unwind label %54

54:                                               ; preds = %52
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %62

56:                                               ; preds = %47
  %57 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %62 unwind label %64

58:                                               ; preds = %40
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %62

60:                                               ; preds = %40, %52, %32
  %61 = phi ptr [ %33, %32 ], [ null, %52 ], [ null, %40 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  ret ptr %61

62:                                               ; preds = %58, %56, %54, %49, %12
  %63 = phi { ptr, i32 } [ %55, %54 ], [ %35, %49 ], [ %13, %12 ], [ %57, %56 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  resume { ptr, i32 } %63

64:                                               ; preds = %56
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %47
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue16getCanRepStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  switch i32 %1, label %73 [
    i32 1, label %9
    i32 14, label %30
    i32 15, label %47
    i32 16, label %54
    i32 17, label %54
    i32 18, label %54
    i32 0, label %54
    i32 19, label %54
    i32 20, label %54
    i32 21, label %54
    i32 22, label %54
    i32 23, label %54
    i32 24, label %54
    i32 25, label %54
    i32 26, label %54
    i32 27, label %54
    i32 29, label %54
    i32 30, label %54
    i32 28, label %54
  ]

9:                                                ; preds = %6
  %10 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %5) #13
          to label %11 unwind label %16

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %10, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %10) #13
          to label %12 unwind label %18

12:                                               ; preds = %11
  %13 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE) #13
  br i1 %13, label %24, label %14

14:                                               ; preds = %12
  %15 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2)) #13
  br i1 %15, label %24, label %20

16:                                               ; preds = %9
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %60

18:                                               ; preds = %24, %11
  %19 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %60

20:                                               ; preds = %14
  %21 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1)) #13
  br i1 %21, label %24, label %22

22:                                               ; preds = %20
  %23 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %10, ptr noundef nonnull getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3)) #13
  br i1 %23, label %24, label %27

24:                                               ; preds = %12, %14, %20, %22
  %25 = phi ptr [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), %22 ], [ getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1), %20 ], [ @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, %14 ], [ @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, %12 ]
  %26 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %25, ptr noundef %5) #13
          to label %28 unwind label %18

27:                                               ; preds = %22
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %28

28:                                               ; preds = %24, %27
  %29 = phi ptr [ null, %27 ], [ %26, %24 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %73

30:                                               ; preds = %6
  %31 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %5) #13
          to label %32 unwind label %38

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %31, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %31) #13
          to label %33 unwind label %40

33:                                               ; preds = %32
  %34 = invoke noundef ptr @_ZN11xercesc_2_76HexBin26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %5) #13
          to label %35 unwind label %42

35:                                               ; preds = %33
  %36 = icmp eq ptr %34, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %44

38:                                               ; preds = %30
  %39 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %60

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %45

42:                                               ; preds = %33
  %43 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %45

44:                                               ; preds = %37, %35
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %73

45:                                               ; preds = %42, %40
  %46 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %60

47:                                               ; preds = %6
  %48 = invoke noundef ptr @_ZN11xercesc_2_76Base6426getCanonicalRepresentationEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef %5, i32 noundef 0) #13
          to label %49 unwind label %52

49:                                               ; preds = %47
  %50 = icmp eq ptr %48, null
  br i1 %50, label %51, label %73

51:                                               ; preds = %49
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %73

52:                                               ; preds = %47
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %60

54:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  br i1 %4, label %55, label %68

55:                                               ; preds = %54
  %56 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %5) #13
          to label %57 unwind label %58

57:                                               ; preds = %55
  br i1 %56, label %68, label %69

58:                                               ; preds = %55
  %59 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %60

60:                                               ; preds = %38, %45, %16, %18, %58, %52
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %53, %52 ], [ %19, %18 ], [ %17, %16 ], [ %46, %45 ], [ %39, %38 ]
  %62 = extractvalue { ptr, i32 } %61, 1
  %63 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = extractvalue { ptr, i32 } %61, 0
  %67 = call ptr @__cxa_begin_catch(ptr %66) #15
  invoke void @__cxa_rethrow() #16
          to label %80 unwind label %71

68:                                               ; preds = %57, %54
  br label %69

69:                                               ; preds = %57, %68
  %70 = phi i32 [ 2, %68 ], [ 6, %57 ]
  store i32 %70, ptr %2, align 4, !tbaa !75
  br label %73

71:                                               ; preds = %65
  %72 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %75 unwind label %77

73:                                               ; preds = %6, %49, %51, %69, %44, %28
  %74 = phi ptr [ null, %69 ], [ %34, %44 ], [ %29, %28 ], [ null, %51 ], [ %48, %49 ], [ null, %6 ]
  ret ptr %74

75:                                               ; preds = %71, %60
  %76 = phi { ptr, i32 } [ %61, %60 ], [ %72, %71 ]
  resume { ptr, i32 } %76

77:                                               ; preds = %71
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #17
  unreachable

80:                                               ; preds = %65
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue14getActualValueEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #2 align 2 !prof !43 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = load i16, ptr %0, align 2, !tbaa !73
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  switch i32 %3, label %19 [
    i32 0, label %12
    i32 1, label %15
  ]

12:                                               ; preds = %11
  %13 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %13) #13
  br i1 %14, label %18, label %19

15:                                               ; preds = %11
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isAllSpacesEPKtj(ptr noundef nonnull %0, i32 noundef %16) #13
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %8, %6
  store i32 1, ptr %2, align 4, !tbaa !75
  br label %30

19:                                               ; preds = %12, %11, %15
  store i32 0, ptr %2, align 4, !tbaa !75
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds [44 x i32], ptr @_ZN11xercesc_2_77XSValue7inGroupE, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !77
  switch i32 %22, label %29 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
  ]

23:                                               ; preds = %19
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XSValue17getActValNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %5) #13
  br label %30

25:                                               ; preds = %19
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %5) #13
  br label %30

27:                                               ; preds = %19
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XSValue16getActValStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) #13
  br label %30

29:                                               ; preds = %19
  store i32 10, ptr %2, align 4, !tbaa !75
  br label %30

30:                                               ; preds = %29, %27, %25, %23, %18
  %31 = phi ptr [ null, %18 ], [ null, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ]
  ret ptr %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue17getActValNumericsEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xercesc_2_7::XMLDouble", align 8
  %6 = alloca %"class.xercesc_2_7::XMLFloat", align 8
  %7 = alloca %"class.xercesc_2_7::XMLDouble", align 8
  %8 = alloca %"union.xercesc_2_7::XSValue::t_value", align 8
  switch i32 %1, label %145 [
    i32 2, label %9
    i32 3, label %26
    i32 4, label %49
    i32 31, label %71
    i32 33, label %71
    i32 32, label %71
    i32 38, label %71
    i32 43, label %71
    i32 34, label %71
    i32 35, label %71
    i32 36, label %71
    i32 37, label %71
    i32 39, label %71
    i32 40, label %71
    i32 41, label %71
    i32 42, label %71
  ]

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #15
  invoke void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %0, ptr noundef %3) #13
          to label %10 unwind label %13

10:                                               ; preds = %9
  %11 = call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat15isDataConvertedEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #13
  br i1 %11, label %12, label %15

12:                                               ; preds = %10
  store i32 7, ptr %2, align 4, !tbaa !75
  br label %22

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %24

15:                                               ; preds = %10
  %16 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #13
          to label %17 unwind label %20

17:                                               ; preds = %15
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %16, i32 noundef 2, ptr noundef %3) #13
  %18 = call noundef double @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #13
  %19 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %16, i64 0, i32 1
  store double %18, ptr %19, align 8, !tbaa !72
  br label %22

20:                                               ; preds = %15
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #14
  br label %24

22:                                               ; preds = %17, %12
  %23 = phi ptr [ null, %12 ], [ %16, %17 ]
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %145

24:                                               ; preds = %20, %13
  %25 = phi { ptr, i32 } [ %21, %20 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #15
  br label %130

26:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #15
  invoke void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %0, ptr noundef %3) #13
          to label %27 unwind label %35

27:                                               ; preds = %26
  %28 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #13
          to label %29 unwind label %37

29:                                               ; preds = %27
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %28, i32 noundef 3, ptr noundef %3) #13
  %30 = call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat15isDataConvertedEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #13
  %31 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %28, i64 0, i32 1
  br i1 %30, label %32, label %42

32:                                               ; preds = %29
  store float 0.000000e+00, ptr %31, align 8, !tbaa !72
  %33 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %28, i64 0, i32 1, i32 0, i32 1
  store i32 3, ptr %33, align 4, !tbaa !72
  %34 = call noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #13
  switch i32 %34, label %46 [
    i32 0, label %39
    i32 1, label %40
    i32 2, label %41
  ]

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %47

37:                                               ; preds = %27
  %38 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #14
  br label %47

39:                                               ; preds = %32
  store i32 0, ptr %33, align 4, !tbaa !72
  br label %46

40:                                               ; preds = %32
  store i32 1, ptr %33, align 4, !tbaa !72
  br label %46

41:                                               ; preds = %32
  store i32 2, ptr %33, align 4, !tbaa !72
  br label %46

42:                                               ; preds = %29
  %43 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %28, i64 0, i32 1, i32 0, i32 1
  store i32 4, ptr %43, align 4, !tbaa !72
  %44 = call noundef double @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %6) #13
  %45 = fptrunc double %44 to float
  store float %45, ptr %31, align 8, !tbaa !72
  br label %46

46:                                               ; preds = %39, %40, %41, %32, %42
  call void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %145

47:                                               ; preds = %37, %35
  %48 = phi { ptr, i32 } [ %38, %37 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #15
  br label %130

49:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %0, ptr noundef %3) #13
          to label %50 unwind label %58

50:                                               ; preds = %49
  %51 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #13
          to label %52 unwind label %60

52:                                               ; preds = %50
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %51, i32 noundef 4, ptr noundef %3) #13
  %53 = call noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat15isDataConvertedEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #13
  %54 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %51, i64 0, i32 1
  br i1 %53, label %55, label %65

55:                                               ; preds = %52
  store double 0.000000e+00, ptr %54, align 8, !tbaa !72
  %56 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %51, i64 0, i32 1, i32 0, i32 2
  store i32 3, ptr %56, align 8, !tbaa !72
  %57 = call noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #13
  switch i32 %57, label %68 [
    i32 0, label %62
    i32 1, label %63
    i32 2, label %64
  ]

58:                                               ; preds = %49
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %69

60:                                               ; preds = %50
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #14
  br label %69

62:                                               ; preds = %55
  store i32 0, ptr %56, align 8, !tbaa !72
  br label %68

63:                                               ; preds = %55
  store i32 1, ptr %56, align 8, !tbaa !72
  br label %68

64:                                               ; preds = %55
  store i32 2, ptr %56, align 8, !tbaa !72
  br label %68

65:                                               ; preds = %52
  %66 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %51, i64 0, i32 1, i32 0, i32 2
  store i32 4, ptr %66, align 8, !tbaa !72
  %67 = call noundef double @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %7) #13
  store double %67, ptr %54, align 8, !tbaa !72
  br label %68

68:                                               ; preds = %62, %63, %64, %55, %65
  call void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %7) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %145

69:                                               ; preds = %60, %58
  %70 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #15
  br label %130

71:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %72 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue21getActualNumericValueEPKtRNS0_6StatusERNS0_7t_valueEPNS_13MemoryManagerENS0_8DataTypeE(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %3, i32 noundef %1) #13
          to label %73 unwind label %74

73:                                               ; preds = %71
  br i1 %72, label %76, label %126

74:                                               ; preds = %71
  %75 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %128

76:                                               ; preds = %73
  %77 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #13
          to label %78 unwind label %79

78:                                               ; preds = %76
  tail call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %77, i32 noundef %1, ptr noundef %3) #13
  switch i32 %1, label %126 [
    i32 31, label %81
    i32 33, label %84
    i32 32, label %87
    i32 38, label %90
    i32 43, label %93
    i32 34, label %96
    i32 35, label %99
    i32 36, label %103
    i32 37, label %107
    i32 39, label %111
    i32 40, label %114
    i32 41, label %118
    i32 42, label %122
  ]

79:                                               ; preds = %76
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %128

81:                                               ; preds = %78
  %82 = load i64, ptr %8, align 8, !tbaa !72
  %83 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %82, ptr %83, align 8, !tbaa !72
  br label %126

84:                                               ; preds = %78
  %85 = load i64, ptr %8, align 8, !tbaa !72
  %86 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %85, ptr %86, align 8, !tbaa !72
  br label %126

87:                                               ; preds = %78
  %88 = load i64, ptr %8, align 8, !tbaa !72
  %89 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %88, ptr %89, align 8, !tbaa !72
  br label %126

90:                                               ; preds = %78
  %91 = load i64, ptr %8, align 8, !tbaa !72
  %92 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %91, ptr %92, align 8, !tbaa !72
  br label %126

93:                                               ; preds = %78
  %94 = load i64, ptr %8, align 8, !tbaa !72
  %95 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %94, ptr %95, align 8, !tbaa !72
  br label %126

96:                                               ; preds = %78
  %97 = load i64, ptr %8, align 8, !tbaa !72
  %98 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %97, ptr %98, align 8, !tbaa !72
  br label %126

99:                                               ; preds = %78
  %100 = load i64, ptr %8, align 8, !tbaa !72
  %101 = trunc i64 %100 to i32
  %102 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i32 %101, ptr %102, align 8, !tbaa !72
  br label %126

103:                                              ; preds = %78
  %104 = load i64, ptr %8, align 8, !tbaa !72
  %105 = trunc i64 %104 to i16
  %106 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i16 %105, ptr %106, align 8, !tbaa !72
  br label %126

107:                                              ; preds = %78
  %108 = load i64, ptr %8, align 8, !tbaa !72
  %109 = trunc i64 %108 to i8
  %110 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i8 %109, ptr %110, align 8, !tbaa !72
  br label %126

111:                                              ; preds = %78
  %112 = load i64, ptr %8, align 8, !tbaa !72
  %113 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i64 %112, ptr %113, align 8, !tbaa !72
  br label %126

114:                                              ; preds = %78
  %115 = load i64, ptr %8, align 8, !tbaa !72
  %116 = trunc i64 %115 to i32
  %117 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i32 %116, ptr %117, align 8, !tbaa !72
  br label %126

118:                                              ; preds = %78
  %119 = load i64, ptr %8, align 8, !tbaa !72
  %120 = trunc i64 %119 to i16
  %121 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i16 %120, ptr %121, align 8, !tbaa !72
  br label %126

122:                                              ; preds = %78
  %123 = load i64, ptr %8, align 8, !tbaa !72
  %124 = trunc i64 %123 to i8
  %125 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %77, i64 0, i32 1
  store i8 %124, ptr %125, align 8, !tbaa !72
  br label %126

126:                                              ; preds = %78, %122, %118, %114, %111, %107, %103, %99, %96, %93, %90, %87, %84, %81, %73
  %127 = phi ptr [ null, %73 ], [ null, %78 ], [ %77, %122 ], [ %77, %118 ], [ %77, %114 ], [ %77, %111 ], [ %77, %107 ], [ %77, %103 ], [ %77, %99 ], [ %77, %96 ], [ %77, %93 ], [ %77, %90 ], [ %77, %87 ], [ %77, %84 ], [ %77, %81 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %145

128:                                              ; preds = %79, %74
  %129 = phi { ptr, i32 } [ %75, %74 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %130

130:                                              ; preds = %128, %69, %47, %24
  %131 = phi { ptr, i32 } [ %129, %128 ], [ %70, %69 ], [ %48, %47 ], [ %25, %24 ]
  %132 = extractvalue { ptr, i32 } %131, 0
  %133 = extractvalue { ptr, i32 } %131, 1
  %134 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = call ptr @__cxa_begin_catch(ptr %132) #15
  invoke void @__cxa_rethrow() #16
          to label %152 unwind label %143

138:                                              ; preds = %130
  %139 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %140 = icmp eq i32 %133, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = call ptr @__cxa_begin_catch(ptr %132) #15
  store i32 6, ptr %2, align 4, !tbaa !75
  call void @__cxa_end_catch()
  br label %145

143:                                              ; preds = %136
  %144 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %147 unwind label %149

145:                                              ; preds = %4, %141, %126, %68, %46, %22
  %146 = phi ptr [ %127, %126 ], [ null, %141 ], [ %51, %68 ], [ %28, %46 ], [ %23, %22 ], [ null, %4 ]
  ret ptr %146

147:                                              ; preds = %143, %138
  %148 = phi { ptr, i32 } [ %131, %138 ], [ %144, %143 ]
  resume { ptr, i32 } %148

149:                                              ; preds = %143
  %150 = landingpad { ptr, i32 }
          catch ptr null
  %151 = extractvalue { ptr, i32 } %150, 0
  call void @__clang_call_terminate(ptr %151) #17
  unreachable

152:                                              ; preds = %136
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue18getActValDateTimesEPKtNS0_8DataTypeERNS0_6StatusEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca i32, align 4
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::XMLDateTime", align 8
  store i32 %1, ptr %5, align 4, !tbaa !48
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %8, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %8) #13
          to label %9 unwind label %11

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %7) #15
  invoke void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %8, ptr noundef %3) #13
          to label %10 unwind label %13

10:                                               ; preds = %9
  switch i32 %1, label %79 [
    i32 5, label %15
    i32 6, label %18
    i32 7, label %19
    i32 8, label %24
    i32 9, label %28
    i32 10, label %33
    i32 11, label %36
    i32 12, label %41
    i32 13, label %47
  ]

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %111

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %83

15:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %53 unwind label %16

16:                                               ; preds = %47, %41, %36, %33, %28, %24, %19, %18, %15
  %17 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %81

18:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %53 unwind label %16

19:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %20 unwind label %16

20:                                               ; preds = %19
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1
  store i32 0, ptr %21, align 8, !tbaa !62
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 1
  store i32 0, ptr %22, align 4, !tbaa !62
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 2
  store i32 0, ptr %23, align 8, !tbaa !62
  br label %53

24:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %25 unwind label %16

25:                                               ; preds = %24
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 3
  store i32 0, ptr %26, align 4, !tbaa !62
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 4
  store i32 0, ptr %27, align 8, !tbaa !62
  br label %53

28:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %29 unwind label %16

29:                                               ; preds = %28
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 2
  store i32 0, ptr %30, align 8, !tbaa !62
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 3
  store i32 0, ptr %31, align 4, !tbaa !62
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 4
  store i32 0, ptr %32, align 8, !tbaa !62
  br label %53

33:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %34 unwind label %16

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %35, i8 0, i64 16, i1 false)
  br label %53

36:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %37 unwind label %16

37:                                               ; preds = %36
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1
  store i32 0, ptr %38, align 8, !tbaa !62
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 3
  store i32 0, ptr %39, align 4, !tbaa !62
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 4
  store i32 0, ptr %40, align 8, !tbaa !62
  br label %53

41:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %42 unwind label %16

42:                                               ; preds = %41
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1
  store i32 0, ptr %43, align 8, !tbaa !62
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 1
  store i32 0, ptr %44, align 4, !tbaa !62
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 3
  store i32 0, ptr %45, align 4, !tbaa !62
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 4
  store i32 0, ptr %46, align 8, !tbaa !62
  br label %53

47:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96) %7) #13
          to label %48 unwind label %16

48:                                               ; preds = %47
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1
  store i32 0, ptr %49, align 8, !tbaa !62
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 2
  store i32 0, ptr %50, align 8, !tbaa !62
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 3
  store i32 0, ptr %51, align 4, !tbaa !62
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 4
  store i32 0, ptr %52, align 8, !tbaa !62
  br label %53

53:                                               ; preds = %18, %15, %48, %42, %37, %34, %29, %25, %20
  %54 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %3) #13
          to label %55 unwind label %77

55:                                               ; preds = %53
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %54, i32 noundef %1, ptr noundef %3) #13
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1
  %57 = load i32, ptr %56, align 8, !tbaa !62
  %58 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1
  store i32 %57, ptr %58, align 8, !tbaa !72
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 1
  %60 = load i32, ptr %59, align 4, !tbaa !62
  %61 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1, i32 0, i32 1
  store i32 %60, ptr %61, align 4, !tbaa !72
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 2
  %63 = load i32, ptr %62, align 8, !tbaa !62
  %64 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1, i32 0, i32 2
  store i32 %63, ptr %64, align 8, !tbaa !72
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 3
  %66 = load i32, ptr %65, align 4, !tbaa !62
  %67 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1, i32 0, i32 3
  store i32 %66, ptr %67, align 4, !tbaa !72
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 4
  %69 = load i32, ptr %68, align 8, !tbaa !62
  %70 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1, i32 0, i32 4
  store i32 %69, ptr %70, align 8, !tbaa !72
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 1, i64 5
  %72 = load i32, ptr %71, align 4, !tbaa !62
  %73 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1, i32 0, i32 5
  store i32 %72, ptr %73, align 4, !tbaa !72
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLDateTime", ptr %7, i64 0, i32 6
  %75 = load double, ptr %74, align 8, !tbaa !92
  %76 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %54, i64 0, i32 1, i32 0, i32 6
  store double %75, ptr %76, align 8, !tbaa !72
  br label %79

77:                                               ; preds = %53
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr @_ZTIN11xercesc_2_721NumberFormatExceptionE
  br label %81

79:                                               ; preds = %10, %55
  %80 = phi ptr [ %54, %55 ], [ null, %10 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #14
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  br label %109

81:                                               ; preds = %77, %16
  %82 = phi { ptr, i32 } [ %17, %16 ], [ %78, %77 ]
  call void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96) %7) #14
  br label %83

83:                                               ; preds = %81, %13
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %14, %13 ]
  %85 = extractvalue { ptr, i32 } %84, 0
  %86 = extractvalue { ptr, i32 } %84, 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %7) #15
  %87 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_723SchemaDateTimeExceptionE) #15
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = call ptr @__cxa_begin_catch(ptr %85) #15
  %91 = call fastcc noundef zeroext i1 @_ZN11xercesc_2_7L18checkTimeZoneErrorERKNS_7XSValue8DataTypeERKNS_23SchemaDateTimeExceptionE(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(48) %90) #13
  %92 = select i1 %91, i32 9, i32 6
  store i32 %92, ptr %2, align 4, !tbaa !75
  invoke void @__cxa_end_catch()
          to label %109 unwind label %107

93:                                               ; preds = %83
  %94 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %95 = icmp eq i32 %86, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call ptr @__cxa_begin_catch(ptr %85) #15
  invoke void @__cxa_rethrow() #16
          to label %116 unwind label %105

98:                                               ; preds = %93
  %99 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_721NumberFormatExceptionE) #15
  %100 = icmp eq i32 %86, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = call ptr @__cxa_begin_catch(ptr %85) #15
  store i32 6, ptr %2, align 4, !tbaa !75
  invoke void @__cxa_end_catch()
          to label %109 unwind label %103

103:                                              ; preds = %101
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %111

105:                                              ; preds = %96
  %106 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %111 unwind label %113

107:                                              ; preds = %89
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %111

109:                                              ; preds = %89, %101, %79
  %110 = phi ptr [ %80, %79 ], [ null, %101 ], [ null, %89 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret ptr %110

111:                                              ; preds = %107, %105, %103, %98, %11
  %112 = phi { ptr, i32 } [ %104, %103 ], [ %84, %98 ], [ %12, %11 ], [ %106, %105 ], [ %108, %107 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %112

113:                                              ; preds = %105
  %114 = landingpad { ptr, i32 }
          catch ptr null
  %115 = extractvalue { ptr, i32 } %114, 0
  call void @__clang_call_terminate(ptr %115) #17
  unreachable

116:                                              ; preds = %96
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_77XSValue16getActValStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEbPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr nocapture noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca i32, align 4
  switch i32 %1, label %104 [
    i32 1, label %10
    i32 14, label %42
    i32 15, label %67
    i32 16, label %85
    i32 17, label %85
    i32 18, label %85
    i32 0, label %85
    i32 19, label %85
    i32 20, label %85
    i32 21, label %85
    i32 22, label %85
    i32 23, label %85
    i32 24, label %85
    i32 25, label %85
    i32 26, label %85
    i32 27, label %85
    i32 29, label %85
    i32 30, label %85
    i32 28, label %85
  ]

10:                                               ; preds = %6
  %11 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %5) #13
          to label %12 unwind label %21

12:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %11, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %11) #13
          to label %13 unwind label %23

13:                                               ; preds = %12
  %14 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE) #13
  br i1 %14, label %17, label %15

15:                                               ; preds = %13
  %16 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %11, ptr noundef nonnull getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 2)) #13
  br i1 %16, label %17, label %27

17:                                               ; preds = %15, %13
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %19 unwind label %25

19:                                               ; preds = %17
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %18, i32 noundef 1, ptr noundef %5) #13
  %20 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %18, i64 0, i32 1
  store i8 0, ptr %20, align 8, !tbaa !72
  br label %38

21:                                               ; preds = %10
  %22 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %91

23:                                               ; preds = %12
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

27:                                               ; preds = %15
  %28 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %11, ptr noundef nonnull getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 1)) #13
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %11, ptr noundef nonnull getelementptr inbounds ([0 x [32 x i16]], ptr @_ZN11xercesc_2_76XMLUni19fgBooleanValueSpaceE, i64 0, i64 3)) #13
  br i1 %30, label %31, label %37

31:                                               ; preds = %29, %27
  %32 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %33 unwind label %35

33:                                               ; preds = %31
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %32, i32 noundef 1, ptr noundef %5) #13
  %34 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %32, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !72
  br label %38

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %40

37:                                               ; preds = %29
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %38

38:                                               ; preds = %37, %33, %19
  %39 = phi ptr [ %18, %19 ], [ %32, %33 ], [ null, %37 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %104

40:                                               ; preds = %35, %25, %23
  %41 = phi { ptr, i32 } [ %24, %23 ], [ %26, %25 ], [ %36, %35 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %91

42:                                               ; preds = %6
  %43 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %5) #13
          to label %44 unwind label %50

44:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %43, ptr noundef %5) #13
  invoke void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %43) #13
          to label %45 unwind label %52

45:                                               ; preds = %44
  %46 = invoke noundef ptr @_ZN11xercesc_2_76HexBin15decodeToXMLByteEPKtPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %5) #13
          to label %47 unwind label %54

47:                                               ; preds = %45
  %48 = icmp eq ptr %46, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %63

50:                                               ; preds = %42
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %91

52:                                               ; preds = %44
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %65

54:                                               ; preds = %45
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %65

56:                                               ; preds = %47
  %57 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %58 unwind label %61

58:                                               ; preds = %56
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %57, i32 noundef 14, ptr noundef %5) #13
  %59 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %57, i64 0, i32 1
  store ptr %46, ptr %59, align 8, !tbaa !72
  %60 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %57, i64 0, i32 1
  store i8 1, ptr %60, align 8, !tbaa !63
  br label %63

61:                                               ; preds = %56
  %62 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %65

63:                                               ; preds = %58, %49
  %64 = phi ptr [ %57, %58 ], [ null, %49 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %104

65:                                               ; preds = %54, %61, %52
  %66 = phi { ptr, i32 } [ %53, %52 ], [ %55, %54 ], [ %62, %61 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %91

67:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !tbaa !62
  %68 = invoke noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %5, i32 noundef 0) #13
          to label %69 unwind label %72

69:                                               ; preds = %67
  %70 = icmp eq ptr %68, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %69
  store i32 6, ptr %2, align 4, !tbaa !75
  br label %81

72:                                               ; preds = %67
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %83

74:                                               ; preds = %69
  %75 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %5) #13
          to label %76 unwind label %79

76:                                               ; preds = %74
  call void @_ZN11xercesc_2_77XSValueC2ENS0_8DataTypeEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %75, i32 noundef 15, ptr noundef %5) #13
  %77 = getelementptr inbounds %"struct.xercesc_2_7::XSValue::XSValue_Data", ptr %75, i64 0, i32 1
  store ptr %68, ptr %77, align 8, !tbaa !72
  %78 = getelementptr inbounds %"class.xercesc_2_7::XSValue", ptr %75, i64 0, i32 1
  store i8 1, ptr %78, align 8, !tbaa !63
  br label %81

79:                                               ; preds = %74
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %83

81:                                               ; preds = %76, %71
  %82 = phi ptr [ %75, %76 ], [ null, %71 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %104

83:                                               ; preds = %79, %72
  %84 = phi { ptr, i32 } [ %73, %72 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %91

85:                                               ; preds = %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6, %6
  br i1 %4, label %86, label %99

86:                                               ; preds = %85
  %87 = invoke noundef zeroext i1 @_ZN11xercesc_2_77XSValue15validateStringsEPKtNS0_8DataTypeERNS0_6StatusENS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %5) #13
          to label %88 unwind label %89

88:                                               ; preds = %86
  br i1 %87, label %99, label %100

89:                                               ; preds = %86
  %90 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %91

91:                                               ; preds = %50, %65, %21, %40, %89, %83
  %92 = phi { ptr, i32 } [ %90, %89 ], [ %84, %83 ], [ %41, %40 ], [ %22, %21 ], [ %66, %65 ], [ %51, %50 ]
  %93 = extractvalue { ptr, i32 } %92, 1
  %94 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %91
  %97 = extractvalue { ptr, i32 } %92, 0
  %98 = call ptr @__cxa_begin_catch(ptr %97) #15
  invoke void @__cxa_rethrow() #16
          to label %111 unwind label %102

99:                                               ; preds = %88, %85
  br label %100

100:                                              ; preds = %88, %99
  %101 = phi i32 [ 3, %99 ], [ 6, %88 ]
  store i32 %101, ptr %2, align 4, !tbaa !75
  br label %104

102:                                              ; preds = %96
  %103 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %106 unwind label %108

104:                                              ; preds = %6, %100, %81, %63, %38
  %105 = phi ptr [ null, %100 ], [ %82, %81 ], [ %64, %63 ], [ %39, %38 ], [ null, %6 ]
  ret ptr %105

106:                                              ; preds = %102, %91
  %107 = phi { ptr, i32 } [ %92, %91 ], [ %103, %102 ]
  resume { ptr, i32 } %107

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  call void @__clang_call_terminate(ptr %110) #17
  unreachable

111:                                              ; preds = %96
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLBigDecimal12parseDecimalEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLFloatC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLFloatD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLDoubleC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79XMLDoubleD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !97 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !98
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLBigInteger15parseBigIntegerEPKtPtRiPNS_13MemoryManagerE(ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLBigInteger13compareValuesEPKtRKiS2_S4_PNS_13MemoryManagerE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_77XSValue21getActualNumericValueEPKtRNS0_6StatusERNS0_7t_valueEPNS_13MemoryManagerENS0_8DataTypeE(ptr noundef %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor.0", align 8
  %7 = alloca ptr, align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  call void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %8, ptr noundef %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  store ptr null, ptr %7, align 8, !tbaa !44
  %9 = tail call ptr @__errno_location() #18
  store i32 0, ptr %9, align 4, !tbaa !62
  %10 = zext i32 %4 to i64
  %11 = add nsw i64 %10, -38
  %12 = icmp ult i64 %11, 6
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = call i64 @strtol(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 10) #14
  br label %23

15:                                               ; preds = %5
  %16 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %0, i16 noundef zeroext 45) #13
          to label %17 unwind label %19

17:                                               ; preds = %15
  %18 = icmp eq i32 %16, -1
  br i1 %18, label %21, label %66

19:                                               ; preds = %15
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  resume { ptr, i32 } %20

21:                                               ; preds = %17
  %22 = call i64 @strtoul(ptr noundef %8, ptr noundef nonnull %7, i32 noundef 10) #14
  br label %23

23:                                               ; preds = %21, %13
  %24 = phi i64 [ %22, %21 ], [ %14, %13 ]
  store i64 %24, ptr %2, align 8, !tbaa !72
  switch i32 %4, label %52 [
    i32 32, label %25
    i32 33, label %27
    i32 35, label %29
    i32 36, label %35
    i32 37, label %38
    i32 40, label %41
    i32 41, label %46
    i32 42, label %48
    i32 43, label %50
  ]

25:                                               ; preds = %23
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %66, label %52

27:                                               ; preds = %23
  %28 = icmp sgt i64 %24, -1
  br i1 %28, label %66, label %52

29:                                               ; preds = %23
  %30 = add i64 %24, -2147483648
  %31 = icmp ult i64 %30, -4294967296
  br i1 %31, label %66, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr %9, align 4, !tbaa !62
  %34 = icmp eq i32 %33, 34
  br i1 %34, label %66, label %55

35:                                               ; preds = %23
  %36 = add i64 %24, -32768
  %37 = icmp ult i64 %36, -65536
  br i1 %37, label %66, label %52

38:                                               ; preds = %23
  %39 = add i64 %24, -128
  %40 = icmp ult i64 %39, -256
  br i1 %40, label %66, label %52

41:                                               ; preds = %23
  %42 = icmp ugt i64 %24, 4294967295
  br i1 %42, label %66, label %43

43:                                               ; preds = %41
  %44 = load i32, ptr %9, align 4, !tbaa !62
  %45 = icmp eq i32 %44, 34
  br i1 %45, label %66, label %55

46:                                               ; preds = %23
  %47 = icmp ugt i64 %24, 65535
  br i1 %47, label %66, label %52

48:                                               ; preds = %23
  %49 = icmp ugt i64 %24, 255
  br i1 %49, label %66, label %52

50:                                               ; preds = %23
  %51 = icmp eq i64 %24, 0
  br i1 %51, label %66, label %52

52:                                               ; preds = %25, %27, %46, %48, %50, %23, %35, %38
  %53 = load i32, ptr %9, align 4, !tbaa !62
  %54 = icmp eq i32 %53, 34
  br i1 %54, label %66, label %55

55:                                               ; preds = %43, %32, %52
  %56 = load ptr, ptr %7, align 8, !tbaa !44
  br label %57

57:                                               ; preds = %65, %55
  %58 = phi ptr [ %56, %55 ], [ %64, %65 ]
  %59 = load i8, ptr %58, align 1, !tbaa !72
  switch i8 %59, label %62 [
    i8 0, label %68
    i8 32, label %60
    i8 13, label %60
    i8 10, label %60
    i8 9, label %60
  ]

60:                                               ; preds = %57, %57, %57, %57
  %61 = getelementptr inbounds i8, ptr %58, i64 1
  br label %63

62:                                               ; preds = %57
  store i32 6, ptr %1, align 4, !tbaa !75
  br label %63

63:                                               ; preds = %60, %62
  %64 = phi ptr [ %61, %60 ], [ %58, %62 ]
  switch i8 %59, label %68 [
    i8 32, label %65
    i8 13, label %65
    i8 10, label %65
    i8 9, label %65
  ]

65:                                               ; preds = %63, %63, %63, %63
  br label %57

66:                                               ; preds = %52, %50, %48, %46, %41, %43, %38, %35, %29, %32, %27, %25, %17
  %67 = phi i32 [ 6, %17 ], [ 6, %25 ], [ 6, %27 ], [ 6, %32 ], [ 6, %29 ], [ 6, %35 ], [ 6, %38 ], [ 6, %43 ], [ 6, %41 ], [ 6, %46 ], [ 6, %48 ], [ 6, %50 ], [ 8, %52 ]
  store i32 %67, ptr %1, align 4, !tbaa !75
  br label %68

68:                                               ; preds = %57, %63, %66
  %69 = phi i1 [ false, %66 ], [ true, %57 ], [ false, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  ret i1 %69
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !102 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !103

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #13
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !60
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTimeC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime13parseDurationEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime13parseDateTimeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime9parseTimeEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime9parseDateEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime14parseYearMonthEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime9parseYearEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime13parseMonthDayEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime8parseDayEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDateTime10parseMonthEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711XMLDateTimeD1Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @_ZN11xercesc_2_7L18checkTimeZoneErrorERKNS_7XSValue8DataTypeERKNS_23SchemaDateTimeExceptionE(ptr nocapture noundef nonnull readonly align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 !prof !43 !PGOFuncName !104 {
  %3 = load i32, ptr %0, align 4, !tbaa !48
  %4 = add i32 %3, -6
  %5 = icmp ult i32 %4, 3
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_712XMLException7getCodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %8 = icmp eq i32 %7, 343
  br i1 %8, label %18, label %9

9:                                                ; preds = %6
  %10 = tail call noundef i32 @_ZNK11xercesc_2_712XMLException7getCodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %11 = icmp eq i32 %10, 344
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = tail call noundef i32 @_ZNK11xercesc_2_712XMLException7getCodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %14 = icmp eq i32 %13, 345
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call noundef i32 @_ZNK11xercesc_2_712XMLException7getCodeEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %17 = icmp eq i32 %16, 352
  br label %18

18:                                               ; preds = %2, %6, %9, %12, %15
  %19 = phi i1 [ true, %12 ], [ true, %9 ], [ true, %6 ], [ %17, %15 ], [ false, %2 ]
  ret i1 %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !105 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !106

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !73
  %8 = load i16, ptr %1, align 2, !tbaa !73
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !107

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !108

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !73
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !109

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !110

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !73
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !111

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !112

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !73
  %28 = load i16, ptr %26, align 2, !tbaa !73
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !113, !llvm.loop !114

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_76HexBin13getDataLengthEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_76Base6413getDataLengthEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt(i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isValidQNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isValidQNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString15isValidNOTATIONEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_09isXMLCharEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !72
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  br label %16

10:                                               ; preds = %2
  %11 = and i16 %0, -1024
  %12 = icmp eq i16 %11, -10240
  %13 = and i16 %1, -1024
  %14 = icmp eq i16 %13, -9216
  %15 = and i1 %12, %14
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i1 [ %9, %4 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_19isXMLCharEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !72
  %8 = and i8 %7, 64
  %9 = icmp ne i8 %8, 0
  br label %16

10:                                               ; preds = %2
  %11 = and i16 %0, -1024
  %12 = icmp eq i16 %11, -10240
  %13 = and i16 %1, -1024
  %14 = icmp eq i16 %13, -9216
  %15 = and i1 %12, %14
  br label %16

16:                                               ; preds = %10, %4
  %17 = phi i1 [ %9, %4 ], [ %15, %10 ]
  ret i1 %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #4 comdat align 2 !prof !115 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !72
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !72
  %8 = icmp slt i8 %7, 0
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i1 [ %8, %4 ], [ false, %2 ]
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN11xercesc_2_7L8getRegExEv() unnamed_addr #2 personality ptr @__gxx_personality_v0 !prof !43 !PGOFuncName !116 {
  %1 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %2 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %36

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #15
  %5 = tail call fastcc noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_7L13gXSValueMutexEv() #13
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %5) #13
  %6 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %31

8:                                                ; preds = %4
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  %10 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %9) #13
          to label %11 unwind label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_717RegularExpressionC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %10, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni13fgLangPatternE, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols15fgRegEx_XOptionE, ptr noundef %12) #13
          to label %13 unwind label %16

13:                                               ; preds = %11
  store ptr %10, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L19XSValueRegExCleanupE, ptr noundef nonnull @_ZN11xercesc_2_77XSValue11reinitRegExEv) #13
          to label %31 unwind label %27

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  br label %18

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
          catch ptr null
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #14
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  %20 = extractvalue { ptr, i32 } %19, 1
  %21 = extractvalue { ptr, i32 } %19, 0
  %22 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %23 = icmp eq i32 %20, %22
  %24 = call ptr @__cxa_begin_catch(ptr %21) #15
  br i1 %23, label %25, label %26

25:                                               ; preds = %18
  invoke void @__cxa_rethrow() #16
          to label %41 unwind label %29

26:                                               ; preds = %18
  invoke void @__cxa_end_catch()
          to label %33 unwind label %27

27:                                               ; preds = %13, %26
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %34

29:                                               ; preds = %25
  %30 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %34 unwind label %38

31:                                               ; preds = %13, %4
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  %32 = load ptr, ptr @_ZN11xercesc_2_7L13sXSValueRegExE, align 8, !tbaa !44
  br label %36

33:                                               ; preds = %26
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  br label %36

34:                                               ; preds = %29, %27
  %35 = phi { ptr, i32 } [ %28, %27 ], [ %30, %29 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #15
  resume { ptr, i32 } %35

36:                                               ; preds = %0, %31, %33
  %37 = phi ptr [ null, %33 ], [ %32, %31 ], [ %2, %0 ]
  ret ptr %37

38:                                               ; preds = %29
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #17
  unreachable

41:                                               ; preds = %25
  unreachable
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_717RegularExpression7matchesEPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isValidNmtokenEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isValidNmtokenEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLStringTokenizerC1EPKtS2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_718XMLStringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_718XMLStringTokenizer9nextTokenEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_718XMLStringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_111isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_013isValidNCNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isValidNCNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713XMLBigDecimal26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_722XMLAbstractDoubleFloat26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713XMLBigInteger26getCanonicalRepresentationEPKtPNS_13MemoryManagerEb(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime34getDateTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getTimeCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711XMLDateTime30getDateCanonicalRepresentationEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_76HexBin26getCanonicalRepresentationEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_76Base6426getCanonicalRepresentationEPKtPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat15isDataConvertedEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 4, !tbaa !117, !range !70, !noundef !71
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZNK11xercesc_2_722XMLAbstractDoubleFloat8getValueEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 1
  %3 = load double, ptr %2, align 8, !tbaa !120
  ret double %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_722XMLAbstractDoubleFloat7getTypeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLAbstractDoubleFloat", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !121
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_76HexBin15decodeToXMLByteEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_76Base6415decodeToXMLByteEPKtPjPNS_13MemoryManagerENS0_11ConformanceE(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !122 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_77XSValue11reinitMutexEv() #4 align 2 !prof !43 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #14
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L14sXSValueMutextE, align 8, !tbaa !44
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717RegularExpressionD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  invoke void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #13
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !51
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %3, align 8, !tbaa !60
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !60
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #14
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #17
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712XMLException7getCodeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !126
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = load ptr, ptr %5, align 8, !tbaa !60
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !56
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = load ptr, ptr %20, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !129

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = load ptr, ptr %5, align 8, !tbaa !60
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !62
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !56
  %21 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = load ptr, ptr %20, align 8, !tbaa !60
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !44
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !130

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 48, ptr noundef %6) #13
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
  %11 = load ptr, ptr %0, align 8, !tbaa !51
  %12 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !55
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !60
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  store ptr %19, ptr %20, align 8, !tbaa !54
  %21 = load i32, ptr %12, align 8, !tbaa !55
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !54
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !44
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !132
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !131
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !60
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724ValueHashTableBucketElemINS_7XSValue8DataTypeEEC2EPvRKS2_PS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) unnamed_addr #4 comdat align 2 !prof !43 {
  %5 = load i32, ptr %2, align 4, !tbaa !48
  store i32 %5, ptr %0, align 8, !tbaa !57
  %6 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !101 {
  %3 = load ptr, ptr %0, align 8, !tbaa !98
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !134

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !100
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !135

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #19
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !98
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !100
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !122 {
  %3 = load ptr, ptr %0, align 8, !tbaa !123
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !136

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !136

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !60
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #19
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !123
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.0", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !125
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !55
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::ValueHashTableOf", ptr %0, i64 0, i32 1
  br label %8

7:                                                ; preds = %27, %1
  ret void

8:                                                ; preds = %5, %27
  %9 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %10 = phi i64 [ 0, %5 ], [ %31, %27 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !54
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !44
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %15

15:                                               ; preds = %8, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %8 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::ValueHashTableBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = load ptr, ptr %0, align 8, !tbaa !51
  %20 = load ptr, ptr %19, align 8, !tbaa !60
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull %16) #13
  %23 = icmp eq ptr %18, null
  br i1 %23, label %24, label %15, !llvm.loop !137

24:                                               ; preds = %15
  %25 = load ptr, ptr %6, align 8, !tbaa !54
  %26 = load i32, ptr %2, align 8, !tbaa !55
  br label %27

27:                                               ; preds = %24, %8
  %28 = phi i32 [ %26, %24 ], [ %9, %8 ]
  %29 = phi ptr [ %25, %24 ], [ %11, %8 ]
  %30 = getelementptr inbounds ptr, ptr %29, i64 %10
  store ptr null, ptr %30, align 8, !tbaa !44
  %31 = add nuw nsw i64 %10, 1
  %32 = zext i32 %28 to i64
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %8, label %7, !llvm.loop !138
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XSValue.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.2()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree nosync nounwind memory(none) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind optsize willreturn memory(none) }
attributes #19 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!36 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!37 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcEC2EPcPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 27}
!39 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc, i64 27}
!40 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!41 = !{ptr @_ZN11xercesc_2_712ArrayJanitorIcE5resetEPc, ptr @_ZdaPv, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!49, !49, i64 0}
!49 = !{!"_ZTSN11xercesc_2_77XSValue8DataTypeE", !46, i64 0}
!50 = !{!"XSValue.cpp:_ZN11xercesc_2_7L13gXSValueMutexEv"}
!51 = !{!52, !45, i64 0}
!52 = !{!"_ZTSN11xercesc_2_716ValueHashTableOfINS_7XSValue8DataTypeEEE", !45, i64 0, !45, i64 8, !53, i64 16, !45, i64 24}
!53 = !{!"int", !46, i64 0}
!54 = !{!52, !45, i64 8}
!55 = !{!52, !53, i64 16}
!56 = !{!52, !45, i64 24}
!57 = !{!58, !49, i64 0}
!58 = !{!"_ZTSN11xercesc_2_724ValueHashTableBucketElemINS_7XSValue8DataTypeEEE", !49, i64 0, !45, i64 8, !45, i64 16}
!59 = !{!58, !45, i64 16}
!60 = !{!61, !61, i64 0}
!61 = !{!"vtable pointer", !47, i64 0}
!62 = !{!53, !53, i64 0}
!63 = !{!64, !66, i64 40}
!64 = !{!"_ZTSN11xercesc_2_77XSValueE", !65, i64 0, !66, i64 40, !45, i64 48}
!65 = !{!"_ZTSN11xercesc_2_77XSValue12XSValue_DataE", !49, i64 0, !46, i64 8}
!66 = !{!"bool", !46, i64 0}
!67 = !{!64, !45, i64 48}
!68 = !{!64, !49, i64 0}
!69 = !{!"function_entry_count", i64 5836268}
!70 = !{i8 0, i8 2}
!71 = !{}
!72 = !{!46, !46, i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"short", !46, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"_ZTSN11xercesc_2_77XSValue6StatusE", !46, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"_ZTSN11xercesc_2_77XSValue9DataGroupE", !46, i64 0}
!79 = !{!"function_entry_count", i64 2453164456}
!80 = !{!"branch_weights", i32 1, i32 -1841802839}
!81 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!82 = !{!"branch_weights", i32 408669070, i32 -279908794}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !84}
!89 = distinct !{!89, !84}
!90 = distinct !{!90, !84}
!91 = distinct !{!91, !84}
!92 = !{!93, !96, i64 64}
!93 = !{!"_ZTSN11xercesc_2_711XMLDateTimeE", !94, i64 0, !46, i64 8, !46, i64 40, !53, i64 48, !53, i64 52, !53, i64 56, !96, i64 64, !66, i64 72, !45, i64 80, !45, i64 88}
!94 = !{!"_ZTSN11xercesc_2_79XMLNumberE", !95, i64 0}
!95 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!96 = !{!"double", !46, i64 0}
!97 = !{!"function_entry_count", i64 52059}
!98 = !{!99, !45, i64 0}
!99 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !45, i64 0, !45, i64 8}
!100 = !{!99, !45, i64 8}
!101 = !{!"function_entry_count", i64 243874}
!102 = !{!"function_entry_count", i64 558789}
!103 = !{!"branch_weights", i32 158605, i32 400186}
!104 = !{!"XSValue.cpp:_ZN11xercesc_2_7L18checkTimeZoneErrorERKNS_7XSValue8DataTypeERKNS_23SchemaDateTimeExceptionE"}
!105 = !{!"function_entry_count", i64 1231717351}
!106 = !{!"branch_weights", i32 621, i32 -1469098093}
!107 = !{!"branch_weights", i32 408901017, i32 1}
!108 = !{!"branch_weights", i32 267, i32 4}
!109 = !{!"branch_weights", i32 1, i32 4}
!110 = !{!"branch_weights", i32 156, i32 112}
!111 = !{!"branch_weights", i32 1, i32 112}
!112 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!113 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!114 = distinct !{!114, !84}
!115 = !{!"function_entry_count", i64 196710}
!116 = !{!"XSValue.cpp:_ZN11xercesc_2_7L8getRegExEv"}
!117 = !{!118, !66, i64 20}
!118 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloatE", !94, i64 0, !96, i64 8, !119, i64 16, !66, i64 20, !66, i64 21, !53, i64 24, !45, i64 32, !45, i64 40, !45, i64 48}
!119 = !{!"_ZTSN11xercesc_2_722XMLAbstractDoubleFloat11LiteralTypeE", !46, i64 0}
!120 = !{!118, !96, i64 8}
!121 = !{!118, !119, i64 16}
!122 = !{!"function_entry_count", i64 27}
!123 = !{!124, !45, i64 0}
!124 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIcEE", !45, i64 0, !45, i64 8}
!125 = !{!124, !45, i64 8}
!126 = !{!127, !128, i64 8}
!127 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !128, i64 8, !45, i64 16, !53, i64 24, !45, i64 32, !45, i64 40}
!128 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !46, i64 0}
!129 = distinct !{!129, !84}
!130 = distinct !{!130, !84}
!131 = !{!127, !45, i64 40}
!132 = distinct !{!132, !84}
!133 = !{!58, !45, i64 8}
!134 = !{!"branch_weights", i32 191816, i32 52060}
!135 = !{!"branch_weights", i32 1, i32 52060}
!136 = !{!"branch_weights", i32 1, i32 28}
!137 = distinct !{!137, !84}
!138 = distinct !{!138, !84}
