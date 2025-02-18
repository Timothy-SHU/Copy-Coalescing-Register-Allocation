; ModuleID = 'SchemaGrammar.cpp'
source_filename = "SchemaGrammar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.0" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.4" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.1" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.5" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.2" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.6" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf.3" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem.7" = type { ptr, ptr, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::ValueVectorOf.8" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar14getGrammarTypeEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar18getTargetNamespaceEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar12getValidatedEv = comdat any

$_ZNK11xercesc_2_713SchemaGrammar9getElemIdEjPKtS2_j = comdat any

$_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j = comdat any

$_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j = comdat any

$_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEj = comdat any

$_ZN11xercesc_2_713SchemaGrammar11getElemDeclEj = comdat any

$_ZNK11xercesc_2_713SchemaGrammar15getNotationDeclEPKt = comdat any

$_ZN11xercesc_2_713SchemaGrammar15getNotationDeclEPKt = comdat any

$_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb = comdat any

$_ZNK11xercesc_2_713SchemaGrammar15putNotationDeclEPNS_15XMLNotationDeclE = comdat any

$_ZN11xercesc_2_713SchemaGrammar12setValidatedEb = comdat any

$_ZNK11xercesc_2_713SchemaGrammar21getGrammarDescriptionEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN11xercesc_2_713SchemaGrammarE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713SchemaGrammarE, ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713SchemaGrammarD0Ev, ptr @_ZNK11xercesc_2_713SchemaGrammar14isSerializableEv, ptr @_ZN11xercesc_2_713SchemaGrammar9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713SchemaGrammar12getProtoTypeEv, ptr @_ZNK11xercesc_2_713SchemaGrammar14getGrammarTypeEv, ptr @_ZNK11xercesc_2_713SchemaGrammar18getTargetNamespaceEv, ptr @_ZNK11xercesc_2_713SchemaGrammar12getValidatedEv, ptr @_ZN11xercesc_2_713SchemaGrammar17findOrAddElemDeclEjPKtS2_S2_jRb, ptr @_ZNK11xercesc_2_713SchemaGrammar9getElemIdEjPKtS2_j, ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j, ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEj, ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEj, ptr @_ZNK11xercesc_2_713SchemaGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_713SchemaGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEjPKtS2_S2_jb, ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_713SchemaGrammar15putNotationDeclEPNS_15XMLNotationDeclE, ptr @_ZN11xercesc_2_713SchemaGrammar12setValidatedEb, ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_713SchemaGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE, ptr @_ZNK11xercesc_2_713SchemaGrammar21getGrammarDescriptionEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@.str = private unnamed_addr constant [14 x i8] c"SchemaGrammar\00", align 1
@_ZN11xercesc_2_713SchemaGrammar18classSchemaGrammarE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str, ptr @_ZN11xercesc_2_713SchemaGrammar12createObjectEPNS_13MemoryManagerE }, align 8
@_ZTSN11xercesc_2_713SchemaGrammarE = dso_local constant [31 x i8] c"N11xercesc_2_713SchemaGrammarE\00", align 1
@_ZTIN11xercesc_2_77GrammarE = external constant ptr
@_ZTIN11xercesc_2_713SchemaGrammarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713SchemaGrammarE, ptr @_ZTIN11xercesc_2_77GrammarE }, align 8
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1

@_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713SchemaGrammarD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !75 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_713SchemaGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, i8 0, i64 96, i1 false)
  store ptr %1, ptr %8, align 8, !tbaa !80
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %9, i8 0, i64 17, i1 false)
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %1)
          to label %12 unwind label %72, !prof !88

12:                                               ; preds = %2
  %13 = load ptr, ptr %8, align 8, !tbaa !80
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %13)
          to label %15 unwind label %76, !prof !88

15:                                               ; preds = %12
  %16 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %14, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef %16)
          to label %17 unwind label %80, !prof !88

17:                                               ; preds = %15
  store ptr %14, ptr %4, align 8, !tbaa !89
  %18 = load ptr, ptr %8, align 8, !tbaa !80
  %19 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %18)
          to label %20 unwind label %84, !prof !88

20:                                               ; preds = %17
  %21 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %19, i32 noundef 109, i1 noundef zeroext false, i32 noundef 128, ptr noundef %21)
          to label %22 unwind label %86, !prof !88

22:                                               ; preds = %20
  store ptr %19, ptr %5, align 8, !tbaa !90
  %23 = load ptr, ptr %8, align 8, !tbaa !80
  %24 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %23)
          to label %25 unwind label %84, !prof !88

25:                                               ; preds = %22
  %26 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %24, i32 noundef 109, i32 noundef 128, ptr noundef %26)
          to label %27 unwind label %88, !prof !88

27:                                               ; preds = %25
  store ptr %24, ptr %6, align 8, !tbaa !91
  %28 = load ptr, ptr %8, align 8, !tbaa !80
  %29 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %28)
          to label %30 unwind label %84, !prof !88

30:                                               ; preds = %27
  %31 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef %31)
          to label %32 unwind label %90, !prof !88

32:                                               ; preds = %30
  store ptr %29, ptr %7, align 8, !tbaa !92
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %33 unwind label %84, !prof !88

33:                                               ; preds = %32
  %34 = load ptr, ptr %8, align 8, !tbaa !80
  %35 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %34)
          to label %36 unwind label %84, !prof !88

36:                                               ; preds = %33
  %37 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %35, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %37)
          to label %38 unwind label %92, !prof !88

38:                                               ; preds = %36
  store ptr %35, ptr %9, align 8, !tbaa !93
  %39 = load ptr, ptr %8, align 8, !tbaa !80
  %40 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %39)
          to label %41 unwind label %84, !prof !88

41:                                               ; preds = %38
  %42 = load ptr, ptr %8, align 8, !tbaa !80
  %43 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %42)
          to label %44 unwind label %94, !prof !88

44:                                               ; preds = %41
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %45 unwind label %96, !prof !88

45:                                               ; preds = %44
  %46 = load ptr, ptr %8, align 8, !tbaa !80
  store ptr %46, ptr %40, align 8, !tbaa !94
  %47 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %40, i64 0, i32 1
  store i8 1, ptr %47, align 8, !tbaa !97
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %40, i64 0, i32 2
  store ptr null, ptr %48, align 8, !tbaa !98
  %49 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %40, i64 0, i32 3
  store i32 29, ptr %49, align 8, !tbaa !99
  %50 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %40, i64 0, i32 4
  store i32 29, ptr %50, align 4, !tbaa !100
  %51 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %40, i64 0, i32 5
  store i32 0, ptr %51, align 8, !tbaa !101
  %52 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %40, i64 0, i32 6
  store ptr null, ptr %52, align 8, !tbaa !102
  %53 = load ptr, ptr %46, align 8, !tbaa !77
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = invoke noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %46, i64 noundef 232)
          to label %57 unwind label %94, !prof !103

57:                                               ; preds = %45
  store ptr %56, ptr %48, align 8, !tbaa !98
  %58 = load i32, ptr %49, align 8, !tbaa !99
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60, !prof !104

60:                                               ; preds = %57
  %61 = zext i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ 0, %60 ], [ %66, %62 ]
  %64 = load ptr, ptr %48, align 8, !tbaa !98
  %65 = getelementptr inbounds ptr, ptr %64, i64 %63
  store ptr null, ptr %65, align 8, !tbaa !105
  %66 = add nuw nsw i64 %63, 1
  %67 = icmp eq i64 %66, %61
  br i1 %67, label %68, label %62, !prof !106, !llvm.loop !107

68:                                               ; preds = %62, %57
  store ptr %43, ptr %52, align 8, !tbaa !102
  store ptr %40, ptr %10, align 8, !tbaa !110
  %69 = load ptr, ptr %0, align 8, !tbaa !77
  %70 = getelementptr inbounds ptr, ptr %69, i64 20
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %113 unwind label %84, !prof !111

72:                                               ; preds = %2
  %73 = landingpad { ptr, i32 }
          cleanup
  %74 = extractvalue { ptr, i32 } %73, 0
  %75 = extractvalue { ptr, i32 } %73, 1
  br label %127

76:                                               ; preds = %12
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = extractvalue { ptr, i32 } %77, 0
  %79 = extractvalue { ptr, i32 } %77, 1
  br label %114

80:                                               ; preds = %15
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = extractvalue { ptr, i32 } %81, 0
  %83 = extractvalue { ptr, i32 } %81, 1
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #16
  br label %114

84:                                               ; preds = %68, %38, %33, %32, %27, %22, %17
  %85 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %100

86:                                               ; preds = %20
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #16
  br label %100

88:                                               ; preds = %25
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #16
  br label %100

90:                                               ; preds = %30
  %91 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #16
  br label %100

92:                                               ; preds = %36
  %93 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %35, ptr noundef %34) #16
  br label %100

94:                                               ; preds = %45, %41
  %95 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %98

96:                                               ; preds = %44
  %97 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %43, ptr noundef %42) #16
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %95, %94 ], [ %97, %96 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %40, ptr noundef %39) #16
  br label %100

100:                                              ; preds = %98, %92, %90, %88, %86, %84
  %101 = phi { ptr, i32 } [ %85, %84 ], [ %99, %98 ], [ %93, %92 ], [ %91, %90 ], [ %89, %88 ], [ %87, %86 ]
  %102 = extractvalue { ptr, i32 } %101, 0
  %103 = extractvalue { ptr, i32 } %101, 1
  %104 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = tail call ptr @__cxa_begin_catch(ptr %102) #16
  invoke void @__cxa_rethrow() #18
          to label %135 unwind label %108

108:                                              ; preds = %106
  %109 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %110 unwind label %132

110:                                              ; preds = %108
  %111 = extractvalue { ptr, i32 } %109, 1
  %112 = extractvalue { ptr, i32 } %109, 0
  br label %114

113:                                              ; preds = %68
  ret void

114:                                              ; preds = %110, %100, %80, %76
  %115 = phi i1 [ true, %110 ], [ false, %100 ], [ false, %80 ], [ false, %76 ]
  %116 = phi ptr [ null, %110 ], [ @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, %100 ], [ @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, %80 ], [ @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, %76 ]
  %117 = phi ptr [ null, %110 ], [ %0, %100 ], [ %0, %80 ], [ %0, %76 ]
  %118 = phi i32 [ %111, %110 ], [ %103, %100 ], [ %83, %80 ], [ %79, %76 ]
  %119 = phi ptr [ %112, %110 ], [ %102, %100 ], [ %82, %80 ], [ %78, %76 ]
  %120 = icmp eq ptr %117, null
  %121 = or i1 %115, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %114
  invoke void %116(ptr noundef nonnull align 8 dereferenceable(160) %117)
          to label %126 unwind label %123

123:                                              ; preds = %122
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  tail call void @__clang_call_terminate(ptr %125) #17
  unreachable

126:                                              ; preds = %114, %122
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #16
  br label %127

127:                                              ; preds = %126, %72
  %128 = phi i32 [ %118, %126 ], [ %75, %72 ]
  %129 = phi ptr [ %119, %126 ], [ %74, %72 ]
  %130 = insertvalue { ptr, i32 } poison, ptr %129, 0
  %131 = insertvalue { ptr, i32 } %130, i32 %128, 1
  resume { ptr, i32 } %131

132:                                              ; preds = %108
  %133 = landingpad { ptr, i32 }
          catch ptr null
  %134 = extractvalue { ptr, i32 } %133, 0
  tail call void @__clang_call_terminate(ptr %134) #17
  unreachable

135:                                              ; preds = %106
  unreachable
}

declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !112

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #16
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !88

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #16
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !112

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %13) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #16
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20, !prof !112

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %18) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #16
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !80
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  %26 = load ptr, ptr %23, align 8, !tbaa !77
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %25), !prof !115
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !116
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !112

32:                                               ; preds = %21
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %30)
          to label %36 unwind label %33, !prof !88

33:                                               ; preds = %32
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  tail call void @__clang_call_terminate(ptr %35) #17
  unreachable

36:                                               ; preds = %32
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %30) #16
  br label %37

37:                                               ; preds = %36, %21
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !117
  %40 = icmp eq ptr %39, null
  br i1 %40, label %46, label %41, !prof !112

41:                                               ; preds = %37
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %39)
          to label %45 unwind label %42, !prof !88

42:                                               ; preds = %41
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  tail call void @__clang_call_terminate(ptr %44) #17
  unreachable

45:                                               ; preds = %41
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %39) #16
  br label %46

46:                                               ; preds = %45, %37
  %47 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !118
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50, !prof !112

50:                                               ; preds = %46
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %48)
          to label %54 unwind label %51, !prof !88

51:                                               ; preds = %50
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #17
  unreachable

54:                                               ; preds = %50
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %48) #16
  br label %55

55:                                               ; preds = %54, %46
  %56 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %57 = load ptr, ptr %56, align 8, !tbaa !119
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59, !prof !112

59:                                               ; preds = %55
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %57)
          to label %63 unwind label %60, !prof !88

60:                                               ; preds = %59
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  tail call void @__clang_call_terminate(ptr %62) #17
  unreachable

63:                                               ; preds = %59
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %57) #16
  br label %64

64:                                               ; preds = %63, %55
  %65 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !120
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68, !prof !112

68:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_714NamespaceScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %66) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %66) #16
  br label %69

69:                                               ; preds = %68, %64
  %70 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %71 = load ptr, ptr %70, align 8, !tbaa !121
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73, !prof !112

73:                                               ; preds = %69
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %71) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %71) #16
  br label %74

74:                                               ; preds = %73, %69
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !92
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78, !prof !112

78:                                               ; preds = %74
  %79 = load ptr, ptr %76, align 8, !tbaa !77
  %80 = getelementptr inbounds ptr, ptr %79, i64 1
  %81 = load ptr, ptr %80, align 8
  tail call void %81(ptr noundef nonnull align 8 dereferenceable(16) %76) #16, !prof !122
  br label %82

82:                                               ; preds = %78, %74
  %83 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %84 = load ptr, ptr %83, align 8, !tbaa !93
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86, !prof !112

86:                                               ; preds = %82
  %87 = load ptr, ptr %84, align 8, !tbaa !77
  %88 = getelementptr inbounds ptr, ptr %87, i64 1
  %89 = load ptr, ptr %88, align 8
  tail call void %89(ptr noundef nonnull align 8 dereferenceable(16) %84) #16, !prof !123
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %92 = load ptr, ptr %91, align 8, !tbaa !110
  %93 = icmp eq ptr %92, null
  br i1 %93, label %99, label %94, !prof !112

94:                                               ; preds = %90
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %92)
          to label %98 unwind label %95, !prof !88

95:                                               ; preds = %94
  %96 = landingpad { ptr, i32 }
          catch ptr null
  %97 = extractvalue { ptr, i32 } %96, 0
  tail call void @__clang_call_terminate(ptr %97) #17
  unreachable

98:                                               ; preds = %94
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %92) #16
  br label %99

99:                                               ; preds = %98, %90
  ret void
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %6 = zext i1 %2 to i8
  store ptr %4, ptr %0, align 8, !tbaa !125
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !127
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !128
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !129
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !130
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !131
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1)
  %13 = load ptr, ptr %0, align 8, !tbaa !125
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %19, !prof !132

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !133
  %16 = load i32, ptr %11, align 8, !tbaa !130
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !134

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !130
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #16
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %0, align 8, !tbaa !125
  %24 = load i32, ptr %11, align 8, !tbaa !130
  %25 = zext i32 %24 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %23, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef %26), !prof !135
  store ptr %30, ptr %22, align 8, !tbaa !136
  store ptr null, ptr %30, align 8, !tbaa !105
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  store ptr %3, ptr %0, align 8, !tbaa !138
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !140
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !141
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !142
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !143

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.2, i32 noundef 69, i32 noundef 68, ptr noundef %12)
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
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18), !prof !144
  store ptr %22, ptr %5, align 8, !tbaa !145
  %23 = load i32, ptr %8, align 8, !tbaa !142
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !104

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !140
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !143

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !145
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !105
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !146, !llvm.loop !147

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !140
  br label %37

37:                                               ; preds = %36, %27
  %38 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %0, align 8, !tbaa !138
  %40 = load i32, ptr %6, align 8, !tbaa !140
  %41 = zext i32 %40 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %39, align 8, !tbaa !77
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %39, i64 noundef %42), !prof !144
  store ptr %46, ptr %38, align 8, !tbaa !148
  store ptr null, ptr %46, align 8, !tbaa !105
  ret void
}

declare void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_713SchemaGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0)
          to label %2 unwind label %4, !prof !88

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #6 align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_713SchemaGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar17findOrAddElemDeclEjPKtS2_S2_jRb(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %8 = load ptr, ptr %0, align 8, !tbaa !77
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !80
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %15)
  %17 = load ptr, ptr %14, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %16, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef 1, i32 noundef -2, ptr noundef %17)
          to label %18 unwind label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !113
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !80
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %23)
  %25 = load ptr, ptr %14, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %24, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %25)
          to label %26 unwind label %29

26:                                               ; preds = %22
  store ptr %24, ptr %19, align 8, !tbaa !113
  br label %31

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #16
  br label %42

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #16
  br label %42

31:                                               ; preds = %26, %18
  %32 = load ptr, ptr %19, align 8, !tbaa !113
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %16, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !149
  %35 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !152
  %37 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef %36, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %16)
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %16, i64 0, i32 4
  store i32 %37, ptr %38, align 4, !tbaa !154
  br label %39

39:                                               ; preds = %7, %31
  %40 = phi i8 [ 1, %31 ], [ 0, %7 ]
  %41 = phi ptr [ %16, %31 ], [ %11, %7 ]
  store i8 %40, ptr %6, align 1, !tbaa !155
  ret ptr %41

42:                                               ; preds = %29, %27
  %43 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %43
}

declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 !prof !156 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !157

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !127, !range !158, !noundef !159
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !160
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !77
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #16
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !160
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !162
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !163
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !164
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !125
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !prof !165
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !128
  %32 = load i32, ptr %6, align 4, !tbaa !166
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !105
  store ptr %4, ptr %29, align 8, !tbaa !160
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !167
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 2
  store ptr %1, ptr %37, align 8, !tbaa !162
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 3
  store i32 %2, ptr %38, align 8, !tbaa !163
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 4
  store i32 %3, ptr %39, align 4, !tbaa !164
  store ptr %29, ptr %34, align 8, !tbaa !105
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !131
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !130
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %68, !prof !168

47:                                               ; preds = %40
  %48 = uitofp i32 %45 to double
  %49 = fmul double %48, 1.500000e+00
  %50 = fptoui double %49 to i32
  %51 = load ptr, ptr %0, align 8, !tbaa !125
  %52 = zext i32 %50 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = load ptr, ptr %51, align 8, !tbaa !77
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %53)
  %58 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !136
  %60 = load i32, ptr %44, align 8, !tbaa !130
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 8 %59, i64 %62, i1 false)
  %63 = load ptr, ptr %0, align 8, !tbaa !125
  %64 = load ptr, ptr %58, align 8, !tbaa !136
  %65 = load ptr, ptr %63, align 8, !tbaa !77
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %64)
  store ptr %57, ptr %58, align 8, !tbaa !136
  store i32 %50, ptr %44, align 8, !tbaa !130
  br label %68

68:                                               ; preds = %47, %40
  %69 = load i32, ptr %41, align 4, !tbaa !131
  %70 = add i32 %69, 1
  store i32 %70, ptr %41, align 4, !tbaa !131
  %71 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !136
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  store ptr %4, ptr %74, align 8, !tbaa !105
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %4, i64 0, i32 4
  store i32 %70, ptr %75, align 4, !tbaa !154
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  ret i32 %70
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEjPKtS2_S2_jb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %9)
  %11 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %10, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef 1, i32 noundef -2, ptr noundef %11)
          to label %12 unwind label %22

12:                                               ; preds = %7
  br i1 %6, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !113
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !80
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %18)
  %20 = load ptr, ptr %8, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %19, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %20)
          to label %21 unwind label %24

21:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !113
  br label %28

22:                                               ; preds = %7
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #16
  br label %37

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #16
  br label %37

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  br label %28

28:                                               ; preds = %13, %21, %26
  %29 = phi ptr [ %27, %26 ], [ %14, %21 ], [ %14, %13 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !105
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %10, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !149
  %33 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !152
  %35 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef %34, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %10)
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %10, i64 0, i32 4
  store i32 %35, ptr %36, align 4, !tbaa !154
  ret ptr %10

37:                                               ; preds = %24, %22
  %38 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %38
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %3)
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !88

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %5)
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %10)
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !110
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %14)
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  store i8 0, ptr %15, align 8, !tbaa !169
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #7 comdat align 2 !prof !170 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !129
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !171

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %35, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !131
  ret void

10:                                               ; preds = %5, %35
  %11 = phi i64 [ 0, %5 ], [ %38, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !128
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !172

16:                                               ; preds = %10, %29
  %17 = phi ptr [ %19, %29 ], [ %14, %10 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !167
  %20 = load i8, ptr %7, align 8, !tbaa !127, !range !158, !noundef !159
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %29, label %22, !prof !168

22:                                               ; preds = %16
  %23 = load ptr, ptr %17, align 8, !tbaa !160
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !168

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !77
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(147) %23) #16, !prof !173
  br label %29

29:                                               ; preds = %22, %25, %16
  %30 = load ptr, ptr %0, align 8, !tbaa !125
  %31 = load ptr, ptr %30, align 8, !tbaa !77
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %17), !prof !174
  %34 = icmp eq ptr %19, null
  br i1 %34, label %35, label %16, !prof !157, !llvm.loop !175

35:                                               ; preds = %29, %10
  %36 = load ptr, ptr %6, align 8, !tbaa !128
  %37 = getelementptr inbounds ptr, ptr %36, i64 %11
  store ptr null, ptr %37, align 8, !tbaa !105
  %38 = add nuw nsw i64 %11, 1
  %39 = load i32, ptr %2, align 8, !tbaa !129
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %10, label %8, !prof !176, !llvm.loop !177
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !124 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !142
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !178

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %31, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !141
  ret void

9:                                                ; preds = %5, %31
  %10 = phi i64 [ 0, %5 ], [ %34, %31 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !145
  %12 = getelementptr inbounds ptr, ptr %11, i64 %10
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !88

15:                                               ; preds = %9, %25
  %16 = phi ptr [ %18, %25 ], [ %13, %9 ]
  %17 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !179
  %19 = load ptr, ptr %16, align 8, !tbaa !181
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(56) %19) #16
  br label %25

25:                                               ; preds = %21, %15
  %26 = load ptr, ptr %0, align 8, !tbaa !138
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull %16)
  %30 = icmp eq ptr %18, null
  br i1 %30, label %31, label %15, !prof !88, !llvm.loop !182

31:                                               ; preds = %25, %9
  %32 = load ptr, ptr %6, align 8, !tbaa !145
  %33 = getelementptr inbounds ptr, ptr %32, i64 %10
  store ptr null, ptr %33, align 8, !tbaa !105
  %34 = add nuw nsw i64 %10, 1
  %35 = load i32, ptr %2, align 8, !tbaa !142
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %9, label %7, !prof !183, !llvm.loop !184
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !185 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !186

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !99
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !101
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !98
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = load i8, ptr %11, align 8, !tbaa !97, !range !158, !noundef !159
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !189
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(80) %26) #16
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !94
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !190

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !98
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !105
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !99
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !191

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
          to label %2 unwind label %25, !prof !132

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !125
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !136
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %25, !prof !192

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !125
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !128
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %25, !prof !192

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20, !prof !134

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !77
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #16, !prof !193
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #17
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %2 = load ptr, ptr %0, align 8, !tbaa !138
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %17, !prof !194

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
          to label %9 unwind label %17, !prof !195

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !138
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !145
  %13 = load ptr, ptr %10, align 8, !tbaa !77
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %17, !prof !194

16:                                               ; preds = %9
  ret void

17:                                               ; preds = %9, %8, %1
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #17
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_714NamespaceScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %2 unwind label %18, !prof !88

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !196
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !198
  %6 = load ptr, ptr %3, align 8, !tbaa !77
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %18, !prof !115

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13, !prof !112

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !77
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #16, !prof !200
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !75 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(16) %1)
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !93
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !77
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #16
  br label %18

18:                                               ; preds = %14, %10
  store ptr %1, ptr %11, align 8, !tbaa !93
  br label %19

19:                                               ; preds = %2, %4, %18
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar13putAnnotationEPvPNS_12XSAnnotationE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !110
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !99
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !102
  %15 = load i32, ptr %4, align 8, !tbaa !99
  %16 = load ptr, ptr %0, align 8, !tbaa !94
  %17 = load ptr, ptr %14, align 8, !tbaa !77
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !98
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !105
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !102
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !201
  %31 = load ptr, ptr %28, align 8, !tbaa !77
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !202

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !97, !range !158, !noundef !159
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !189
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !77
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(80) %47) #16
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !189
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !201
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !94
  %57 = load ptr, ptr %56, align 8, !tbaa !77
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24)
  %61 = load ptr, ptr %20, align 8, !tbaa !98
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !105
  store ptr %2, ptr %60, align 8, !tbaa !189
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !187
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !201
  store ptr %60, ptr %62, align 8, !tbaa !105
  %66 = load i32, ptr %8, align 8, !tbaa !101
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !101
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar13addAnnotationEPNS_12XSAnnotationE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !110
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %0)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %1)
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !110
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %0, ptr noundef %1)
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !99
  %7 = load ptr, ptr %0, align 8, !tbaa !94
  %8 = load ptr, ptr %4, align 8, !tbaa !77
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !102
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !201
  %22 = load ptr, ptr %19, align 8, !tbaa !77
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !105
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !202

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !189
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

declare void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %0)
  invoke void @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %0)
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
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713SchemaGrammar14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !75 {
  ret i1 true
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713SchemaGrammar12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_713SchemaGrammar18classSchemaGrammarE
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %5 = load i16, ptr %1, align 8, !tbaa !203
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactory9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  br i1 %6, label %9, label %33

9:                                                ; preds = %2
  %10 = load ptr, ptr %8, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef %14, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !116
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9XMLAttDefEEERNS_16XSerializeEngineE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15ComplexTypeInfoEEERNS_16XSerializeEngineE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !118
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15XercesGroupInfoEEERNS_16XSerializeEngineE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %21 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEERNS_16XSerializeEngineE(ptr noundef %22, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %23 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !121
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEERNS_16XSerializeEngineE(ptr noundef %24, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %25 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %26 = load ptr, ptr %25, align 8, !tbaa !110
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12XSAnnotationEEERNS_16XSerializeEngineE(ptr noundef %26, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !114
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %28, i32 noundef 0, i1 noundef zeroext false)
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %30 = load i8, ptr %29, align 8, !tbaa !169, !range !158, !noundef !159
  %31 = icmp ne i8 %30, 0
  %32 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %31)
  br label %45

33:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef nonnull %8, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef nonnull %34, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %35, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9XMLAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %36, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %37 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15ComplexTypeInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %37, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15XercesGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %38, i32 noundef 13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %39, i32 noundef 13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %40, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %41 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12XSAnnotationEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %41, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1)
  %42 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %44 = call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %43)
  br label %45

45:                                               ; preds = %33, %9
  %46 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !93
  %48 = load ptr, ptr %47, align 8, !tbaa !77
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  call void %50(ptr noundef nonnull align 8 dereferenceable(16) %47, ptr noundef nonnull align 8 dereferenceable(100) %1)
  ret void
}

declare void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare void @_ZN11xercesc_2_724DatatypeValidatorFactory9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9XMLAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15ComplexTypeInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15XercesGroupInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12XSAnnotationEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9XMLAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15ComplexTypeInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15XercesGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12XSAnnotationEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #9 comdat align 2 !prof !207 {
  ret i32 1
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar18getTargetNamespaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #9 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  ret ptr %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713SchemaGrammar12getValidatedEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #10 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 8, !tbaa !169, !range !158, !noundef !159
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar9getElemIdEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #11 comdat align 2 !prof !75 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %10 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef %2, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %10, align 8, !tbaa !160
  br label %14

14:                                               ; preds = %5, %12
  %15 = phi ptr [ %13, %12 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %20 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef %2, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %20, align 8, !tbaa !160
  br label %24

24:                                               ; preds = %17, %22
  %25 = phi ptr [ %23, %22 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %14
  %28 = phi ptr [ %15, %14 ], [ %25, %24 ]
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %28, i64 0, i32 4
  br label %30

30:                                               ; preds = %24, %27
  %31 = phi ptr [ %29, %27 ], [ @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, %24 ]
  %32 = load i32, ptr %31, align 4, !tbaa !166
  ret i32 %32
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #11 comdat align 2 !prof !75 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  %11 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %2, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %8)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %11, align 8, !tbaa !160
  br label %15

15:                                               ; preds = %5, %13
  %16 = phi ptr [ %14, %13 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  %21 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef %2, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %21, align 8, !tbaa !160
  br label %25

25:                                               ; preds = %18, %23
  %26 = phi ptr [ %24, %23 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !113
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %33 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef %2, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !160
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %39

39:                                               ; preds = %25, %28, %37, %15
  %40 = phi ptr [ %16, %15 ], [ %26, %25 ], [ %38, %37 ], [ null, %28 ]
  ret ptr %40
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #12 comdat align 2 !prof !209 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !133
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %8, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !129
  %13 = load ptr, ptr %8, align 8, !tbaa !125
  %14 = load ptr, ptr %10, align 8, !tbaa !77
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2, i32 noundef %12, ptr noundef %13), !prof !210
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds ptr, ptr %18, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = icmp eq ptr %21, null
  br i1 %22, label %44, label %23, !prof !211

23:                                               ; preds = %5, %40
  %24 = phi ptr [ %42, %40 ], [ %21, %5 ]
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %24, i64 0, i32 3
  %26 = load i32, ptr %25, align 8, !tbaa !163
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %40, !prof !212

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %24, i64 0, i32 4
  %30 = load i32, ptr %29, align 4, !tbaa !164
  %31 = icmp eq i32 %30, %4
  br i1 %31, label %32, label %40, !prof !213

32:                                               ; preds = %28
  %33 = load ptr, ptr %9, align 8, !tbaa !133
  %34 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %24, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = load ptr, ptr %33, align 8, !tbaa !77
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef zeroext i1 %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %2, ptr noundef %35), !prof !214
  br i1 %39, label %44, label %40, !prof !215

40:                                               ; preds = %32, %28, %23
  %41 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %24, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %23, !prof !216, !llvm.loop !217

44:                                               ; preds = %32, %40, %5
  %45 = phi ptr [ null, %5 ], [ %24, %32 ], [ null, %40 ]
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47, !prof !218

47:                                               ; preds = %44
  %48 = load ptr, ptr %45, align 8, !tbaa !160
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi ptr [ %48, %47 ], [ null, %44 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %109, !prof !218

52:                                               ; preds = %49
  %53 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !90
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %54, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !133
  %57 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %54, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !129
  %59 = load ptr, ptr %54, align 8, !tbaa !125
  %60 = load ptr, ptr %56, align 8, !tbaa !77
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef i32 %61(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %2, i32 noundef %58, ptr noundef %59), !prof !219
  %63 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %54, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !128
  %65 = zext i32 %62 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !105
  %68 = icmp eq ptr %67, null
  br i1 %68, label %90, label %69, !prof !211

69:                                               ; preds = %52, %86
  %70 = phi ptr [ %88, %86 ], [ %67, %52 ]
  %71 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %70, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !163
  %73 = icmp eq i32 %72, %1
  br i1 %73, label %74, label %86, !prof !212

74:                                               ; preds = %69
  %75 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %70, i64 0, i32 4
  %76 = load i32, ptr %75, align 4, !tbaa !164
  %77 = icmp eq i32 %76, %4
  br i1 %77, label %78, label %86, !prof !213

78:                                               ; preds = %74
  %79 = load ptr, ptr %55, align 8, !tbaa !133
  %80 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %70, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !162
  %82 = load ptr, ptr %79, align 8, !tbaa !77
  %83 = getelementptr inbounds ptr, ptr %82, i64 1
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef zeroext i1 %84(ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef %2, ptr noundef %81), !prof !220
  br i1 %85, label %90, label %86, !prof !215

86:                                               ; preds = %78, %74, %69
  %87 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %70, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !105
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %69, !prof !216, !llvm.loop !217

90:                                               ; preds = %78, %86, %52
  %91 = phi ptr [ null, %52 ], [ %70, %78 ], [ null, %86 ]
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !221

93:                                               ; preds = %90
  %94 = load ptr, ptr %91, align 8, !tbaa !160
  br label %95

95:                                               ; preds = %90, %93
  %96 = phi ptr [ %94, %93 ], [ null, %90 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %109, !prof !221

98:                                               ; preds = %95
  %99 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !113
  %101 = icmp eq ptr %100, null
  br i1 %101, label %109, label %102, !prof !221

102:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %103 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %100, ptr noundef %2, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %103, align 8, !tbaa !160
  br label %107

107:                                              ; preds = %102, %105
  %108 = phi ptr [ %106, %105 ], [ null, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  br label %109

109:                                              ; preds = %95, %98, %107, %49
  %110 = phi ptr [ %50, %49 ], [ %96, %95 ], [ %108, %107 ], [ null, %98 ]
  ret ptr %110
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) unnamed_addr #11 comdat align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %1)
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) unnamed_addr #11 comdat align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %1)
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %11
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !75 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !181
  br label %10

10:                                               ; preds = %2, %8
  %11 = phi ptr [ %9, %8 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret ptr %11
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  br i1 %2, label %4, label %16, !prof !168

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !80
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %10)
  %12 = load ptr, ptr %9, align 8, !tbaa !80
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %11, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !113
  br label %18

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #16
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %4, %13, %16
  %19 = phi ptr [ %17, %16 ], [ %5, %13 ], [ %5, %4 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !105
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !149
  %23 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !152
  %25 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %22, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !222
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %1, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !223
  %29 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef %24, i32 noundef %26, i32 noundef %28, ptr noundef nonnull %1)
  ret i32 %29
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar15putNotationDeclEPNS_15XMLNotationDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #11 comdat align 2 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !91
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1)
  ret i32 %5
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SchemaGrammar12setValidatedEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) unnamed_addr #10 comdat align 2 !prof !76 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 8, !tbaa !169
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar21getGrammarDescriptionEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #10 comdat align 2 !prof !229 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 comdat align 2 !prof !156 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !129
  %10 = load ptr, ptr %0, align 8, !tbaa !125
  %11 = load ptr, ptr %7, align 8, !tbaa !77
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10), !prof !230
  store i32 %13, ptr %4, align 4, !tbaa !166
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !128
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !105
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !211

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !163
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !212

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !164
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !213

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !133
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !162
  %33 = load ptr, ptr %30, align 8, !tbaa !77
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32), !prof !231
  br i1 %36, label %41, label %37, !prof !215

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !216, !llvm.loop !217

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ %21, %29 ], [ null, %37 ]
  ret ptr %42
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = load ptr, ptr %0, align 8, !tbaa !125
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 67, ptr noundef %10)
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  ret ptr %19
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !75 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !75 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !232
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
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !75 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !142
  %6 = icmp eq ptr %1, null
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr %1, align 2, !tbaa !235
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %7
  %11 = zext i16 %8 to i32
  %12 = getelementptr inbounds i16, ptr %1, i64 1
  %13 = load i16, ptr %12, align 2, !tbaa !235
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
  %25 = load i16, ptr %24, align 2, !tbaa !235
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %15, !llvm.loop !236

27:                                               ; preds = %15, %10
  %28 = phi i32 [ %11, %10 ], [ %23, %15 ]
  %29 = urem i32 %28, %5
  br label %30

30:                                               ; preds = %3, %7, %27
  %31 = phi i32 [ %29, %27 ], [ 0, %7 ], [ 0, %3 ]
  store i32 %31, ptr %2, align 4, !tbaa !166
  %32 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !145
  %34 = zext i32 %31 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !105
  %37 = icmp eq ptr %36, null
  br i1 %37, label %72, label %38

38:                                               ; preds = %30, %68
  %39 = phi ptr [ %70, %68 ], [ %36, %30 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !181
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !237
  %43 = icmp eq ptr %42, null
  %44 = or i1 %6, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i16, ptr %1, align 2, !tbaa !235
  %47 = load i16, ptr %42, align 2, !tbaa !235
  %48 = icmp eq i16 %46, %47
  br i1 %48, label %57, label %68

49:                                               ; preds = %38
  br i1 %6, label %53, label %50

50:                                               ; preds = %49
  %51 = load i16, ptr %1, align 2, !tbaa !235
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %50, %49
  br i1 %43, label %72, label %54

54:                                               ; preds = %53
  %55 = load i16, ptr %42, align 2, !tbaa !235
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
  %65 = load i16, ptr %63, align 2, !tbaa !235
  %66 = load i16, ptr %64, align 2, !tbaa !235
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %57, label %68, !llvm.loop !239

68:                                               ; preds = %62, %45, %54, %50
  %69 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %39, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !105
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %38, !llvm.loop !240

72:                                               ; preds = %68, %53, %54, %57, %30
  %73 = phi ptr [ null, %30 ], [ %39, %57 ], [ %39, %54 ], [ %39, %53 ], [ null, %68 ]
  ret ptr %73
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = load ptr, ptr %4, align 8, !tbaa !237
  %11 = load ptr, ptr %0, align 8, !tbaa !138
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str.2, i32 noundef 213, i32 noundef 65, ptr noundef %10, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %11)
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
  %16 = load ptr, ptr %0, align 8, !tbaa !138
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 16)
  %21 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !145
  %23 = load i32, ptr %3, align 4, !tbaa !166
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds ptr, ptr %22, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !105
  store ptr %1, ptr %20, align 8, !tbaa !181
  %27 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %20, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !179
  store ptr %20, ptr %25, align 8, !tbaa !105
  %28 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !141
  %30 = add i32 %29, 1
  %31 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !140
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %15
  %35 = uitofp i32 %32 to double
  %36 = fmul double %35, 1.500000e+00
  %37 = fptoui double %36 to i32
  %38 = load ptr, ptr %0, align 8, !tbaa !138
  %39 = zext i32 %37 to i64
  %40 = shl nuw nsw i64 %39, 3
  %41 = load ptr, ptr %38, align 8, !tbaa !77
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40)
  %45 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !148
  %47 = load i32, ptr %31, align 8, !tbaa !140
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %44, ptr align 8 %46, i64 %49, i1 false)
  %50 = load ptr, ptr %0, align 8, !tbaa !138
  %51 = load ptr, ptr %45, align 8, !tbaa !148
  %52 = load ptr, ptr %50, align 8, !tbaa !77
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  call void %54(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %51)
  store ptr %44, ptr %45, align 8, !tbaa !148
  store i32 %37, ptr %31, align 8, !tbaa !140
  br label %55

55:                                               ; preds = %34, %15
  %56 = load i32, ptr %28, align 4, !tbaa !141
  %57 = add i32 %56, 1
  store i32 %57, ptr %28, align 4, !tbaa !141
  %58 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !148
  %60 = zext i32 %57 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  store ptr %1, ptr %61, align 8, !tbaa !105
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %1, i64 0, i32 1
  store i32 %57, ptr %62, align 8, !tbaa !241
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %57
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
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
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !124 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !134

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !125
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.1, i32 noundef 138, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #16
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !125
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !77
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !135
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !128
  %21 = load i32, ptr %12, align 8, !tbaa !129
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !178

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !128
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !105
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !242, !llvm.loop !243
}

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !246
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !115
  store ptr null, ptr %3, align 8, !tbaa !246
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !112

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !77
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !200
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !248
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !249
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !248
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !246
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.4", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !250
  %23 = load i8, ptr %11, align 8, !tbaa !252, !range !158, !noundef !159
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !253
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #16
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !244
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !254

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !246
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !105
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !249
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !255

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !256
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !258
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !115
  store ptr null, ptr %3, align 8, !tbaa !258
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !259
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !112

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !77
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !200
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !260
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !261
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !104

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !260
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !258
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !262

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.5", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !263
  %23 = load i8, ptr %11, align 8, !tbaa !265, !range !158, !noundef !159
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !266

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !267
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !266

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(176) %26) #16, !prof !268
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !256
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !269
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !270, !llvm.loop !271

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !258
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !105
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !261
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !272, !llvm.loop !273

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !274
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !276
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !115
  store ptr null, ptr %3, align 8, !tbaa !276
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !277
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !112

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !77
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !200
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !278
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !279
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !278
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !276
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !280
  %23 = load i8, ptr %11, align 8, !tbaa !282, !range !158, !noundef !159
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !283
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #16
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !274
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !284

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !276
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !105
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !279
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !285

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !286
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !288
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !115
  store ptr null, ptr %3, align 8, !tbaa !288
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !289
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !112

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !77
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !200
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !290
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !291
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !290
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !288
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.7", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !292
  %23 = load i8, ptr %11, align 8, !tbaa !294, !range !158, !noundef !159
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !295
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !77
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #16
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !286
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20)
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !296

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !288
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !105
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !291
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !llvm.loop !297

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !298
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %53, label %5, !prof !88

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !299
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %46, %5
  store i32 0, ptr %2, align 4, !tbaa !298
  br label %53

13:                                               ; preds = %9, %46
  %14 = phi i64 [ 0, %9 ], [ %49, %46 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !198
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = icmp eq ptr %17, null
  br i1 %18, label %46, label %19

19:                                               ; preds = %13, %40
  %20 = phi ptr [ %22, %40 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !300
  %23 = load i8, ptr %11, align 8, !tbaa !302, !range !158, !noundef !159
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !303
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.8", ptr %26, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !304
  %31 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.8", ptr %26, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !306
  %33 = load ptr, ptr %30, align 8, !tbaa !77
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32)
          to label %39 unwind label %36, !prof !115

36:                                               ; preds = %28
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #17
  unreachable

39:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #16
  br label %40

40:                                               ; preds = %25, %39, %19
  %41 = load ptr, ptr %0, align 8, !tbaa !196
  %42 = load ptr, ptr %41, align 8, !tbaa !77
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull %20)
  %45 = icmp eq ptr %22, null
  br i1 %45, label %46, label %19, !llvm.loop !307

46:                                               ; preds = %40, %13
  %47 = load ptr, ptr %10, align 8, !tbaa !198
  %48 = getelementptr inbounds ptr, ptr %47, i64 %14
  store ptr null, ptr %48, align 8, !tbaa !105
  %49 = add nuw nsw i64 %14, 1
  %50 = load i32, ptr %6, align 8, !tbaa !299
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %13, label %12, !llvm.loop !308

53:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !94
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = load ptr, ptr %2, align 8, !tbaa !77
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !115
  store ptr null, ptr %3, align 8, !tbaa !98
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !112

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !77
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #16, !prof !309
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !99
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !94
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !77
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #16
  %13 = load ptr, ptr %0, align 8, !tbaa !94
  store ptr %12, ptr %2, align 8, !tbaa !310
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !312
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !99
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = load ptr, ptr %2, align 8, !tbaa !310
  store ptr null, ptr %2, align 8, !tbaa !310
  store ptr %23, ptr %21, align 8, !tbaa !98
  store i32 %5, ptr %3, align 8, !tbaa !99
  %24 = load ptr, ptr %0, align 8, !tbaa !94
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !98
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !105
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !187
  %38 = load ptr, ptr %19, align 8, !tbaa !102
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !201
  %41 = load ptr, ptr %0, align 8, !tbaa !94
  %42 = load ptr, ptr %38, align 8, !tbaa !77
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !105
  store ptr %48, ptr %36, align 8, !tbaa !187
  store ptr %35, ptr %47, align 8, !tbaa !105
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !313

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !99
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !314

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #16
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !312
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !77
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

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

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nosync nounwind memory(none) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!74}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 7}
!37 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, i64 2}
!38 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv, i64 1}
!41 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 1}
!43 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, i64 2}
!45 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!46 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, i64 1}
!47 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, i64 1}
!48 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, i64 1}
!49 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, i64 1}
!50 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, i64 1}
!51 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714NamespaceScopeD1Ev, i64 1}
!52 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev, i64 1}
!53 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv, i64 1}
!54 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!55 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!56 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!57 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, i64 1}
!58 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev, i64 1}
!59 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD0Ev, ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, i64 1}
!60 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!61 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!62 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 2}
!63 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 1}
!64 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, i64 1}
!65 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!66 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 4}
!67 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, i64 1}
!68 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, i64 79}
!69 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, i64 1}
!70 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, i64 1}
!71 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, i64 1}
!72 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, i64 1}
!73 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, i64 1}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!"function_entry_count", i64 1}
!77 = !{!78, !78, i64 0}
!78 = !{!"vtable pointer", !79, i64 0}
!79 = !{!"Simple C++ TBAA"}
!80 = !{!81, !84, i64 104}
!81 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !82, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !86, i64 128, !87, i64 136}
!82 = !{!"_ZTSN11xercesc_2_77GrammarE", !83, i64 0}
!83 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!84 = !{!"any pointer", !85, i64 0}
!85 = !{!"omnipotent char", !79, i64 0}
!86 = !{!"bool", !85, i64 0}
!87 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !83, i64 0, !84, i64 8, !84, i64 16}
!88 = !{!"branch_weights", i32 1, i32 0}
!89 = !{!81, !84, i64 16}
!90 = !{!81, !84, i64 32}
!91 = !{!81, !84, i64 40}
!92 = !{!81, !84, i64 96}
!93 = !{!81, !84, i64 112}
!94 = !{!95, !84, i64 0}
!95 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !84, i64 40}
!96 = !{!"int", !85, i64 0}
!97 = !{!95, !86, i64 8}
!98 = !{!95, !84, i64 16}
!99 = !{!95, !96, i64 24}
!100 = !{!95, !96, i64 28}
!101 = !{!95, !96, i64 32}
!102 = !{!95, !84, i64 40}
!103 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!104 = !{!"branch_weights", i32 1, i32 127}
!105 = !{!84, !84, i64 0}
!106 = !{!"branch_weights", i32 127, i32 3585}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!81, !84, i64 120}
!111 = !{!"VP", i32 0, i64 1, i64 -6779470980900999994, i64 1}
!112 = !{!"branch_weights", i32 0, i32 1}
!113 = !{!81, !84, i64 24}
!114 = !{!81, !84, i64 8}
!115 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!116 = !{!81, !84, i64 48}
!117 = !{!81, !84, i64 56}
!118 = !{!81, !84, i64 64}
!119 = !{!81, !84, i64 72}
!120 = !{!81, !84, i64 80}
!121 = !{!81, !84, i64 88}
!122 = !{!"VP", i32 0, i64 1, i64 -1114428841430657570, i64 1}
!123 = !{!"VP", i32 0, i64 1, i64 -6860874388215645984, i64 1}
!124 = !{!"function_entry_count", i64 5}
!125 = !{!126, !84, i64 0}
!126 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !84, i64 32, !84, i64 40, !96, i64 48, !96, i64 52}
!127 = !{!126, !86, i64 8}
!128 = !{!126, !84, i64 16}
!129 = !{!126, !96, i64 24}
!130 = !{!126, !96, i64 48}
!131 = !{!126, !96, i64 52}
!132 = !{!"branch_weights", i32 5, i32 0}
!133 = !{!126, !84, i64 32}
!134 = !{!"branch_weights", i32 0, i32 5}
!135 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!136 = !{!126, !84, i64 40}
!137 = !{!"function_entry_count", i64 4}
!138 = !{!139, !84, i64 0}
!139 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !84, i64 0, !84, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !96, i64 32}
!140 = !{!139, !96, i64 24}
!141 = !{!139, !96, i64 28}
!142 = !{!139, !96, i64 32}
!143 = !{!"branch_weights", i32 0, i32 4}
!144 = !{!"VP", i32 0, i64 4, i64 8345045103670217670, i64 4}
!145 = !{!139, !84, i64 8}
!146 = !{!"branch_weights", i32 127, i32 13825}
!147 = distinct !{!147, !108, !109}
!148 = !{!139, !84, i64 16}
!149 = !{!150, !84, i64 16}
!150 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !83, i64 0, !84, i64 8, !84, i64 16, !151, i64 24, !96, i64 28, !86, i64 32}
!151 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !85, i64 0}
!152 = !{!153, !84, i64 32}
!153 = !{!"_ZTSN11xercesc_2_75QNameE", !83, i64 0, !96, i64 8, !96, i64 12, !96, i64 16, !96, i64 20, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48}
!154 = !{!150, !96, i64 28}
!155 = !{!86, !86, i64 0}
!156 = !{!"function_entry_count", i64 79}
!157 = !{!"branch_weights", i32 79, i32 0}
!158 = !{i8 0, i8 2}
!159 = !{}
!160 = !{!161, !84, i64 0}
!161 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !84, i64 0, !84, i64 8, !84, i64 16, !96, i64 24, !96, i64 28}
!162 = !{!161, !84, i64 16}
!163 = !{!161, !96, i64 24}
!164 = !{!161, !96, i64 28}
!165 = !{!"VP", i32 0, i64 79, i64 8345045103670217670, i64 79}
!166 = !{!96, !96, i64 0}
!167 = !{!161, !84, i64 8}
!168 = !{!"branch_weights", i32 0, i32 79}
!169 = !{!81, !86, i64 128}
!170 = !{!"function_entry_count", i64 7}
!171 = !{!"branch_weights", i32 1, i32 223}
!172 = !{!"branch_weights", i32 444, i32 79}
!173 = !{!"VP", i32 0, i64 79, i64 -3182483803875353668, i64 79}
!174 = !{!"VP", i32 0, i64 79, i64 -7405368087501025645, i64 79}
!175 = distinct !{!175, !108, !109}
!176 = !{!"branch_weights", i32 16513, i32 223}
!177 = distinct !{!177, !108, !109}
!178 = !{!"branch_weights", i32 1, i32 159}
!179 = !{!180, !84, i64 8}
!180 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEE", !84, i64 0, !84, i64 8}
!181 = !{!180, !84, i64 0}
!182 = distinct !{!182, !108, !109}
!183 = !{!"branch_weights", i32 17281, i32 159}
!184 = distinct !{!184, !108, !109}
!185 = !{!"function_entry_count", i64 2}
!186 = !{!"branch_weights", i32 2, i32 0}
!187 = !{!188, !84, i64 8}
!188 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!189 = !{!188, !84, i64 0}
!190 = distinct !{!190, !108, !109}
!191 = distinct !{!191, !108, !109}
!192 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!193 = !{!"VP", i32 0, i64 5, i64 -5147776714887549805, i64 5}
!194 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!195 = !{!"branch_weights", i32 4, i32 0}
!196 = !{!197, !84, i64 0}
!197 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !84, i64 32}
!198 = !{!197, !84, i64 16}
!199 = !{!197, !84, i64 32}
!200 = !{!"VP", i32 0, i64 1, i64 -5147776714887549805, i64 1}
!201 = !{!188, !84, i64 16}
!202 = distinct !{!202, !108, !109}
!203 = !{!204, !205, i64 0}
!204 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !205, i64 0, !205, i64 2, !84, i64 8, !84, i64 16, !84, i64 24, !206, i64 32, !206, i64 40, !84, i64 48, !84, i64 56, !84, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !96, i64 96}
!205 = !{!"short", !85, i64 0}
!206 = !{!"long", !85, i64 0}
!207 = !{!"function_entry_count", i64 3673500}
!208 = !{!"function_entry_count", i64 579754}
!209 = !{!"function_entry_count", i64 1412839}
!210 = !{!"VP", i32 0, i64 1412839, i64 3024540859536234746, i64 1412839}
!211 = !{!"branch_weights", i32 1, i32 1159830}
!212 = !{!"branch_weights", i32 2435526, i32 0}
!213 = !{!"branch_weights", i32 1030784, i32 1404742}
!214 = !{!"VP", i32 0, i64 730798, i64 -1309333655503989351, i64 730798}
!215 = !{!"branch_weights", i32 832963, i32 197821}
!216 = !{!"branch_weights", i32 1159830, i32 1275696}
!217 = distinct !{!217, !108, !109}
!218 = !{!"branch_weights", i32 579876, i32 832963}
!219 = !{!"VP", i32 0, i64 579876, i64 3024540859536234746, i64 579876}
!220 = !{!"VP", i32 0, i64 299944, i64 -1309333655503989351, i64 299944}
!221 = !{!"branch_weights", i32 579876, i32 0}
!222 = !{!153, !96, i64 20}
!223 = !{!224, !96, i64 52}
!224 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !150, i64 0, !225, i64 36, !226, i64 40, !227, i64 44, !228, i64 48, !96, i64 52, !96, i64 56, !96, i64 60, !96, i64 64, !84, i64 72, !84, i64 80, !84, i64 88, !84, i64 96, !84, i64 104, !84, i64 112, !84, i64 120, !84, i64 128, !84, i64 136, !86, i64 144, !86, i64 145, !86, i64 146}
!225 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !85, i64 0}
!226 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !85, i64 0}
!227 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !85, i64 0}
!228 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !85, i64 0}
!229 = !{!"function_entry_count", i64 3}
!230 = !{!"VP", i32 0, i64 79, i64 3024540859536234746, i64 79}
!231 = !{!"VP", i32 0, i64 40, i64 -1309333655503989351, i64 40}
!232 = !{!233, !84, i64 40}
!233 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !234, i64 8, !84, i64 16, !96, i64 24, !84, i64 32, !84, i64 40}
!234 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !85, i64 0}
!235 = !{!205, !205, i64 0}
!236 = distinct !{!236, !108, !109}
!237 = !{!238, !84, i64 16}
!238 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !83, i64 0, !96, i64 8, !96, i64 12, !84, i64 16, !84, i64 24, !84, i64 32, !84, i64 40, !84, i64 48}
!239 = distinct !{!239, !108, !109}
!240 = distinct !{!240, !108, !109}
!241 = !{!238, !96, i64 8}
!242 = !{!"branch_weights", i32 159, i32 9601}
!243 = distinct !{!243, !108, !109}
!244 = !{!245, !84, i64 0}
!245 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !84, i64 40}
!246 = !{!245, !84, i64 16}
!247 = !{!245, !84, i64 40}
!248 = !{!245, !96, i64 32}
!249 = !{!245, !96, i64 24}
!250 = !{!251, !84, i64 8}
!251 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!252 = !{!245, !86, i64 8}
!253 = !{!251, !84, i64 0}
!254 = distinct !{!254, !108, !109}
!255 = distinct !{!255, !108, !109}
!256 = !{!257, !84, i64 0}
!257 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !84, i64 40}
!258 = !{!257, !84, i64 16}
!259 = !{!257, !84, i64 40}
!260 = !{!257, !96, i64 32}
!261 = !{!257, !96, i64 24}
!262 = !{!"branch_weights", i32 28, i32 30}
!263 = !{!264, !84, i64 8}
!264 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15ComplexTypeInfoEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!265 = !{!257, !86, i64 8}
!266 = !{!"branch_weights", i32 0, i32 30}
!267 = !{!264, !84, i64 0}
!268 = !{!"VP", i32 0, i64 30, i64 -6901729892270534874, i64 30}
!269 = !{!"VP", i32 0, i64 30, i64 -7405368087501025645, i64 30}
!270 = !{!"branch_weights", i32 30, i32 0}
!271 = distinct !{!271, !108, !109}
!272 = !{!"branch_weights", i32 7297, i32 127}
!273 = distinct !{!273, !108, !109}
!274 = !{!275, !84, i64 0}
!275 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !84, i64 40}
!276 = !{!275, !84, i64 16}
!277 = !{!275, !84, i64 40}
!278 = !{!275, !96, i64 32}
!279 = !{!275, !96, i64 24}
!280 = !{!281, !84, i64 8}
!281 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XercesGroupInfoEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!282 = !{!275, !86, i64 8}
!283 = !{!281, !84, i64 0}
!284 = distinct !{!284, !108, !109}
!285 = distinct !{!285, !108, !109}
!286 = !{!287, !84, i64 0}
!287 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEEE", !84, i64 0, !86, i64 8, !84, i64 16, !96, i64 24, !96, i64 28, !96, i64 32, !84, i64 40}
!288 = !{!287, !84, i64 16}
!289 = !{!287, !84, i64 40}
!290 = !{!287, !96, i64 32}
!291 = !{!287, !96, i64 24}
!292 = !{!293, !84, i64 8}
!293 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_18XercesAttGroupInfoEEE", !84, i64 0, !84, i64 8, !84, i64 16}
!294 = !{!287, !86, i64 8}
!295 = !{!293, !84, i64 0}
!296 = distinct !{!296, !108, !109}
!297 = distinct !{!297, !108, !109}
!298 = !{!197, !96, i64 28}
!299 = !{!197, !96, i64 24}
!300 = !{!301, !84, i64 8}
!301 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !84, i64 0, !84, i64 8, !84, i64 16, !96, i64 24}
!302 = !{!197, !86, i64 8}
!303 = !{!301, !84, i64 0}
!304 = !{!305, !84, i64 24}
!305 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !86, i64 0, !96, i64 4, !96, i64 8, !84, i64 16, !84, i64 24}
!306 = !{!305, !84, i64 16}
!307 = distinct !{!307, !108, !109}
!308 = distinct !{!308, !108, !109}
!309 = !{!"VP", i32 0, i64 1, i64 -1480571424701097013, i64 1}
!310 = !{!311, !84, i64 0}
!311 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEE", !84, i64 0, !84, i64 8}
!312 = !{!311, !84, i64 8}
!313 = distinct !{!313, !108, !109}
!314 = distinct !{!314, !108, !109}
