; ModuleID = 'DTDGrammar.cpp'
source_filename = "DTDGrammar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"class.xercesc_2_7::NameIdPool.0" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::NameIdPool.2" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem.4" = type { ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem.5" = type { ptr, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv = comdat any

$_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv = comdat any

$_ZNK11xercesc_2_710DTDGrammar14getGrammarTypeEv = comdat any

$_ZNK11xercesc_2_710DTDGrammar18getTargetNamespaceEv = comdat any

$_ZNK11xercesc_2_710DTDGrammar12getValidatedEv = comdat any

$_ZNK11xercesc_2_710DTDGrammar9getElemIdEjPKtS2_j = comdat any

$_ZNK11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j = comdat any

$_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j = comdat any

$_ZNK11xercesc_2_710DTDGrammar11getElemDeclEj = comdat any

$_ZN11xercesc_2_710DTDGrammar11getElemDeclEj = comdat any

$_ZNK11xercesc_2_710DTDGrammar15getNotationDeclEPKt = comdat any

$_ZN11xercesc_2_710DTDGrammar15getNotationDeclEPKt = comdat any

$_ZN11xercesc_2_710DTDGrammar11putElemDeclEPNS_14XMLElementDeclEb = comdat any

$_ZNK11xercesc_2_710DTDGrammar15putNotationDeclEPNS_15XMLNotationDeclE = comdat any

$_ZN11xercesc_2_710DTDGrammar12setValidatedEb = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_713XMLEntityDecl5setIdEj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_77GrammarC2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZNK11xercesc_2_714DTDElementDecl6getKeyEv = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_ = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_715XMLNotationDecl5setIdEj = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTVN11xercesc_2_710DTDGrammarE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DTDGrammarE, ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710DTDGrammarD0Ev, ptr @_ZNK11xercesc_2_710DTDGrammar14isSerializableEv, ptr @_ZN11xercesc_2_710DTDGrammar9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_710DTDGrammar12getProtoTypeEv, ptr @_ZNK11xercesc_2_710DTDGrammar14getGrammarTypeEv, ptr @_ZNK11xercesc_2_710DTDGrammar18getTargetNamespaceEv, ptr @_ZNK11xercesc_2_710DTDGrammar12getValidatedEv, ptr @_ZN11xercesc_2_710DTDGrammar17findOrAddElemDeclEjPKtS2_S2_jRb, ptr @_ZNK11xercesc_2_710DTDGrammar9getElemIdEjPKtS2_j, ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEj, ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEj, ptr @_ZNK11xercesc_2_710DTDGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_710DTDGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEjPKtS2_S2_jb, ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_710DTDGrammar15putNotationDeclEPNS_15XMLNotationDeclE, ptr @_ZN11xercesc_2_710DTDGrammar12setValidatedEb, ptr @_ZN11xercesc_2_710DTDGrammar5resetEv, ptr @_ZN11xercesc_2_710DTDGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE, ptr @_ZNK11xercesc_2_710DTDGrammar21getGrammarDescriptionEv] }, align 8
@_ZTSN11xercesc_2_710DTDGrammarE = dso_local constant [28 x i8] c"N11xercesc_2_710DTDGrammarE\00", align 1
@_ZTIN11xercesc_2_77GrammarE = external constant ptr
@_ZTIN11xercesc_2_710DTDGrammarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DTDGrammarE, ptr @_ZTIN11xercesc_2_77GrammarE }, align 8
@_ZN11xercesc_2_7L25entityPoolRegistryCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni5fgAmpE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni4fgLTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni4fgGTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni6fgQuotE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni6fgAposE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_77GrammarE = external unnamed_addr constant { [25 x ptr] }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_7L16sEntityPoolMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_710DTDGrammar15classDTDGrammarE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_710DTDGrammar12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"DTDGrammar\00", align 1
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DTDGrammar.cpp, ptr null }]

@_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_710DTDGrammarD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710DTDGrammarD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !98, !range !107, !noundef !108
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !109, !range !107, !noundef !108
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !110, !range !107, !noundef !108
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarD0Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_710DTDGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DTDGrammar14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !97 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #4 align 2 !prof !97 {
  tail call void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  br i1 %3, label %6, label %23

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !111
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_14DTDElementDeclEEERNS_16XSerializeEngineE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_13DTDEntityDeclEEERNS_16XSerializeEngineE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %10 = load ptr, ptr %5, align 8, !tbaa !115
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !119
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17) #13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %20 = load i8, ptr %19, align 4, !tbaa !120, !range !107, !noundef !108
  %21 = icmp ne i8 %20, 0
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %21) #13
  br label %35

23:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_14DTDElementDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %4, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  store ptr null, ptr %24, align 8, !tbaa !121
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_13DTDEntityDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %25, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %5, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !116
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  %32 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %31) #13
  %33 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %34 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %33) #13
  br label %35

35:                                               ; preds = %23, %6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_710DTDGrammar12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 !prof !97 {
  ret ptr @_ZN11xercesc_2_710DTDGrammar15classDTDGrammarE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 comdat align 2 !prof !122 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar18getTargetNamespaceEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 comdat align 2 !prof !97 {
  ret ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DTDGrammar12getValidatedEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !120, !range !107, !noundef !108
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar17findOrAddElemDeclEjPKtS2_S2_jRb(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %8 = load ptr, ptr %0, align 8, !tbaa !117
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !123
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %15) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef %4, i32 noundef %1, i32 noundef 1, ptr noundef %17) #13
          to label %18 unwind label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !121
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !123
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %23) #13
  %25 = load ptr, ptr %14, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 29, i32 noundef 128, ptr noundef %25) #13
          to label %26 unwind label %29

26:                                               ; preds = %22
  store ptr %24, ptr %19, align 8, !tbaa !121
  br label %31

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #12
  br label %37

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #12
  br label %37

31:                                               ; preds = %26, %18
  %32 = phi ptr [ %24, %26 ], [ %20, %18 ]
  %33 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull %16) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %16, i32 noundef %33) #13
  br label %34

34:                                               ; preds = %7, %31
  %35 = phi i8 [ 1, %31 ], [ 0, %7 ]
  %36 = phi ptr [ %16, %31 ], [ %11, %7 ]
  store i8 %35, ptr %6, align 1, !tbaa !124
  ret ptr %36

37:                                               ; preds = %29, %27
  %38 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar9getElemIdEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 comdat align 2 !prof !97 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !125
  br label %14

12:                                               ; preds = %5
  %13 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %8) #13
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ %11, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 comdat align 2 !prof !97 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef %3) #13
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = phi ptr [ %8, %5 ], [ %15, %14 ], [ null, %10 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #4 comdat align 2 !prof !126 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %3) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !127

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !127

14:                                               ; preds = %10
  %15 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef %3) #13
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = phi ptr [ %8, %5 ], [ %15, %14 ], [ null, %10 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEjPKtS2_S2_jb(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 %5, i1 noundef zeroext %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !123
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %9) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef %4, i32 noundef %1, i32 noundef 1, ptr noundef %11) #13
          to label %12 unwind label %22

12:                                               ; preds = %7
  br i1 %6, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !123
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %18) #13
  %20 = load ptr, ptr %8, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 29, i32 noundef 128, ptr noundef %20) #13
          to label %21 unwind label %24

21:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !121
  br label %29

22:                                               ; preds = %7
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #12
  br label %32

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #12
  br label %32

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !111
  br label %29

29:                                               ; preds = %13, %21, %26
  %30 = phi ptr [ %28, %26 ], [ %19, %21 ], [ %15, %13 ]
  %31 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull %10) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %10, i32 noundef %31) #13
  ret ptr %10

32:                                               ; preds = %24, %22
  %33 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710DTDGrammar11putElemDeclEPNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  br i1 %2, label %4, label %16

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10) #13
  %12 = load ptr, ptr %9, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 29, i32 noundef 128, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !121
  br label %19

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #12
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !111
  br label %19

19:                                               ; preds = %4, %13, %16
  %20 = phi ptr [ %18, %16 ], [ %11, %13 ], [ %6, %4 ]
  %21 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef %1) #13
  ret i32 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar15putNotationDeclEPNS_15XMLNotationDeclE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDGrammar12setValidatedEb(ptr noundef nonnull align 8 dereferenceable(61) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #4 align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !121
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %5) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %10) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %12) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 4, !tbaa !120
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !97 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !117
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !117
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  br label %18

18:                                               ; preds = %14, %10
  store ptr %1, ptr %11, align 8, !tbaa !116
  br label %19

19:                                               ; preds = %2, %4, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar21getGrammarDescriptionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(61) %0) unnamed_addr #5 align 2 !prof !128 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  ret ptr %3
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #9 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40) #13
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !129
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 11, i32 noundef 12, ptr noundef %2) #13
          to label %3 unwind label %23

3:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, i16 noundef zeroext 38, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %5 unwind label %25

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %4) #13
  %7 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, i16 noundef zeroext 60, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %9 unwind label %27

9:                                                ; preds = %5
  %10 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull %8) #13
  %11 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, i16 noundef zeroext 62, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %13 unwind label %29

13:                                               ; preds = %9
  %14 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull %12) #13
  %15 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %16, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, i16 noundef zeroext 34, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %17 unwind label %31

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %16) #13
  %19 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %20, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, i16 noundef zeroext 39, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %21 unwind label %33

21:                                               ; preds = %17
  %22 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull %20) #13
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv) #13
  store i1 true, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  ret void

23:                                               ; preds = %0
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %35

25:                                               ; preds = %3
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %35

27:                                               ; preds = %5
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %35

29:                                               ; preds = %9
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %35

31:                                               ; preds = %13
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %17
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23
  %36 = phi ptr [ %20, %33 ], [ %16, %31 ], [ %12, %29 ], [ %8, %27 ], [ %4, %25 ], [ %1, %23 ]
  %37 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %36) #12
  resume { ptr, i32 } %37
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !131
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !133
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !134
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !135
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !136

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 68, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !117
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #13
  store ptr %22, ptr %5, align 8, !tbaa !137
  %23 = load i32, ptr %8, align 8, !tbaa !135
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !138

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !133
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !136

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !137
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !129
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !139, !llvm.loop !140

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !133
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !131
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !117
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %39, align 8, !tbaa !142
  store ptr null, ptr %46, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !143 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !144

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !131
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !131
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = load i32, ptr %3, align 4, !tbaa !125
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #13
  %26 = load ptr, ptr %20, align 8, !tbaa !137
  %27 = load i32, ptr %3, align 4, !tbaa !125
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !129
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !134
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !133
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36, !prof !145

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !142
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !131
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !117
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #13
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !142
  %52 = load i32, ptr %33, align 8, !tbaa !133
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !131
  %56 = load ptr, ptr %50, align 8, !tbaa !142
  %57 = load ptr, ptr %55, align 8, !tbaa !117
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #13
  store ptr %49, ptr %50, align 8, !tbaa !142
  store i32 %42, ptr %33, align 8, !tbaa !133
  %60 = load i32, ptr %30, align 4, !tbaa !134
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !134
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !129
  call void @_ZN11xercesc_2_713XMLEntityDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %63) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %0, ptr noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #4 comdat align 2 !prof !143 {
  %6 = zext i1 %3 to i8
  %7 = zext i1 %4 to i8
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !129
  tail call void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 %6, ptr %9, align 8, !tbaa !98
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !109
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  store i8 %7, ptr %11, align 2, !tbaa !110
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv() #1 align 2 !prof !146 {
  %1 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %1) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #12
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %5 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #12
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !129
  store i1 false, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !147 {
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !97 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #4 comdat align 2 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !143 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !135
  %6 = load ptr, ptr %0, align 8, !tbaa !131
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !125
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !151

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !152
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !154, !llvm.loop !155

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !156
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #13
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !143 {
  store ptr %1, ptr %0, align 8, !tbaa !152
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !157
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !143 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !158
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !159 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !160

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !161
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !163

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !161
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !164

13:                                               ; preds = %8, %13
  %14 = phi i16 [ %23, %13 ], [ %11, %8 ]
  %15 = phi ptr [ %22, %13 ], [ %10, %8 ]
  %16 = phi i32 [ %21, %13 ], [ %9, %8 ]
  %17 = mul i32 %16, 38
  %18 = lshr i32 %16, 24
  %19 = add i32 %17, %18
  %20 = zext i16 %14 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds i16, ptr %15, i64 1
  %23 = load i16, ptr %22, align 2, !tbaa !161
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !165, !llvm.loop !166

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !167 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !168

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !161
  %8 = load i16, ptr %1, align 2, !tbaa !161
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !169

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !170

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !161
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !171

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !172

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !161
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !173

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !174

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !161
  %28 = load i16, ptr %26, align 2, !tbaa !161
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !175, !llvm.loop !176

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i16 noundef zeroext, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  tail call void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %4, i8 0, i64 45, i1 false)
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #13
          to label %9 unwind label %28

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 109, i32 noundef 128, ptr noundef %10) #13
          to label %11 unwind label %30

11:                                               ; preds = %9
  store ptr %8, ptr %4, align 8, !tbaa !111
  %12 = load ptr, ptr %3, align 8, !tbaa !123
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #13
          to label %14 unwind label %28

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 109, i32 noundef 128, ptr noundef %15) #13
          to label %16 unwind label %32

16:                                               ; preds = %14
  store ptr %13, ptr %5, align 8, !tbaa !114
  %17 = load ptr, ptr %3, align 8, !tbaa !123
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %17) #13
          to label %19 unwind label %28

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 109, i32 noundef 128, ptr noundef %20) #13
          to label %21 unwind label %34

21:                                               ; preds = %19
  store ptr %18, ptr %6, align 8, !tbaa !115
  %22 = load ptr, ptr %3, align 8, !tbaa !123
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %22) #13
          to label %24 unwind label %28

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE, ptr noundef %25) #13
          to label %26 unwind label %36

26:                                               ; preds = %24
  store ptr %23, ptr %7, align 8, !tbaa !116
  invoke void @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv(ptr nonnull align 8 poison) #13
          to label %27 unwind label %28

27:                                               ; preds = %26
  ret void

28:                                               ; preds = %26, %21, %16, %11, %2
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %38

30:                                               ; preds = %9
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %1) #12
  br label %38

32:                                               ; preds = %14
  %33 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #12
  br label %38

34:                                               ; preds = %19
  %35 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %18, ptr noundef %17) #12
  br label %38

36:                                               ; preds = %24
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %22) #12
  br label %38

38:                                               ; preds = %36, %34, %32, %30, %28
  %39 = phi { ptr, i32 } [ %29, %28 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ]
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #4 comdat align 2 !prof !130 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_77GrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !178
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !180
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !181
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !182
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !183

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 68, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !117
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #13
  store ptr %22, ptr %5, align 8, !tbaa !184
  %23 = load i32, ptr %8, align 8, !tbaa !182
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !185

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !180
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !183

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !184
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !129
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !186, !llvm.loop !187

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !180
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !178
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !117
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %39, align 8, !tbaa !188
  store ptr null, ptr %46, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !189
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !191
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !192
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !193
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !136

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 69, i32 noundef 68, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #14
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !117
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #13
  store ptr %22, ptr %5, align 8, !tbaa !194
  %23 = load i32, ptr %8, align 8, !tbaa !193
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !138

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !191
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !136

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !194
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !129
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !195, !llvm.loop !196

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !191
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !189
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !117
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %39, align 8, !tbaa !197
  store ptr null, ptr %46, align 8, !tbaa !129
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load i1, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br i1 %4, label %80, label %5, !prof !198

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !129
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25, !prof !199

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !129
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9) #13
  %10 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !199

12:                                               ; preds = %8
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #13
          to label %14 unwind label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !129
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15) #13
          to label %16 unwind label %19

16:                                               ; preds = %14
  store ptr %13, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !129
  br label %21

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %23

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %13) #12
  br label %23

21:                                               ; preds = %16, %8
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  %22 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !129
  br label %25

23:                                               ; preds = %19, %17
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  br label %81

25:                                               ; preds = %21, %5
  %26 = phi ptr [ %22, %21 ], [ %6, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %26) #13
  %27 = load i1, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br i1 %27, label %77, label %28, !prof !200

28:                                               ; preds = %25
  %29 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40) #13
          to label %30 unwind label %63

30:                                               ; preds = %28
  %31 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !129
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %29, i32 noundef 11, i32 noundef 12, ptr noundef %31) #13
          to label %32 unwind label %65

32:                                               ; preds = %30
  store ptr %29, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %33 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
          to label %34 unwind label %63

34:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, i16 noundef zeroext 38, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %35 unwind label %67

35:                                               ; preds = %34
  %36 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %29, ptr noundef nonnull %33) #13
          to label %37 unwind label %63

37:                                               ; preds = %35
  %38 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %39 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
          to label %40 unwind label %63

40:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %39, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, i16 noundef zeroext 60, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %41 unwind label %69

41:                                               ; preds = %40
  %42 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef nonnull %39) #13
          to label %43 unwind label %63

43:                                               ; preds = %41
  %44 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %45 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
          to label %46 unwind label %63

46:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %45, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, i16 noundef zeroext 62, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %47 unwind label %71

47:                                               ; preds = %46
  %48 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull %45) #13
          to label %49 unwind label %63

49:                                               ; preds = %47
  %50 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %51 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
          to label %52 unwind label %63

52:                                               ; preds = %49
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %51, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, i16 noundef zeroext 34, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %53 unwind label %73

53:                                               ; preds = %52
  %54 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull %51) #13
          to label %55 unwind label %63

55:                                               ; preds = %53
  %56 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !129
  %57 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #13
          to label %58 unwind label %63

58:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %57, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, i16 noundef zeroext 39, i1 noundef zeroext true, i1 noundef zeroext true) #13
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull %57) #13
          to label %61 unwind label %63

61:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv) #13
          to label %62 unwind label %63

62:                                               ; preds = %61
  store i1 true, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br label %77

63:                                               ; preds = %61, %59, %55, %53, %49, %47, %43, %41, %37, %35, %32, %28
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %78

65:                                               ; preds = %30
  %66 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %29) #12
  br label %78

67:                                               ; preds = %34
  %68 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %33) #12
  br label %78

69:                                               ; preds = %40
  %70 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %39) #12
  br label %78

71:                                               ; preds = %46
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %45) #12
  br label %78

73:                                               ; preds = %52
  %74 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %51) #12
  br label %78

75:                                               ; preds = %58
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %57) #12
  br label %78

77:                                               ; preds = %62, %25
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %80

78:                                               ; preds = %75, %73, %71, %69, %67, %65, %63
  %79 = phi { ptr, i32 } [ %64, %63 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  br label %81

80:                                               ; preds = %77, %1
  ret void

81:                                               ; preds = %78, %23
  %82 = phi { ptr, i32 } [ %79, %78 ], [ %24, %23 ]
  resume { ptr, i32 } %82
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !201 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !202 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 align 2 !prof !128 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !117
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !121
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !203

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !114
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %13) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !115
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %18) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #12
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !117
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23) #12
  br label %29

29:                                               ; preds = %25, %21
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = load ptr, ptr %0, align 8, !tbaa !178
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !188
  %5 = load ptr, ptr %2, align 8, !tbaa !117
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !178
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !184
  %13 = load ptr, ptr %10, align 8, !tbaa !117
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !142
  %5 = load ptr, ptr %2, align 8, !tbaa !117
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !131
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = load ptr, ptr %10, align 8, !tbaa !117
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !197
  %5 = load ptr, ptr %2, align 8, !tbaa !117
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !189
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !194
  %13 = load ptr, ptr %10, align 8, !tbaa !117
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !204 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !182
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !181
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !184
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !205

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !206
  %20 = load ptr, ptr %17, align 8, !tbaa !208
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !117
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(80) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !178
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !209, !llvm.loop !210

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !184
  %34 = load i32, ptr %2, align 8, !tbaa !182
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !129
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !211, !llvm.loop !212
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !130 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !135
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !134
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !137
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !213

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !157
  %20 = load ptr, ptr %17, align 8, !tbaa !152
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !117
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(75) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !131
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !214, !llvm.loop !215

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !137
  %34 = load i32, ptr %2, align 8, !tbaa !135
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !129
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !216, !llvm.loop !217
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !143 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !193
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !218

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !192
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !194
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !219

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !220
  %20 = load ptr, ptr %17, align 8, !tbaa !222
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !117
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(56) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !189
  %28 = load ptr, ptr %27, align 8, !tbaa !117
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !154, !llvm.loop !223

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !194
  %34 = load i32, ptr %2, align 8, !tbaa !193
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !129
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !224, !llvm.loop !225
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !226 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !227

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = invoke noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #13
          to label %10 unwind label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11) #13
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %10, %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !178
  %17 = load ptr, ptr %16, align 8, !tbaa !117
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16) #13
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !184
  %23 = load i32, ptr %3, align 4, !tbaa !125
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !129
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %1, ptr noundef %26) #13
  %27 = load ptr, ptr %21, align 8, !tbaa !184
  %28 = load i32, ptr %3, align 4, !tbaa !125
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %20, ptr %30, align 8, !tbaa !129
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !181
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !180
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %40, label %37, !prof !228

37:                                               ; preds = %15
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !188
  br label %63

40:                                               ; preds = %15
  %41 = uitofp i32 %33 to double
  %42 = fmul double %41, 1.500000e+00
  %43 = fptoui double %42 to i32
  %44 = load ptr, ptr %0, align 8, !tbaa !178
  %45 = zext i32 %43 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !117
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46) #13
  %51 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !188
  %53 = load i32, ptr %34, align 8, !tbaa !180
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %52, i64 %55, i1 false)
  %56 = load ptr, ptr %0, align 8, !tbaa !178
  %57 = load ptr, ptr %51, align 8, !tbaa !188
  %58 = load ptr, ptr %56, align 8, !tbaa !117
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57) #13
  store ptr %50, ptr %51, align 8, !tbaa !188
  store i32 %43, ptr %34, align 8, !tbaa !180
  %61 = load i32, ptr %31, align 4, !tbaa !181
  %62 = add i32 %61, 1
  br label %63

63:                                               ; preds = %37, %40
  %64 = phi i32 [ %33, %37 ], [ %62, %40 ]
  %65 = phi ptr [ %39, %37 ], [ %50, %40 ]
  store i32 %64, ptr %31, align 4, !tbaa !181
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %1, ptr %67, align 8, !tbaa !129
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %64) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !229 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !230
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !233 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !182
  %6 = load ptr, ptr %0, align 8, !tbaa !178
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !125
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !184
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !234

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !208
  %17 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19, !prof !235

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !236, !llvm.loop !237

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #4 comdat align 2 !prof !238 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #13
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !226 {
  store ptr %1, ptr %0, align 8, !tbaa !208
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !206
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #4 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !240
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %0) #13
  invoke void @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %2, ptr noundef %0) #13
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #12
  resume { ptr, i32 } %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = load i16, ptr %0, align 8, !tbaa !241
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_14DTDElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_13DTDEntityDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_14DTDElementDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_13DTDEntityDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !244 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !245

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !208
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !230
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %10 = load ptr, ptr %0, align 8, !tbaa !178
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 176, i32 noundef 67, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !188
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !129
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !97 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !222
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !97 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !193
  %6 = load ptr, ptr %0, align 8, !tbaa !189
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !125
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !194
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !129
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !222
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !129
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !246

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !189
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !189
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = load i32, ptr %3, align 4, !tbaa !125
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #13
  %26 = load ptr, ptr %20, align 8, !tbaa !194
  %27 = load i32, ptr %3, align 4, !tbaa !125
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !129
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !192
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !191
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !197
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !189
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !117
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #13
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !197
  %52 = load i32, ptr %33, align 8, !tbaa !191
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !189
  %56 = load ptr, ptr %50, align 8, !tbaa !197
  %57 = load ptr, ptr %55, align 8, !tbaa !117
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #13
  store ptr %49, ptr %50, align 8, !tbaa !197
  store i32 %42, ptr %33, align 8, !tbaa !191
  %60 = load i32, ptr %30, align 4, !tbaa !192
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !192
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !129
  call void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %63) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !97 {
  store ptr %1, ptr %0, align 8, !tbaa !222
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !220
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !249
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DTDGrammar.cpp() #9 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!96}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!36 = !{ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, i64 941}
!37 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!38 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!39 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 6}
!41 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, i64 5}
!42 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!43 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_, i64 4}
!45 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_713XMLEntityDecl5setIdEj, i64 4}
!46 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb, ptr @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE, i64 5}
!47 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, i64 1}
!48 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!49 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!50 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!51 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!53 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77GrammarC2Ev, i64 3}
!54 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 12}
!55 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!56 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!57 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!58 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 3}
!59 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, i64 3}
!60 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 4}
!61 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!62 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!63 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!64 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!65 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!66 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!67 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!68 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 2}
!69 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 7}
!70 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!71 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 2}
!72 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, i64 1}
!73 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb, i64 5}
!74 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, i64 5}
!75 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 1}
!76 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, i64 3}
!77 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 7}
!78 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, i64 2}
!79 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, i64 2}
!80 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 3}
!81 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!82 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, i64 4}
!83 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 4}
!84 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 48}
!85 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!86 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!87 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_free_exception, i64 1}
!88 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_, i64 46}
!89 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 46}
!90 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 1927}
!91 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 2046}
!92 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2046}
!93 = !{ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 1330}
!94 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!95 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 1880}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !106, i64 72}
!99 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !100, i64 0, !106, i64 72, !106, i64 73, !106, i64 74}
!100 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !101, i64 0, !102, i64 8, !102, i64 12, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48, !105, i64 56, !105, i64 64}
!101 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C++ TBAA"}
!105 = !{!"any pointer", !103, i64 0}
!106 = !{!"bool", !103, i64 0}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!99, !106, i64 73}
!110 = !{!99, !106, i64 74}
!111 = !{!112, !105, i64 16}
!112 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !113, i64 0, !105, i64 8, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48, !102, i64 56, !106, i64 60}
!113 = !{!"_ZTSN11xercesc_2_77GrammarE", !101, i64 0}
!114 = !{!112, !105, i64 32}
!115 = !{!112, !105, i64 40}
!116 = !{!112, !105, i64 48}
!117 = !{!118, !118, i64 0}
!118 = !{!"vtable pointer", !104, i64 0}
!119 = !{!112, !102, i64 56}
!120 = !{!112, !106, i64 60}
!121 = !{!112, !105, i64 24}
!122 = !{!"function_entry_count", i64 1106}
!123 = !{!112, !105, i64 8}
!124 = !{!106, !106, i64 0}
!125 = !{!102, !102, i64 0}
!126 = !{!"function_entry_count", i64 940}
!127 = !{!"branch_weights", i32 941, i32 1}
!128 = !{!"function_entry_count", i64 3}
!129 = !{!105, !105, i64 0}
!130 = !{!"function_entry_count", i64 4}
!131 = !{!132, !105, i64 0}
!132 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !105, i64 0, !105, i64 8, !105, i64 16, !102, i64 24, !102, i64 28, !102, i64 32}
!133 = !{!132, !102, i64 24}
!134 = !{!132, !102, i64 28}
!135 = !{!132, !102, i64 32}
!136 = !{!"branch_weights", i32 1, i32 5}
!137 = !{!132, !105, i64 8}
!138 = !{!"branch_weights", i32 1, i32 159}
!139 = !{!"branch_weights", i32 159, i32 10689}
!140 = distinct !{!140, !141}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !{!132, !105, i64 16}
!143 = !{!"function_entry_count", i64 5}
!144 = !{!"branch_weights", i32 6, i32 1}
!145 = !{!"branch_weights", i32 1, i32 6}
!146 = !{!"function_entry_count", i64 1}
!147 = !{!"function_entry_count", i64 5836268}
!148 = !{!149, !105, i64 40}
!149 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !150, i64 8, !105, i64 16, !102, i64 24, !105, i64 32, !105, i64 40}
!150 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !103, i64 0}
!151 = !{!"branch_weights", i32 5, i32 1}
!152 = !{!153, !105, i64 0}
!153 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !105, i64 0, !105, i64 8}
!154 = !{!"branch_weights", i32 1, i32 0}
!155 = distinct !{!155, !141}
!156 = !{!100, !105, i64 24}
!157 = !{!153, !105, i64 8}
!158 = !{!100, !102, i64 8}
!159 = !{!"function_entry_count", i64 4646679}
!160 = !{!"branch_weights", i32 1, i32 4646680}
!161 = !{!162, !162, i64 0}
!162 = !{!"short", !103, i64 0}
!163 = !{!"branch_weights", i32 1216534, i32 3430147}
!164 = !{!"branch_weights", i32 1, i32 3430146}
!165 = !{!"branch_weights", i32 3430146, i32 42249130}
!166 = distinct !{!166, !141}
!167 = !{!"function_entry_count", i64 1231717351}
!168 = !{!"branch_weights", i32 621, i32 -1469098093}
!169 = !{!"branch_weights", i32 408901017, i32 1}
!170 = !{!"branch_weights", i32 267, i32 4}
!171 = !{!"branch_weights", i32 1, i32 4}
!172 = !{!"branch_weights", i32 156, i32 112}
!173 = !{!"branch_weights", i32 1, i32 112}
!174 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!175 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!176 = distinct !{!176, !141}
!177 = !{!"function_entry_count", i64 6}
!178 = !{!179, !105, i64 0}
!179 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !105, i64 0, !105, i64 8, !105, i64 16, !102, i64 24, !102, i64 28, !102, i64 32}
!180 = !{!179, !102, i64 24}
!181 = !{!179, !102, i64 28}
!182 = !{!179, !102, i64 32}
!183 = !{!"branch_weights", i32 1, i32 7}
!184 = !{!179, !105, i64 8}
!185 = !{!"branch_weights", i32 1, i32 223}
!186 = !{!"branch_weights", i32 223, i32 13057}
!187 = distinct !{!187, !141}
!188 = !{!179, !105, i64 16}
!189 = !{!190, !105, i64 0}
!190 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !105, i64 0, !105, i64 8, !105, i64 16, !102, i64 24, !102, i64 28, !102, i64 32}
!191 = !{!190, !102, i64 24}
!192 = !{!190, !102, i64 28}
!193 = !{!190, !102, i64 32}
!194 = !{!190, !105, i64 8}
!195 = !{!"branch_weights", i32 159, i32 13825}
!196 = distinct !{!196, !141}
!197 = !{!190, !105, i64 16}
!198 = !{!"branch_weights", i32 3, i32 2}
!199 = !{!"branch_weights", i32 2, i32 1}
!200 = !{!"branch_weights", i32 1, i32 2}
!201 = !{!"function_entry_count", i64 1069174}
!202 = !{!"function_entry_count", i64 1068727}
!203 = !{!"branch_weights", i32 4, i32 1}
!204 = !{!"function_entry_count", i64 9}
!205 = !{!"branch_weights", i32 454, i32 48}
!206 = !{!207, !105, i64 8}
!207 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !105, i64 0, !105, i64 8}
!208 = !{!207, !105, i64 0}
!209 = !{!"branch_weights", i32 48, i32 0}
!210 = distinct !{!210, !141}
!211 = !{!"branch_weights", i32 7873, i32 159}
!212 = distinct !{!212, !141}
!213 = !{!"branch_weights", i32 333, i32 6}
!214 = !{!"branch_weights", i32 6, i32 0}
!215 = distinct !{!215, !141}
!216 = !{!"branch_weights", i32 10689, i32 159}
!217 = distinct !{!217, !141}
!218 = !{!"branch_weights", i32 1, i32 191}
!219 = !{!"branch_weights", i32 545, i32 1}
!220 = !{!221, !105, i64 8}
!221 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEE", !105, i64 0, !105, i64 8}
!222 = !{!221, !105, i64 0}
!223 = distinct !{!223, !141}
!224 = !{!"branch_weights", i32 17281, i32 191}
!225 = distinct !{!225, !141}
!226 = !{!"function_entry_count", i64 47}
!227 = !{!"branch_weights", i32 48, i32 1}
!228 = !{!"branch_weights", i32 1, i32 48}
!229 = !{!"function_entry_count", i64 173}
!230 = !{!231, !102, i64 28}
!231 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !101, i64 0, !105, i64 8, !105, i64 16, !232, i64 24, !102, i64 28, !106, i64 32}
!232 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !103, i64 0}
!233 = !{!"function_entry_count", i64 1927}
!234 = !{!"branch_weights", i32 1, i32 1034}
!235 = !{!"branch_weights", i32 894, i32 391}
!236 = !{!"branch_weights", i32 1034, i32 250}
!237 = distinct !{!237, !141}
!238 = !{!"function_entry_count", i64 1330}
!239 = !{!"function_entry_count", i64 1668291}
!240 = !{!231, !105, i64 16}
!241 = !{!242, !162, i64 0}
!242 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !162, i64 0, !162, i64 2, !105, i64 8, !105, i64 16, !105, i64 24, !243, i64 32, !243, i64 40, !105, i64 48, !105, i64 56, !105, i64 64, !105, i64 72, !105, i64 80, !105, i64 88, !102, i64 96}
!243 = !{!"long", !103, i64 0}
!244 = !{!"function_entry_count", i64 1880}
!245 = !{!"branch_weights", i32 988, i32 894}
!246 = distinct !{!246, !141}
!247 = !{!248, !105, i64 16}
!248 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !101, i64 0, !102, i64 8, !102, i64 12, !105, i64 16, !105, i64 24, !105, i64 32, !105, i64 40, !105, i64 48}
!249 = !{!248, !102, i64 8}
