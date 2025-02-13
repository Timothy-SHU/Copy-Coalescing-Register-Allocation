; ModuleID = 'SchemaGrammar.cpp'
source_filename = "SchemaGrammar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::SchemaGrammar" = type { %"class.xercesc_2_7::Grammar", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::DatatypeValidatorFactory" }
%"class.xercesc_2_7::Grammar" = type { %"class.xercesc_2_7::XSerializable" }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DatatypeValidatorFactory" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::NameIdPool" = type <{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"struct.xercesc_2_7::NameIdPoolBucketElem" = type { ptr, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
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
%"class.xercesc_2_7::XMLNotationDecl" = type { %"class.xercesc_2_7::XSerializable", i32, i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>

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

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_77GrammarC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv = comdat any

$_ZN11xercesc_2_714XMLElementDecl5setIdEj = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_ = comdat any

$_ZN11xercesc_2_75QName12getLocalPartEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv = comdat any

$_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv = comdat any

$_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEC2EPvPS1_PS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEC2EPS4_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE5resetEPS4_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii = comdat any

$_ZNK11xercesc_2_714XMLElementDecl5getIdEv = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj = comdat any

$_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv = comdat any

$_ZNK11xercesc_2_714XMLElementDecl6getURIEv = comdat any

$_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv = comdat any

$_ZNK11xercesc_2_75QName6getURIEv = comdat any

$_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_ = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_ = comdat any

$_ZN11xercesc_2_715XMLNotationDecl5setIdEj = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_713SchemaGrammarE = dso_local unnamed_addr constant { [25 x ptr] } { [25 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713SchemaGrammarE, ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713SchemaGrammarD0Ev, ptr @_ZNK11xercesc_2_713SchemaGrammar14isSerializableEv, ptr @_ZN11xercesc_2_713SchemaGrammar9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_713SchemaGrammar12getProtoTypeEv, ptr @_ZNK11xercesc_2_713SchemaGrammar14getGrammarTypeEv, ptr @_ZNK11xercesc_2_713SchemaGrammar18getTargetNamespaceEv, ptr @_ZNK11xercesc_2_713SchemaGrammar12getValidatedEv, ptr @_ZN11xercesc_2_713SchemaGrammar17findOrAddElemDeclEjPKtS2_S2_jRb, ptr @_ZNK11xercesc_2_713SchemaGrammar9getElemIdEjPKtS2_j, ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j, ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEj, ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEj, ptr @_ZNK11xercesc_2_713SchemaGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_713SchemaGrammar15getNotationDeclEPKt, ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEjPKtS2_S2_jb, ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_713SchemaGrammar15putNotationDeclEPNS_15XMLNotationDeclE, ptr @_ZN11xercesc_2_713SchemaGrammar12setValidatedEb, ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_713SchemaGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE, ptr @_ZNK11xercesc_2_713SchemaGrammar21getGrammarDescriptionEv] }, align 8
@_ZTSN11xercesc_2_713SchemaGrammarE = dso_local constant [31 x i8] c"N11xercesc_2_713SchemaGrammarE\00", align 1
@_ZTIN11xercesc_2_77GrammarE = external constant ptr
@_ZTIN11xercesc_2_713SchemaGrammarE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713SchemaGrammarE, ptr @_ZTIN11xercesc_2_77GrammarE }, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_77GrammarE = external unnamed_addr constant { [25 x ptr] }, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [36 x i8] c"./xercesc/util/RefHash3KeysIdPool.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [28 x i8] c"./xercesc/util/NameIdPool.c\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZN11xercesc_2_713SchemaGrammar18classSchemaGrammarE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.3, ptr @_ZN11xercesc_2_713SchemaGrammar12createObjectEPNS_13MemoryManagerE }, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"SchemaGrammar\00", align 1
@_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE = external local_unnamed_addr constant i32, align 4

@_ZN11xercesc_2_713SchemaGrammarC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_713SchemaGrammarD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarD0Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_713SchemaGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_713SchemaGrammar14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !111 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !111 {
  tail call void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactory9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  br i1 %3, label %6, label %30

6:                                                ; preds = %2
  %7 = load ptr, ptr %5, align 8, !tbaa !112
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %7, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !123
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9XMLAttDefEEERNS_16XSerializeEngineE(ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !124
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15ComplexTypeInfoEEERNS_16XSerializeEngineE(ptr noundef %15, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !125
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15XercesGroupInfoEEERNS_16XSerializeEngineE(ptr noundef %17, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %18 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !126
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEERNS_16XSerializeEngineE(ptr noundef %19, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEERNS_16XSerializeEngineE(ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  tail call void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12XSAnnotationEEERNS_16XSerializeEngineE(ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %25, i32 noundef 0, i1 noundef zeroext false) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %27 = load i8, ptr %26, align 8, !tbaa !130, !range !131, !noundef !132
  %28 = icmp ne i8 %27, 0
  %29 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100) %1, i1 noundef zeroext %28) #13
  br label %42

30:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef nonnull %5, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %31 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef nonnull %31, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %32 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef nonnull %32, i32 noundef 109, i32 noundef 128, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %33 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9XMLAttDefEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %33, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15ComplexTypeInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %34, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15XercesGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %35, i32 noundef 13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %36 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %36, i32 noundef 13, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %37 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %37, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %38 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  tail call void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12XSAnnotationEEEibRNS_16XSerializeEngineE(ptr noundef nonnull %38, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %39) #13
  %40 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %41 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 1 dereferenceable(1) %40) #13
  br label %42

42:                                               ; preds = %30, %6
  %43 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !133
  %45 = load ptr, ptr %44, align 8, !tbaa !134
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull align 8 dereferenceable(100) %1) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_713SchemaGrammar12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !111 {
  ret ptr @_ZN11xercesc_2_713SchemaGrammar18classSchemaGrammarE
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar14getGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 !prof !136 {
  ret i32 1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar18getTargetNamespaceEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 !prof !137 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_713SchemaGrammar12getValidatedEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 8, !tbaa !130, !range !131, !noundef !132
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar17findOrAddElemDeclEjPKtS2_S2_jRb(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %8 = load ptr, ptr %0, align 8, !tbaa !134
  %9 = getelementptr inbounds ptr, ptr %8, i64 11
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %4, i32 noundef %5) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %15 = load ptr, ptr %14, align 8, !tbaa !139
  %16 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %15) #13
  %17 = load ptr, ptr %14, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %16, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef 1, i32 noundef -2, ptr noundef %17) #13
          to label %18 unwind label %27

18:                                               ; preds = %13
  %19 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !140
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !139
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %23) #13
  %25 = load ptr, ptr %14, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %24, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %25) #13
          to label %26 unwind label %29

26:                                               ; preds = %22
  store ptr %24, ptr %19, align 8, !tbaa !140
  br label %31

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %15) #12
  br label %38

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #12
  br label %38

31:                                               ; preds = %26, %18
  %32 = phi ptr [ %24, %26 ], [ %20, %18 ]
  %33 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %16) #13
  %34 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef %33, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %16) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %16, i32 noundef %34) #13
  br label %35

35:                                               ; preds = %7, %31
  %36 = phi i8 [ 1, %31 ], [ 0, %7 ]
  %37 = phi ptr [ %16, %31 ], [ %11, %7 ]
  store i8 %36, ptr %6, align 1, !tbaa !141
  ret ptr %37

38:                                               ; preds = %29, %27
  %39 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar9getElemIdEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 comdat align 2 !prof !111 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, ptr @_ZN11xercesc_2_714XMLElementDecl15fgInvalidElemIdE, align 4, !tbaa !142
  br label %20

17:                                               ; preds = %10, %5
  %18 = phi ptr [ %8, %5 ], [ %13, %10 ]
  %19 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %18) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %19, %17 ], [ %16, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 comdat align 2 !prof !111 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  br label %21

21:                                               ; preds = %10, %15, %19, %5
  %22 = phi ptr [ %8, %5 ], [ %13, %10 ], [ %20, %19 ], [ null, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #2 comdat align 2 !prof !144 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %21, !prof !145

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  %13 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %21, !prof !146

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !140
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !146

19:                                               ; preds = %15
  %20 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %17, ptr noundef %2, i32 noundef %1, i32 noundef %4) #13
  br label %21

21:                                               ; preds = %10, %15, %19, %5
  %22 = phi ptr [ %8, %5 ], [ %13, %10 ], [ %20, %19 ], [ null, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %1) #13
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEj(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  %5 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef %1) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  %10 = tail call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %9, i32 noundef %1) #13
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %5, %2 ], [ %10, %7 ]
  ret ptr %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar15getNotationDeclEPKt(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = tail call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEjPKtS2_S2_jb(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture readnone %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !139
  %10 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %9) #13
  %11 = load ptr, ptr %8, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %10, ptr noundef %3, ptr noundef %2, i32 noundef %1, i32 noundef 1, i32 noundef -2, ptr noundef %11) #13
          to label %12 unwind label %22

12:                                               ; preds = %7
  br i1 %6, label %13, label %26

13:                                               ; preds = %12
  %14 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !140
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  %18 = load ptr, ptr %8, align 8, !tbaa !139
  %19 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %18) #13
  %20 = load ptr, ptr %8, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %19, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %20) #13
          to label %21 unwind label %24

21:                                               ; preds = %17
  store ptr %19, ptr %14, align 8, !tbaa !140
  br label %29

22:                                               ; preds = %7
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %10, ptr noundef %9) #12
  br label %33

24:                                               ; preds = %17
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %19, ptr noundef %18) #12
  br label %33

26:                                               ; preds = %12
  %27 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !112
  br label %29

29:                                               ; preds = %13, %21, %26
  %30 = phi ptr [ %28, %26 ], [ %19, %21 ], [ %15, %13 ]
  %31 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %10) #13
  %32 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %30, ptr noundef %31, i32 noundef %1, i32 noundef %5, ptr noundef nonnull %10) #13
  tail call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %10, i32 noundef %32) #13
  ret ptr %10

33:                                               ; preds = %24, %22
  %34 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  resume { ptr, i32 } %34
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !147 {
  br i1 %2, label %4, label %16, !prof !148

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !140
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %10 = load ptr, ptr %9, align 8, !tbaa !139
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %10) #13
  %12 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %11, i32 noundef 29, i1 noundef zeroext true, i32 noundef 128, ptr noundef %12) #13
          to label %13 unwind label %14

13:                                               ; preds = %8
  store ptr %11, ptr %5, align 8, !tbaa !140
  br label %19

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #12
  resume { ptr, i32 } %15

16:                                               ; preds = %3
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  br label %19

19:                                               ; preds = %4, %13, %16
  %20 = phi ptr [ %18, %16 ], [ %11, %13 ], [ %6, %4 ]
  %21 = tail call noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  %22 = tail call noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %1) #13
  %23 = tail call noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %1) #13
  %24 = tail call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %20, ptr noundef %21, i32 noundef %22, i32 noundef %23, ptr noundef nonnull %1) #13
  ret i32 %24
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_713SchemaGrammar15putNotationDeclEPNS_15XMLNotationDeclE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = tail call noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1) #13
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713SchemaGrammar12setValidatedEb(ptr noundef nonnull align 8 dereferenceable(160) %0, i1 noundef zeroext %1) unnamed_addr #0 comdat align 2 !prof !138 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #2 align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !140
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !149

7:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %5) #13
  br label %8

8:                                                ; preds = %7, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %10) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %12) #13
  %13 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !128
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %14) #13
  %15 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 16
  store i8 0, ptr %15, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar21setGrammarDescriptionEPNS_21XMLGrammarDescriptionE(ptr nocapture noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !111 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %19, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(16) %1) #13
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %19

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !134
  %16 = getelementptr inbounds ptr, ptr %15, i64 1
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #12
  br label %18

18:                                               ; preds = %14, %10
  store ptr %1, ptr %11, align 8, !tbaa !133
  br label %19

19:                                               ; preds = %2, %4, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713SchemaGrammar21getGrammarDescriptionEv(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 comdat align 2 !prof !150 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  ret ptr %3
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #14
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_713SchemaGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !139
  %10 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %11 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %10, i8 0, i64 17, i1 false)
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef %1) #13
          to label %13 unwind label %52

13:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv to i64), i64 0) #13
  %14 = load ptr, ptr %9, align 8, !tbaa !139
  %15 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %14) #13
          to label %16 unwind label %56

16:                                               ; preds = %13
  %17 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %15, i32 noundef 109, i1 noundef zeroext true, i32 noundef 128, ptr noundef %17) #13
          to label %18 unwind label %60

18:                                               ; preds = %16
  store ptr %15, ptr %5, align 8, !tbaa !112
  %19 = load ptr, ptr %9, align 8, !tbaa !139
  %20 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %19) #13
          to label %21 unwind label %64

21:                                               ; preds = %18
  %22 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %20, i32 noundef 109, i1 noundef zeroext false, i32 noundef 128, ptr noundef %22) #13
          to label %23 unwind label %66

23:                                               ; preds = %21
  store ptr %20, ptr %6, align 8, !tbaa !121
  %24 = load ptr, ptr %9, align 8, !tbaa !139
  %25 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %24) #13
          to label %26 unwind label %64

26:                                               ; preds = %23
  %27 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %25, i32 noundef 109, i32 noundef 128, ptr noundef %27) #13
          to label %28 unwind label %68

28:                                               ; preds = %26
  store ptr %25, ptr %7, align 8, !tbaa !122
  %29 = load ptr, ptr %9, align 8, !tbaa !139
  %30 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %29) #13
          to label %31 unwind label %64

31:                                               ; preds = %28
  %32 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %30, ptr noundef %32) #13
          to label %33 unwind label %70

33:                                               ; preds = %31
  store ptr %30, ptr %8, align 8, !tbaa !151
  invoke void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24) %12) #13
          to label %34 unwind label %64

34:                                               ; preds = %33
  %35 = load ptr, ptr %9, align 8, !tbaa !139
  %36 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %35) #13
          to label %37 unwind label %64

37:                                               ; preds = %34
  %38 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %36, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni14fgXMLNSURINameE, ptr noundef %38) #13
          to label %39 unwind label %72

39:                                               ; preds = %37
  store ptr %36, ptr %10, align 8, !tbaa !133
  %40 = load ptr, ptr %9, align 8, !tbaa !139
  %41 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %40) #13
          to label %42 unwind label %64

42:                                               ; preds = %39
  %43 = load ptr, ptr %9, align 8, !tbaa !139
  %44 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %43) #13
          to label %45 unwind label %74

45:                                               ; preds = %42
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %44) #13
          to label %46 unwind label %76

46:                                               ; preds = %45
  %47 = load ptr, ptr %9, align 8, !tbaa !139
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %41, i32 noundef 29, i1 noundef zeroext true, ptr noundef nonnull %44, ptr noundef %47) #13
          to label %48 unwind label %74

48:                                               ; preds = %46
  store ptr %41, ptr %11, align 8, !tbaa !128
  %49 = load ptr, ptr %0, align 8, !tbaa !134
  %50 = getelementptr inbounds ptr, ptr %49, i64 20
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(160) %0) #13
          to label %93 unwind label %64

52:                                               ; preds = %2
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = extractvalue { ptr, i32 } %53, 0
  %55 = extractvalue { ptr, i32 } %53, 1
  br label %97

56:                                               ; preds = %13
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %57, 0
  %59 = extractvalue { ptr, i32 } %57, 1
  br label %94

60:                                               ; preds = %16
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = extractvalue { ptr, i32 } %61, 0
  %63 = extractvalue { ptr, i32 } %61, 1
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %14) #12
  br label %94

64:                                               ; preds = %48, %39, %34, %33, %28, %23, %18
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %80

66:                                               ; preds = %21
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %20, ptr noundef %19) #12
  br label %80

68:                                               ; preds = %26
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #12
  br label %80

70:                                               ; preds = %31
  %71 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %30, ptr noundef %29) #12
  br label %80

72:                                               ; preds = %37
  %73 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %36, ptr noundef %35) #12
  br label %80

74:                                               ; preds = %46, %42
  %75 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  br label %78

76:                                               ; preds = %45
  %77 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %44, ptr noundef %43) #12
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi { ptr, i32 } [ %75, %74 ], [ %77, %76 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %41, ptr noundef %40) #12
  br label %80

80:                                               ; preds = %78, %72, %70, %68, %66, %64
  %81 = phi { ptr, i32 } [ %65, %64 ], [ %79, %78 ], [ %73, %72 ], [ %71, %70 ], [ %69, %68 ], [ %67, %66 ]
  %82 = extractvalue { ptr, i32 } %81, 0
  %83 = extractvalue { ptr, i32 } %81, 1
  %84 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #14
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = call ptr @__cxa_begin_catch(ptr %82) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  invoke void @__cxa_rethrow() #16
          to label %105 unwind label %88

88:                                               ; preds = %86
  %89 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %90 unwind label %102

90:                                               ; preds = %88
  %91 = extractvalue { ptr, i32 } %89, 1
  %92 = extractvalue { ptr, i32 } %89, 0
  br label %94

93:                                               ; preds = %48
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  ret void

94:                                               ; preds = %90, %80, %60, %56
  %95 = phi i32 [ %91, %90 ], [ %83, %80 ], [ %63, %60 ], [ %59, %56 ]
  %96 = phi ptr [ %92, %90 ], [ %82, %80 ], [ %62, %60 ], [ %58, %56 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #12
  br label %97

97:                                               ; preds = %94, %52
  %98 = phi i32 [ %95, %94 ], [ %55, %52 ]
  %99 = phi ptr [ %96, %94 ], [ %54, %52 ]
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  %100 = insertvalue { ptr, i32 } poison, ptr %99, 0
  %101 = insertvalue { ptr, i32 } %100, i32 %98, 1
  resume { ptr, i32 } %101

102:                                              ; preds = %88
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #15
  unreachable

105:                                              ; preds = %86
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77GrammarC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_77GrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0) #2 align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %3) #12
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !140
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !149

10:                                               ; preds = %6
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %8) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %13) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %13) #12
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !122
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %18) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %18) #12
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !139
  %24 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !129
  %26 = load ptr, ptr %23, align 8, !tbaa !134
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %25) #13
  %29 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !123
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %30) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %30) #12
  br label %33

33:                                               ; preds = %32, %21
  %34 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %35) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %35) #12
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !125
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %40) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %40) #12
  br label %43

43:                                               ; preds = %42, %38
  %44 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !126
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %45) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %45) #12
  br label %48

48:                                               ; preds = %47, %43
  %49 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !153
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @_ZN11xercesc_2_714NamespaceScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %50) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %50) #12
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !127
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %55) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %55) #12
  br label %58

58:                                               ; preds = %57, %53
  %59 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !151
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %60, align 8, !tbaa !134
  %64 = getelementptr inbounds ptr, ptr %63, i64 1
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(16) %60) #12
  br label %66

66:                                               ; preds = %62, %58
  %67 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 14
  %68 = load ptr, ptr %67, align 8, !tbaa !133
  %69 = icmp eq ptr %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !134
  %72 = getelementptr inbounds ptr, ptr %71, i64 1
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(16) %68) #12
  br label %74

74:                                               ; preds = %70, %66
  %75 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %76 = load ptr, ptr %75, align 8, !tbaa !128
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %76) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %76) #12
  br label %79

79:                                               ; preds = %78, %74
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !138 {
  store ptr %1, ptr %0, align 8, !tbaa !154
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !156
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !156
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !158
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !160
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !161
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !162
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store i32 %3, ptr %11, align 8, !tbaa !163
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %12, align 4, !tbaa !164
  tail call void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !158
  %14 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13) #13
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
          to label %15 unwind label %19

15:                                               ; preds = %5
  store ptr %14, ptr %10, align 8, !tbaa !165
  %16 = load i32, ptr %11, align 8, !tbaa !163
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21, !prof !166

18:                                               ; preds = %15
  store i32 256, ptr %11, align 8, !tbaa !163
  br label %21

19:                                               ; preds = %5
  %20 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #12
  resume { ptr, i32 } %20

21:                                               ; preds = %18, %15
  %22 = phi i32 [ 256, %18 ], [ %16, %15 ]
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %0, align 8, !tbaa !158
  %25 = zext i32 %22 to i64
  %26 = shl nuw nsw i64 %25, 3
  %27 = load ptr, ptr %24, align 8, !tbaa !134
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef %26) #13
  store ptr %30, ptr %23, align 8, !tbaa !167
  store ptr null, ptr %30, align 8, !tbaa !168
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %3, ptr %0, align 8, !tbaa !169
  %5 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store i32 %2, ptr %6, align 8, !tbaa !171
  %7 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %7, align 4, !tbaa !172
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  store i32 %1, ptr %8, align 8, !tbaa !173
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !174

10:                                               ; preds = %4
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str.1, i32 noundef 69, i32 noundef 68, ptr noundef %12) #13
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
  %19 = load ptr, ptr %3, align 8, !tbaa !134
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %18) #13
  store ptr %22, ptr %5, align 8, !tbaa !175
  %23 = load i32, ptr %8, align 8, !tbaa !173
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25, !prof !176

25:                                               ; preds = %16
  %26 = zext i32 %23 to i64
  br label %30

27:                                               ; preds = %30, %16
  %28 = load i32, ptr %6, align 8, !tbaa !171
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %37, !prof !174

30:                                               ; preds = %25, %30
  %31 = phi i64 [ 0, %25 ], [ %34, %30 ]
  %32 = load ptr, ptr %5, align 8, !tbaa !175
  %33 = getelementptr inbounds ptr, ptr %32, i64 %31
  store ptr null, ptr %33, align 8, !tbaa !168
  %34 = add nuw nsw i64 %31, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %27, label %30, !prof !177, !llvm.loop !178

36:                                               ; preds = %27
  store i32 256, ptr %6, align 8, !tbaa !171
  br label %37

37:                                               ; preds = %36, %27
  %38 = phi i32 [ 256, %36 ], [ %28, %27 ]
  %39 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %0, align 8, !tbaa !169
  %41 = zext i32 %38 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = load ptr, ptr %40, align 8, !tbaa !134
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %42) #13
  store ptr %46, ptr %39, align 8, !tbaa !180
  store ptr null, ptr %46, align 8, !tbaa !168
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 !prof !138 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %4, ptr %0, align 8, !tbaa !181
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !183
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !184
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !185
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !186
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !187
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !188
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #13
  store ptr %3, ptr %12, align 8, !tbaa !188
  ret void
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !149

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !156
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !156
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !134
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !132
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(160) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !189 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !190 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !191 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !166

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !158
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !158
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !162
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !134
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !161
  %21 = load i32, ptr %12, align 8, !tbaa !162
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !192

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !161
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !168
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !193, !llvm.loop !194
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !111 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !195
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !111 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !198

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %6 = load ptr, ptr %0, align 8, !tbaa !181
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6) #13
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #14
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !181
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !185
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !134
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !184
  %21 = load i32, ptr %12, align 8, !tbaa !185
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !199

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !184
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !168
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !200, !llvm.loop !201
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammarD2Ev(ptr noundef nonnull align 8 dereferenceable(160) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  store ptr getelementptr inbounds ({ [25 x ptr] }, ptr @_ZTVN11xercesc_2_713SchemaGrammarE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
  invoke void @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(160) %0) #13
          to label %2 unwind label %4

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 17
  tail call void @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #12
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  ret void

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #15
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat align 2 !prof !147 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !202

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !160, !range !131, !noundef !132
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !203
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !134
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #12
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !203
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !205
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !206
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !207
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !158
  %26 = load ptr, ptr %25, align 8, !tbaa !134
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32) #13
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !161
  %32 = load i32, ptr %6, align 4, !tbaa !142
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !168
  call void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %35) #13
  %36 = load ptr, ptr %30, align 8, !tbaa !161
  %37 = load i32, ptr %6, align 4, !tbaa !142
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  store ptr %29, ptr %39, align 8, !tbaa !168
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !164
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !163
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %50, label %47, !prof !148

47:                                               ; preds = %40
  %48 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !167
  br label %73

50:                                               ; preds = %40
  %51 = uitofp i32 %43 to double
  %52 = fmul double %51, 1.500000e+00
  %53 = fptoui double %52 to i32
  %54 = load ptr, ptr %0, align 8, !tbaa !158
  %55 = zext i32 %53 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = load ptr, ptr %54, align 8, !tbaa !134
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %54, i64 noundef %56) #13
  %61 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %62 = load ptr, ptr %61, align 8, !tbaa !167
  %63 = load i32, ptr %44, align 8, !tbaa !163
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %60, ptr align 8 %62, i64 %65, i1 false)
  %66 = load ptr, ptr %0, align 8, !tbaa !158
  %67 = load ptr, ptr %61, align 8, !tbaa !167
  %68 = load ptr, ptr %66, align 8, !tbaa !134
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  call void %70(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %67) #13
  store ptr %60, ptr %61, align 8, !tbaa !167
  store i32 %53, ptr %44, align 8, !tbaa !163
  %71 = load i32, ptr %41, align 4, !tbaa !164
  %72 = add i32 %71, 1
  br label %73

73:                                               ; preds = %47, %50
  %74 = phi i32 [ %43, %47 ], [ %72, %50 ]
  %75 = phi ptr [ %49, %47 ], [ %60, %50 ]
  store i32 %74, ptr %41, align 4, !tbaa !164
  %76 = zext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %4, ptr %77, align 8, !tbaa !168
  call void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %4, i32 noundef %74) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  ret i32 %74
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !208 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = tail call noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714XMLElementDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(33) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !212 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  store i32 %1, ptr %3, align 4, !tbaa !213
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #2 comdat align 2 !prof !214 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !162
  %10 = load ptr, ptr %0, align 8, !tbaa !158
  %11 = load ptr, ptr %7, align 8, !tbaa !134
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10) #13
  store i32 %13, ptr %4, align 4, !tbaa !142
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !215

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !206
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !216

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !207
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !217

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !165
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !205
  %33 = load ptr, ptr %30, align 8, !tbaa !134
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32) #13
  br i1 %36, label %41, label %37, !prof !218

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !168
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !219, !llvm.loop !220

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ null, %37 ], [ %21, %29 ]
  ret ptr %42
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 !prof !147 {
  store ptr %4, ptr %0, align 8, !tbaa !203
  %7 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %5, ptr %7, align 8, !tbaa !221
  %8 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !205
  %9 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 3
  store i32 %2, ptr %9, align 8, !tbaa !206
  %10 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %0, i64 0, i32 4
  store i32 %3, ptr %10, align 4, !tbaa !207
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_75QName12getLocalPartEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !222 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !223
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #2 comdat align 2 !prof !225 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !162
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !199

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  br label %10

8:                                                ; preds = %39, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  store i32 0, ptr %9, align 4, !tbaa !164
  ret void

10:                                               ; preds = %5, %39
  %11 = phi i32 [ %3, %5 ], [ %40, %39 ]
  %12 = phi i64 [ 0, %5 ], [ %43, %39 ]
  %13 = load ptr, ptr %6, align 8, !tbaa !161
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !168
  %16 = icmp eq ptr %15, null
  br i1 %16, label %39, label %17, !prof !226

17:                                               ; preds = %10, %30
  %18 = phi ptr [ %20, %30 ], [ %15, %10 ]
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !221
  %21 = load i8, ptr %7, align 8, !tbaa !160, !range !131, !noundef !132
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23, !prof !148

23:                                               ; preds = %17
  %24 = load ptr, ptr %18, align 8, !tbaa !203
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr %24, align 8, !tbaa !134
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(147) %24) #12
  br label %30

30:                                               ; preds = %23, %26, %17
  %31 = load ptr, ptr %0, align 8, !tbaa !158
  %32 = load ptr, ptr %31, align 8, !tbaa !134
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull %18) #13
  %35 = icmp eq ptr %20, null
  br i1 %35, label %36, label %17, !prof !227, !llvm.loop !228

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !tbaa !161
  %38 = load i32, ptr %2, align 8, !tbaa !162
  br label %39

39:                                               ; preds = %36, %10
  %40 = phi i32 [ %38, %36 ], [ %11, %10 ]
  %41 = phi ptr [ %37, %36 ], [ %13, %10 ]
  %42 = getelementptr inbounds ptr, ptr %41, i64 %12
  store ptr null, ptr %42, align 8, !tbaa !168
  %43 = add nuw nsw i64 %12, 1
  %44 = zext i32 %40 to i64
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %10, label %8, !prof !229, !llvm.loop !230
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #2 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !173
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !192

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  br label %9

7:                                                ; preds = %35, %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  store i32 0, ptr %8, align 4, !tbaa !172
  ret void

9:                                                ; preds = %5, %35
  %10 = phi i32 [ %3, %5 ], [ %36, %35 ]
  %11 = phi i64 [ 0, %5 ], [ %39, %35 ]
  %12 = load ptr, ptr %6, align 8, !tbaa !175
  %13 = getelementptr inbounds ptr, ptr %12, i64 %11
  %14 = load ptr, ptr %13, align 8, !tbaa !168
  %15 = icmp eq ptr %14, null
  br i1 %15, label %35, label %16, !prof !231

16:                                               ; preds = %9, %26
  %17 = phi ptr [ %19, %26 ], [ %14, %9 ]
  %18 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !232
  %20 = load ptr, ptr %17, align 8, !tbaa !234
  %21 = icmp eq ptr %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = load ptr, ptr %20, align 8, !tbaa !134
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(56) %20) #12
  br label %26

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %0, align 8, !tbaa !169
  %28 = load ptr, ptr %27, align 8, !tbaa !134
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %17) #13
  %31 = icmp eq ptr %19, null
  br i1 %31, label %32, label %16, !prof !235, !llvm.loop !236

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !tbaa !175
  %34 = load i32, ptr %2, align 8, !tbaa !173
  br label %35

35:                                               ; preds = %32, %9
  %36 = phi i32 [ %34, %32 ], [ %10, %9 ]
  %37 = phi ptr [ %33, %32 ], [ %12, %9 ]
  %38 = getelementptr inbounds ptr, ptr %37, i64 %11
  store ptr null, ptr %38, align 8, !tbaa !168
  %39 = add nuw nsw i64 %11, 1
  %40 = zext i32 %36 to i64
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %9, label %7, !prof !237, !llvm.loop !238
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !239 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !240

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !185
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !187
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !184
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !241
  %23 = load i8, ptr %9, align 8, !tbaa !183, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !243
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !134
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(80) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !181
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !244

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !184
  %40 = load i32, ptr %4, align 8, !tbaa !185
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !168
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !245

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !239 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !187
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  invoke void @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #13
          to label %2 unwind label %25

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !158
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = load ptr, ptr %3, align 8, !tbaa !134
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %25

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !158
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = load ptr, ptr %10, align 8, !tbaa !134
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #13
          to label %16 unwind label %25

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !165
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %18, align 8, !tbaa !134
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(8) %18) #12
  br label %24

24:                                               ; preds = %20, %16
  ret void

25:                                               ; preds = %9, %2, %1
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !152 {
  %2 = load ptr, ptr %0, align 8, !tbaa !169
  %3 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !180
  %5 = load ptr, ptr %2, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
          to label %8 unwind label %17

8:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #13
          to label %9 unwind label %17

9:                                                ; preds = %8
  %10 = load ptr, ptr %0, align 8, !tbaa !169
  %11 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !175
  %13 = load ptr, ptr %10, align 8, !tbaa !134
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
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_714NamespaceScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  invoke void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
          to label %2 unwind label %18

2:                                                ; preds = %1
  %3 = load ptr, ptr %0, align 8, !tbaa !246
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !248
  %6 = load ptr, ptr %3, align 8, !tbaa !134
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !249
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !134
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %11) #12
  br label %17

17:                                               ; preds = %13, %9
  ret void

18:                                               ; preds = %2, %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #15
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !250
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !252
  %5 = load ptr, ptr %2, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !252
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !253
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !134
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !149

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !254
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !255
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !252
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.4", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !256
  %23 = load i8, ptr %9, align 8, !tbaa !258, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !259
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !134
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !250
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !260

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !252
  %40 = load i32, ptr %4, align 8, !tbaa !254
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !168
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !261

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.0", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !255
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !262
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  %5 = load ptr, ptr %2, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !264
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !265
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !134
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !198

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !266
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7, !prof !199

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !267
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !264
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19, !prof !268

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.5", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !269
  %23 = load i8, ptr %9, align 8, !tbaa !271, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !272

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !273
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !134
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(176) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !262
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !274, !llvm.loop !275

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !264
  %40 = load i32, ptr %4, align 8, !tbaa !266
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !168
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !prof !276, !llvm.loop !277

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.1", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !267
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !278
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !280
  %5 = load ptr, ptr %2, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !280
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !281
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !134
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !149

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !282
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !283
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !280
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.6", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !284
  %23 = load i8, ptr %9, align 8, !tbaa !286, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !287
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !134
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !278
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !288

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !280
  %40 = load i32, ptr %4, align 8, !tbaa !282
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !168
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !289

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.2", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !283
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !290
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !292
  %5 = load ptr, ptr %2, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !292
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !293
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !134
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %2, label %48, label %3, !prof !149

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !294
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %41, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !295
  br label %48

12:                                               ; preds = %7, %41
  %13 = phi i32 [ %5, %7 ], [ %42, %41 ]
  %14 = phi i64 [ 0, %7 ], [ %45, %41 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !292
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %12, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem.7", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !296
  %23 = load i8, ptr %9, align 8, !tbaa !298, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !299
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !134
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(56) %26) #12
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !290
  %34 = load ptr, ptr %33, align 8, !tbaa !134
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20) #13
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !llvm.loop !300

38:                                               ; preds = %32
  %39 = load ptr, ptr %8, align 8, !tbaa !292
  %40 = load i32, ptr %4, align 8, !tbaa !294
  br label %41

41:                                               ; preds = %38, %12
  %42 = phi i32 [ %40, %38 ], [ %13, %12 ]
  %43 = phi ptr [ %39, %38 ], [ %15, %12 ]
  %44 = getelementptr inbounds ptr, ptr %43, i64 %14
  store ptr null, ptr %44, align 8, !tbaa !168
  %45 = add nuw nsw i64 %14, 1
  %46 = zext i32 %42 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %12, label %10, !llvm.loop !301

48:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf.3", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !295
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  br i1 %2, label %45, label %3, !prof !149

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !302
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  store i32 0, ptr %11, align 4, !tbaa !303
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !248
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !168
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !304
  %23 = load i8, ptr %9, align 8, !tbaa !306, !range !131, !noundef !132
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !307
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %26) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %26) #12
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !246
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #13
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !308

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !248
  %37 = load i32, ptr %4, align 8, !tbaa !302
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !168
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !309

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !303
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !138 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.8", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !310
  %4 = getelementptr inbounds %"class.xercesc_2_7::ValueVectorOf.8", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !312
  %6 = load ptr, ptr %3, align 8, !tbaa !134
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !184
  %5 = load ptr, ptr %2, align 8, !tbaa !134
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #13
  store ptr null, ptr %3, align 8, !tbaa !184
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !188
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !134
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #12
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar13putAnnotationEPvPNS_12XSAnnotationE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 !prof !111 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !128
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !185
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !187
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #13
  %15 = icmp eq ptr %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !183, !range !131, !noundef !132
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !243
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %21, align 8, !tbaa !134
  %25 = getelementptr inbounds ptr, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(80) %21) #12
  br label %27

27:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !243
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %28, align 8, !tbaa !313
  br label %47

29:                                               ; preds = %13
  %30 = load ptr, ptr %0, align 8, !tbaa !181
  %31 = load ptr, ptr %30, align 8, !tbaa !134
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 24) #13
  %35 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !184
  %37 = load i32, ptr %4, align 4, !tbaa !142
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %36, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !168
  call void @_ZN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, ptr noundef %2, ptr noundef %40) #13
  %41 = load ptr, ptr %35, align 8, !tbaa !184
  %42 = load i32, ptr %4, align 4, !tbaa !142
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds ptr, ptr %41, i64 %43
  store ptr %34, ptr %44, align 8, !tbaa !168
  %45 = load i32, ptr %9, align 8, !tbaa !187
  %46 = add i32 %45, 1
  store i32 %46, ptr %9, align 8, !tbaa !187
  br label %47

47:                                               ; preds = %29, %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !185
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !181
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !134
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !181
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #13
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !185
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !184
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  store ptr %22, ptr %20, align 8, !tbaa !184
  store i32 %5, ptr %3, align 8, !tbaa !185
  %23 = load ptr, ptr %0, align 8, !tbaa !181
  %24 = load ptr, ptr %23, align 8, !tbaa !134
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #13
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !184
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !168
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !241
  %38 = load ptr, ptr %18, align 8, !tbaa !188
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !313
  %41 = load ptr, ptr %0, align 8, !tbaa !181
  %42 = load ptr, ptr %38, align 8, !tbaa !134
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #13
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !168
  store ptr %48, ptr %36, align 8, !tbaa !241
  store ptr %35, ptr %47, align 8, !tbaa !168
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !314

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !185
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !315

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !188
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !185
  %8 = load ptr, ptr %0, align 8, !tbaa !181
  %9 = load ptr, ptr %5, align 8, !tbaa !134
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #13
  store i32 %11, ptr %2, align 4, !tbaa !142
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !184
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !168
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !188
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !313
  %23 = load ptr, ptr %20, align 8, !tbaa !134
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #13
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !168
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !316

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEC2EPvPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !111 {
  store ptr %2, ptr %0, align 8, !tbaa !243
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !241
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !313
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEC2EPS4_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !111 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #13
  store ptr %1, ptr %0, align 8, !tbaa !317
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !319
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !317
  store ptr null, ptr %0, align 8, !tbaa !317
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #13
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEE5resetEPS4_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = load ptr, ptr %0, align 8, !tbaa !317
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !319
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !134
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #13
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !317
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !319
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_713SchemaGrammar13addAnnotationEPNS_12XSAnnotationE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SchemaGrammar", ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %0) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef %1) #13
  br label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !tbaa !128
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull %0, ptr noundef %1) #13
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !243
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XSAnnotation7setNextEPS0_(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_713SchemaGrammar12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 160, ptr noundef %0) #13
  invoke void @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef %0) #13
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
declare void @_ZN11xercesc_2_77Grammar9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = load i16, ptr %0, align 8, !tbaa !320
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_724DatatypeValidatorFactory9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(100)) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_10NameIdPoolINS_15XMLNotationDeclEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_9XMLAttDefEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15ComplexTypeInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_15XercesGroupInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer11storeObjectEPNS_14RefHashTableOfINS_12XSAnnotationEEERNS_16XSerializeEngineE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEb(ptr noundef nonnull align 8 dereferenceable(100), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_18RefHash3KeysIdPoolINS_17SchemaElementDeclEEEibiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_10NameIdPoolINS_15XMLNotationDeclEEEiiRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_9XMLAttDefEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15ComplexTypeInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_15XercesGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_18XercesAttGroupInfoEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_19RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719XTemplateSerializer10loadObjectEPPNS_14RefHashTableOfINS_12XSAnnotationEEEibRNS_16XSerializeEngineE(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 !prof !324 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %6 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5) #13
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !325

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !203
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %9, %8 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl5getIdEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !213
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE7getByIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = freeze i32 %4
  %6 = add i32 %1, -1
  %7 = icmp ult i32 %6, %5
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #14
  %10 = load ptr, ptr %0, align 8, !tbaa !158
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 67, ptr noundef %10) #13
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
  %15 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = zext i32 %1 to i64
  %18 = getelementptr inbounds ptr, ptr %16, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !168
  ret ptr %19
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE8getByKeyEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !234
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !111 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !173
  %6 = load ptr, ptr %0, align 8, !tbaa !169
  %7 = tail call noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %1, i32 noundef %5, ptr noundef %6) #13
  store i32 %7, ptr %2, align 4, !tbaa !142
  %8 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !175
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds ptr, ptr %9, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %3 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !234
  %17 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %16) #13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %1, ptr noundef %17) #13
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !168
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !326

23:                                               ; preds = %14, %19, %3
  %24 = phi ptr [ null, %3 ], [ null, %19 ], [ %15, %14 ]
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString4hashEPKtjPNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !327 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %28, label %5, !prof !328

5:                                                ; preds = %3
  %6 = load i16, ptr %0, align 2, !tbaa !329
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %28, label %8, !prof !330

8:                                                ; preds = %5
  %9 = zext i16 %6 to i32
  %10 = getelementptr inbounds i16, ptr %0, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !329
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %25, label %13, !prof !331

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
  %23 = load i16, ptr %22, align 2, !tbaa !329
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %13, !prof !332, !llvm.loop !333

25:                                               ; preds = %13, %8
  %26 = phi i32 [ %9, %8 ], [ %21, %13 ]
  %27 = urem i32 %26, %1
  br label %28

28:                                               ; preds = %3, %5, %25
  %29 = phi i32 [ %27, %25 ], [ 0, %5 ], [ 0, %3 ]
  ret i32 %29
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !334 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !335

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !329
  %8 = load i16, ptr %1, align 2, !tbaa !329
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !336

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !337

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !329
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !338

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !339

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !329
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !340

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !341

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !329
  %28 = load i16, ptr %26, align 2, !tbaa !329
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !342, !llvm.loop !343

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !344
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_714XMLElementDecl6getURIEv(ptr noundef nonnull align 8 dereferenceable(33) %0) local_unnamed_addr #2 comdat align 2 !prof !147 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  %4 = tail call noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %3) #13
  ret i32 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv(ptr noundef nonnull align 8 dereferenceable(147) %0) local_unnamed_addr #0 comdat align 2 !prof !346 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !347
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_75QName6getURIEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #0 comdat align 2 !prof !353 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !354
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE3putEPS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  %4 = tail call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %5 = call noundef ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE14findBucketElemEPKtRj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = call ptr @__cxa_allocate_exception(i64 48) #14
  %9 = call noundef ptr @_ZNK11xercesc_2_715XMLNotationDecl6getKeyEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #13
  %10 = load ptr, ptr %0, align 8, !tbaa !169
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 213, i32 noundef 65, ptr noundef %9, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %10) #13
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
  %15 = load ptr, ptr %0, align 8, !tbaa !169
  %16 = load ptr, ptr %15, align 8, !tbaa !134
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef 16) #13
  %20 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !175
  %22 = load i32, ptr %3, align 4, !tbaa !142
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !168
  call void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %1, ptr noundef %25) #13
  %26 = load ptr, ptr %20, align 8, !tbaa !175
  %27 = load i32, ptr %3, align 4, !tbaa !142
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds ptr, ptr %26, i64 %28
  store ptr %19, ptr %29, align 8, !tbaa !168
  %30 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 4
  %31 = load i32, ptr %30, align 4, !tbaa !172
  %32 = add i32 %31, 1
  %33 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !171
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %14
  %37 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !180
  br label %62

39:                                               ; preds = %14
  %40 = uitofp i32 %32 to double
  %41 = fmul double %40, 1.500000e+00
  %42 = fptoui double %41 to i32
  %43 = load ptr, ptr %0, align 8, !tbaa !169
  %44 = zext i32 %42 to i64
  %45 = shl nuw nsw i64 %44, 3
  %46 = load ptr, ptr %43, align 8, !tbaa !134
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %43, i64 noundef %45) #13
  %50 = getelementptr inbounds %"class.xercesc_2_7::NameIdPool", ptr %0, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !180
  %52 = load i32, ptr %33, align 8, !tbaa !171
  %53 = zext i32 %52 to i64
  %54 = shl nuw nsw i64 %53, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %49, ptr align 8 %51, i64 %54, i1 false)
  %55 = load ptr, ptr %0, align 8, !tbaa !169
  %56 = load ptr, ptr %50, align 8, !tbaa !180
  %57 = load ptr, ptr %55, align 8, !tbaa !134
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %56) #13
  store ptr %49, ptr %50, align 8, !tbaa !180
  store i32 %42, ptr %33, align 8, !tbaa !171
  %60 = load i32, ptr %30, align 4, !tbaa !172
  %61 = add i32 %60, 1
  br label %62

62:                                               ; preds = %36, %39
  %63 = phi i32 [ %32, %36 ], [ %61, %39 ]
  %64 = phi ptr [ %38, %36 ], [ %49, %39 ]
  store i32 %63, ptr %30, align 4, !tbaa !172
  %65 = zext i32 %63 to i64
  %66 = getelementptr inbounds ptr, ptr %64, i64 %65
  store ptr %1, ptr %66, align 8, !tbaa !168
  call void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %1, i32 noundef %63) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret i32 %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !111 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !134
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
define linkonce_odr dso_local void @_ZN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEC2EPS1_PS2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !111 {
  store ptr %1, ptr %0, align 8, !tbaa !234
  %4 = getelementptr inbounds %"struct.xercesc_2_7::NameIdPoolBucketElem", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !232
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XMLNotationDecl5setIdEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !111 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLNotationDecl", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !355
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!110}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!36 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11getElemDeclEjPKtS2_j, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, i64 1992716}
!37 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, i64 79}
!38 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, i64 79}
!39 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZNK11xercesc_2_717SchemaElementDecl17getEnclosingScopeEv, i64 79}
!40 = !{ptr @_ZN11xercesc_2_713SchemaGrammar11putElemDeclEPNS_14XMLElementDeclEb, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, i64 79}
!41 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 2}
!42 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 1}
!43 = !{ptr @_ZN11xercesc_2_713SchemaGrammar5resetEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, i64 1}
!44 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77GrammarC2Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryC1EPNS_13MemoryManagerE, i64 1}
!46 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEC2EPS1_MS1_FvvE, i64 1}
!47 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 7}
!48 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, i64 2}
!49 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_721ValidationContextImplC1EPNS_13MemoryManagerE, i64 1}
!51 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724DatatypeValidatorFactory29expandRegistryToFullSchemaSetEv, i64 1}
!52 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724XMLSchemaDescriptionImplC1EPKtPNS_13MemoryManagerE, i64 1}
!53 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77HashPtrC1Ev, i64 1}
!54 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, i64 1}
!55 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEE7releaseEv, i64 1}
!56 = !{ptr @_ZN11xercesc_2_713SchemaGrammarC2EPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEED2Ev, i64 1}
!57 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_713XSerializableC2Ev, i64 4}
!58 = !{ptr @_ZN11xercesc_2_77GrammarC2Ev, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!59 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, i64 2}
!60 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 10}
!61 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, i64 1}
!62 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev, i64 1}
!63 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev, i64 1}
!64 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev, i64 1}
!65 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev, i64 1}
!66 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714NamespaceScopeD1Ev, i64 1}
!67 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev, i64 1}
!68 = !{ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev, i64 1}
!69 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 5}
!70 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, i64 5}
!71 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!72 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEC2EjbjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 5}
!73 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 4}
!74 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @__cxa_allocate_exception, i64 1}
!75 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEC2EjjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!76 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 1}
!77 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE10initializeEj, i64 1}
!78 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @__cxa_allocate_exception, i64 1}
!79 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE10initializeEj, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!80 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713SchemaGrammar7cleanUpEv, i64 1}
!81 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_724DatatypeValidatorFactoryD1Ev, i64 1}
!82 = !{ptr @_ZN11xercesc_2_713SchemaGrammarD2Ev, ptr @_ZN11xercesc_2_713XSerializableD2Ev, i64 1}
!83 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!84 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEC2EPviiPS1_PS2_, i64 78}
!85 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_714XMLElementDecl5setIdEj, i64 79}
!86 = !{ptr @_ZN11xercesc_2_714XMLElementDecl11getBaseNameEv, ptr @_ZN11xercesc_2_75QName12getLocalPartEv, i64 95}
!87 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7isEmptyEv, i64 2}
!88 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEED2Ev, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE9removeAllEv, i64 5}
!89 = !{ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEED2Ev, ptr @_ZN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEE9removeAllEv, i64 4}
!90 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, i64 1}
!91 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, i64 1}
!92 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, i64 1}
!93 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, i64 1}
!94 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEED2Ev, ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, i64 1}
!95 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEED2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv, i64 1}
!96 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, i64 1}
!97 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_9XMLAttDefEE7isEmptyEv, i64 1}
!98 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, i64 1}
!99 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEE7isEmptyEv, i64 1}
!100 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, i64 1}
!101 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEE7isEmptyEv, i64 1}
!102 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, i64 1}
!103 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE9removeAllEv, ptr @_ZNK11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEE7isEmptyEv, i64 1}
!104 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, ptr @_ZNK11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE7isEmptyEv, i64 1}
!105 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, ptr @_ZN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEED2Ev, i64 52}
!106 = !{ptr @_ZN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEE9removeAllEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 52}
!107 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEE9removeAllEv, i64 1}
!108 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE8getByKeyEPKvii, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 1992715}
!109 = !{ptr @_ZNK11xercesc_2_714XMLElementDecl6getURIEv, ptr @_ZNK11xercesc_2_75QName6getURIEv, i64 79}
!110 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!111 = !{!"function_entry_count", i64 0}
!112 = !{!113, !116, i64 16}
!113 = !{!"_ZTSN11xercesc_2_713SchemaGrammarE", !114, i64 0, !116, i64 8, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !119, i64 128, !120, i64 136}
!114 = !{!"_ZTSN11xercesc_2_77GrammarE", !115, i64 0}
!115 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!116 = !{!"any pointer", !117, i64 0}
!117 = !{!"omnipotent char", !118, i64 0}
!118 = !{!"Simple C++ TBAA"}
!119 = !{!"bool", !117, i64 0}
!120 = !{!"_ZTSN11xercesc_2_724DatatypeValidatorFactoryE", !115, i64 0, !116, i64 8, !116, i64 16}
!121 = !{!113, !116, i64 32}
!122 = !{!113, !116, i64 40}
!123 = !{!113, !116, i64 48}
!124 = !{!113, !116, i64 56}
!125 = !{!113, !116, i64 64}
!126 = !{!113, !116, i64 72}
!127 = !{!113, !116, i64 88}
!128 = !{!113, !116, i64 120}
!129 = !{!113, !116, i64 8}
!130 = !{!113, !119, i64 128}
!131 = !{i8 0, i8 2}
!132 = !{}
!133 = !{!113, !116, i64 112}
!134 = !{!135, !135, i64 0}
!135 = !{!"vtable pointer", !118, i64 0}
!136 = !{!"function_entry_count", i64 3673500}
!137 = !{!"function_entry_count", i64 579754}
!138 = !{!"function_entry_count", i64 1}
!139 = !{!113, !116, i64 104}
!140 = !{!113, !116, i64 24}
!141 = !{!119, !119, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"int", !117, i64 0}
!144 = !{!"function_entry_count", i64 1412839}
!145 = !{!"branch_weights", i32 579877, i32 832964}
!146 = !{!"branch_weights", i32 579877, i32 1}
!147 = !{!"function_entry_count", i64 79}
!148 = !{!"branch_weights", i32 1, i32 80}
!149 = !{!"branch_weights", i32 2, i32 1}
!150 = !{!"function_entry_count", i64 3}
!151 = !{!113, !116, i64 96}
!152 = !{!"function_entry_count", i64 4}
!153 = !{!113, !116, i64 80}
!154 = !{!155, !116, i64 0}
!155 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_13SchemaGrammarEEE", !116, i64 0, !117, i64 8}
!156 = !{!155, !117, i64 8}
!157 = !{!"function_entry_count", i64 5}
!158 = !{!159, !116, i64 0}
!159 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !116, i64 32, !116, i64 40, !143, i64 48, !143, i64 52}
!160 = !{!159, !119, i64 8}
!161 = !{!159, !116, i64 16}
!162 = !{!159, !143, i64 24}
!163 = !{!159, !143, i64 48}
!164 = !{!159, !143, i64 52}
!165 = !{!159, !116, i64 32}
!166 = !{!"branch_weights", i32 1, i32 6}
!167 = !{!159, !116, i64 40}
!168 = !{!116, !116, i64 0}
!169 = !{!170, !116, i64 0}
!170 = !{!"_ZTSN11xercesc_2_710NameIdPoolINS_15XMLNotationDeclEEE", !116, i64 0, !116, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !143, i64 32}
!171 = !{!170, !143, i64 24}
!172 = !{!170, !143, i64 28}
!173 = !{!170, !143, i64 32}
!174 = !{!"branch_weights", i32 1, i32 5}
!175 = !{!170, !116, i64 8}
!176 = !{!"branch_weights", i32 1, i32 159}
!177 = !{!"branch_weights", i32 159, i32 13825}
!178 = distinct !{!178, !179}
!179 = !{!"llvm.loop.mustprogress"}
!180 = !{!170, !116, i64 16}
!181 = !{!182, !116, i64 0}
!182 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_12XSAnnotationEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !143, i64 32, !116, i64 40}
!183 = !{!182, !119, i64 8}
!184 = !{!182, !116, i64 16}
!185 = !{!182, !143, i64 24}
!186 = !{!182, !143, i64 28}
!187 = !{!182, !143, i64 32}
!188 = !{!182, !116, i64 40}
!189 = !{!"function_entry_count", i64 1069174}
!190 = !{!"function_entry_count", i64 1068727}
!191 = !{!"function_entry_count", i64 5836268}
!192 = !{!"branch_weights", i32 1, i32 191}
!193 = !{!"branch_weights", i32 191, i32 9601}
!194 = distinct !{!194, !179}
!195 = !{!196, !116, i64 40}
!196 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !197, i64 8, !116, i64 16, !143, i64 24, !116, i64 32, !116, i64 40}
!197 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !117, i64 0}
!198 = !{!"branch_weights", i32 1, i32 2}
!199 = !{!"branch_weights", i32 1, i32 127}
!200 = !{!"branch_weights", i32 127, i32 1793}
!201 = distinct !{!201, !179}
!202 = !{!"branch_weights", i32 80, i32 1}
!203 = !{!204, !116, i64 0}
!204 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !116, i64 0, !116, i64 8, !116, i64 16, !143, i64 24, !143, i64 28}
!205 = !{!204, !116, i64 16}
!206 = !{!204, !143, i64 24}
!207 = !{!204, !143, i64 28}
!208 = !{!"function_entry_count", i64 95}
!209 = !{!210, !116, i64 16}
!210 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !115, i64 0, !116, i64 8, !116, i64 16, !211, i64 24, !143, i64 28, !119, i64 32}
!211 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !117, i64 0}
!212 = !{!"function_entry_count", i64 173}
!213 = !{!210, !143, i64 28}
!214 = !{!"function_entry_count", i64 1992794}
!215 = !{!"branch_weights", i32 1, i32 1159831}
!216 = !{!"branch_weights", i32 2435527, i32 1}
!217 = !{!"branch_weights", i32 1030785, i32 1404743}
!218 = !{!"branch_weights", i32 832964, i32 197822}
!219 = !{!"branch_weights", i32 1159831, i32 1275696}
!220 = distinct !{!220, !179}
!221 = !{!204, !116, i64 8}
!222 = !{!"function_entry_count", i64 2192223}
!223 = !{!224, !116, i64 32}
!224 = !{!"_ZTSN11xercesc_2_75QNameE", !115, i64 0, !143, i64 8, !143, i64 12, !143, i64 16, !143, i64 20, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48}
!225 = !{!"function_entry_count", i64 7}
!226 = !{!"branch_weights", i32 444, i32 80}
!227 = !{!"branch_weights", i32 80, i32 0}
!228 = distinct !{!228, !179}
!229 = !{!"branch_weights", i32 8257, i32 127}
!230 = distinct !{!230, !179}
!231 = !{!"branch_weights", i32 545, i32 1}
!232 = !{!233, !116, i64 8}
!233 = !{!"_ZTSN11xercesc_2_720NameIdPoolBucketElemINS_15XMLNotationDeclEEE", !116, i64 0, !116, i64 8}
!234 = !{!233, !116, i64 0}
!235 = !{!"branch_weights", i32 1, i32 0}
!236 = distinct !{!236, !179}
!237 = !{!"branch_weights", i32 17281, i32 191}
!238 = distinct !{!238, !179}
!239 = !{!"function_entry_count", i64 2}
!240 = !{!"branch_weights", i32 3, i32 1}
!241 = !{!242, !116, i64 8}
!242 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_12XSAnnotationEEE", !116, i64 0, !116, i64 8, !116, i64 16}
!243 = !{!242, !116, i64 0}
!244 = distinct !{!244, !179}
!245 = distinct !{!245, !179}
!246 = !{!247, !116, i64 0}
!247 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !116, i64 32}
!248 = !{!247, !116, i64 16}
!249 = !{!247, !116, i64 32}
!250 = !{!251, !116, i64 0}
!251 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_9XMLAttDefEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !143, i64 32, !116, i64 40}
!252 = !{!251, !116, i64 16}
!253 = !{!251, !116, i64 40}
!254 = !{!251, !143, i64 24}
!255 = !{!251, !143, i64 32}
!256 = !{!257, !116, i64 8}
!257 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_9XMLAttDefEEE", !116, i64 0, !116, i64 8, !116, i64 16}
!258 = !{!251, !119, i64 8}
!259 = !{!257, !116, i64 0}
!260 = distinct !{!260, !179}
!261 = distinct !{!261, !179}
!262 = !{!263, !116, i64 0}
!263 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15ComplexTypeInfoEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !143, i64 32, !116, i64 40}
!264 = !{!263, !116, i64 16}
!265 = !{!263, !116, i64 40}
!266 = !{!263, !143, i64 24}
!267 = !{!263, !143, i64 32}
!268 = !{!"branch_weights", i32 28, i32 31}
!269 = !{!270, !116, i64 8}
!270 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15ComplexTypeInfoEEE", !116, i64 0, !116, i64 8, !116, i64 16}
!271 = !{!263, !119, i64 8}
!272 = !{!"branch_weights", i32 1, i32 31}
!273 = !{!270, !116, i64 0}
!274 = !{!"branch_weights", i32 31, i32 0}
!275 = distinct !{!275, !179}
!276 = !{!"branch_weights", i32 3649, i32 127}
!277 = distinct !{!277, !179}
!278 = !{!279, !116, i64 0}
!279 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_15XercesGroupInfoEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !143, i64 32, !116, i64 40}
!280 = !{!279, !116, i64 16}
!281 = !{!279, !116, i64 40}
!282 = !{!279, !143, i64 24}
!283 = !{!279, !143, i64 32}
!284 = !{!285, !116, i64 8}
!285 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_15XercesGroupInfoEEE", !116, i64 0, !116, i64 8, !116, i64 16}
!286 = !{!279, !119, i64 8}
!287 = !{!285, !116, i64 0}
!288 = distinct !{!288, !179}
!289 = distinct !{!289, !179}
!290 = !{!291, !116, i64 0}
!291 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_18XercesAttGroupInfoEEE", !116, i64 0, !119, i64 8, !116, i64 16, !143, i64 24, !143, i64 28, !143, i64 32, !116, i64 40}
!292 = !{!291, !116, i64 16}
!293 = !{!291, !116, i64 40}
!294 = !{!291, !143, i64 24}
!295 = !{!291, !143, i64 32}
!296 = !{!297, !116, i64 8}
!297 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_18XercesAttGroupInfoEEE", !116, i64 0, !116, i64 8, !116, i64 16}
!298 = !{!291, !119, i64 8}
!299 = !{!297, !116, i64 0}
!300 = distinct !{!300, !179}
!301 = distinct !{!301, !179}
!302 = !{!247, !143, i64 24}
!303 = !{!247, !143, i64 28}
!304 = !{!305, !116, i64 8}
!305 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemINS_13ValueVectorOfIPNS_17SchemaElementDeclEEEEE", !116, i64 0, !116, i64 8, !116, i64 16, !143, i64 24}
!306 = !{!247, !119, i64 8}
!307 = !{!305, !116, i64 0}
!308 = distinct !{!308, !179}
!309 = distinct !{!309, !179}
!310 = !{!311, !116, i64 24}
!311 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_17SchemaElementDeclEEE", !119, i64 0, !143, i64 4, !143, i64 8, !116, i64 16, !116, i64 24}
!312 = !{!311, !116, i64 16}
!313 = !{!242, !116, i64 16}
!314 = distinct !{!314, !179}
!315 = distinct !{!315, !179}
!316 = distinct !{!316, !179}
!317 = !{!318, !116, i64 0}
!318 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_12XSAnnotationEEEEE", !116, i64 0, !116, i64 8}
!319 = !{!318, !116, i64 8}
!320 = !{!321, !322, i64 0}
!321 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !322, i64 0, !322, i64 2, !116, i64 8, !116, i64 16, !116, i64 24, !323, i64 32, !323, i64 40, !116, i64 48, !116, i64 56, !116, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !143, i64 96}
!322 = !{!"short", !117, i64 0}
!323 = !{!"long", !117, i64 0}
!324 = !{!"function_entry_count", i64 1992715}
!325 = !{!"branch_weights", i32 1159753, i32 832964}
!326 = distinct !{!326, !179}
!327 = !{!"function_entry_count", i64 4646679}
!328 = !{!"branch_weights", i32 1, i32 4646680}
!329 = !{!322, !322, i64 0}
!330 = !{!"branch_weights", i32 1216534, i32 3430147}
!331 = !{!"branch_weights", i32 1, i32 3430146}
!332 = !{!"branch_weights", i32 3430146, i32 42249130}
!333 = distinct !{!333, !179}
!334 = !{!"function_entry_count", i64 1231717351}
!335 = !{!"branch_weights", i32 621, i32 -1469098093}
!336 = !{!"branch_weights", i32 408901017, i32 1}
!337 = !{!"branch_weights", i32 267, i32 4}
!338 = !{!"branch_weights", i32 1, i32 4}
!339 = !{!"branch_weights", i32 156, i32 112}
!340 = !{!"branch_weights", i32 1, i32 112}
!341 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!342 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!343 = distinct !{!343, !179}
!344 = !{!345, !116, i64 16}
!345 = !{!"_ZTSN11xercesc_2_715XMLNotationDeclE", !115, i64 0, !143, i64 8, !143, i64 12, !116, i64 16, !116, i64 24, !116, i64 32, !116, i64 40, !116, i64 48}
!346 = !{!"function_entry_count", i64 157}
!347 = !{!348, !143, i64 52}
!348 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !210, i64 0, !349, i64 36, !350, i64 40, !351, i64 44, !352, i64 48, !143, i64 52, !143, i64 56, !143, i64 60, !143, i64 64, !116, i64 72, !116, i64 80, !116, i64 88, !116, i64 96, !116, i64 104, !116, i64 112, !116, i64 120, !116, i64 128, !116, i64 136, !119, i64 144, !119, i64 145, !119, i64 146}
!349 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !117, i64 0}
!350 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !117, i64 0}
!351 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !117, i64 0}
!352 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !117, i64 0}
!353 = !{!"function_entry_count", i64 6553673}
!354 = !{!224, !143, i64 20}
!355 = !{!345, !143, i64 8}
