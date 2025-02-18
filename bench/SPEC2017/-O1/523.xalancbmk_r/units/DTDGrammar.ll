; ModuleID = 'DTDGrammar.cpp'
source_filename = "DTDGrammar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::DTDEntityDecl" = type <{ %"class.xercesc_2_7::XMLEntityDecl", i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLEntityDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem.5" = type { ptr, ptr }
%"class.xercesc_2_7::DTDGrammar" = type <{ %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::NameIdPool.0" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::NameIdPool.2" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLMutexLock" = type { ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem.4" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }

$_ZN11xercesc_2_713DTDEntityDeclD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv = comdat any

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

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj = comdat any

$_ZTVN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTSN11xercesc_2_713DTDEntityDeclE = comdat any

$_ZTIN11xercesc_2_713DTDEntityDeclE = comdat any

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
@_ZTVN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713DTDEntityDeclE, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv, ptr @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv, ptr @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv] }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713DTDEntityDeclE\00", comdat, align 1
@_ZTIN11xercesc_2_713XMLEntityDeclE = external constant ptr
@_ZTIN11xercesc_2_713DTDEntityDeclE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713DTDEntityDeclE, ptr @_ZTIN11xercesc_2_713XMLEntityDeclE }, comdat, align 8
@_ZTSN11xercesc_2_710DTDGrammarE = dso_local constant [28 x i8] c"N11xercesc_2_710DTDGrammarE\00", align 1
@_ZTIN11xercesc_2_77GrammarE = external constant ptr
@_ZTIN11xercesc_2_710DTDGrammarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_710DTDGrammarE, ptr @_ZTIN11xercesc_2_77GrammarE }, align 8
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

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DTDEntityDeclD0Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #0 comdat align 2 !prof !71 {
  tail call void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(75) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLEntityDeclD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat !prof !72 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_714XMLInitializer32initializeDTDGrammarDfltEntitiesEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %1 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40)
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 11, i32 noundef 12, ptr noundef %2)
          to label %3 unwind label %43

3:                                                ; preds = %0
  store ptr %1, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, i16 noundef zeroext 38, ptr noundef %5)
          to label %6 unwind label %45

6:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !77
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %4, i64 0, i32 1
  store i8 1, ptr %7, align 8, !tbaa !79
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %4, i64 0, i32 2
  store i8 0, ptr %8, align 1, !tbaa !85
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %4, i64 0, i32 3
  store i8 1, ptr %9, align 2, !tbaa !86
  %10 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %4)
  %11 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
  %13 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, i16 noundef zeroext 60, ptr noundef %13)
          to label %14 unwind label %47

14:                                               ; preds = %6
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %12, align 8, !tbaa !77
  %15 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %12, i64 0, i32 1
  store i8 1, ptr %15, align 8, !tbaa !79
  %16 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %12, i64 0, i32 2
  store i8 0, ptr %16, align 1, !tbaa !85
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %12, i64 0, i32 3
  store i8 1, ptr %17, align 2, !tbaa !86
  %18 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull %12)
  %19 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %20 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %20, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, i16 noundef zeroext 62, ptr noundef %21)
          to label %22 unwind label %49

22:                                               ; preds = %14
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %20, align 8, !tbaa !77
  %23 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %20, i64 0, i32 1
  store i8 1, ptr %23, align 8, !tbaa !79
  %24 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %20, i64 0, i32 2
  store i8 0, ptr %24, align 1, !tbaa !85
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %20, i64 0, i32 3
  store i8 1, ptr %25, align 2, !tbaa !86
  %26 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull %20)
  %27 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %28, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, i16 noundef zeroext 34, ptr noundef %29)
          to label %30 unwind label %51

30:                                               ; preds = %22
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %28, align 8, !tbaa !77
  %31 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %28, i64 0, i32 1
  store i8 1, ptr %31, align 8, !tbaa !79
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %28, i64 0, i32 2
  store i8 0, ptr %32, align 1, !tbaa !85
  %33 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %28, i64 0, i32 3
  store i8 1, ptr %33, align 2, !tbaa !86
  %34 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull %28)
  %35 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %36 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
  %37 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %36, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, i16 noundef zeroext 39, ptr noundef %37)
          to label %38 unwind label %53

38:                                               ; preds = %30
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %36, align 8, !tbaa !77
  %39 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %36, i64 0, i32 1
  store i8 1, ptr %39, align 8, !tbaa !79
  %40 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %36, i64 0, i32 2
  store i8 0, ptr %40, align 1, !tbaa !85
  %41 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %36, i64 0, i32 3
  store i8 1, ptr %41, align 2, !tbaa !86
  %42 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %35, ptr noundef nonnull %36)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv)
  store i1 true, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  ret void

43:                                               ; preds = %0
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %55

45:                                               ; preds = %3
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %55

47:                                               ; preds = %6
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %55

49:                                               ; preds = %14
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %55

51:                                               ; preds = %22
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %55

53:                                               ; preds = %30
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %55

55:                                               ; preds = %53, %51, %49, %47, %45, %43
  %56 = phi ptr [ %36, %53 ], [ %28, %51 ], [ %20, %49 ], [ %12, %47 ], [ %4, %45 ], [ %1, %43 ]
  %57 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %56) #16
  resume { ptr, i32 } %57
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  store ptr %3, ptr %0, align 8, !tbaa !88
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !90
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !91
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !92
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !93

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !77
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !94
  store ptr %22, ptr %5, align 8, !tbaa !95
  %23 = load i32, ptr %8, align 8, !tbaa !92
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !96

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !90
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !93

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !95
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !97, !llvm.loop !98

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !90
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !88
  %40 = load i32, ptr %6, align 8, !tbaa !90
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !77
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !94
  store ptr %46, ptr %38, align 8, !tbaa !101
  store ptr null, ptr %46, align 8, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !71 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !103

8:                                                ; preds = %2
  %9 = call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !102
  %11 = load ptr, ptr %0, align 8, !tbaa !88
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !88
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16), !prof !104
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !95
  %23 = load i32, ptr %3, align 4, !tbaa !105
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  store ptr %1, ptr %20, align 8, !tbaa !106
  %27 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !108
  store ptr %20, ptr %25, align 8, !tbaa !73
  %28 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !91
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !90
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %55, !prof !109

34:                                               ; preds = %15
  %35 = uitofp i32 %32 to double
  %36 = fmul double %35, 1.500000e+00
  %37 = fptoui double %36 to i32
  %38 = load ptr, ptr %0, align 8, !tbaa !88
  %39 = zext i32 %37 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = load ptr, ptr %38, align 8, !tbaa !77
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40)
  %45 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !101
  %47 = load i32, ptr %31, align 8, !tbaa !90
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %46, i64 %49, i1 false)
  %50 = load ptr, ptr %0, align 8, !tbaa !88
  %51 = load ptr, ptr %45, align 8, !tbaa !101
  %52 = load ptr, ptr %50, align 8, !tbaa !77
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51)
  store ptr %44, ptr %45, align 8, !tbaa !101
  store i32 %37, ptr %31, align 8, !tbaa !90
  br label %55

55:                                               ; preds = %34, %15
  %56 = load i32, ptr %28, align 4, !tbaa !91
  %57 = add i32 %56, 1
  store i32 %57, ptr %28, align 4, !tbaa !91
  %58 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !101
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %1, ptr %61, align 8, !tbaa !73
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %1, i64 0, i32 1
  store i32 %57, ptr %62, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %57
}

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv() #5 align 2 !prof !111 {
  %1 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !112

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %1) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #16
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %5 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !73
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !112

7:                                                ; preds = %4
  tail call void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #16
  br label %8

8:                                                ; preds = %7, %4
  store ptr null, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !73
  store i1 false, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !114
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(45) %4, i8 0, i64 45, i1 false)
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %1)
  %8 = load ptr, ptr %3, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 109, i32 noundef 128, ptr noundef %8)
          to label %9 unwind label %23, !prof !117

9:                                                ; preds = %2
  store ptr %7, ptr %4, align 8, !tbaa !118
  %10 = load ptr, ptr %3, align 8, !tbaa !114
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10)
  %12 = load ptr, ptr %3, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 109, i32 noundef 128, ptr noundef %12)
          to label %13 unwind label %25, !prof !117

13:                                               ; preds = %9
  store ptr %11, ptr %5, align 8, !tbaa !119
  %14 = load ptr, ptr %3, align 8, !tbaa !114
  %15 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %14)
  %16 = load ptr, ptr %3, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %15, i32 noundef 109, i32 noundef 128, ptr noundef %16)
          to label %17 unwind label %27, !prof !117

17:                                               ; preds = %13
  store ptr %15, ptr %6, align 8, !tbaa !120
  %18 = load ptr, ptr %3, align 8, !tbaa !114
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %18)
  %20 = load ptr, ptr %3, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni17fgDTDEntityStringE, ptr noundef %20)
          to label %21 unwind label %29, !prof !117

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  store ptr %19, ptr %22, align 8, !tbaa !121
  tail call void @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv(ptr nonnull align 8 poison)
  ret void

23:                                               ; preds = %2
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %1) #16
  br label %31

25:                                               ; preds = %9
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #16
  br label %31

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #16
  br label %31

29:                                               ; preds = %17
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #16
  br label %31

31:                                               ; preds = %29, %27, %25, %23
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ]
  resume { ptr, i32 } %32
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  store ptr %3, ptr %0, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !126
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !127
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !128

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !77
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !129
  store ptr %22, ptr %5, align 8, !tbaa !130
  %23 = load i32, ptr %8, align 8, !tbaa !127
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !131

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !125
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !128

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !130
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !132, !llvm.loop !133

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !125
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !123
  %40 = load i32, ptr %6, align 8, !tbaa !125
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !77
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !129
  store ptr %46, ptr %38, align 8, !tbaa !134
  store ptr null, ptr %46, align 8, !tbaa !73
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  store ptr %3, ptr %0, align 8, !tbaa !135
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !137
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !138
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !139
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !93

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %4
  %17 = zext i32 %1 to i64
  %18 = shl nuw nsw i64 %17, 3
  %19 = load ptr, ptr %3, align 8, !tbaa !77
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !94
  store ptr %22, ptr %5, align 8, !tbaa !140
  %23 = load i32, ptr %8, align 8, !tbaa !139
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !96

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !137
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !93

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !140
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !141, !llvm.loop !142

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !137
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !135
  %40 = load i32, ptr %6, align 8, !tbaa !137
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !77
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !94
  store ptr %46, ptr %38, align 8, !tbaa !143
  store ptr null, ptr %46, align 8, !tbaa !73
  ret void
}

declare void @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv(ptr nocapture nonnull readnone align 8 %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %3 = alloca %"class.xercesc_2_7::XMLMutexLock", align 8
  %4 = load i1, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br i1 %4, label %99, label %5, !prof !144

5:                                                ; preds = %1
  %6 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %24, !prof !145

8:                                                ; preds = %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %9 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils13fgAtomicMutexE, align 8, !tbaa !73
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %9)
  %10 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !145

12:                                               ; preds = %8
  %13 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 8)
          to label %14 unwind label %17, !prof !145

14:                                               ; preds = %12
  %15 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %15)
          to label %16 unwind label %19, !prof !145

16:                                               ; preds = %14
  store ptr %13, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !73
  br label %21

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %22

19:                                               ; preds = %14
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %13) #16
  br label %22

21:                                               ; preds = %16, %8
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %24

22:                                               ; preds = %19, %17
  %23 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %100

24:                                               ; preds = %21, %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %25 = load ptr, ptr @_ZN11xercesc_2_7L16sEntityPoolMutexE, align 8, !tbaa !73
  call void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %25)
  %26 = load i1, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br i1 %26, label %96, label %27, !prof !112

27:                                               ; preds = %24
  %28 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40)
          to label %29 unwind label %82, !prof !145

29:                                               ; preds = %27
  %30 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %28, i32 noundef 11, i32 noundef 12, ptr noundef %30)
          to label %31 unwind label %84, !prof !145

31:                                               ; preds = %29
  store ptr %28, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %32 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
          to label %33 unwind label %82, !prof !145

33:                                               ; preds = %31
  %34 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni5fgAmpE, i16 noundef zeroext 38, ptr noundef %34)
          to label %35 unwind label %86, !prof !145

35:                                               ; preds = %33
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %32, align 8, !tbaa !77
  %36 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %32, i64 0, i32 1
  store i8 1, ptr %36, align 8, !tbaa !79
  %37 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %32, i64 0, i32 2
  store i8 0, ptr %37, align 1, !tbaa !85
  %38 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %32, i64 0, i32 3
  store i8 1, ptr %38, align 2, !tbaa !86
  %39 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull %32)
          to label %40 unwind label %82, !prof !145

40:                                               ; preds = %35
  %41 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %42 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
          to label %43 unwind label %82, !prof !145

43:                                               ; preds = %40
  %44 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %42, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgLTE, i16 noundef zeroext 60, ptr noundef %44)
          to label %45 unwind label %88, !prof !145

45:                                               ; preds = %43
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %42, align 8, !tbaa !77
  %46 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %42, i64 0, i32 1
  store i8 1, ptr %46, align 8, !tbaa !79
  %47 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %42, i64 0, i32 2
  store i8 0, ptr %47, align 1, !tbaa !85
  %48 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %42, i64 0, i32 3
  store i8 1, ptr %48, align 2, !tbaa !86
  %49 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %41, ptr noundef nonnull %42)
          to label %50 unwind label %82, !prof !145

50:                                               ; preds = %45
  %51 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %52 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
          to label %53 unwind label %82, !prof !145

53:                                               ; preds = %50
  %54 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %52, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni4fgGTE, i16 noundef zeroext 62, ptr noundef %54)
          to label %55 unwind label %90, !prof !145

55:                                               ; preds = %53
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %52, align 8, !tbaa !77
  %56 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %52, i64 0, i32 1
  store i8 1, ptr %56, align 8, !tbaa !79
  %57 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %52, i64 0, i32 2
  store i8 0, ptr %57, align 1, !tbaa !85
  %58 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %52, i64 0, i32 3
  store i8 1, ptr %58, align 2, !tbaa !86
  %59 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %51, ptr noundef nonnull %52)
          to label %60 unwind label %82, !prof !145

60:                                               ; preds = %55
  %61 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %62 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
          to label %63 unwind label %82, !prof !145

63:                                               ; preds = %60
  %64 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %62, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgQuotE, i16 noundef zeroext 34, ptr noundef %64)
          to label %65 unwind label %92, !prof !145

65:                                               ; preds = %63
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %62, align 8, !tbaa !77
  %66 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %62, i64 0, i32 1
  store i8 1, ptr %66, align 8, !tbaa !79
  %67 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %62, i64 0, i32 2
  store i8 0, ptr %67, align 1, !tbaa !85
  %68 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %62, i64 0, i32 3
  store i8 1, ptr %68, align 2, !tbaa !86
  %69 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %61, ptr noundef nonnull %62)
          to label %70 unwind label %82, !prof !145

70:                                               ; preds = %65
  %71 = load ptr, ptr @_ZN11xercesc_2_710DTDGrammar16fDefaultEntitiesE, align 8, !tbaa !73
  %72 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 80)
          to label %73 unwind label %82, !prof !145

73:                                               ; preds = %70
  %74 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %72, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni6fgAposE, i16 noundef zeroext 39, ptr noundef %74)
          to label %75 unwind label %94, !prof !145

75:                                               ; preds = %73
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xercesc_2_713DTDEntityDeclE, i64 0, inrange i32 0, i64 2), ptr %72, align 8, !tbaa !77
  %76 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %72, i64 0, i32 1
  store i8 1, ptr %76, align 8, !tbaa !79
  %77 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %72, i64 0, i32 2
  store i8 0, ptr %77, align 1, !tbaa !85
  %78 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %72, i64 0, i32 3
  store i8 1, ptr %78, align 2, !tbaa !86
  %79 = invoke noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef nonnull %72)
          to label %80 unwind label %82, !prof !145

80:                                               ; preds = %75
  invoke void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE, ptr noundef nonnull @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv)
          to label %81 unwind label %82, !prof !145

81:                                               ; preds = %80
  store i1 true, ptr @_ZN11xercesc_2_7L26sEntityPoolMutexRegisteredE, align 1
  br label %96

82:                                               ; preds = %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %31, %27
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %97

84:                                               ; preds = %29
  %85 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %28) #16
  br label %97

86:                                               ; preds = %33
  %87 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %32) #16
  br label %97

88:                                               ; preds = %43
  %89 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %42) #16
  br label %97

90:                                               ; preds = %53
  %91 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %52) #16
  br label %97

92:                                               ; preds = %63
  %93 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %62) #16
  br label %97

94:                                               ; preds = %73
  %95 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %72) #16
  br label %97

96:                                               ; preds = %81, %24
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %99

97:                                               ; preds = %94, %92, %90, %88, %86, %84, %82
  %98 = phi { ptr, i32 } [ %83, %82 ], [ %95, %94 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ], [ %85, %84 ]
  call void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %100

99:                                               ; preds = %96, %1
  ret void

100:                                              ; preds = %97, %22
  %101 = phi { ptr, i32 } [ %98, %97 ], [ %23, %22 ]
  resume { ptr, i32 } %101
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #5 align 2 !prof !113 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_710DTDGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !146

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %3) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !117

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %8) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !119
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !146

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %13) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !146

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %18) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #16
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !146

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !77
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23) #16, !prof !148
  br label %29

29:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !149

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !150

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !123
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !149

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !88
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !151

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !152

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !88
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !95
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !151

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !87 {
  %2 = load ptr, ptr %0, align 8, !tbaa !135
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !151

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !152

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !135
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !140
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !151

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammarD0Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #5 align 2 !prof !113 {
  tail call void @_ZN11xercesc_2_710DTDGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(61) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78XMLMutexD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar17findOrAddElemDeclEjPKtS2_S2_jRb(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %15)
  %17 = load ptr, ptr %14, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %16, ptr noundef %4, i32 noundef %1, i32 noundef 1, ptr noundef %17)
          to label %18 unwind label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !147
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !114
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %23)
  %25 = load ptr, ptr %14, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 29, i32 noundef 128, ptr noundef %25)
          to label %26 unwind label %29

26:                                               ; preds = %22
  store ptr %24, ptr %19, align 8, !tbaa !147
  br label %31

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #16
  br label %38

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #16
  br label %38

31:                                               ; preds = %26, %18
  %32 = load ptr, ptr %19, align 8, !tbaa !147
  %33 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %32, ptr noundef nonnull %16)
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %16, i64 0, i32 4
  store i32 %33, ptr %34, align 4, !tbaa !153
  br label %35

35:                                               ; preds = %7, %31
  %36 = phi i8 [ 1, %31 ], [ 0, %7 ]
  %37 = phi ptr [ %16, %31 ], [ %11, %7 ]
  store i8 %36, ptr %6, align 1, !tbaa !156
  ret ptr %37

38:                                               ; preds = %29, %27
  %39 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
  %7 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !159

9:                                                ; preds = %2
  %10 = call ptr @__cxa_allocate_exception(i64 48) #16
  %11 = load ptr, ptr %4, align 8, !tbaa !158
  %12 = invoke noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %11)
          to label %13 unwind label %16

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %14)
          to label %15 unwind label %16

15:                                               ; preds = %13
  call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

16:                                               ; preds = %9, %13
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  resume { ptr, i32 } %17

18:                                               ; preds = %2
  %19 = load ptr, ptr %0, align 8, !tbaa !123
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 16), !prof !160
  %24 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = load i32, ptr %3, align 4, !tbaa !105
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !73
  store ptr %1, ptr %23, align 8, !tbaa !161
  %30 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %23, i64 0, i32 1
  store ptr %29, ptr %30, align 8, !tbaa !163
  store ptr %23, ptr %28, align 8, !tbaa !73
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  %32 = load i32, ptr %31, align 4, !tbaa !126
  %33 = add i32 %32, 1
  %34 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 3
  %35 = load i32, ptr %34, align 8, !tbaa !125
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %58, !prof !164

37:                                               ; preds = %18
  %38 = uitofp i32 %35 to double
  %39 = fmul double %38, 1.500000e+00
  %40 = fptoui double %39 to i32
  %41 = load ptr, ptr %0, align 8, !tbaa !123
  %42 = zext i32 %40 to i64
  %43 = shl nuw nsw i64 %42, 3
  %44 = load ptr, ptr %41, align 8, !tbaa !77
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %43)
  %48 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !134
  %50 = load i32, ptr %34, align 8, !tbaa !125
  %51 = zext i32 %50 to i64
  %52 = shl nuw nsw i64 %51, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %47, ptr align 8 %49, i64 %52, i1 false)
  %53 = load ptr, ptr %0, align 8, !tbaa !123
  %54 = load ptr, ptr %48, align 8, !tbaa !134
  %55 = load ptr, ptr %53, align 8, !tbaa !77
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  call void %57(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %54)
  store ptr %47, ptr %48, align 8, !tbaa !134
  store i32 %40, ptr %34, align 8, !tbaa !125
  br label %58

58:                                               ; preds = %37, %18
  %59 = load i32, ptr %31, align 4, !tbaa !126
  %60 = add i32 %59, 1
  store i32 %60, ptr %31, align 4, !tbaa !126
  %61 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !134
  %63 = zext i32 %60 to i64
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  store ptr %1, ptr %64, align 8, !tbaa !73
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 4
  store i32 %60, ptr %65, align 4, !tbaa !153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %60
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11putElemDeclEjPKtS2_S2_jb(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, i32 %5, i1 noundef zeroext %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !114
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 80, ptr noundef %9)
  %11 = load ptr, ptr %8, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_714DTDElementDeclC1EPKtjNS0_10ModelTypesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(80) %10, ptr noundef %4, i32 noundef %1, i32 noundef 1, ptr noundef %11)
          to label %12 unwind label %22

12:                                               ; preds = %7
  br i1 %6, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !114
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %18)
  %20 = load ptr, ptr %8, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %19, i32 noundef 29, i32 noundef 128, ptr noundef %20)
          to label %21 unwind label %24

21:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !147
  br label %28

22:                                               ; preds = %7
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #16
  br label %33

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #16
  br label %33

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  br label %28

28:                                               ; preds = %13, %21, %26
  %29 = phi ptr [ %27, %26 ], [ %14, %21 ], [ %14, %13 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %30, ptr noundef nonnull %10)
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %10, i64 0, i32 4
  store i32 %31, ptr %32, align 4, !tbaa !153
  ret ptr %10

33:                                               ; preds = %24, %22
  %34 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %34
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #4 align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !147
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %5)
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %10)
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  store i8 0, ptr %13, align 4, !tbaa !165
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !127
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !167

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !126
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !130
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !168

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = load ptr, ptr %16, align 8, !tbaa !161
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !164

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(80) %19) #16, !prof !169
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !123
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16), !prof !170
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !159, !llvm.loop !171

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !130
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !127
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !172, !llvm.loop !173
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !139
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !174

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !138
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !140
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !145

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !175
  %19 = load ptr, ptr %16, align 8, !tbaa !177
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(56) %19) #16
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !135
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16)
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !145, !llvm.loop !178

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !140
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !139
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !179, !llvm.loop !180
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #4 comdat align 2 !prof !87 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !92
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !96

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !91
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !95
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !181

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = load ptr, ptr %16, align 8, !tbaa !106
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21, !prof !109

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(75) %19) #16, !prof !182
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !88
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16), !prof !183
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !103, !llvm.loop !184

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !95
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !73
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !92
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !185, !llvm.loop !186
}

declare void @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLMutexLockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !72 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !77
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #16
  br label %18

18:                                               ; preds = %14, %10
  store ptr %1, ptr %11, align 8, !tbaa !121
  br label %19

19:                                               ; preds = %2, %4, %18
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar21getGrammarDescriptionEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(61) %0) unnamed_addr #7 align 2 !prof !113 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #4 align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %0)
  invoke void @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(61) %2, ptr noundef %0)
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %0) #16
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DTDGrammar14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !72 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_710DTDGrammar12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_710DTDGrammar15classDTDGrammarE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_710DTDGrammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #4 align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %3 = load i16, ptr %1, align 8, !tbaa !187
  %4 = icmp eq i16 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  br i1 %4, label %7, label %24

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_14DTDElementDeclEEERNS_16XSerializeEngineE(ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_13DTDEntityDeclEEERNS_16XSerializeEngineE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %11 = load ptr, ptr %6, align 8, !tbaa !120
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %12 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !191
  %19 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %18)
  %20 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %21 = load i8, ptr %20, align 4, !tbaa !165, !range !192, !noundef !193
  %22 = icmp ne i8 %21, 0
  %23 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %22)
  br label %36

24:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_14DTDElementDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %5, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %25 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  store ptr null, ptr %25, align 8, !tbaa !147
  %26 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_13DTDEntityDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %26, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1)
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %6, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %27 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !121
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %32 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 7
  %33 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %32)
  %34 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %35 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %34)
  br label %36

36:                                               ; preds = %24, %7
  ret void
}

declare void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_14DTDElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_13DTDEntityDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEj(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_14DTDElementDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_13DTDEntityDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERj(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14isSerializableEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #3

declare void @_ZN11xercesc_2_713DTDEntityDecl9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(75), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare noundef ptr @_ZNK11xercesc_2_713DTDEntityDecl12getProtoTypeEv(ptr noundef nonnull align 8 dereferenceable(75)) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl22getDeclaredInIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !79, !range !192, !noundef !193
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl14getIsParameterEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 1, !tbaa !85, !range !192, !noundef !193
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713DTDEntityDecl16getIsSpecialCharEv(ptr noundef nonnull align 8 dereferenceable(75) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDEntityDecl", ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 2, !tbaa !86, !range !192, !noundef !193
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #9 comdat align 2 !prof !194 {
  ret i32 0
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar18getTargetNamespaceEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710DTDGrammar12getValidatedEv(ptr noundef nonnull align 8 dereferenceable(61) %0) unnamed_addr #0 comdat align 2 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 4, !tbaa !165, !range !192, !noundef !193
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar9getElemIdEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 comdat align 2 !prof !72 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %9 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !161
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi ptr [ %12, %11 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %14, i64 0, i32 4
  %17 = select i1 %15, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, ptr %16
  %18 = load i32, ptr %17, align 4, !tbaa !105
  ret i32 %18
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #10 comdat align 2 !prof !72 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %10 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %10, align 8, !tbaa !161
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi ptr [ %13, %12 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %22 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !161
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %28

28:                                               ; preds = %26, %17, %14
  %29 = phi ptr [ %15, %14 ], [ %27, %26 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #11 comdat align 2 !prof !195 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %10 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !196

12:                                               ; preds = %5
  %13 = load ptr, ptr %10, align 8, !tbaa !161
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi ptr [ %13, %12 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28, !prof !196

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21, !prof !196

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %22 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !161
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %28

28:                                               ; preds = %26, %17, %14
  %29 = phi ptr [ %15, %14 ], [ %27, %26 ], [ null, %17 ]
  ret ptr %29
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1)
  ret ptr %5
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(61) %0, i32 noundef %1) unnamed_addr #10 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !118
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %4, i32 noundef %1)
  ret ptr %5
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710DTDGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !72 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !177
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %11
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710DTDGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !72 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !177
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %11
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710DTDGrammar11putElemDeclEPNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  br i1 %2, label %4, label %16

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !147
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %10)
  %12 = load ptr, ptr %9, align 8, !tbaa !114
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, i32 noundef 29, i32 noundef 128, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !147
  br label %18

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %4, %13, %16
  %19 = phi ptr [ %17, %16 ], [ %5, %13 ], [ %5, %4 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef %1)
  ret i32 %21
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710DTDGrammar15putNotationDeclEPNS_15XMLNotationDeclE(ptr noundef nonnull align 8 dereferenceable(61) %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1)
  ret i32 %5
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710DTDGrammar12setValidatedEb(ptr noundef nonnull align 8 dereferenceable(61) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 !prof !72 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DTDGrammar", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 4, !tbaa !165
  ret void
}

declare void @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i16 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #12 comdat align 2 !prof !197 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !127
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !198

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !199
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !198

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !199
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !200

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !199
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !201, !llvm.loop !202

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !105
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !130
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %36, null
  br i1 %37, label %73, label %38, !prof !203

38:                                               ; preds = %30, %69
  %39 = phi ptr [ %71, %69 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !161
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !158
  %43 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %42)
  %44 = icmp eq ptr %43, null
  %45 = or i1 %6, %44
  br i1 %45, label %50, label %46, !prof !204

46:                                               ; preds = %38
  %47 = load i16, ptr %1, align 2, !tbaa !199
  %48 = load i16, ptr %43, align 2, !tbaa !199
  %49 = icmp eq i16 %47, %48
  br i1 %49, label %58, label %69, !prof !205

50:                                               ; preds = %38
  br i1 %6, label %54, label %51

51:                                               ; preds = %50
  %52 = load i16, ptr %1, align 2, !tbaa !199
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %51, %50
  br i1 %44, label %73, label %55

55:                                               ; preds = %54
  %56 = load i16, ptr %43, align 2, !tbaa !199
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %73, label %69

58:                                               ; preds = %46, %63
  %59 = phi i16 [ %66, %63 ], [ %47, %46 ]
  %60 = phi ptr [ %65, %63 ], [ %43, %46 ]
  %61 = phi ptr [ %64, %63 ], [ %1, %46 ]
  %62 = icmp eq i16 %59, 0
  br i1 %62, label %73, label %63, !prof !206

63:                                               ; preds = %58
  %64 = getelementptr inbounds i16, ptr %61, i64 1
  %65 = getelementptr inbounds i16, ptr %60, i64 1
  %66 = load i16, ptr %64, align 2, !tbaa !199
  %67 = load i16, ptr %65, align 2, !tbaa !199
  %68 = icmp eq i16 %66, %67
  br i1 %68, label %58, label %69, !prof !207, !llvm.loop !208

69:                                               ; preds = %63, %46, %55, %51
  %70 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !73
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %38, !prof !209, !llvm.loop !210

73:                                               ; preds = %69, %54, %55, %58, %30
  %74 = phi ptr [ null, %30 ], [ %39, %58 ], [ %39, %55 ], [ %39, %54 ], [ null, %69 ]
  ret ptr %74
}

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = load ptr, ptr %0, align 8, !tbaa !123
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 176, i32 noundef 67, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %9) #16
  resume { ptr, i32 } %13

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.0", ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  ret ptr %19
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !72 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !211
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !77
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !72 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !139
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !199
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !199
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !199
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !llvm.loop !202

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !105
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !140
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !177
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !214
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !199
  %47 = load i16, ptr %42, align 2, !tbaa !199
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !199
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !199
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %72, label %68

57:                                               ; preds = %45, %62
  %58 = phi i16 [ %65, %62 ], [ %46, %45 ]
  %59 = phi ptr [ %64, %62 ], [ %42, %45 ]
  %60 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %61 = icmp eq i16 %58, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i16, ptr %60, i64 1
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = load i16, ptr %63, align 2, !tbaa !199
  %66 = load i16, ptr %64, align 2, !tbaa !199
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !208

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !73
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !llvm.loop !216

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !214
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !214
  %11 = load ptr, ptr %0, align 8, !tbaa !135
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  resume { ptr, i32 } %14

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !135
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16)
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !140
  %23 = load i32, ptr %3, align 4, !tbaa !105
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  store ptr %1, ptr %20, align 8, !tbaa !177
  %27 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.4", ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !175
  store ptr %20, ptr %25, align 8, !tbaa !73
  %28 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !138
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !137
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %15
  %35 = uitofp i32 %32 to double
  %36 = fmul double %35, 1.500000e+00
  %37 = fptoui double %36 to i32
  %38 = load ptr, ptr %0, align 8, !tbaa !135
  %39 = zext i32 %37 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = load ptr, ptr %38, align 8, !tbaa !77
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40)
  %45 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !143
  %47 = load i32, ptr %31, align 8, !tbaa !137
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %46, i64 %49, i1 false)
  %50 = load ptr, ptr %0, align 8, !tbaa !135
  %51 = load ptr, ptr %45, align 8, !tbaa !143
  %52 = load ptr, ptr %50, align 8, !tbaa !77
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51)
  store ptr %44, ptr %45, align 8, !tbaa !143
  store i32 %37, ptr %31, align 8, !tbaa !137
  br label %55

55:                                               ; preds = %34, %15
  %56 = load i32, ptr %28, align 4, !tbaa !138
  %57 = add i32 %56, 1
  store i32 %57, ptr %28, align 4, !tbaa !138
  %58 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool.2", ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !143
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %1, ptr %61, align 8, !tbaa !73
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 1
  store i32 %57, ptr %62, align 8, !tbaa !217
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %57
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !72 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #4 comdat align 2 !prof !71 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7, !prof !109

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !199
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10, !prof !109

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !199
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %27, label %15, !prof !174

15:                                               ; preds = %10, %15
  %16 = phi i16 [ %25, %15 ], [ %13, %10 ]
  %17 = phi ptr [ %24, %15 ], [ %12, %10 ]
  %18 = phi i32 [ %23, %15 ], [ %11, %10 ]
  %19 = mul i32 %18, 38
  %20 = lshr i32 %18, 24
  %21 = add i32 %19, %20
  %22 = zext i16 %16 to i32
  %23 = add i32 %21, %22
  %24 = getelementptr inbounds i16, ptr %17, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !199
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !prof !218, !llvm.loop !202

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !105
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38, !prof !145

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !106
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLEntityDecl", ptr %40, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !102
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !199
  %47 = load i16, ptr %42, align 2, !tbaa !199
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !199
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !199
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %72, label %68

57:                                               ; preds = %45, %62
  %58 = phi i16 [ %65, %62 ], [ %46, %45 ]
  %59 = phi ptr [ %64, %62 ], [ %42, %45 ]
  %60 = phi ptr [ %63, %62 ], [ %1, %45 ]
  %61 = icmp eq i16 %58, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds i16, ptr %60, i64 1
  %64 = getelementptr inbounds i16, ptr %59, i64 1
  %65 = load i16, ptr %63, align 2, !tbaa !199
  %66 = load i16, ptr %64, align 2, !tbaa !199
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !208

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem.5", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !73
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !prof !145, !llvm.loop !219

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DTDGrammar.cpp() #14 section ".text.startup" !prof !111 !PGOFuncName !220 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25entityPoolRegistryCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!70}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!35 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_713XMLEntityDeclD2Ev, i64 5}
!36 = !{ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!37 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE14findBucketElemEPKtRj, i64 5}
!38 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, i64 1}
!39 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!40 = !{ptr @_ZN11xercesc_2_710DTDGrammar18reinitDfltEntitiesEv, ptr @_ZN11xercesc_2_78XMLMutexD1Ev, i64 1}
!41 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 12}
!42 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!43 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!44 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, i64 3}
!45 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721XMLDTDDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 3}
!46 = !{ptr @_ZN11xercesc_2_710DTDGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, i64 3}
!47 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_712XMLMutexLockC1EPNS_8XMLMutexE, i64 2}
!48 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 7}
!49 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_78XMLMutexC1EPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_712XMLMutexLockD1Ev, i64 2}
!51 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEC2EjjPNS_13MemoryManagerE, i64 1}
!52 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_713XMLEntityDeclC2EPKttPNS_13MemoryManagerE, i64 5}
!53 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE3putEPS1_, i64 5}
!54 = !{ptr @_ZN11xercesc_2_710DTDGrammar19resetEntityDeclPoolEv, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 1}
!55 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, i64 3}
!56 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 9}
!57 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, i64 3}
!58 = !{ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, i64 3}
!59 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE9removeAllEv, i64 6}
!60 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, i64 4}
!61 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 4}
!62 = !{ptr @_ZN11xercesc_2_710DTDGrammarD0Ev, ptr @_ZN11xercesc_2_710DTDGrammarD2Ev, i64 3}
!63 = !{ptr @_ZN11xercesc_2_710DTDGrammarD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!64 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 47}
!65 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE3putEPS1_, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 47}
!66 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEE9removeAllEv, ptr @_ZN11xercesc_2_713DTDEntityDeclD0Ev, i64 5}
!67 = !{ptr @_ZN11xercesc_2_710DTDGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, i64 940}
!68 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEE14findBucketElemEPKtRj, ptr @_ZN11xercesc_2_75QName10getRawNameEv, i64 2038}
!69 = !{ptr @_GLOBAL__sub_I_DTDGrammar.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!70 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!71 = !{!"function_entry_count", i64 5}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"any pointer", !75, i64 0}
!75 = !{!"omnipotent char", !76, i64 0}
!76 = !{!"Simple C++ TBAA"}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !76, i64 0}
!79 = !{!80, !84, i64 72}
!80 = !{!"_ZTSN11xercesc_2_713DTDEntityDeclE", !81, i64 0, !84, i64 72, !84, i64 73, !84, i64 74}
!81 = !{!"_ZTSN11xercesc_2_713XMLEntityDeclE", !82, i64 0, !83, i64 8, !83, i64 12, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !74, i64 56, !74, i64 64}
!82 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!83 = !{!"int", !75, i64 0}
!84 = !{!"bool", !75, i64 0}
!85 = !{!80, !84, i64 73}
!86 = !{!80, !84, i64 74}
!87 = !{!"function_entry_count", i64 4}
!88 = !{!89, !74, i64 0}
!89 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_13DTDEntityDeclEEE", !74, i64 0, !74, i64 8, !74, i64 16, !83, i64 24, !83, i64 28, !83, i64 32}
!90 = !{!89, !83, i64 24}
!91 = !{!89, !83, i64 28}
!92 = !{!89, !83, i64 32}
!93 = !{!"branch_weights", i32 0, i32 4}
!94 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!95 = !{!89, !74, i64 8}
!96 = !{!"branch_weights", i32 1, i32 127}
!97 = !{!"branch_weights", i32 127, i32 10689}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!89, !74, i64 16}
!102 = !{!81, !74, i64 24}
!103 = !{!"branch_weights", i32 5, i32 0}
!104 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!105 = !{!83, !83, i64 0}
!106 = !{!107, !74, i64 0}
!107 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_13DTDEntityDeclEEE", !74, i64 0, !74, i64 8}
!108 = !{!107, !74, i64 8}
!109 = !{!"branch_weights", i32 0, i32 5}
!110 = !{!81, !83, i64 8}
!111 = !{!"function_entry_count", i64 1}
!112 = !{!"branch_weights", i32 0, i32 1}
!113 = !{!"function_entry_count", i64 3}
!114 = !{!115, !74, i64 8}
!115 = !{!"_ZTSN11xercesc_2_710DTDGrammarE", !116, i64 0, !74, i64 8, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48, !83, i64 56, !84, i64 60}
!116 = !{!"_ZTSN11xercesc_2_77GrammarE", !82, i64 0}
!117 = !{!"branch_weights", i32 3, i32 0}
!118 = !{!115, !74, i64 16}
!119 = !{!115, !74, i64 32}
!120 = !{!115, !74, i64 40}
!121 = !{!115, !74, i64 48}
!122 = !{!"function_entry_count", i64 6}
!123 = !{!124, !74, i64 0}
!124 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_14DTDElementDeclEEE", !74, i64 0, !74, i64 8, !74, i64 16, !83, i64 24, !83, i64 28, !83, i64 32}
!125 = !{!124, !83, i64 24}
!126 = !{!124, !83, i64 28}
!127 = !{!124, !83, i64 32}
!128 = !{!"branch_weights", i32 0, i32 6}
!129 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!130 = !{!124, !74, i64 8}
!131 = !{!"branch_weights", i32 1, i32 191}
!132 = !{!"branch_weights", i32 191, i32 13057}
!133 = distinct !{!133, !99, !100}
!134 = !{!124, !74, i64 16}
!135 = !{!136, !74, i64 0}
!136 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !74, i64 0, !74, i64 8, !74, i64 16, !83, i64 24, !83, i64 28, !83, i64 32}
!137 = !{!136, !83, i64 24}
!138 = !{!136, !83, i64 28}
!139 = !{!136, !83, i64 32}
!140 = !{!136, !74, i64 8}
!141 = !{!"branch_weights", i32 127, i32 13825}
!142 = distinct !{!142, !99, !100}
!143 = !{!136, !74, i64 16}
!144 = !{!"branch_weights", i32 2, i32 1}
!145 = !{!"branch_weights", i32 1, i32 0}
!146 = !{!"branch_weights", i32 0, i32 3}
!147 = !{!115, !74, i64 24}
!148 = !{!"VP", i32 0, i64 3, i64 -1012966933438797714, i64 3}
!149 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!150 = !{!"branch_weights", i32 6, i32 0}
!151 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!152 = !{!"branch_weights", i32 4, i32 0}
!153 = !{!154, !83, i64 28}
!154 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !82, i64 0, !74, i64 8, !74, i64 16, !155, i64 24, !83, i64 28, !84, i64 32}
!155 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !75, i64 0}
!156 = !{!84, !84, i64 0}
!157 = !{!"function_entry_count", i64 47}
!158 = !{!154, !74, i64 16}
!159 = !{!"branch_weights", i32 47, i32 0}
!160 = !{!"VP", i32 0, i64 47, i64 8345045103670217670, i64 47}
!161 = !{!162, !74, i64 0}
!162 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_14DTDElementDeclEEE", !74, i64 0, !74, i64 8}
!163 = !{!162, !74, i64 8}
!164 = !{!"branch_weights", i32 0, i32 47}
!165 = !{!115, !84, i64 60}
!166 = !{!"function_entry_count", i64 9}
!167 = !{!"branch_weights", i32 1, i32 143}
!168 = !{!"branch_weights", i32 454, i32 47}
!169 = !{!"VP", i32 0, i64 47, i64 6620649524856465861, i64 47}
!170 = !{!"VP", i32 0, i64 47, i64 -7405368087501025645, i64 47}
!171 = distinct !{!171, !99, !100}
!172 = !{!"branch_weights", i32 7873, i32 143}
!173 = distinct !{!173, !99, !100}
!174 = !{!"branch_weights", i32 1, i32 159}
!175 = !{!176, !74, i64 8}
!176 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEE", !74, i64 0, !74, i64 8}
!177 = !{!176, !74, i64 0}
!178 = distinct !{!178, !99, !100}
!179 = !{!"branch_weights", i32 17281, i32 159}
!180 = distinct !{!180, !99, !100}
!181 = !{!"branch_weights", i32 333, i32 5}
!182 = !{!"VP", i32 0, i64 5, i64 6706079041690556290, i64 5}
!183 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!184 = distinct !{!184, !99, !100}
!185 = !{!"branch_weights", i32 10689, i32 127}
!186 = distinct !{!186, !99, !100}
!187 = !{!188, !189, i64 0}
!188 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !189, i64 0, !189, i64 2, !74, i64 8, !74, i64 16, !74, i64 24, !190, i64 32, !190, i64 40, !74, i64 48, !74, i64 56, !74, i64 64, !74, i64 72, !74, i64 80, !74, i64 88, !83, i64 96}
!189 = !{!"short", !75, i64 0}
!190 = !{!"long", !75, i64 0}
!191 = !{!115, !83, i64 56}
!192 = !{i8 0, i8 2}
!193 = !{}
!194 = !{!"function_entry_count", i64 1106}
!195 = !{!"function_entry_count", i64 940}
!196 = !{!"branch_weights", i32 940, i32 0}
!197 = !{!"function_entry_count", i64 1927}
!198 = !{!"branch_weights", i32 0, i32 1927}
!199 = !{!189, !189, i64 0}
!200 = !{!"branch_weights", i32 1, i32 1926}
!201 = !{!"branch_weights", i32 1926, i32 12567}
!202 = distinct !{!202, !99, !100}
!203 = !{!"branch_weights", i32 1, i32 1033}
!204 = !{!"branch_weights", i32 0, i32 1283}
!205 = !{!"branch_weights", i32 389, i32 1}
!206 = !{!"branch_weights", i32 893, i32 7885}
!207 = !{!"branch_weights", i32 8389, i32 389}
!208 = distinct !{!208, !99, !100}
!209 = !{!"branch_weights", i32 1033, i32 250}
!210 = distinct !{!210, !99, !100}
!211 = !{!212, !74, i64 40}
!212 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !213, i64 8, !74, i64 16, !83, i64 24, !74, i64 32, !74, i64 40}
!213 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !75, i64 0}
!214 = !{!215, !74, i64 16}
!215 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !82, i64 0, !83, i64 8, !83, i64 12, !74, i64 16, !74, i64 24, !74, i64 32, !74, i64 40, !74, i64 48}
!216 = distinct !{!216, !99, !100}
!217 = !{!215, !83, i64 8}
!218 = !{!"branch_weights", i32 159, i32 161}
!219 = distinct !{!219, !99, !100}
!220 = !{!"DTDGrammar.cpp;_GLOBAL__sub_I_DTDGrammar.cpp"}
