; ModuleID = 'DTDGrammar.cpp'
source_filename = "DTDGrammar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::NameIdPool.0" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::NameIdPool.2" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem.4" = type { ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem.5" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb = comdat any

$_ZN11xercesc_2_77GrammarC2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

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

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_714DTDElementDecl6getKeyEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_715XMLNotationDecl5setIdEj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_713XMLEntityDecl5setIdEj = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_ = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZN11xercesc_2_7L25entityPoolRegistryCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_76XMLUni5fgAmpE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni4fgLTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni4fgGTE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni6fgQuotE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni6fgAposE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE = internal unnamed_addr global i1 false, align 1
@_ZTVN11xercesc_2_710DTDGrammarE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_710DTDGrammarE, ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710DTDGrammarD0Ev, ptr @_ZNK11xercesc_2_710DTDGrammar14isSerializableEv, ptr @_ZN11xercesc_2_710DTDGrammar9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_710DTDGrammar12getProtoTypeEv, ptr @_ZNK11xercesc_2_710DTDGrammar14getGrammarTypeEv, ptr @_ZNK11xercesc_2_710DTDGrammar18getTargetNamespaceEv, ptr @_ZNK11xercesc_2_710DTDGrammar12getValidatedEv, ptr @_ZN11xercesc_2_710DTDGrammar17findOrAddElemDeclEjPKtS2_S2_jRb, ptr @_ZNK11xercesc_2_710DTDGrammar9getElemIdEjPKtS2_j, ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEj, ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEj, ptr @_ZNK11xercesc_2_710DTDGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_710DTDGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEjPKtS2_S2_jb, ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_710DTDGrammar15putNotationDeclEPNS_15XMLNotationDeclE, ptr @_ZN11xercesc_2_710DTDGrammar12setValidatedEb, ptr @_ZN11xercesc_2_710DTDGrammar5resetEv, ptr @_ZN11xercesc_2_710DTDGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE, ptr @_ZNK11xercesc_2_710DTDGrammar21getGrammarDescriptionEv] }, align 8
@_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L16sEntityPoolMutexE = internal unnamed_addr global ptr null, align 8
@_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"DTDGrammar\00", align 1
@_ZN11xercesc_2_710DTDGrammar15classDTDGrammarE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_710DTDGrammar12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTSN11xercesc_2_710DTDGrammarE = dso_local constant [28 x i8] c"N11xercesc_2_710DTDGrammarE\00", align 1
@_ZTIN11xercesc_2_77GrammarE = external constant ptr
@_ZTIN11xercesc_2_710DTDGrammarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DTDGrammarE, ptr @_ZTIN11xercesc_2_77GrammarE }, align 8
@_ZTVN11xercesc_2_77GrammarE = external unnamed_addr constant { [25 x ptr] }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DTDGrammar.cpp, ptr null }]

@_ZN11xercesc_2_710DTDGrammarC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_710DTDGrammarD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_710DTDGrammarD2Ev

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #0

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #4 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv() local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40) #15
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 11, i32 noundef 12, ptr noundef %2) #15
          to label %3 unwind label %23

3:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, i16 noundef zeroext 38, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %5 unwind label %25

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %4) #15
  %7 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %8, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, i16 noundef zeroext 60, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %9 unwind label %27

9:                                                ; preds = %5
  %10 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull %8) #15
  %11 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, i16 noundef zeroext 62, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %13 unwind label %29

13:                                               ; preds = %9
  %14 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull %12) #15
  %15 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %16, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, i16 noundef zeroext 34, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %17 unwind label %31

17:                                               ; preds = %13
  %18 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %16) #15
  %19 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %20, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, i16 noundef zeroext 39, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %21 unwind label %33

21:                                               ; preds = %17
  %22 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull %20) #15
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv) #15
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
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr %3, ptr %0, align 8, !tbaa !102
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !105
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !106
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !107
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !108

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #13
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !109
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #15
  store ptr %22, ptr %5, align 8, !tbaa !111
  %23 = load i32, ptr %8, align 8, !tbaa !107
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !112

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !105
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !108

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !111
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !97
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !113, !llvm.loop !114

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !102
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !109
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #15
  store ptr %46, ptr %39, align 8, !tbaa !116
  store ptr null, ptr %46, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !118

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !102
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !102
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #15
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !111
  %22 = load i32, ptr %3, align 4, !tbaa !119
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #15
  %26 = load ptr, ptr %20, align 8, !tbaa !111
  %27 = load i32, ptr %3, align 4, !tbaa !119
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !97
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !106
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !105
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36, !prof !120

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !116
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !102
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #15
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !116
  %52 = load i32, ptr %33, align 8, !tbaa !105
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !102
  %56 = load ptr, ptr %50, align 8, !tbaa !116
  %57 = load ptr, ptr %55, align 8, !tbaa !109
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #15
  store ptr %49, ptr %50, align 8, !tbaa !116
  store i32 %42, ptr %33, align 8, !tbaa !105
  %60 = load i32, ptr %30, align 4, !tbaa !106
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !106
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !97
  call void @_ZN11xercesc_2_713XMLEntityDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %63) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %0, ptr noundef %1, i16 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #6 comdat align 2 !prof !117 {
  %6 = zext i1 %3 to i8
  %7 = zext i1 %4 to i8
  %8 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i16 noundef zeroext %2, ptr noundef %8) #15
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  store i8 %6, ptr %9, align 8, !tbaa !121
  %10 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !126
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  store i8 %7, ptr %11, align 2, !tbaa !127
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv() #1 align 2 !prof !128 {
  %1 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %1) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #12
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %5 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !97
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #12
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !97
  store i1 false, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  tail call void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !130
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %4, i8 0, i64 45, i1 false)
  %8 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1) #15
          to label %9 unwind label %28

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 109, i32 noundef 128, ptr noundef %10) #15
          to label %11 unwind label %30

11:                                               ; preds = %9
  store ptr %8, ptr %4, align 8, !tbaa !133
  %12 = load ptr, ptr %3, align 8, !tbaa !130
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #15
          to label %14 unwind label %28

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, i32 noundef 109, i32 noundef 128, ptr noundef %15) #15
          to label %16 unwind label %32

16:                                               ; preds = %14
  store ptr %13, ptr %5, align 8, !tbaa !134
  %17 = load ptr, ptr %3, align 8, !tbaa !130
  %18 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %17) #15
          to label %19 unwind label %28

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 109, i32 noundef 128, ptr noundef %20) #15
          to label %21 unwind label %34

21:                                               ; preds = %19
  store ptr %18, ptr %6, align 8, !tbaa !135
  %22 = load ptr, ptr %3, align 8, !tbaa !130
  %23 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %22) #15
          to label %24 unwind label %28

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE, ptr noundef %25) #15
          to label %26 unwind label %36

26:                                               ; preds = %24
  store ptr %23, ptr %7, align 8, !tbaa !136
  invoke void @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv(ptr nonnull align 8 poison) #15
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
define linkonce_odr dso_local void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_77GrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr %3, ptr %0, align 8, !tbaa !138
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !140
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !141
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !142
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !143

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #13
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !109
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #15
  store ptr %22, ptr %5, align 8, !tbaa !144
  %23 = load i32, ptr %8, align 8, !tbaa !142
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !145

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !140
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !143

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !144
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !97
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !146, !llvm.loop !147

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !140
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !138
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !109
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #15
  store ptr %46, ptr %39, align 8, !tbaa !148
  store ptr null, ptr %46, align 8, !tbaa !97
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store ptr %3, ptr %0, align 8, !tbaa !149
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !151
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !152
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !153
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !108

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #13
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !109
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #15
  store ptr %22, ptr %5, align 8, !tbaa !154
  %23 = load i32, ptr %8, align 8, !tbaa !153
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !112

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !151
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !108

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !154
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !97
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !155, !llvm.loop !156

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !151
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !149
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !109
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #15
  store ptr %46, ptr %39, align 8, !tbaa !157
  store ptr null, ptr %46, align 8, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load i1, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br i1 %4, label %80, label %5, !prof !158

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !97
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %25, !prof !159

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9) #15
  %10 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !97
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !159

12:                                               ; preds = %8
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8) #15
          to label %14 unwind label %17

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15) #15
          to label %16 unwind label %19

16:                                               ; preds = %14
  store ptr %13, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !97
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %22 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !97
  br label %25

23:                                               ; preds = %19, %17
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  br label %81

25:                                               ; preds = %21, %5
  %26 = phi ptr [ %22, %21 ], [ %6, %5 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %26) #15
  %27 = load i1, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br i1 %27, label %77, label %28, !prof !160

28:                                               ; preds = %25
  %29 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40) #15
          to label %30 unwind label %63

30:                                               ; preds = %28
  %31 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %29, i32 noundef 11, i32 noundef 12, ptr noundef %31) #15
          to label %32 unwind label %65

32:                                               ; preds = %30
  store ptr %29, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %33 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
          to label %34 unwind label %63

34:                                               ; preds = %32
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, i16 noundef zeroext 38, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %35 unwind label %67

35:                                               ; preds = %34
  %36 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %29, ptr noundef nonnull %33) #15
          to label %37 unwind label %63

37:                                               ; preds = %35
  %38 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %39 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
          to label %40 unwind label %63

40:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %39, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, i16 noundef zeroext 60, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %41 unwind label %69

41:                                               ; preds = %40
  %42 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %38, ptr noundef nonnull %39) #15
          to label %43 unwind label %63

43:                                               ; preds = %41
  %44 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %45 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
          to label %46 unwind label %63

46:                                               ; preds = %43
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %45, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, i16 noundef zeroext 62, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %47 unwind label %71

47:                                               ; preds = %46
  %48 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef nonnull %45) #15
          to label %49 unwind label %63

49:                                               ; preds = %47
  %50 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %51 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
          to label %52 unwind label %63

52:                                               ; preds = %49
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %51, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, i16 noundef zeroext 34, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %53 unwind label %73

53:                                               ; preds = %52
  %54 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %50, ptr noundef nonnull %51) #15
          to label %55 unwind label %63

55:                                               ; preds = %53
  %56 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !97
  %57 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80) #15
          to label %58 unwind label %63

58:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb(ptr noundef nonnull align 8 dereferenceable(75) %57, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, i16 noundef zeroext 39, i1 noundef zeroext true, i1 noundef zeroext true) #15
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %56, ptr noundef nonnull %57) #15
          to label %61 unwind label %63

61:                                               ; preds = %59
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv) #15
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %80

78:                                               ; preds = %75, %73, %71, %69, %67, %65, %63
  %79 = phi { ptr, i32 } [ %64, %63 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %67 ], [ %66, %65 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %81

80:                                               ; preds = %77, %1
  ret void

81:                                               ; preds = %78, %23
  %82 = phi { ptr, i32 } [ %79, %78 ], [ %24, %23 ]
  resume { ptr, i32 } %82
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !161 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 align 2 !prof !129 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !162
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !163

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %13) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !135
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %18) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #12
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !136
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !109
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23) #12
  br label %29

29:                                               ; preds = %25, %21
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = load ptr, ptr %2, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #15
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !138
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !144
  %13 = load ptr, ptr %10, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #15
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !102
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !116
  %5 = load ptr, ptr %2, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #15
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !102
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = load ptr, ptr %10, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #15
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = load ptr, ptr %0, align 8, !tbaa !149
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !157
  %5 = load ptr, ptr %2, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #15
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #15
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !154
  %13 = load ptr, ptr %10, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #15
          to label %16 unwind label %17

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarD0Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 align 2 {
  tail call void @_ZN11xercesc_2_710DTDGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar17findOrAddElemDeclEjPKtS2_S2_jRb(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %8 = load ptr, ptr %0, align 8, !tbaa !109
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !130
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %15) #15
  %17 = load ptr, ptr %14, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef %4, i32 noundef %1, i32 noundef 1, ptr noundef %17) #15
          to label %18 unwind label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !130
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %23) #15
  %25 = load ptr, ptr %14, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 29, i32 noundef 128, ptr noundef %25) #15
          to label %26 unwind label %29

26:                                               ; preds = %22
  store ptr %24, ptr %19, align 8, !tbaa !162
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
  %33 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull %16) #15
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %16, i32 noundef %33) #15
  br label %34

34:                                               ; preds = %7, %31
  %35 = phi i8 [ 1, %31 ], [ 0, %7 ]
  %36 = phi ptr [ %16, %31 ], [ %11, %7 ]
  store i8 %35, ptr %6, align 1, !tbaa !164
  ret ptr %36

37:                                               ; preds = %29, %27
  %38 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %38
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !165 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #15
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7, !prof !166

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = invoke noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %1) #15
          to label %10 unwind label %13

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11) #15
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

13:                                               ; preds = %10, %7
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !138
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16) #15
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !144
  %23 = load i32, ptr %3, align 4, !tbaa !119
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %1, ptr noundef %26) #15
  %27 = load ptr, ptr %21, align 8, !tbaa !144
  %28 = load i32, ptr %3, align 4, !tbaa !119
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds ptr, ptr %27, i64 %29
  store ptr %20, ptr %30, align 8, !tbaa !97
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !141
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !140
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %40, label %37, !prof !167

37:                                               ; preds = %15
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !148
  br label %63

40:                                               ; preds = %15
  %41 = uitofp i32 %33 to double
  %42 = fmul double %41, 1.500000e+00
  %43 = fptoui double %42 to i32
  %44 = load ptr, ptr %0, align 8, !tbaa !138
  %45 = zext i32 %43 to i64
  %46 = shl nuw nsw i64 %45, 3
  %47 = load ptr, ptr %44, align 8, !tbaa !109
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %44, i64 noundef %46) #15
  %51 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !148
  %53 = load i32, ptr %34, align 8, !tbaa !140
  %54 = zext i32 %53 to i64
  %55 = shl nuw nsw i64 %54, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %50, ptr align 8 %52, i64 %55, i1 false)
  %56 = load ptr, ptr %0, align 8, !tbaa !138
  %57 = load ptr, ptr %51, align 8, !tbaa !148
  %58 = load ptr, ptr %56, align 8, !tbaa !109
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  call void %60(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %57) #15
  store ptr %50, ptr %51, align 8, !tbaa !148
  store i32 %43, ptr %34, align 8, !tbaa !140
  %61 = load i32, ptr %31, align 4, !tbaa !141
  %62 = add i32 %61, 1
  br label %63

63:                                               ; preds = %37, %40
  %64 = phi i32 [ %33, %37 ], [ %62, %40 ]
  %65 = phi ptr [ %39, %37 ], [ %50, %40 ]
  store i32 %64, ptr %31, align 4, !tbaa !141
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds ptr, ptr %65, i64 %66
  store ptr %1, ptr %67, align 8, !tbaa !97
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %1, i32 noundef %64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %64
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !168 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !169
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEjPKtS2_S2_jb(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 %5, i1 noundef zeroext %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !130
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %9) #15
  %11 = load ptr, ptr %8, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef %4, i32 noundef %1, i32 noundef 1, ptr noundef %11) #15
          to label %12 unwind label %22

12:                                               ; preds = %7
  br i1 %6, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !130
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %18) #15
  %20 = load ptr, ptr %8, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 29, i32 noundef 128, ptr noundef %20) #15
          to label %21 unwind label %24

21:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !162
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
  %28 = load ptr, ptr %27, align 8, !tbaa !133
  br label %29

29:                                               ; preds = %13, %21, %26
  %30 = phi ptr [ %28, %26 ], [ %19, %21 ], [ %15, %13 ]
  %31 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull %10) #15
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %10, i32 noundef %31) #15
  ret ptr %10

32:                                               ; preds = %24, %22
  %33 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #6 align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %3) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !162
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %5) #15
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !135
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %10) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %12) #15
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 4, !tbaa !172
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !142
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !141
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !144
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !174

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !175
  %20 = load ptr, ptr %17, align 8, !tbaa !177
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(80) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !138
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #15
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !178, !llvm.loop !179

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !144
  %34 = load i32, ptr %2, align 8, !tbaa !142
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !97
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !180, !llvm.loop !181
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !153
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !182

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !152
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !154
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !183

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !184
  %20 = load ptr, ptr %17, align 8, !tbaa !186
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(56) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !149
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #15
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !187, !llvm.loop !188

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !154
  %34 = load i32, ptr %2, align 8, !tbaa !153
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !97
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !189, !llvm.loop !190
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !101 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !107
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !106
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !111
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !191

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !192
  %20 = load ptr, ptr %17, align 8, !tbaa !194
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !109
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(75) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !102
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #15
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !195, !llvm.loop !196

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !111
  %34 = load i32, ptr %2, align 8, !tbaa !107
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !97
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !197, !llvm.loop !198
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #6 align 2 !prof !96 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !109
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !109
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  br label %18

18:                                               ; preds = %14, %10
  store ptr %1, ptr %11, align 8, !tbaa !136
  br label %19

19:                                               ; preds = %2, %4, %18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar21getGrammarDescriptionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(61) %0) unnamed_addr #8 align 2 !prof !129 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !136
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #6 align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %0) #15
  invoke void @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %2, ptr noundef %0) #15
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
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DTDGrammar14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !96 {
  ret i1 true
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_710DTDGrammar12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #9 align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_710DTDGrammar15classDTDGrammarE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #6 align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  br i1 %3, label %6, label %23

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !133
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_14DTDElementDeclEEERNS_16XSerializeEngineE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !134
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_13DTDEntityDeclEEERNS_16XSerializeEngineE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %10 = load ptr, ptr %5, align 8, !tbaa !135
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !199
  %18 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %17) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %20 = load i8, ptr %19, align 4, !tbaa !172, !range !200, !noundef !201
  %21 = icmp ne i8 %20, 0
  %22 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %21) #15
  br label %35

23:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_14DTDElementDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %4, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  store ptr null, ptr %24, align 8, !tbaa !162
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_13DTDEntityDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %25, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %5, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !136
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(100) %1) #15
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  %32 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %31) #15
  %33 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %34 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %33) #15
  br label %35

35:                                               ; preds = %23, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = load i16, ptr %0, align 8, !tbaa !202
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_14DTDElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_13DTDEntityDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_14DTDElementDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_13DTDEntityDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #5

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !121, !range !200, !noundef !201
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !126, !range !200, !noundef !201
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !127, !range !200, !noundef !201
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 comdat align 2 !prof !206 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar18getTargetNamespaceEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DTDGrammar12getValidatedEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !172, !range !200, !noundef !201
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar9getElemIdEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #6 comdat align 2 !prof !96 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %3) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !119
  br label %14

12:                                               ; preds = %5
  %13 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %8) #15
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %13, %12 ], [ %11, %10 ]
  ret i32 %15
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #6 comdat align 2 !prof !96 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %3) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef %3) #15
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = phi ptr [ %8, %5 ], [ %15, %14 ], [ null, %10 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #6 comdat align 2 !prof !207 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %3) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !208

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !208

14:                                               ; preds = %10
  %15 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef %3) #15
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = phi ptr [ %8, %5 ], [ %15, %14 ], [ null, %10 ]
  ret ptr %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710DTDGrammar11putElemDeclEPNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  br i1 %2, label %4, label %16

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !162
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !130
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10) #15
  %12 = load ptr, ptr %9, align 8, !tbaa !130
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 29, i32 noundef 128, ptr noundef %12) #15
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !162
  br label %19

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #12
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  br label %19

19:                                               ; preds = %4, %13, %16
  %20 = phi ptr [ %18, %16 ], [ %11, %13 ], [ %6, %4 ]
  %21 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef %1) #15
  ret i32 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar15putNotationDeclEPNS_15XMLNotationDeclE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !135
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #15
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDGrammar12setValidatedEb(ptr noundef nonnull align 8 dereferenceable(61) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 4, !tbaa !172
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i16 noundef zeroext, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !209 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #1 comdat align 2 !prof !210 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !211 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !212

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !177
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !169
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !213 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = load ptr, ptr %0, align 8, !tbaa !138
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #15
  store i32 %7, ptr %2, align 4, !tbaa !119
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !144
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !214

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !177
  %17 = tail call noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %16) #15
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #15
  br i1 %18, label %23, label %19, !prof !215

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !216, !llvm.loop !217

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !219

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !220
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !221

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !220
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !222

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
  %23 = load i16, ptr %22, align 2, !tbaa !220
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !223, !llvm.loop !224

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !225 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !226

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !220
  %8 = load i16, ptr %1, align 2, !tbaa !220
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !227

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !228

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !220
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !229

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !230

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !220
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !231

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !232

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !220
  %28 = load i16, ptr %26, align 2, !tbaa !220
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !233, !llvm.loop !234

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #6 comdat align 2 !prof !235 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) #15
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #6 comdat align 2 !prof !236 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #15
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 176, i32 noundef 67, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !148
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !97
  ret ptr %19
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #15
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #15
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !96 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !238
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #15
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #15
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #6 comdat align 2 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #15
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !96 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !186
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !96 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !153
  %6 = load ptr, ptr %0, align 8, !tbaa !149
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #15
  store i32 %7, ptr %2, align 4, !tbaa !119
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !154
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !186
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %16) #15
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #15
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !241

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !242
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %10 = load ptr, ptr %0, align 8, !tbaa !149
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #15
          to label %11 unwind label %12

11:                                               ; preds = %7
  call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %8) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !149
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #15
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !154
  %22 = load i32, ptr %3, align 4, !tbaa !119
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #15
  %26 = load ptr, ptr %20, align 8, !tbaa !154
  %27 = load i32, ptr %3, align 4, !tbaa !119
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !97
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !152
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !151
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !157
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !149
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #15
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !157
  %52 = load i32, ptr %33, align 8, !tbaa !151
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !149
  %56 = load ptr, ptr %50, align 8, !tbaa !157
  %57 = load ptr, ptr %55, align 8, !tbaa !109
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #15
  store ptr %49, ptr %50, align 8, !tbaa !157
  store i32 %42, ptr %33, align 8, !tbaa !151
  %60 = load i32, ptr %30, align 4, !tbaa !152
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !152
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !97
  call void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %63) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret i32 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !96 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #15
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #15
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !96 {
  store ptr %1, ptr %0, align 8, !tbaa !186
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !184
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !96 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !244
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !117 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !107
  %6 = load ptr, ptr %0, align 8, !tbaa !102
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #15
  store i32 %7, ptr %2, align 4, !tbaa !119
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !245

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !194
  %17 = tail call noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %16) #15
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #15
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !prof !187, !llvm.loop !246

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #1 comdat align 2 !prof !117 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !117 {
  store ptr %1, ptr %0, align 8, !tbaa !194
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !192
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XMLEntityDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !117 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !165 {
  store ptr %1, ptr %0, align 8, !tbaa !177
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !175
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DTDGrammar.cpp() #4 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { optsize }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!95}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!35 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!36 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 6}
!39 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, i64 5}
!40 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!41 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEC2EPS1_PS2_, i64 4}
!43 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_713XMLEntityDecl5setIdEj, i64 4}
!44 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb, ptr @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE, i64 5}
!45 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, i64 1}
!46 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!47 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!48 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77GrammarC2Ev, i64 3}
!49 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 12}
!50 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!51 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!52 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!53 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 3}
!54 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, i64 3}
!55 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 4}
!56 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!57 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 6}
!58 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!59 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!60 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!61 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!62 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!63 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 2}
!64 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 7}
!65 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!66 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 2}
!67 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, i64 1}
!68 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_713DTDEntityDeclC2EPKttbb, i64 5}
!69 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, i64 5}
!70 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 1}
!71 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, i64 3}
!72 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 7}
!73 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, i64 2}
!74 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, i64 2}
!75 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 3}
!76 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!77 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, i64 4}
!78 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 4}
!79 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 48}
!80 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!81 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_allocate_exception, i64 1}
!82 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @__cxa_free_exception, i64 1}
!83 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEC2EPS1_PS2_, i64 46}
!84 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 46}
!85 = !{ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, i64 941}
!86 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE8getByKeyEPKt, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 1880}
!87 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 1927}
!88 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, i64 2046}
!89 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 2046}
!90 = !{ptr @_ZNK11xercesc_2_714DTDElementDecl6getKeyEv, ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, i64 1330}
!91 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl11getFullNameEv, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 1668291}
!92 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE, i64 5}
!93 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZNK11xercesc_2_713XMLEntityDecl6getKeyEv, i64 1}
!94 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 1}
!95 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!96 = !{!"function_entry_count", i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"any pointer", !99, i64 0}
!99 = !{!"omnipotent char", !100, i64 0}
!100 = !{!"Simple C++ TBAA"}
!101 = !{!"function_entry_count", i64 4}
!102 = !{!103, !98, i64 0}
!103 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !98, i64 0, !98, i64 8, !98, i64 16, !104, i64 24, !104, i64 28, !104, i64 32}
!104 = !{!"int", !99, i64 0}
!105 = !{!103, !104, i64 24}
!106 = !{!103, !104, i64 28}
!107 = !{!103, !104, i64 32}
!108 = !{!"branch_weights", i32 1, i32 5}
!109 = !{!110, !110, i64 0}
!110 = !{!"vtable pointer", !100, i64 0}
!111 = !{!103, !98, i64 8}
!112 = !{!"branch_weights", i32 1, i32 159}
!113 = !{!"branch_weights", i32 159, i32 10689}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!103, !98, i64 16}
!117 = !{!"function_entry_count", i64 5}
!118 = !{!"branch_weights", i32 6, i32 1}
!119 = !{!104, !104, i64 0}
!120 = !{!"branch_weights", i32 1, i32 6}
!121 = !{!122, !125, i64 72}
!122 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !123, i64 0, !125, i64 72, !125, i64 73, !125, i64 74}
!123 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !124, i64 0, !104, i64 8, !104, i64 12, !98, i64 16, !98, i64 24, !98, i64 32, !98, i64 40, !98, i64 48, !98, i64 56, !98, i64 64}
!124 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!125 = !{!"bool", !99, i64 0}
!126 = !{!122, !125, i64 73}
!127 = !{!122, !125, i64 74}
!128 = !{!"function_entry_count", i64 1}
!129 = !{!"function_entry_count", i64 3}
!130 = !{!131, !98, i64 8}
!131 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !132, i64 0, !98, i64 8, !98, i64 16, !98, i64 24, !98, i64 32, !98, i64 40, !98, i64 48, !104, i64 56, !125, i64 60}
!132 = !{!"_ZTSN11xercesc_2_77GrammarE", !124, i64 0}
!133 = !{!131, !98, i64 16}
!134 = !{!131, !98, i64 32}
!135 = !{!131, !98, i64 40}
!136 = !{!131, !98, i64 48}
!137 = !{!"function_entry_count", i64 6}
!138 = !{!139, !98, i64 0}
!139 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !98, i64 0, !98, i64 8, !98, i64 16, !104, i64 24, !104, i64 28, !104, i64 32}
!140 = !{!139, !104, i64 24}
!141 = !{!139, !104, i64 28}
!142 = !{!139, !104, i64 32}
!143 = !{!"branch_weights", i32 1, i32 7}
!144 = !{!139, !98, i64 8}
!145 = !{!"branch_weights", i32 1, i32 223}
!146 = !{!"branch_weights", i32 223, i32 13057}
!147 = distinct !{!147, !115}
!148 = !{!139, !98, i64 16}
!149 = !{!150, !98, i64 0}
!150 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !98, i64 0, !98, i64 8, !98, i64 16, !104, i64 24, !104, i64 28, !104, i64 32}
!151 = !{!150, !104, i64 24}
!152 = !{!150, !104, i64 28}
!153 = !{!150, !104, i64 32}
!154 = !{!150, !98, i64 8}
!155 = !{!"branch_weights", i32 159, i32 13825}
!156 = distinct !{!156, !115}
!157 = !{!150, !98, i64 16}
!158 = !{!"branch_weights", i32 3, i32 2}
!159 = !{!"branch_weights", i32 2, i32 1}
!160 = !{!"branch_weights", i32 1, i32 2}
!161 = !{!"function_entry_count", i64 1069174}
!162 = !{!131, !98, i64 24}
!163 = !{!"branch_weights", i32 4, i32 1}
!164 = !{!125, !125, i64 0}
!165 = !{!"function_entry_count", i64 47}
!166 = !{!"branch_weights", i32 48, i32 1}
!167 = !{!"branch_weights", i32 1, i32 48}
!168 = !{!"function_entry_count", i64 173}
!169 = !{!170, !104, i64 28}
!170 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !124, i64 0, !98, i64 8, !98, i64 16, !171, i64 24, !104, i64 28, !125, i64 32}
!171 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !99, i64 0}
!172 = !{!131, !125, i64 60}
!173 = !{!"function_entry_count", i64 9}
!174 = !{!"branch_weights", i32 454, i32 48}
!175 = !{!176, !98, i64 8}
!176 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !98, i64 0, !98, i64 8}
!177 = !{!176, !98, i64 0}
!178 = !{!"branch_weights", i32 48, i32 0}
!179 = distinct !{!179, !115}
!180 = !{!"branch_weights", i32 7873, i32 159}
!181 = distinct !{!181, !115}
!182 = !{!"branch_weights", i32 1, i32 191}
!183 = !{!"branch_weights", i32 545, i32 1}
!184 = !{!185, !98, i64 8}
!185 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEE", !98, i64 0, !98, i64 8}
!186 = !{!185, !98, i64 0}
!187 = !{!"branch_weights", i32 1, i32 0}
!188 = distinct !{!188, !115}
!189 = !{!"branch_weights", i32 17281, i32 191}
!190 = distinct !{!190, !115}
!191 = !{!"branch_weights", i32 333, i32 6}
!192 = !{!193, !98, i64 8}
!193 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !98, i64 0, !98, i64 8}
!194 = !{!193, !98, i64 0}
!195 = !{!"branch_weights", i32 6, i32 0}
!196 = distinct !{!196, !115}
!197 = !{!"branch_weights", i32 10689, i32 159}
!198 = distinct !{!198, !115}
!199 = !{!131, !104, i64 56}
!200 = !{i8 0, i8 2}
!201 = !{}
!202 = !{!203, !204, i64 0}
!203 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !204, i64 0, !204, i64 2, !98, i64 8, !98, i64 16, !98, i64 24, !205, i64 32, !205, i64 40, !98, i64 48, !98, i64 56, !98, i64 64, !98, i64 72, !98, i64 80, !98, i64 88, !104, i64 96}
!204 = !{!"short", !99, i64 0}
!205 = !{!"long", !99, i64 0}
!206 = !{!"function_entry_count", i64 1106}
!207 = !{!"function_entry_count", i64 940}
!208 = !{!"branch_weights", i32 941, i32 1}
!209 = !{!"function_entry_count", i64 1068727}
!210 = !{!"function_entry_count", i64 5836268}
!211 = !{!"function_entry_count", i64 1880}
!212 = !{!"branch_weights", i32 988, i32 894}
!213 = !{!"function_entry_count", i64 1927}
!214 = !{!"branch_weights", i32 1, i32 1034}
!215 = !{!"branch_weights", i32 894, i32 391}
!216 = !{!"branch_weights", i32 1034, i32 250}
!217 = distinct !{!217, !115}
!218 = !{!"function_entry_count", i64 4646679}
!219 = !{!"branch_weights", i32 1, i32 4646680}
!220 = !{!204, !204, i64 0}
!221 = !{!"branch_weights", i32 1216534, i32 3430147}
!222 = !{!"branch_weights", i32 1, i32 3430146}
!223 = !{!"branch_weights", i32 3430146, i32 42249130}
!224 = distinct !{!224, !115}
!225 = !{!"function_entry_count", i64 1231717351}
!226 = !{!"branch_weights", i32 621, i32 -1469098093}
!227 = !{!"branch_weights", i32 408901017, i32 1}
!228 = !{!"branch_weights", i32 267, i32 4}
!229 = !{!"branch_weights", i32 1, i32 4}
!230 = !{!"branch_weights", i32 156, i32 112}
!231 = !{!"branch_weights", i32 1, i32 112}
!232 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!233 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!234 = distinct !{!234, !115}
!235 = !{!"function_entry_count", i64 1330}
!236 = !{!"function_entry_count", i64 1668291}
!237 = !{!170, !98, i64 16}
!238 = !{!239, !98, i64 40}
!239 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !240, i64 8, !98, i64 16, !104, i64 24, !98, i64 32, !98, i64 40}
!240 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !99, i64 0}
!241 = distinct !{!241, !115}
!242 = !{!243, !98, i64 16}
!243 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !124, i64 0, !104, i64 8, !104, i64 12, !98, i64 16, !98, i64 24, !98, i64 32, !98, i64 40, !98, i64 48}
!244 = !{!243, !104, i64 8}
!245 = !{!"branch_weights", i32 5, i32 1}
!246 = distinct !{!246, !115}
!247 = !{!123, !98, i64 24}
!248 = !{!123, !104, i64 8}
